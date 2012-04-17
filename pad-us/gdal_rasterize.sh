#!/bin/bash -v

gdal_rasterize -ot Byte -tr 30 30 -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -te -2493045 177285 2342655 3310005 -l PADUS1_2_cUSA PADUS1_2_regions PADUS1_2_regions/PADUS1_2_cUSA_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -te -2232345 344805 1494735 2380125 -l PADUS1_2_Alaska PADUS1_2_regions PADUS1_2_regions/PADUS1_2_Alaska_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -te 3092415 -78975 3345225 59415 -l PADUS1_2_PuertoRico PADUS1_2_regions PADUS1_2_regions/PADUS1_2_PuertoRico_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -te -345945 1753875 237225 2132415 -l PADUS1_2_Hawaii PADUS1_2_regions PADUS1_2_regions/PADUS1_2_Hawaii_GAP.tif 
