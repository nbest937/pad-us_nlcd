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
g.gisenv set=MAPSET=temp
eval $(g.gisenv)
mkdir -p $GISDBASE/$LOCATION_NAME/$MAPSET
# g.mapset -c mapset=temp

if test -d $GISDBASE/cUSA ; then
 echo "ERROR. Location $LOCATION already exists in $GISDBASE"
 exit 1
fi

r.in.gdal in=aeaGrid5mincUSA.img out=grid_5min location=cUSA
# g.gisenv set=LOCATION_NAME=cUSA
# g.gisenv set=MAPSET=PERMANENT
g.mapset mapset=PERMANENT location=cUSA
rm -rf $GISDBASE/$GIS_LOCK/temp
# g.rename rast=aeaGrid5mincUSA.img,grid_5min
r.in.gdal input=pad-us/PADUS1_2_regions/PADUS1_2_cUSA_GAP.tif output=gap

r.in.gdal input=nlcd2006/nlcd2006_landcover_4-20-11_se5.img output=nlcd2006

r.mapcalc MASK="if( nlcd2006 > 0, 1, null())"
echo grid_5min,nlcd2006,gap,n > statscUSA.csv
r.stats -c input=grid_5min,nlcd2006,gap fs=, >> statscUSA.csv
r.mask -r
echo grid_5min,n > gridcUSA.csv
r.stats -c input=grid_5min fs=, >> gridcUSA.csv
# run GRASS' cleanup routine
$GISBASE/etc/clean_temp

# remove session tmp directory:
rm -rf /tmp/grass6-$USER-$GIS_LOCK
