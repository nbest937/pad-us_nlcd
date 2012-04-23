all: wget unzip ogr2ogr gdal

gdal: gdal_rasterize.sh
	chmod u+x gdal_rasterize.sh	
	./gdal_rasterize.sh

ogr2ogr: ogr2ogr.sh
	chmod u+x ogr2ogr.sh
	./ogr2ogr.sh

unzip: PADUS1_2_Shapfile.zip
	unzip -d PADUS1_2_Shapfile PADUS1_2_Shapfile.zip PADUS1_2_SHP.{dbf,prj,shp,shp.xml,shx}

wget: 
	wget --no-check-certificate https://s3.amazonaws.com/GapFTP/PADUS/PADUS1_2_Shapfile.zip


.PHONY: wget unzip ogr2ogr gdal