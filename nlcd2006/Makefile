
all: nlcd2006 nlcd2001

nlcd2006:
	wget 'http://gisdata.usgs.gov/TDDS/DownloadFile.php?TYPE=nlcd2006&FNAME=NLCD2006_landcover_4-20-11_se5.zip'
	7za e NLCD2006_landcover_4-20-11_se5.zip

nlcd2001:
        wget 'http://gisdata.usgs.gov/TDDS/DownloadFile.php?TYPE=nlcd2001v2&FNAME=NLCD2001_landcover_v2_2-13-11.zip' -O NLCD2001_landcover_v2_2-13-11.zip

ak:
        wget 'http://gisdata.usgs.gov/TDDS/DownloadFile.php?TYPE=nlcdak&FNAME=AK_NLCD_2001_land_cover_3-13-08.zip' -O AK_NLCD_2001_land_cover_3-13-08.zip

hi:
        wget 'http://gisdata.usgs.gov/TDDS/DownloadFile.php?TYPE=nlcdhi&FNAME=HI_landcover_wimperv_9-30-08_se5.zip' -O HI_landcover_wimperv_9-30-08_se5.zip

pr:
	wget 'http://gisdata.usgs.gov/TDDS/DownloadFile.php?TYPE=nlcdpr&FNAME=PR_landcover_wimperv_10-28-08_se5.zip' -O PR_landcover_wimperv_10-28-08_se5.zip
	7za e PR_landcover_wimperv_10-28-08_se5.zip pr_landcover_wimperv_10-28-08_se5.img pr_landcover_wimperv_10-28-08_se5.rrd


.PHONY: nlcd2006 nlcd2001 ak hi pr