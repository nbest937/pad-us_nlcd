gdal: ogr2ogr
	chmod u+x gdal_rasterize.sh	
	./gdal_rasterize.sh

ogr2ogr: unzip 
	chmod u+x ogr2ogr.sh
	./ogr2ogr.sh

unzip: wget 
	unzip -n -d PADUS1_2_Shapfile PADUS1_2_Shapfile.zip PADUS1_2_SHP.dbf PADUS1_2_SHP.prj PADUS1_2_SHP.shp PADUS1_2_SHP.shx
	ogrinfo PADUS1_2_Shapfile -sql "CREATE SPATIAL INDEX ON PADUS1_2_SHP"

wget:
	wget -nc --no-check-certificate https://s3.amazonaws.com/GapFTP/PADUS/PADUS1_2_Shapfile.zip


.PHONY: wget unzip ogr2ogr gdal