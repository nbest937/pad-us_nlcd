#!/bin/bash -v

# path to GRASS binaries and libraries:
export GISBASE=/usr/lib/grass64
export PATH=$PATH:$GISBASE/bin:$GISBASE/scripts
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GISBASE/lib

# use process ID (PID) as lock file number:
export GIS_LOCK=$$

# path to GRASS settings file
export GISRC=./.grassrc6
g.gisenv set=LOCATION_NAME=$GIS_LOCK
eval $(g.gisenv)
mkdir -p $GISDBASE/$GIS_LOCK
g.mapset -c mapset=temp
r.in.gdal in=aeaGrid5minHawaii.img out=grid_5min location=Hawaii
# g.gisenv set=LOCATION_NAME=Hawaii
# g.gisenv set=MAPSET=PERMANENT
g.mapset mapset=PERMANENT location=Hawaii
rm -rf $GISDBASE/$GIS_LOCK/temp
# g.rename rast=aeaGrid5minHawaii.img,grid_5min
r.in.gdal input=pad-us/PADUS1_2_regions/PADUS1_2_Hawaii_GAP.tif output=gap

r.in.gdal input=nlcd2006/hi_landcover_wimperv_9-30-08_se5.img output=nlcd2006

r.mapcalc MASK="if( nlcd2006 > 0, 1, null())"
echo grid_5min,nlcd2006,gap,n > statsHawaii.csv
r.stats -c input=grid_5min,nlcd2006,gap fs=, >> statsHawaii.csv
r.mask -r
echo grid_5min,n > gridHawaii.csv
r.stats -c input=grid_5min fs=, >> gridHawaii.csv
# run GRASS' cleanup routine
$GISBASE/etc/clean_temp

# remove session tmp directory:
rm -rf /tmp/grass6-$USER-$GIS_LOCK
