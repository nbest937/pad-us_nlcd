<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="1.7.2-Wroclaw" minimumScale="0" maximumScale="1e+08" hasScaleBasedVisibilityFlag="0">
  <transparencyLevelInt>255</transparencyLevelInt>
  <renderer-v2 symbollevels="0" type="RuleRenderer" firstrule="0">
    <rules>
      <rule scalemaxdenom="0" description="" filter="GAP_Sts IN ('1','2','3')" symbol="0" scalemindenom="0" label="Mandated"/>
      <rule scalemaxdenom="0" description="" filter="GAP_Sts = '4'" symbol="1" scalemindenom="0" label="Not Mandated"/>
    </rules>
    <symbols>
      <symbol outputUnit="MM" alpha="1" type="fill" name="0">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="85,170,0,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="no"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="1">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="170,170,127,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="no"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
      <symbol outputUnit="MM" alpha="1" type="fill" name="default">
        <layer pass="0" class="SimpleFill" locked="0">
          <prop k="color" v="147,115,167,255"/>
          <prop k="color_border" v="0,0,0,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="style" v="solid"/>
          <prop k="style_border" v="solid"/>
          <prop k="width_border" v="0.26"/>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties/>
  <displayfield>Category</displayfield>
  <label>0</label>
  <labelattributes>
    <label fieldname="" text="Label"/>
    <family fieldname="" name="Lucida Grande"/>
    <size fieldname="" units="pt" value="12"/>
    <bold fieldname="" on="0"/>
    <italic fieldname="" on="0"/>
    <underline fieldname="" on="0"/>
    <strikeout fieldname="" on="0"/>
    <color fieldname="" red="0" blue="0" green="0"/>
    <x fieldname=""/>
    <y fieldname=""/>
    <offset x="0" y="0" units="pt" yfieldname="" xfieldname=""/>
    <angle fieldname="" value="0" auto="0"/>
    <alignment fieldname="" value="center"/>
    <buffercolor fieldname="" red="255" blue="255" green="255"/>
    <buffersize fieldname="" units="pt" value="1"/>
    <bufferenabled fieldname="" on=""/>
    <multilineenabled fieldname="" on=""/>
    <selectedonly on=""/>
  </labelattributes>
  <edittypes>
    <edittype type="0" name="Agg_Src"/>
    <edittype type="0" name="Category"/>
    <edittype type="0" name="Comments"/>
    <edittype type="0" name="GAPCdDt"/>
    <edittype type="0" name="GAPCdSrc"/>
    <edittype type="0" name="GAP_Sts"/>
    <edittype type="0" name="GAPsts"/>
    <edittype type="0" name="GIS_Acres"/>
    <edittype type="0" name="GIS_Src"/>
    <edittype type="0" name="IUCN_cat"/>
    <edittype type="0" name="IUCNcat"/>
    <edittype type="0" name="Loc_own"/>
    <edittype type="0" name="Mang_Name"/>
    <edittype type="0" name="OwnName"/>
    <edittype type="0" name="OwnType"/>
    <edittype type="0" name="Own_Name"/>
    <edittype type="0" name="Own_Type"/>
    <edittype type="0" name="P_Des_Nm"/>
    <edittype type="0" name="P_Des_Tp"/>
    <edittype type="0" name="P_Loc_Nm"/>
    <edittype type="0" name="P_loc_ds"/>
    <edittype type="0" name="PdesTp"/>
    <edittype type="0" name="SDesTp"/>
    <edittype type="0" name="SHAPE_Area"/>
    <edittype type="0" name="SHAPE_Leng"/>
    <edittype type="0" name="S_Loc_Ds"/>
    <edittype type="0" name="S_Loc_Nm"/>
    <edittype type="0" name="S_des_Tp"/>
    <edittype type="0" name="Src_Date"/>
    <edittype type="0" name="StateNm"/>
    <edittype type="0" name="State_Nm"/>
    <edittype type="0" name="Status"/>
  </edittypes>
  <editform></editform>
  <editforminit></editforminit>
  <annotationform></annotationform>
  <attributeactions/>
</qgis>
