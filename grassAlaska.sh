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
r.in.gdal in=aeaGrid5minAlaska.img out=grid_5min location=Alaska
# g.gisenv set=LOCATION_NAME=Alaska
# g.gisenv set=MAPSET=PERMANENT
g.mapset mapset=PERMANENT location=Alaska
rm -rf $GISDBASE/$GIS_LOCK/temp
# g.rename rast=aeaGrid5minAlaska.img,grid_5min
r.in.gdal input=pad-us/PADUS1_2_regions/PADUS1_2_Alaska_GAP.tif output=gap

r.in.gdal input=nlcd2006/ak_nlcd_2001_land_cover_3-13-08_se5.img output=nlcd2006

r.mapcalc MASK="if( nlcd2006 > 0, 1, null())"
echo grid_5min,nlcd2006,gap,n > statsAlaska.csv
r.stats -c input=grid_5min,nlcd2006,gap fs=, >> statsAlaska.csv
r.mask -r
echo grid_5min,n > gridAlaska.csv
r.stats -c input=grid_5min fs=, >> gridAlaska.csv
# run GRASS' cleanup routine
$GISBASE/etc/clean_temp

# remove session tmp directory:
rm -rf /tmp/grass6-$USER-$GIS_LOCK
