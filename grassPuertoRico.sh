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
r.in.gdal in=aeaGrid5minPuertoRico.img out=grid_5min location=PuertoRico
# g.gisenv set=LOCATION_NAME=PuertoRico
# g.gisenv set=MAPSET=PERMANENT
g.mapset mapset=PERMANENT location=PuertoRico
rm -rf $GISDBASE/$GIS_LOCK/temp
# g.rename rast=aeaGrid5minPuertoRico.img,grid_5min
r.in.gdal input=pad-us/PADUS1_2_regions/PADUS1_2_PuertoRico_GAP.tif output=gap

r.in.gdal input=nlcd2006/pr_landcover_wimperv_10-28-08_se5.img output=nlcd2006

r.mapcalc MASK="if( nlcd2006 > 0, 1, null())"
echo grid_5min,nlcd2006,gap,n > statsPuertoRico.csv
r.stats -c input=grid_5min,nlcd2006,gap fs=, >> statsPuertoRico.csv
r.mask -r
echo grid_5min,n > gridPuertoRico.csv
r.stats -c input=grid_5min fs=, >> gridPuertoRico.csv
# run GRASS' cleanup routine
$GISBASE/etc/clean_temp

# remove session tmp directory:
rm -rf /tmp/grass6-$USER-$GIS_LOCK
