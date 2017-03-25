<?xml version='1.0'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="yankees">
		<html style="font-family:trebuchet ms, verdana, sans-serif;">
<style>

tr:hover td {
  background-color: #c0c0c0;
}
img {
  float:right;margin-top:-25px;
	}
@font-face {
   font-family:Myfont;
   src: url(font/Playball.ttf);
   
   }
.tooltip {
    position: relative;
    display: inline;
    border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 80px;
    background-color: black;
    color: #fff;
    text-align: center;
    border-radius: 2px;
    padding: 3px 0;
    
 
    position: absolute;
    z-index: 1;
    bottom: 100%;
    left: 50%;
margin-left: -60px;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
}
</style>
<head>
<div style="padding:30px ;background:#0d172e;color:white;font-family:Myfont;font-size: 250%;border:1px solid white;">
<tr style="margin:8px;"><th>New York Yankees</th></tr>
<th><img src="images/logo.jpg" width="100" height="100"/></th>
</div>
</head>
			<body style="background-image: url(images/dos.jpg);background-repeat: no-repeat;background-size:cover; background-attachment: fixed;"><br/>

<br/>

<table align="center" style="width: 510px;height: 380px;border-spacing: 0;
border:1px solid  #666666;-webkit-box-shadow: 11px 10px 0px -5px rgba(13,2,13,1);
-moz-box-shadow: 11px 10px 0px -5px rgba(13,2,13,1);
box-shadow: 11px 10px 0px -5px rgba(13,2,13,1);margin-top:40px;">
<thead>
<tr>
<th colspan="8" style="background-color:#0d172e;color:white;border:1px solid  #666666;">
							<xsl:text>Player Stats</xsl:text>
</th>
</tr>

<tr style="background-color:#ccd4e2;color:black; font-size:small;cursor: pointer;">
						<th>Name</th>
						<th class="tooltip" style="text-align: left;">Pos<span class="tooltiptext">Position</span></th>
						<th class="tooltip" style="text-align: left;">G<span class="tooltiptext">Number of games</span></th>
						<th class="tooltip" style="text-align: left;">BB<span class="tooltiptext">Number of walk</span></th>
						<th class="tooltip" style="text-align: left;">H<span class="tooltiptext">Number of Hits</span></th>
						<th class="tooltip" style="text-align: left;">AB<span class="tooltiptext">Number of time at bat</span></th>
						<th class="tooltip" style="text-align: left;">AVG<span class="tooltiptext">Batting average</span></th>
</tr>
</thead>

				<tbody>
					<xsl:for-each select=".//player">
<tr style="background-color:#e7ebf1;color:black;font-size:small;cursor: pointer;">
<td style="text-align:center;"><xsl:value-of select="./name"/></td>
<td><xsl:value-of select="./position"/></td>
<td><xsl:value-of select="./stats/@g"/></td>
<td><xsl:value-of select="./stats/@bb"/></td>
<td><xsl:value-of select="./stats/@h"/></td>
<td><xsl:value-of select="./stats/@ab"/></td>
<td style="background-color:#c0c0c0"><xsl:value-of select="format-number(./stats/@h  div ./stats/@ab, '.###')"/></td>
</tr>
</xsl:for-each>
</tbody>
</table>
<br/><br/>
<footer style=" position: absolute;right: 0;bottom: 0;left: 0;padding: 2rem;background-color:#0d172e;
 text-align: center;"></footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios/>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->