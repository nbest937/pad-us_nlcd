all: cusa ak pr hi

cusa: world5min.tif
	gdalwarp -overwrite -of HFA -t_srs "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=23 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs" -te -2493045 177285 2342655 3310005 -tr 30 30 -co "COMPRESSED=YES" world5min.tif aeaGrid5minCUSA.img

ak: world5min.tif
	gdalwarp -overwrite -of HFA -t_srs "+proj=aea +lat_1=55 +lat_2=65 +lat_0=50 +lon_0=-154 +x_0=0 +y_0=0 +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs" -te -2232345 344805 1494735 2380125 -tr 30 30 -co "COMPRESSED=YES" world5min.tif aeaGrid5minAlaska.img

pr: world5min.tif
	gdalwarp -overwrite -of HFA -t_srs "+proj=aea +lat_1=29.5 +lat_2=45.5 +lat_0=23 +lon_0=-96 +x_0=0 +y_0=0 +ellps=GRS80 +units=m +no_defs" -te 3092415 -78975 3345225 59415 -tr 30 30 -co "COMPRESSED=YES" world5min.tif aeaGrid5minPuertoRico.img

hi: world5min.tif
	gdalwarp -overwrite -of HFA -t_srs "+proj=aea +lat_1=8.000000000000002 +lat_2=18 +lat_0=3 +lon_0=-157 +x_0=0 +y_0=0 +ellps=WGS84 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs" -te -345945 1753875 237225 2132415 -tr 30 30 -co "COMPRESSED=YES" world5min.tif aeaGrid5minHawaii.img

grass: grassPuertoRico grassHawaii grassAlaska grasscUSA

grassPuertoRico:
	./grassPuertoRico.sh

grassHawaii:
	./grassHawaii.sh

grassAlaska:
	./grassAlaska.sh

grasscUSA:
	./grasscUSA.sh

