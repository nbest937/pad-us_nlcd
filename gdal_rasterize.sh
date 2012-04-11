gdal_rasterize -ot Byte -tr 30 30 -tap -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -l PADUS1_2_cUSA PADUS1_2_regions PADUS1_2_regions/PADUS1_2_cUSA_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -tap -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -l PADUS1_2_Alaska PADUS1_2_regions PADUS1_2_regions/PADUS1_2_Alaska_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -tap -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -l PADUS1_2_Caribbean PADUS1_2_regions PADUS1_2_regions/PADUS1_2_Caribbean_GAP.tif 
gdal_rasterize -ot Byte -tr 30 30 -tap -at -a GAP_Sts -a_nodata 255 -co "COMPRESS=LZW" -l PADUS1_2_Pacific PADUS1_2_regions PADUS1_2_regions/PADUS1_2_Pacific_GAP.tif 
