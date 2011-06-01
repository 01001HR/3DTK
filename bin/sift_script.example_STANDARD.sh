# first convert to binary polar point cloud object

#bin/readscan -d /home/hamidreza/bremen_city/standard/scan000 -o /home/hamidreza/bremen_city/standard/scan000.txt.ppc /home/hamidreza/bremen_city/scan000.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan001 -o /home/hamidreza/bremen_city/standard/scan001.txt.ppc /home/hamidreza/bremen_city/scan001.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan002 -o /home/hamidreza/bremen_city/standard/scan002.txt.ppc /home/hamidreza/bremen_city/scan002.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan003 -o /home/hamidreza/bremen_city/standard/scan003.txt.ppc /home/hamidreza/bremen_city/scan003.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan004 -o /home/hamidreza/bremen_city/standard/scan004.txt.ppc /home/hamidreza/bremen_city/scan004.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan005 -o /home/hamidreza/bremen_city/standard/scan005.txt.ppc /home/hamidreza/bremen_city/scan005.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan006 -o /home/hamidreza/bremen_city/standard/scan006.txt.ppc /home/hamidreza/bremen_city/scan006.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan007 -o /home/hamidreza/bremen_city/standard/scan007.txt.ppc /home/hamidreza/bremen_city/scan007.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan008 -o /home/hamidreza/bremen_city/standard/scan008.txt.ppc /home/hamidreza/bremen_city/scan008.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan009 -o /home/hamidreza/bremen_city/standard/scan009.txt.ppc /home/hamidreza/bremen_city/scan009.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan010 -o /home/hamidreza/bremen_city/standard/scan010.txt.ppc /home/hamidreza/bremen_city/scan010.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan011 -o /home/hamidreza/bremen_city/standard/scan011.txt.ppc /home/hamidreza/bremen_city/scan011.txt 
#bin/readscan -d /home/hamidreza/bremen_city/standard/scan012 -o /home/hamidreza/bremen_city/standard/scan012.txt.ppc /home/hamidreza/bremen_city/scan012.txt 


# generate panorama maps and images (only maps are used)
# (this generates files like scan001.txt.ppc_2880x800.map)

#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan000.txt.ppc 
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan001.txt.ppc
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan002.txt.ppc 
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan003.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan004.txt.ppc 
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan005.txt.ppc 
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan006.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan007.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan008.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan009.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan010.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan011.txt.ppc  
#bin/panoramacreator -m -j -d -p STANDARD -s 2880x800 /home/hamidreza/bremen_city/standard/scan012.txt.ppc 


# generate features

#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan000.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan000.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan001.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan001.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan002.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan002.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan003.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan003.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan004.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan004.txt.ppc_2880x800.map  
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan005.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan005.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan006.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan006.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan007.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan007.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan008.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan008.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan009.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan009.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan010.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan010.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan011.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan011.txt.ppc_2880x800.map 
#bin/generatesiftfeatures -x /home/hamidreza/bremen_city/standard/scan012.txt.ppc_2880x800.map.xml -i /home/hamidreza/bremen_city/standard/scan012.txt.ppc_2880x800.map 


# you can match all at once but I don't recommend this
# bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/all.matches /home/hamidreza/bremen_city/standard/*.xml

# match pairwise only 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/1.2.matches /home/hamidreza/bremen_city/standard/scan001.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan002.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/2.3.matches /home/hamidreza/bremen_city/standard/scan002.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan003.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/3.4.matches /home/hamidreza/bremen_city/standard/scan003.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan004.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/4.5.matches /home/hamidreza/bremen_city/standard/scan004.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan005.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/5.6.matches /home/hamidreza/bremen_city/standard/scan005.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan006.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/6.7.matches /home/hamidreza/bremen_city/standard/scan006.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan007.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/7.8.matches /home/hamidreza/bremen_city/standard/scan007.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan008.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/8.9.matches /home/hamidreza/bremen_city/standard/scan008.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan009.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/9.10.matches /home/hamidreza/bremen_city/standard/scan009.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan010.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/10.11.matches /home/hamidreza/bremen_city/standard/scan010.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan011.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/11.12.matches /home/hamidreza/bremen_city/standard/scan011.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan012.txt.ppc_2880x800.map.xml 
#bin/matchsiftfeatures -o /home/hamidreza/bremen_city/standard/12.0.matches /home/hamidreza/bremen_city/standard/scan012.txt.ppc_2880x800.map.xml /home/hamidreza/bremen_city/standard/scan000.txt.ppc_2880x800.map.xml 


# register scans. input matches maps, and then -d for minimum amount
# of inliers, -t for inlier error threshold and -x for amount of
# iterations per pairwise registration
bin/registerscans -m /home/hamidreza/bremen_city/standard/1.2.matches /home/hamidreza/bremen_city/standard/*800.map -d 10 -i 5 -r 200 -t 500 -x 20000
#-m /home/hamidreza/bremen_city/standard/2.3.matches -m /home/hamidreza/bremen_city/standard/3.4.matches -m /home/hamidreza/bremen_city/standard/4.5.matches -m /home/hamidreza/bremen_city/standard/5.6.matches -m /home/hamidreza/bremen_city/standard/6.7.matches -m /home/hamidreza/bremen_city/standard/7.8.matches -m /home/hamidreza/bremen_city/standard/8.9.matches -m /home/hamidreza/bremen_city/standard/9.10.matches -m /home/hamidreza/bremen_city/standard/10.11.matches -m /home/hamidreza/bremen_city/standard/11.12.matches -m /home/hamidreza/bremen_city/standard/12.0.matches /home/hamidreza/bremen_city/standard/*800.map -d 10 -t 0.5 -x 200000


# end of registration


# you can visualize result with:
# (-m 20 to include only every 20th point, -c random color for each scan
#  -r would be rainbow map for the height of the points)
#bin/visualizeregistrations -m 20 -c -p /home/hamidreza/bremen_city/standard/scan001.txt.ppc -p /home/hamidreza/bremen_city/standard/scan002.txt.ppc #-p /home/hamidreza/bremen_city/standard/scan003.txt.ppc -p /home/hamidreza/bremen_city/standard/scan004.txt.ppc -p /home/hamidreza/bremen_city/standard/scan005.txt.ppc -p /home/hamidreza/bremen_city/standard/scan006.txt.ppc -p /home/hamidreza/bremen_city/standard/scan007.txt.ppc -p /home/hamidreza/bremen_city/standard/scan008.txt.ppc -p /home/hamidreza/bremen_city/standard/scan009.txt.ppc -p /home/hamidreza/bremen_city/standard/scan010.txt.ppc -p /home/hamidreza/bremen_city/standard/scan011.txt.ppc -p /home/hamidreza/bremen_city/standard/scan012.txt.ppc -p /home/hamidreza/bremen_city/standard/scan000.txt.ppc

# if you want to visualize registrations more often and don't want to
# wait so much to read each object, you can reduce the polar point
# cloud objects with e.g.
# "reduceppc -m 20 -o scan001.txt-20.ppc scan001.txt.ppc"
