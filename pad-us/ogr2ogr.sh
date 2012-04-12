ogr2ogr -overwrite PADUS1_2_regions PADUS1_2_Shapfile -nln PADUS1_2_cUSA -where "State_Nm IN ('01','04','05','06','08','09','10','11','12','13','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','44','45','46','47','48','49','50','51','53','54','55','56')" PADUS1_2_SHP 
ogr2ogr -overwrite PADUS1_2_regions PADUS1_2_Shapfile -nln PADUS1_2_Alaska -where "State_Nm IN ('02')" PADUS1_2_SHP 
ogr2ogr -overwrite PADUS1_2_regions PADUS1_2_Shapfile -nln PADUS1_2_Caribbean -where "State_Nm IN ('72','78')" PADUS1_2_SHP 
ogr2ogr -overwrite PADUS1_2_regions PADUS1_2_Shapfile -nln PADUS1_2_Pacific -where "State_Nm IN ('15','60','64','66','68','69','70','74')" PADUS1_2_SHP 
