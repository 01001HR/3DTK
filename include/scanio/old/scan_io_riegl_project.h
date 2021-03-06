/**
 * @file
 * @brief IO of 3D scans in Riegl file format
 * @author Kai Lingemann. Institute of Computer Science, University of Osnabrueck, Germany.
 * @author Andreas Nuechter. Institute of Computer Science, University of Osnabrueck, Germany.
 */

#ifndef __SCAN_IO_RIEGL_PROJECT_H
#define __SCAN_IO_RIEGL_PROJECT_H

#include <string>
#include <vector>

#include "scan_io.h"

/**
 * @brief 3D scan loader for Riegl scans in the binary rxp format
 *
 * The compiled class is available as shared object file
 */
class ScanIO_riegl_project : public ScanIO {
public:
  virtual int readScans(int start, int end, string &dir, int maxDist, int mindist,
				    double *euler, vector<Point> &ptss);
};

// Since this shared object file is  loaded on the fly, we
// need class factories

// the types of the class factories
typedef ScanIO* create_sio();
typedef void destroy_sio(ScanIO*);

#endif
