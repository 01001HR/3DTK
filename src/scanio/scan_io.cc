/*
 * scan_io implementation
 *
 * Copyright (C) Thomas Escher, Kai Lingemann, Andreas Nuechter
 *
 * Released under the GPL version 3.
 *
 */

#include "scanio/scan_io.h"

using std::map;
using std::pair;
using std::string;
#include <stdexcept>
using std::runtime_error;
#include <iostream>
using std::cout;
using std::cerr;
using std::endl;

#ifdef _WIN32
#include <windows.h>
#else
#include <dlfcn.h>
#endif

map<IOType, ScanIO *> ScanIO::m_scanIOs;

ScanIO * ScanIO::getScanIO(IOType iotype)
{
  // get the ScanIO from the map
  map<IOType, ScanIO*>::iterator it = m_scanIOs.find(iotype);
  if(it != m_scanIOs.end())
    return it->second;
  
  // figure out the full and correct library name
  string libname(io_type_to_libname(iotype));
#if defined(__MINGW32__)
  libname = "lib" + libname + ".dll";
#elif defined(_WIN32)
  libname += ".dll";
#elif defined(__APPLE__)
  libname = "lib" + libname + ".dylib";
#elif defined(__CYGWIN__)
  libname = "cyg" + libname + ".dll";
#else
  libname = "lib" + libname + ".so";
#endif
  
  //cout << "Loading shared library " << libname << " ... " << std::flush;
  
  // load the library and symbols
#ifdef _WIN32
  HINSTANCE hinstLib = LoadLibrary(libname.c_str());
  if (!hinstLib)
    throw runtime_error(string("Cannot load library ") + libname);

  //cout << "done." << endl;

  create_sio* create_ScanIO = (create_sio*)GetProcAddress(hinstLib, "create");

  if (!create_ScanIO) {
    FreeLibrary(hinstLib);
    throw runtime_error("Cannot load symbol create_ScanIO");
  }
 
#else
  void *ptrScanIO = dlopen(libname.c_str(), RTLD_LAZY);

  if (!ptrScanIO)
    throw runtime_error(string("Cannot load library ") + libname + string(": ") + dlerror());
  
  //cerr << "done." << endl;
  
  // reset the errors
  dlerror();

  // load the symbols
  create_sio* create_ScanIO = (create_sio*)dlsym(ptrScanIO, "create");
  const char* dlsym_error = dlerror();
  if (dlsym_error) {
    dlclose(ptrScanIO);
    throw runtime_error(string("Cannot load symbol create_ScanIO: ") + dlsym_error);
  }
#endif
  
  // create an instance of ScanIO, save it in the map and return it
  ScanIO* sio = create_ScanIO();
  m_scanIOs.insert(pair<IOType, ScanIO*>(iotype, sio));
  return sio;
}

void ScanIO::clearScanIOs()
{
  if (m_scanIOs.size()){
    for (map<IOType, ScanIO*>::iterator it = m_scanIOs.begin(); it != m_scanIOs.end(); ++it) {
      // figure out the full and correct library name
      string libname(io_type_to_libname(it->first));
#if defined(__MINGW32__)
      libname = "lib" + libname + ".dll";
#elif defined(_WIN32)
      libname += ".dll";
#elif defined(__APPLE__)
      libname = "lib" + libname + ".dylib";
#elif defined(__CYGWIN__)
      libname = "cyg" + libname + ".dll";
#else
      libname = "lib" + libname + ".so";
#endif
    
      // load library, destroy the allocated ScanIO and then remove it
#ifdef _WIN32
      HINSTANCE hinstLib = LoadLibrary(libname.c_str());
    
      destroy_sio* destroy_ScanIO = (destroy_sio*)GetProcAddress(hinstLib, "destroy");
      destroy_ScanIO(it->second);
    
      FreeLibrary(hinstLib);
#else
      void *ptrScanIO = dlopen(libname.c_str(), RTLD_LAZY);
    
      destroy_sio* destroy_ScanIO = (destroy_sio*)dlsym(ptrScanIO, "destroy");
      destroy_ScanIO(it->second);
    
      dlclose(ptrScanIO);
#endif
    }
  m_scanIOs.clear();
  }
}
