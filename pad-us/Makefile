all: wget unzip ogr2ogr gdal

gdal:
	chmod u+x gdal_rasterize.sh
	./gdal_rasterize.sh

ogr2ogr: 
	chmod u+x ogr2ogr.sh
	./ogr2ogr.sh

unzip: 
	unzip PADUS1_2_Shapfile.zip

wget:
	wget https://s3.amazonaws.com/GapFTP/PADUS/PADUS1_2_Shapfile.zip


.PHONY: wget unzip ogr2ogr gdal