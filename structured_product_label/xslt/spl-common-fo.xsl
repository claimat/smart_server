<?xml version="1.0" encoding="UTF-16"?>
<!DOCTYPE fo:root [
<!ENTITY tilde  "&#126;">
  <!ENTITY florin "&#131;">
  <!ENTITY elip   "&#133;">
  <!ENTITY dag    "&#134;">
  <!ENTITY ddag   "&#135;">
  <!ENTITY cflex  "&#136;">
  <!ENTITY permil "&#137;">
  <!ENTITY uscore "&#138;">
  <!ENTITY OElig  "&#140;">
  <!ENTITY lsquo  "&#145;">
  <!ENTITY rsquo  "&#146;">
  <!ENTITY ldquo  "&#147;">
  <!ENTITY rdquo  "&#148;">
  <!ENTITY bullet  "&#149;">
  <!ENTITY endash "&#150;">
  <!ENTITY emdash "&#151;">
  <!ENTITY trade  "&#153;">
  <!ENTITY oelig  "&#156;">
  <!ENTITY Yuml   "&#159;">
  <!ENTITY nbsp   "&#160;">
  <!ENTITY iexcl  "&#161;">
  <!ENTITY cent   "&#162;">
  <!ENTITY pound  "&#163;">
  <!ENTITY curren "&#164;">
  <!ENTITY yen    "&#165;">
  <!ENTITY brvbar "&#166;">
  <!ENTITY sect   "&#167;">
  <!ENTITY uml    "&#168;">
  <!ENTITY copy   "&#169;">
  <!ENTITY ordf   "&#170;">
  <!ENTITY laquo  "&#171;">
  <!ENTITY not    "&#172;">
  <!ENTITY shy    "&#173;">
  <!ENTITY reg    "&#174;">
  <!ENTITY macr   "&#175;">
  <!ENTITY deg    "&#176;">
  <!ENTITY plusmn "&#177;">
  <!ENTITY sup2   "&#178;">
  <!ENTITY sup3   "&#179;">
  <!ENTITY acute  "&#180;">
  <!ENTITY micro  "&#181;">
  <!ENTITY para   "&#182;">
  <!ENTITY middot "&#183;">
  <!ENTITY cedil  "&#184;">
  <!ENTITY sup1   "&#185;">
  <!ENTITY ordm   "&#186;">
  <!ENTITY raquo  "&#187;">
  <!ENTITY frac14 "&#188;">
  <!ENTITY frac12 "&#189;">
  <!ENTITY frac34 "&#190;">
  <!ENTITY iquest "&#191;">
  <!ENTITY Agrave "&#192;">
  <!ENTITY Aacute "&#193;">
  <!ENTITY Acirc  "&#194;">
  <!ENTITY Atilde "&#195;">
  <!ENTITY Auml   "&#196;">
  <!ENTITY Aring  "&#197;">
  <!ENTITY AElig  "&#198;">
  <!ENTITY Ccedil "&#199;">
  <!ENTITY Egrave "&#200;">
  <!ENTITY Eacute "&#201;">
  <!ENTITY Ecirc  "&#202;">
  <!ENTITY Euml   "&#203;">
  <!ENTITY Igrave "&#204;">
  <!ENTITY Iacute "&#205;">
  <!ENTITY Icirc  "&#206;">
  <!ENTITY Iuml   "&#207;">
  <!ENTITY ETH    "&#208;">
  <!ENTITY Ntilde "&#209;">
  <!ENTITY Ograve "&#210;">
  <!ENTITY Oacute "&#211;">
  <!ENTITY Ocirc  "&#212;">
  <!ENTITY Otilde "&#213;">
  <!ENTITY Ouml   "&#214;">
  <!ENTITY times  "&#215;">
  <!ENTITY Oslash "&#216;">
  <!ENTITY Ugrave "&#217;">
  <!ENTITY Uacute "&#218;">
  <!ENTITY Ucirc  "&#219;">
  <!ENTITY Uuml   "&#220;">
  <!ENTITY Yacute "&#221;">
  <!ENTITY THORN  "&#222;">
  <!ENTITY szlig  "&#223;">
  <!ENTITY agrave "&#224;">
  <!ENTITY aacute "&#225;">
  <!ENTITY acirc  "&#226;">
  <!ENTITY atilde "&#227;">
  <!ENTITY auml   "&#228;">
  <!ENTITY aring  "&#229;">
  <!ENTITY aelig  "&#230;">
  <!ENTITY ccedil "&#231;">
  <!ENTITY egrave "&#232;">
  <!ENTITY eacute "&#233;">
  <!ENTITY ecirc  "&#234;">
  <!ENTITY euml   "&#235;">
  <!ENTITY igrave "&#236;">
  <!ENTITY iacute "&#237;">
  <!ENTITY icirc  "&#238;">
  <!ENTITY iuml   "&#239;">
  <!ENTITY eth    "&#240;">
  <!ENTITY ntilde "&#241;">
  <!ENTITY ograve "&#242;">
  <!ENTITY oacute "&#243;">
  <!ENTITY ocirc  "&#244;">
  <!ENTITY otilde "&#245;">
  <!ENTITY ouml   "&#246;">
  <!ENTITY oslash "&#248;">
  <!ENTITY ugrave "&#249;">
  <!ENTITY uacute "&#250;">
  <!ENTITY ucirc  "&#251;">
  <!ENTITY uuml   "&#252;">
  <!ENTITY yacute "&#253;">
  <!ENTITY thorn  "&#254;">
  <!ENTITY yuml   "&#255;">
  <!ENTITY abullet  "&#8226;">
  <!ENTITY bbullet  "&#9687;">
]>
<!--

Software distributed under the License is distributed on an "AS IS"
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 

Software distributed under the License is distributed on an "AS IS"
basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. 

Developer: FDA

Revision: 02/2008: initial version
Revision: 09/2008: version 4.0.3

This xsl requires specChar.xml to handle special characters during formatting.

-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:html="http://www.w3.org/1999/xhtml" xmlns:fo="http://www.w3.org/1999/XSL/Format"
	xmlns:v3="urn:hl7-org:v3" xmlns:exsl="http://exslt.org/common"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	exclude-result-prefixes="exsl msxsl v3 xsl xsi">
	<xsl:param name="show-subjects-xml" select="1"/>
	<xsl:param name="show-boxed-warning" select="/.."/>
	<xsl:param name="show-data" select="/.."/>
	<xsl:param name="show-section-numbers" select="/.."/>
	<xsl:param name="update-check-url-base" select="/.."/>
	<xsl:param name="standardSections" select="document('plr-sections.xml')/*"/>
	<xsl:param name="specialChar" select="document('spec_char.xml')/*"/>
	<xsl:param name="css" select="'./spl.css'"/>

	<xsl:param name="tocMaxLine" select="24"/>
	
	<xsl:param name="isWordVersion" select="/.."/>
	<xsl:param name="list-label-1">i.</xsl:param>
	<xsl:attribute-set name="ol-label-1"/>

	<xsl:param name="list-label-2">a.</xsl:param>
	<xsl:attribute-set name="ol-label-2"/>

	<xsl:param name="list-label-3">1.</xsl:param>
	<xsl:attribute-set name="ol-label-3"/>

	<xsl:attribute-set name="spl-section">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1.17em</xsl:attribute>
		<xsl:attribute name="space-after">1.17em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-hl-content">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-fpi-content">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-content">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-title-content">
		<xsl:attribute name="text-transform">capitalize</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-table-highlight">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-table-content-highlight">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="toc1">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-transform">uppercase</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="toc2">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="start-indent">.2in</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="toc3">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="start-indent">.4in</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="toc4">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="start-indent">.6in</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="spl-fpi-content-temp">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<xsl:attribute name="span">all</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="spl-paragraph">	
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-fpi-content-paragraph">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="fpi-toc1">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-transform">uppercase</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="fpi-toc2">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="fpi-toc3">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="fpi-toc4">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="spl-table">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-highlights-hanging">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-highlights-content">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-table-contentTable">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-table-formTable">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-table-highlightTable">
		<xsl:attribute name="border">1pt</xsl:attribute>
		<xsl:attribute name="border-style">solid</xsl:attribute>
	</xsl:attribute-set>



	<xsl:attribute-set name="spl-tr">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-tr-formTable">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-tr-formTableRow">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-tr-formTableRowAlt">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-td">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-def1">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-def">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-contentTableTitle">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-formLabel">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-formItem">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-td-formTitle">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-th">
		<xsl:attribute name="padding-start">3pt</xsl:attribute>
		<xsl:attribute name="padding-end">3pt</xsl:attribute>
		<xsl:attribute name="padding-before">3pt</xsl:attribute>
		<xsl:attribute name="padding-after">3pt</xsl:attribute>
	</xsl:attribute-set>


	<xsl:attribute-set name="spl-h1-warning">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-h1-highlights">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-h1-highlights-title">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-family">Times</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-fpi-warning">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="margin-left">1em</xsl:attribute>
		<xsl:attribute name="margin-right">1em</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-dt">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-after">2pt</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-dd">
		<xsl:attribute name="start-indent">.4in</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-sup">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-ul">
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="spl-xmchange">
		<xsl:attribute name="border-left-color">red</xsl:attribute>
		<xsl:attribute name="border-left-width">1pt</xsl:attribute>
		<xsl:attribute name="border-left-style">solid</xsl:attribute>
		<xsl:attribute name="margin-left">-.3in</xsl:attribute>
		<xsl:attribute name="padding-left">.3in</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>
	<xsl:strip-space elements="*"/>
	
	<xsl:variable name="numHighlightSections"
		select="number(count(//v3:section[descendant::v3:highlight and not(ancestor::v3:section) and not(./v3:code[descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='34066-1' or @code='43683-2' or @code='49489-8']])]/v3:excerpt) div 2)"/>
	<xsl:variable name="numTocLines"
		select="number(count(//v3:section[string-length(v3:title)>0]) div 2)"/>

	<!-- The indication secction variable contains the actual Indication Section node-->
	<xsl:variable name="indicationSection"
		select="/v3:document/v3:component/v3:structuredBody/v3:component//v3:section [v3:code [descendant-or-self::* [(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='34067-9'] ] ]"/>
	<xsl:variable name="indicationSectionCode">34067-9</xsl:variable>
	<xsl:variable name="dosageFormsAndStrengthsSectionCode">43678-2</xsl:variable>
	<xsl:variable name="dosageAndAdministrationSectionCode">34068-7</xsl:variable>
	<xsl:variable name="contraindicatonsSectionCode">34070-3</xsl:variable>
	<xsl:variable name="warningsAndPrecautionsSectionCode">43685-7</xsl:variable>
	<xsl:variable name="boxedWarningSectionCode">34066-1</xsl:variable>
	<xsl:variable name="currentLoincCode" select="v3:document/v3:code/@code"/>	
	<xsl:variable name="gSr4" select="boolean(count(//v3:manufacturedProduct/v3:manufacturedProduct)) or v3:document/v3:code/@code = '51726-8'  or v3:document/v3:code/@code = '51725-0' "/>
	<xsl:variable name="gSr3" select="boolean(count(//v3:manufacturedProduct/v3:manufacturedMedicine))"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:html="http://www.w3.org/1999/xhtml"
			writing-mode="lr-tb" hyphenate="false" text-align="start" role="html:html">

			<fo:layout-master-set>
				<fo:simple-page-master page-width="8.5in" page-height="11in" master-name="h-pages">
					<fo:region-body column-gap=".5in" column-count="2" margin-left=".5in" margin-bottom=".5in"
						margin-right=".5in" margin-top=".5in"/>
					<fo:region-before display-align="before" extent=".4in" region-name="page-header"/>
					<fo:region-after display-align="after" extent=".4in" region-name="page-footer"/>
					<fo:region-start extent=".4in"/>
					<fo:region-end extent=".4in"/>
				</fo:simple-page-master>

				<fo:simple-page-master page-width="8.5in" page-height="11in" master-name="all-pages">
					<fo:region-body column-gap=".5in" column-count="2" margin-left=".5in" margin-bottom=".5in"
						margin-right=".5in" margin-top=".5in"/>
					<fo:region-before display-align="before" extent=".4in" region-name="page-header"/>
					<fo:region-after display-align="after" extent=".4in" region-name="page-footer"/>
					<fo:region-start extent=".4in"/>
					<fo:region-end extent=".4in"/>
				</fo:simple-page-master>
			</fo:layout-master-set>

			<xsl:if test="$numHighlightSections > 0">
				<fo:page-sequence master-reference="h-pages">
					<fo:title>
						<xsl:value-of select="v3:document/v3:title"/>
					</fo:title>
					<fo:static-content flow-name="page-header">
						<fo:block font-size="small" text-align="center" space-before="0.5in"
							space-before.conditionality="retain"/>
					</fo:static-content>
					<fo:static-content flow-name="page-footer">
						<fo:block font-size="small" text-align="center" space-after="0.5in"
							space-after.conditionality="retain"/>
					</fo:static-content>
					<fo:flow xsl:use-attribute-sets="spl-hl-content" flow-name="xsl-region-body">
						<xsl:if test="not($gSr4) and string-length(v3:document/v3:title) &gt; 1 and v3:document/v3:code/@code != '45129-4'">
							<xsl:apply-templates mode="title" select="v3:document"/>
						</xsl:if>
						<xsl:call-template name="highlights"/>
		                             <fo:block span="all"/>
						<fo:block>
							<xsl:choose>
								<xsl:when test="boolean($isWordVersion)">
									----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
								</xsl:when>
								<xsl:otherwise>
									<fo:leader leader-pattern="rule" leader-length="7.5in"/>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>

						<xsl:if test="boolean($isWordVersion) or $numTocLines &lt; $tocMaxLine">
							<xsl:call-template name="index"/>
							<fo:block span="all"/>
							<fo:block>
								<xsl:choose>
									<xsl:when test="boolean($isWordVersion)">
										----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
									</xsl:when>
									<xsl:otherwise>
										<fo:leader leader-pattern="rule" leader-length="7.5in"/>
									</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</xsl:if>
					</fo:flow>
				</fo:page-sequence>
			</xsl:if>

			<!-- disabled rest of doc -->
			<fo:page-sequence master-reference="all-pages">
				<fo:title>
					<xsl:if test="$numHighlightSections = 0">
						<xsl:value-of select="v3:document/v3:title"/>
					</xsl:if>
				</fo:title>
				<fo:static-content flow-name="page-header">
					<fo:block font-size="small" text-align="center" space-before="0.5in"
						space-before.conditionality="retain"/>
				</fo:static-content>
				<xsl:if test="not($isWordVersion) and not(boolean(//v3:document[v3:code/@code = '34390-5']))">					
					<fo:static-content flow-name="page-footer">
						<fo:block font-size="8pt" text-align="center" space-after="0.5in"
							space-after.conditionality="retain">page <fo:page-number/> of <fo:page-number-citation
								ref-id="last-page"/></fo:block>
					</fo:static-content>
				</xsl:if>
				<fo:flow xsl:use-attribute-sets="spl-fpi-content" flow-name="xsl-region-body">
					<xsl:choose>
						<xsl:when test="boolean(//v3:document[v3:code/@code = '34390-5'])">	
							<fo:block xsl:use-attribute-sets="spl-fpi-content-temp">
								<xsl:call-template name="otcTable"/>
							</fo:block>
						</xsl:when>
						<xsl:otherwise>	
							<xsl:if test="$numHighlightSections > 0">
								<xsl:if test="not(boolean($isWordVersion)) and $numTocLines >= $tocMaxLine">
									<xsl:call-template name="index"/>
									<fo:block span="all"/>
									<fo:block span="all">
											<xsl:choose>
												<xsl:when test="boolean($isWordVersion)">
													--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
												</xsl:when>
												<xsl:otherwise>
													<fo:leader leader-pattern="rule" leader-length="7.5in"/>
												</xsl:otherwise>
											</xsl:choose>
									</fo:block>
								</xsl:if>
							</xsl:if>
							<xsl:if test="$numHighlightSections = 0">
								<xsl:if test="v3:document/v3:code/@code != '45129-4'">
									<xsl:apply-templates mode="title" select="v3:document"/>
								</xsl:if>								
								<xsl:if test="string-length(v3:document/v3:title) &gt; 1">
									<fo:block span="all">
										<!-- PCR 807 -->
										<xsl:apply-templates mode="mixed" select="/v3:document/v3:title"></xsl:apply-templates>
									</fo:block>
								</xsl:if>
							</xsl:if>
							<fo:block xsl:use-attribute-sets="spl-fpi-content-temp">
								<xsl:if test="$numHighlightSections > 0">
									<fo:block xsl:use-attribute-sets="spl-fpi-content-paragraph" font-weight="bold">
										FULL PRESCRIBING INFORMATION </fo:block>
								</xsl:if>
								<fo:inline/>
								<xsl:apply-templates select="@*|node()"/>
							</fo:block>
							<xsl:if
								test="not(count(//v3:section[v3:code/@code = '42231-1']) = 0 and  count(//v3:section[v3:code/@code = '42230-3']) = 0)">
								<xsl:choose>
									<xsl:when test="$isWordVersion">
										<fo:block role="special_empty_line_for_word">&nbsp;</fo:block>
										<fo:table xsl:use-attribute-sets="spl-fpi-content-temp" role="v3:table-dis">
											<fo:table-column column-width="3.8in" role="v3:td"/>
											<fo:table-column column-width="3.8in" role="v3:td"/>
											<fo:table-body>
												<fo:table-row role="v3:tr">
													<fo:table-cell role="v3:td">
														<fo:block  text-align="left" role="process-table-cell"><xsl:call-template name="effectiveDate"/>
															  </fo:block>
													</fo:table-cell>
													<fo:table-cell role="v3:td">
														<fo:block  text-align="right" role="process-table-cell"><xsl:call-template name="distributorName"/>
															  </fo:block>
													</fo:table-cell>
												</fo:table-row>
											</fo:table-body>
										</fo:table>
									</xsl:when>
									<xsl:otherwise>
										<fo:block xsl:use-attribute-sets="spl-fpi-content-temp">
											<fo:list-block>
												<fo:list-item>
													<fo:list-item-label end-indent="label-end()">
														<fo:block keep-together.within-line="always" text-align="start">
															<xsl:call-template name="effectiveDate"/>
														</fo:block>
													</fo:list-item-label>
													<fo:list-item-body start-indent="body-start()">
														<fo:block keep-together.within-line="always" text-align="end">
															<xsl:call-template name="distributorName"/>
														</fo:block>
													</fo:list-item-body>
												</fo:list-item>
											</fo:list-block>
										</fo:block>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:if>
						</xsl:otherwise>
					</xsl:choose>
					<fo:block id="last-page"/>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="replace-char">
		<xsl:param name="value"/>
		<xsl:param name="from"/>
		<xsl:param name="to"/>
		<xsl:choose>
			<xsl:when test="contains($value,$from)">
				<xsl:value-of select="substring-before($value,$from)"/>
				<xsl:value-of select="$to"/>
				<xsl:call-template name="replace-char">
					<xsl:with-param name="value" select="substring-after($value,$from)"/>
					<xsl:with-param name="from" select="$from"/>
					<xsl:with-param name="to" select="$to"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="replace-char2">
		<xsl:param name="value"/>
		<xsl:param name="from"/>
		<xsl:param name="to"/>
		<xsl:choose>
			<xsl:when test="contains($value,$from)">
				<xsl:value-of select="substring-before($value,$from)"/>
				<xsl:value-of select="$to"/>
				<xsl:call-template name="replace-char2">
					<xsl:with-param name="value" select="substring-after($value,$from)"/>
					<xsl:with-param name="from" select="$from"/>
					<xsl:with-param name="to" select="$to"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<!-- replace in $value substring $from with $to -->
	<xsl:template name="enclosed-with-symbol">
		<xsl:param name="value"/>
		<xsl:param name="from"/>
		<xsl:choose>
			<xsl:when test="contains($value,$from)"><xsl:value-of select="substring-before($value,$from)"
				/>&lt;fo:inline font-family="Symbol" font-size="8pt" ><xsl:value-of select="$from"
					/>&lt;/fo:inline><xsl:call-template name="enclosed-with-symbol">
					<xsl:with-param name="value" select="substring-after($value,$from)"/>
					<xsl:with-param name="from" select="$from"/>
				</xsl:call-template></xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$value"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="string-special-char-replace">
		<xsl:param name="text"/>
		<xsl:param name="search" select="document('specChar.xml')//v3:section"/>
		<xsl:choose>
			<xsl:when test="$search[2]">
				<xsl:call-template name="string-special-char-replace">
					<xsl:with-param name="text">
						<xsl:call-template name="enclosed-with-symbol">
							<xsl:with-param name="from" select="$search[1]/v3:title"/>
							<xsl:with-param name="value" select="$text"/>
						</xsl:call-template>
					</xsl:with-param>
					<xsl:with-param name="search" select="$search[position() > 1]"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="enclosed-with-symbol">
					<xsl:with-param name="from" select="$search[1]/v3:title"/>
					<xsl:with-param name="value" select="$text"/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="string-special-char">
		<xsl:param name="text"/>
		<xsl:param name="search" select="document('specChar.xml')//v3:section"/>	
		<xsl:variable name="replaced_text">
			<xsl:call-template name="replace-char">
				<xsl:with-param name="from" select="'&lt;'"/>
				<xsl:with-param name="to" select="'&amp;lt;'"/>
				<xsl:with-param name="value">
					<xsl:call-template name="replace-char">
						<xsl:with-param name="from" select="'&amp;'"/>
						<xsl:with-param name="to" select="'&amp;amp;'"/>
						<xsl:with-param name="value">
							<xsl:call-template name="replace-char">
								<xsl:with-param name="from" select="'&#8209;'"/>
								<xsl:with-param name="to" select="'&#8211;'"/>
								<xsl:with-param name="value">
									<xsl:call-template name="replace-char">
										<xsl:with-param name="from" select="'&#9679;'"/>
										<xsl:with-param name="to" select="'&#8226;'"/>
										<xsl:with-param name="value" select="$text"/>
									</xsl:call-template>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="replaced_text2">
			<xsl:call-template name="string-special-char-replace">
				<xsl:with-param name="search" select="$search"/>
				<xsl:with-param name="text" select="$replaced_text"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:value-of select="$replaced_text2" disable-output-escaping="yes"/>
	</xsl:template>

	<xsl:template name="string-titlecase">
		<xsl:param name="text"/>
		<xsl:param name="lastletter" select="' '"/>
		<xsl:if test="$text">
			<xsl:variable name="thisletter" select="substring($text,1,1)"/>
			<xsl:choose>
				<xsl:when test="$lastletter=' '">
					<xsl:value-of
						select="translate($thisletter,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"
					/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="$thisletter"/>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="string-titlecase">
				<xsl:with-param name="text" select="substring($text,2)"/>
				<xsl:with-param name="lastletter" select="$thisletter"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="string-lowercase">
		<!--** Convert the input text that is passed in as a parameter to lower case  -->
		<xsl:param name="text"/>
		<xsl:value-of
			select="translate($text,'ABCDEFGHIJKLMNOPQRSTUVWXYZ','abcdefghijklmnopqrstuvwxyz')"/>
	</xsl:template>
	<xsl:template name="string-uppercase">
		<!--** Convert the input text that is passed in as a parameter to upper case  -->
		<xsl:param name="text"/>
		<xsl:value-of
			select="translate($text,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
	</xsl:template>
	<xsl:template name="printSeperator">
		<!--** Print an ampercent-->
		<xsl:param name="currentPos" select="position()"/>
		<xsl:param name="lastPos" select="last()"/>
		<xsl:param name="lastDelimiter">and</xsl:param>
		<xsl:choose>
			<xsl:when test="number($currentPos) = number($lastPos)-1"><xsl:value-of
					select="$lastDelimiter"/>&#160;</xsl:when>
			<xsl:when test="number($currentPos) &lt; number($lastPos)-1">,&#160;</xsl:when>
		</xsl:choose>
	</xsl:template>
	<!-- MAIN MODE based on the deep null-transform -->
	<xsl:template match="@*|node()">
		<xsl:apply-templates select="@*|node()"/>
	</xsl:template>
	<!-- MODE HIGHLIGHTS -->
	<xsl:template name="highlights">
		<!--** Display the table of highlights that is on top of the SPL. The number of columns on 
	 each side is determined by the variable $numHighlightSections.  -->

		<fo:block font-size="8pt" font-family="Times" font-weight="bold">
			<fo:inline font-weight="bold" role="html:strong">HIGHLIGHTS OF PRESCRIBING
			INFORMATION</fo:inline>
		</fo:block>

		<xsl:if test="not(boolean($gSr4))">
		<xsl:variable name="medName">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text">
					<xsl:copy>
						<xsl:apply-templates mode="specialCus"
							select="//v3:subject[1]/v3:manufacturedProduct/v3:manufacturedMedicine/v3:name|//v3:subject[1]/v3:manufacturedProduct/v3:manufacturedProduct/v3:name"
						/>
					</xsl:copy>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<fo:block font-size="8pt" font-family="Times" font-weight="bold" space-before="1em" space-after="1em"> These
			highlights do not include all the information needed to use <xsl:value-of select="$medName"/>
			safely and effectively. See full prescribing information for <xsl:value-of select="$medName"
			/>. </fo:block>
			
		</xsl:if>
		<!-- PCR 603 Display all dosages- this logic is analogous to the title display of non PLR SPLs.  -->
		<!-- loop through all of the subject elements -->
		<fo:block xsl:use-attribute-sets="spl-content">
	<xsl:choose>
		<xsl:when test="boolean($gSr4)">	
			<fo:inline font-weight="bold" role="html:strong"><xsl:apply-templates mode="mixed" select="/v3:document/v3:title"></xsl:apply-templates></fo:inline>
		</xsl:when>
		<xsl:otherwise>
			<xsl:for-each select=".//v3:subject[v3:manufacturedProduct[v3:manufacturedMedicine|v3:manufacturedProduct]]">											
				<xsl:variable name="prevProductTitleString">
					<xsl:for-each select="preceding::v3:manufacturedProduct/v3:manufacturedMedicine|preceding::v3:manufacturedProduct/v3:manufacturedProduct">
						<xsl:call-template name="titleString">
							<xsl:with-param name="curProduct" select="." />
						</xsl:call-template>
					</xsl:for-each>
				</xsl:variable>
				<xsl:variable name="curProductTitleString"><xsl:call-template name="titleString"><xsl:with-param name="curProduct" select="./v3:manufacturedProduct/v3:manufacturedMedicine|./v3:manufacturedProduct/v3:manufacturedProduct" /></xsl:call-template></xsl:variable>
				<xsl:choose>
					<!-- if this is not the first subject then check to see if it is equal to any other preceding subject.  If it is then don't display anything for this subject -->
					<!-- note: this logic does not take into account subjects that are equal but have different internal parts (not sure if this would ever happen) -->												
					<xsl:when test="position() > 1 and contains($prevProductTitleString, $curProductTitleString)"/>
					<!-- otherwise display all the information for this subject -->
					<xsl:otherwise>
						<xsl:if test="position() > 1">
							<fo:block role="posEqOne"/>
						</xsl:if>
						<fo:inline font-weight="bold" role="html:strong">
							<xsl:apply-templates mode="hlMedNames"
								select="./v3:manufacturedProduct/v3:manufacturedMedicine|./v3:manufacturedProduct/v3:manufacturedProduct"
							/> for <!-- PCR 669  -->
							<xsl:variable name="iNumberOfRouteCodes"
								select="count(./v3:manufacturedProduct/v3:consumedIn/v3:substanceAdministration/v3:routeCode)"/>
							<xsl:for-each
								select="./v3:manufacturedProduct/v3:consumedIn/v3:substanceAdministration/v3:routeCode">
								<xsl:if test="(position()=last()) and ($iNumberOfRouteCodes>1)"> and </xsl:if>
								<xsl:call-template name="string-lowercase">
									<xsl:with-param name="text" select="@displayName"/>
								</xsl:call-template>
								<xsl:if test="(last() - position() > 1) and ($iNumberOfRouteCodes>1)">, </xsl:if>
							</xsl:for-each> use<xsl:if
								test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName != ''">,
									<xsl:if
									test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName = 'CI'"
										>C<fo:inline font-size="4pt">I</fo:inline></xsl:if>
								<xsl:if
									test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName = 'CII'"
										>C<fo:inline font-size="4pt">II</fo:inline></xsl:if>
								<xsl:if
									test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName = 'CIII'"
										>C<fo:inline font-size="4pt">III</fo:inline></xsl:if>
								<xsl:if
									test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName = 'CIV'"
										>C<fo:inline font-size="4pt">IV</fo:inline></xsl:if>
								<xsl:if
									test="./v3:manufacturedProduct/v3:subjectOf/v3:policy/v3:code/@displayName = 'CV'"
										>C<fo:inline font-size="4pt">V</fo:inline></xsl:if>
							</xsl:if>
						</fo:inline>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
		</xsl:otherwise>
	</xsl:choose>
			<fo:block/>
				<xsl:choose>
				<xsl:when test="boolean($gSr4)">
				</xsl:when>
				<xsl:otherwise>
				<xsl:choose>
					<xsl:when
						test="/v3:document/v3:component/v3:structuredBody/v3:component/v3:section/v3:subject/v3:manufacturedProduct[1]/v3:subjectOf/v3:approval/v3:author/v3:time/@value">						
						<fo:inline font-weight="bold" role="html:strong">Initial U.S. Approval: 
						<xsl:value-of
							select="/v3:document/v3:component/v3:structuredBody/v3:component/v3:section/v3:subject/v3:manufacturedProduct[1]/v3:subjectOf/v3:approval/v3:author/v3:time/@value"
						/>
						</fo:inline>
					</xsl:when>
					<xsl:when
						test="/v3:document/v3:verifier/v3:time/@value">						
						<fo:inline font-weight="bold" role="html:strong">Initial U.S. Approval: 
							<xsl:value-of select="/v3:document/v3:verifier/v3:time/@value"/>
						</fo:inline>
					</xsl:when>
				</xsl:choose>
				</xsl:otherwise>				
				</xsl:choose>
		</fo:block>
		<xsl:if test="boolean($isWordVersion)">
			<fo:block role="special_block_for_wordt">&nbsp;</fo:block>
		</xsl:if>
		
		<xsl:if
			test="//v3:section[descendant::v3:highlight and ./v3:code[descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='49489-8']]]/v3:excerpt"/>

		<xsl:apply-templates mode="mixed"
			select="//v3:section[descendant::v3:highlight and ./v3:code[descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='49489-8']]]/v3:excerpt"/>
		<!-- </fo:block> -->

		<xsl:for-each
			select="//v3:section[descendant::v3:highlight and not(ancestor::v3:section) and ./v3:code[descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='34066-1']]]/v3:excerpt">
			<xsl:if test="boolean($isWordVersion)">
				<fo:block>&#160;</fo:block>
			</xsl:if>
			<fo:table border-width="0.2mm" border-style="solid">	
				<xsl:if test="boolean($isWordVersion)">
					<fo:table-column column-width="7.5in" role="v3:col-word-highlight-table"/>
				</xsl:if>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block xsl:use-attribute-sets="spl-h1-warning">
								<!-- inside warning label -->
								<xsl:for-each select="v3:highlight/v3:text/node()[not(self::v3:title)]">
									<xsl:choose>
										<!-- WARNING: ANAPHYLACTIC REACTIONS and See full prescribing.. line-->
										<xsl:when test="$show-boxed-warning and position() &lt; 2">
											<!-- lists inside warning label -->
											<xsl:apply-templates mode="mixed" select="."/>
											<fo:inline font-weight="bold" font-style="italic">See full prescribing
												information for complete boxed warning.</fo:inline>
										</xsl:when>
										<xsl:when test="not($show-boxed-warning) and position() &lt; 3">
											<!-- lists inside warning label -->
											<xsl:apply-templates mode="mixed" select="."/>
										</xsl:when>
										<xsl:otherwise>
											<fo:block space-before.optimum="8pt" text-align="left">
												<xsl:apply-templates mode="mixed" select="."/>
											</fo:block>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:for-each>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			<xsl:if test="boolean($isWordVersion)">
				<fo:block>&#160;</fo:block>
			</xsl:if>
		</xsl:for-each>

		<!-- apply templates to display the Recent Major Change section within the highlight section -->
		<xsl:apply-templates mode="highlights"
			select="//v3:section[descendant::v3:highlight/v3:text and not(ancestor::v3:section) and ./v3:code[@codeSystem='2.16.840.1.113883.6.1' and @code='43683-2']]/v3:excerpt"/>
		<xsl:for-each
			select="//v3:section[descendant::v3:highlight/v3:text and not(ancestor::v3:section) and not(./v3:code[@codeSystem='2.16.840.1.113883.6.1' and (@code='34066-1' or @code='43683-2' or @code='49489-8')])]/v3:excerpt">

			<xsl:apply-templates mode="highlights" select="."/>
		</xsl:for-each>
		<fo:block xsl:use-attribute-sets="spl-table-highlight">
			<xsl:variable name="sectionNumberSequence">
				<xsl:apply-templates mode="sectionNumber" select="//v3:section[v3:code/@code = '34076-0']"/>
			</xsl:variable>
			<xsl:choose>
				<xsl:when
					test="count(//v3:section[v3:code/@code = '34076-0']) > 0 and (count(//v3:section[v3:code/@code = '42231-1']) = 0 and count(//v3:section[v3:code/@code = '38056-8']) = 0 and count(//v3:section[v3:code/@code = '42230-3']) = 0)">
					<fo:block/> See
					17 for PATIENT COUNSELING INFORMATION </xsl:when>
				<xsl:when
					test="count(//v3:section[v3:code/@code = '34076-0']) > 0 and (count(//v3:section[v3:code/@code = '38056-8']) > 0 or count(//v3:section[v3:code/@code = '42230-3']) > 0) and count(//v3:section[v3:code/@code = '42231-1']) = 0">
					<fo:block/> See 17 for PATIENT COUNSELING INFORMATION and FDA-approved patient labeling </xsl:when>
				<xsl:when
					test="(count(//v3:section[v3:code/@code = '34076-0']) > 0 and count(//v3:section[v3:code/@code = '42231-1']) > 0) and (count(//v3:section[v3:code/@code = '38056-8']) = 0 or count(//v3:section[v3:code/@code = '42230-3']) = 0)">
					<fo:block/> See 17 for PATIENT COUNSELING INFORMATION and Medication Guide </xsl:when>
				<xsl:when
					test="count(//v3:section[v3:code/@code = '34076-0']) > 0 and count(//v3:section[v3:code/@code = '42231-1']) > 0 and count(//v3:section[v3:code/@code = '38056-8']) > 0 and count(//v3:section[v3:code/@code = '42230-3']) > 0">
					<fo:block/> See 17 for PATIENT COUNSELING INFORMATION and Medication Guide </xsl:when>
			</xsl:choose>
		</fo:block>
		<fo:block text-align="right" xsl:use-attribute-sets="spl-table-highlight">
			<fo:block/>
			<fo:inline font-weight="bold" role="html:strong">
				<xsl:call-template name="effectiveDateHighlights"/>
			</fo:inline>
		</fo:block>
	</xsl:template>
	<xsl:template name="headerString">
		<xsl:param name="curProduct">.</xsl:param>
		GSG
		<xsl:value-of select="$curProduct/v3:name"/>
		<xsl:value-of select="$curProduct/v3:formCode/@code"/>
		<xsl:choose>
			<xsl:when test="$curProduct/v3:part">
				<xsl:value-of select="$curProduct/v3:asEntityWithGeneric/v3:genericMedicine/v3:name"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:for-each select="$curProduct/v3:ingredient[@classCode='ACTIM']">
					<!--fff<xsl:value-of select="name(.)"/>fff-->
					<xsl:call-template name="string-lowercase">
						<xsl:with-param name="text"
							select="v3:ingredientSubstance/v3:name"
						/>
					</xsl:call-template> 
				</xsl:for-each>
				<xsl:for-each select="$curProduct/v3:activeIngredient">
					<xsl:call-template name="string-lowercase">
						<xsl:with-param name="text"
							select="v3:activeIngredientSubstance/v3:name"
						/>
					</xsl:call-template> 
				</xsl:for-each>
			</xsl:otherwise>
		</xsl:choose>		
		GEG
	</xsl:template>	
	<xsl:template name="regMedNames">	
		<xsl:variable name="medName">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text">
					<xsl:copy><xsl:apply-templates mode="specialCus" select="./v3:name" /></xsl:copy>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:value-of select="$medName"/>
		<xsl:if test="./v3:name/v3:suffix">&#160;</xsl:if>
		<xsl:call-template name="string-uppercase">
			<xsl:with-param name="text"
				select="./v3:name/v3:suffix"/>
		</xsl:call-template> 
		- 
		<xsl:choose>
			<xsl:when test="./v3:activeIngredient">
				<xsl:for-each select="./v3:activeIngredient">
					<xsl:choose>
						<xsl:when test="position() > 1 and position() = last()"> and
						</xsl:when>				
						<xsl:when test="position() > 1">,
						</xsl:when>
					</xsl:choose>
					<xsl:call-template name="string-lowercase">
						<xsl:with-param name="text"
							select="v3:activeIngredientSubstance/v3:name"
						/>
					</xsl:call-template> 
				</xsl:for-each>
			</xsl:when>
			<xsl:when test="./v3:ingredient[@classCode!='IACT']">
				<xsl:for-each select="./v3:ingredient[@classCode!='IACT']">
					<xsl:choose>
						<xsl:when test="position() > 1 and  position() = last()"> and
						</xsl:when>				
						<xsl:when test="position() > 1">,
						</xsl:when>
					</xsl:choose>
					<xsl:call-template name="string-lowercase">
						<xsl:with-param name="text"
							select="v3:ingredientSubstance/v3:name"
						/>
					</xsl:call-template> 
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="genMedName">
					<xsl:call-template name="string-uppercase">
						<xsl:with-param name="text"
							select="./v3:asEntityWithGeneric/v3:genericMedicine/v3:name"
						/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:choose>
					<xsl:when test="$medName != $genMedName">
						<xsl:call-template name="string-lowercase">
							<xsl:with-param name="text"
								select="$genMedName"
							/>
						</xsl:call-template> 
					</xsl:when>
					<xsl:otherwise>&#160;</xsl:otherwise>
				</xsl:choose>&#160;
			</xsl:otherwise>
		</xsl:choose>
		&#160;
		<xsl:if test="not(v3:part)">
			<xsl:call-template name="string-lowercase">
				<xsl:with-param name="text"
					select="./v3:formCode/@displayName"/>
			</xsl:call-template>
			<xsl:text>&#160;</xsl:text>
		</xsl:if>
	</xsl:template>	
	<xsl:template name="titleString">
		<!-- how about route of administration? need to compare them as well? -->
		<xsl:param name="curProduct">.</xsl:param>
		GSG
		<xsl:value-of select="$curProduct/v3:name"/>
		<xsl:value-of select="$curProduct/v3:formCode/@code"/>
		<xsl:value-of select="$curProduct/v3:asEntityWithGeneric/v3:genericMedicine/v3:name"/>
		GEG
	</xsl:template>	
	<xsl:template name="hlMedNames" mode="hlMedNames" match="*">
		<xsl:variable name="medName">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text">
					<xsl:copy>
						<xsl:apply-templates mode="specialCus" select="./v3:name"/>
					</xsl:copy>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="genMedName">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text" select="./v3:asEntityWithGeneric/v3:genericMedicine/v3:name"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:value-of select="$medName"/>
		<xsl:choose>
			<xsl:when test="$medName != $genMedName"> (<xsl:call-template name="string-lowercase">
					<xsl:with-param name="text" select="$genMedName"/>
				</xsl:call-template>) </xsl:when>
			<xsl:otherwise>&#160;</xsl:otherwise>
		</xsl:choose>
		<xsl:call-template name="string-lowercase">
			<xsl:with-param name="text" select="./v3:formCode/@displayName"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template mode="specialCus" match="v3:name">
		<xsl:value-of select="text()"/>
	</xsl:template>
	<xsl:template mode="highlights" match="/|@*|node()">
		<!--** This may not be called from anywhere  -->
		<xsl:param name="class" select="."/>
		<xsl:apply-templates mode="highlights" select="@*|node()">
			<xsl:with-param name="class" select="$class"/>
		</xsl:apply-templates>
	</xsl:template>
	<xsl:template mode="highlights" match="v3:excerpt">
		<!--**Generates the highlights of the PLR.  -->
		<xsl:variable name="currentCode" select="ancestor::v3:section//v3:code/@code"/>
		<xsl:variable name="standardSection" select="$standardSections//v3:section[@code=$currentCode]"/>
		<xsl:variable name="sectionNumber" select="$standardSection/@number"/>
		<xsl:variable name="ARSection" select="$standardSections//v3:section[@code='34084-4']"/>
		<xsl:variable name="ARNumber" select="$ARSection[1]/@number"/>
		<xsl:variable name="currentSectionNum">
			<xsl:apply-templates mode="sectionNumber" select="ancestor-or-self::v3:section"/>
		</xsl:variable>

		<fo:block xsl:use-attribute-sets="spl-table-content-highlight">
			<fo:block keep-with-next="always" font-size="8pt" font-family="Times" font-weight="bold"
				text-align="center" text-align-last="justify">
				<fo:leader leader-pattern="rule" rule-thickness="0.5pt" alignment-baseline="central"/>
					&nbsp;&nbsp;<xsl:apply-templates mode="highlights" select=".."
				/>&nbsp;&nbsp; 
				<fo:leader leader-pattern="rule" rule-thickness="0.5pt" alignment-baseline="central"/>
			</fo:block>

			<!-- highlight section content -->
			<xsl:apply-templates mode="mixed" select="@*|node()[not(self::v3:title)]"/>
			<!-- <fo:block></fo:block> -->
			<xsl:if test="boolean($isWordVersion)">&nbsp;</xsl:if></fo:block>
		
		<!-- see PCR 801 -->
		<xsl:if test="not(boolean($gSr4)) and ../v3:code[@codeSystem='2.16.840.1.113883.6.1' and @code='34084-4']">
			<xsl:call-template name="suspectedARboilerPlate"/>
		</xsl:if>
		<xsl:if
			test="not(../../../v3:component/v3:section[v3:code[@codeSystem='2.16.840.1.113883.6.1' and @code='34084-4']]/v3:excerpt/v3:highlight/v3:text) and (number($sectionNumber)+1 = number($ARNumber) or (number(substring($currentSectionNum,2)) = number($ARNumber) and $currentCode != '43683-2'))">
			<xsl:call-template name="highlightNoAR"/>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="suspectedARboilerPlate">
		<!-- Genearate Suscpected Adverse Reactions section that is part of the highlights columns. -->
		<fo:block xsl:use-attribute-sets="spl-table-highlight">
			<fo:inline font-weight="bold" role="html:strong">
				<fo:block/>To report SUSPECTED ADVERSE REACTIONS, contact <xsl:value-of
							select="/v3:document/v3:legalAuthenticator/v3:assignedEntity/v3:representedOrganization/v3:name"
						/> at <xsl:for-each
							select="/v3:document/v3:legalAuthenticator/v3:assignedEntity/v3:telecom">
							<xsl:value-of select="@value"/>
							<xsl:if test="position() != last()">&#160;and&#160;</xsl:if>
						</xsl:for-each>
				<xsl:choose>
					<xsl:when test="$currentLoincCode = '53404-0'" >
						or VAERS at 1-800-822-7967 or <fo:basic-link color="blue" external-destination="www.vaers.hhs.gov/">www.vaers.hhs.gov</fo:basic-link>
					</xsl:when>
					<xsl:otherwise>
						or FDA at 1-800-FDA-1088 or <fo:basic-link color="blue" external-destination="http://www.fda.gov/medwatch/">www.fda.gov/medwatch</fo:basic-link>
					</xsl:otherwise>	
				</xsl:choose>
			</fo:inline>
			<fo:block/>
			<fo:block/>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="highlightNoAR">
		<!-- See  statement and if condition,  where this is called from -->
		<xsl:variable name="ARSection" select="$standardSections//v3:section[@code='34084-4']"/>
		<xsl:variable name="ARNumber" select="$ARSection[1]/@number"/>

		<fo:table-column xsl:use-attribute-sets="spl-table"/>
		<fo:table-body>
			<fo:table-row xsl:use-attribute-sets="spl-tr">
				<fo:table-cell xsl:use-attribute-sets="spl-td-def">
					<fo:block font-family="serif" space-after="22pt" keep-with-next="always"
						line-height="32pt" font-size="28pt" role="highlightNoAR">
						<xsl:value-of select="$ARSection/v3:title"/>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
		<!-- see PCR 801 -->
		<xsl:if test="not(boolean($gSr4))">
			<xsl:call-template name="suspectedARboilerPlate"/>
		</xsl:if>
	</xsl:template>
	<xsl:template mode="highlights"
		match="v3:section[descendant::v3:highlight/v3:text and not(ancestor::v3:section)]">
		<xsl:param name="class" select="."/>
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:choose>
			<xsl:when test="$standardSection[1]/v3:title">
				<xsl:value-of select="$standardSection[1]/v3:title"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="v3:code/@displayName"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="highlights" match="v3:highlight//v3:paragraph">
		<fo:block/>
		<fo:inline xsl:use-attribute-sets="spl-highlights-content">
			<xsl:apply-templates select="v3:caption"/>
			<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
			<xsl:text> </xsl:text>
			<xsl:if test="not(following-sibling::v3:paragraph)">
				<xsl:variable name="reference" select="ancestor::v3:highlight[1]/v3:reference"/>
				<xsl:apply-templates mode="reference"
					select=".|//v3:section[v3:id/@root=$reference/v3:section/v3:id/@root and not(ancestor::v3:reference)]"
				/>
			</xsl:if>
		</fo:inline>
	</xsl:template>
	<xsl:template mode="highlights" match="v3:highlight//v3:paragraph[@styleCode='Bullet']"
		priority="2">
		<fo:block xsl:use-attribute-sets="spl-highlights-hanging">
			<!-- <span class="Exdent"> --> &#x2022;<!-- </span> -->
			<xsl:apply-templates select="v3:caption"/>
			<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
			<xsl:text> </xsl:text>
			<xsl:if test="not(following-sibling::v3:paragraph)">
				<xsl:variable name="reference" select="ancestor::v3:highlight/reference"/>
				<xsl:apply-templates mode="reference"
					select=".|//v3:section[v3:id/@root=$reference/v3:section/v3:id/@root and v3:title]"/>
			</xsl:if>
		</fo:block>
	</xsl:template>
	<xsl:template mode="highlights" match="v3:tr"/>
	<xsl:template mode="highlights" match="v3:highlight//v3:table">
		<!--**May not be called from anywhere.  -->
		<xsl:apply-templates select="."/>
	</xsl:template>
	<xsl:template mode="highlights" match="v3:content[@styleCode = 'xmChange']">
		<!--**May not be called from anywhere.  -->
		<fo:block xsl:use-attribute-sets="spl-content">
			<fo:inline> error: contact developer <xsl:apply-templates
					select="@*[not(local-name(.)='styleCode')]"/>
			</fo:inline>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</fo:block>
	</xsl:template>
	<!-- MODE index -->
	<xsl:template name="index">
		<fo:block span="all" xsl:use-attribute-sets="spl-section">
			<fo:inline font-weight="bold" role="html:strong">FULL PRESCRIBING INFORMATION: CONTENTS
				<!--todo <fo:basic-link color="blue" internal-destination="footnote-content" id="footnote-reference-content">*</fo:basic-link> -->
				* </fo:inline>

			<fo:block role="indexBreak">&nbsp;</fo:block>
		</fo:block>
		<xsl:for-each
			select="//v3:section[v3:title != '' and count(ancestor::*[name(.) = 'component']) &lt;= 3]">
			<xsl:apply-templates mode="index" select="."/>
		</xsl:for-each>
		<fo:block span="all" text-align="right" xsl:use-attribute-sets="spl-section">
			<fo:block role="tocTitleBreak">&nbsp;</fo:block>
			* Sections or subsections omitted from the full prescribing information are not listed
		</fo:block>
	</xsl:template>
	<xsl:template mode="index" match="/|@*|node()">
		<xsl:apply-templates mode="index" select="@*|node()"/>
	</xsl:template>
	<xsl:template mode="index" match="v3:section[v3:title]">
		<xsl:param name="sectionLevel" select="count(ancestor::v3:section)+1"/>
		<xsl:param name="sectionNumber" select="/.."/>
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:variable name="titles" select="v3:title|$standardSection[1]/v3:title"/>
		<xsl:variable name="sectionNumberSequence">
			<xsl:apply-templates mode="sectionNumber" select="ancestor-or-self::v3:section"/>
		</xsl:variable>
		<fo:block>
			<xsl:if test="$sectionLevel = 1">
				<fo:block xsl:use-attribute-sets="toc1">
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates mode="mixed" select="./v3:title/node()">
						<xsl:with-param name="isTableOfContent" select="'yes'"/>
					</xsl:apply-templates>
				</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel = 2">
				<fo:block xsl:use-attribute-sets="toc2">
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates mode="tocMixed" select="./v3:title/node()">
						<xsl:with-param name="isTableOfContent" select="'yes'"/>
					</xsl:apply-templates>
				</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel = 3">
				<fo:block xsl:use-attribute-sets="toc3">
					<xsl:apply-templates select="@*"/>
					<!-- Do not display foonote mark inside a  table of content -->
					<xsl:apply-templates mode="tocMixed" select="./v3:title/node()">
						<xsl:with-param name="isTableOfContent" select="'yes'"/>
					</xsl:apply-templates>
				</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel > 3">
				<fo:block xsl:use-attribute-sets="toc4">
					<xsl:apply-templates select="@*"/>
					<!-- Do not display foonote mark inside a  table of content -->
					<xsl:apply-templates mode="tocMixed" select="./v3:title/node()">
						<xsl:with-param name="isTableOfContent" select="'yes'"/>
					</xsl:apply-templates>
				</fo:block>
			</xsl:if>
		</fo:block>
	</xsl:template>
	<!-- MODE: reference -->
	<!-- Create a section number reference such as (13.2) -->
	<xsl:template mode="reference" match="/|@*|node()">
		<xsl:text>(</xsl:text>
		<xsl:variable name="sectionNumberSequence">
			<xsl:apply-templates mode="sectionNumber" select="ancestor-or-self::v3:section"/>
		</xsl:variable>
		<!--todo <fo:basic-link color="blue" internal-destination="section-{substring($sectionNumberSequence,2)}"> -->
		<xsl:value-of select="substring($sectionNumberSequence,2)"/>
		<!--todo </fo:basic-link> -->
		<xsl:text>)</xsl:text>
	</xsl:template>

	<!-- styleCode processing: styleCode can be a list of tokens that
   are being combined into a single css class attribute. To 
   come to a normalized combination we sort the tokens. 

   Step 1: combine the attribute supplied codes and additional
   codes in a single token list.

   Step 2: split the token list into XML elements
   
   Step 3: sort the elements and turn into a single combo
   token.
-->
	<xsl:template match="@styleCode" name="specialStyleCodeAttr">
		<xsl:param name="styleCode" select="."/>
		<xsl:param name="additionalStyleCode" select="/.."/>
		<xsl:param name="allCodes" select="normalize-space(concat($additionalStyleCode,' ',$styleCode))"/>
		<xsl:param name="additionalStyleCodeSequence" select="/.."/>
		<xsl:variable name="allCodesInCap">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text" select="$allCodes"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:if test="contains( $allCodesInCap, 'TRFIRST')">
			<xsl:attribute name="border-top-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-top-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'TRLAST')">
			<xsl:attribute name="border-bottom-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-bottom-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="not( contains( $allCodesInCap, 'FORCE_NO_BOLD'))">
			<xsl:if test="contains( $allCodesInCap, 'BOLD')">
				<xsl:attribute name="font-weight">
					<xsl:text>bold</xsl:text>
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'ITALICS')">
			<xsl:attribute name="font-style">
				<xsl:text>italic</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'TOPRULE')">
			<xsl:attribute name="border-top-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-top-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'BOTRULE')">
			<xsl:attribute name="border-bottom-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-bottom-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'LRULE')">
			<xsl:attribute name="border-left-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-left-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'RRULE')">
			<xsl:attribute name="border-right-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-right-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'UNDERLINE')">
			<xsl:attribute name="text-decoration">
				<xsl:text>underline</xsl:text>
			</xsl:attribute>
		</xsl:if>
		
		<xsl:if test="not( contains( $allCodesInCap, 'NO_XMCHANGE'))">
			<xsl:if test="not( boolean(parent::v3:renderMultiMedia)) and not(boolean(ancestor-or-self::v3:table)) and contains( $allCodesInCap, 'XMCHANGE')">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="@styleCode" name="styleCodeAttr">
		<xsl:param name="styleCode" select="."/>
		<xsl:param name="additionalStyleCode" select="/.."/>
		<xsl:param name="allCodes" select="normalize-space(concat($additionalStyleCode,' ',$styleCode))"/>
		<xsl:param name="additionalStyleCodeSequence" select="/.."/>
		<xsl:variable name="allCodesInCap">
			<xsl:call-template name="string-uppercase">
				<xsl:with-param name="text" select="$allCodes"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:if test="not( contains( $allCodesInCap, 'FORCE_NO_BOLD'))">
			<xsl:if test="contains( $allCodesInCap, 'BOLD')">
				<xsl:attribute name="font-weight">
					<xsl:text>bold</xsl:text>
				</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'ITALICS')">
			<xsl:attribute name="font-style">
				<xsl:text>italic</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'TOPRULE')">
			<xsl:attribute name="border-top-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-top-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'BOTRULE')">
			<xsl:attribute name="border-bottom-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-bottom-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'LRULE')">
			<xsl:attribute name="border-left-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-left-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'RRULE')">
			<xsl:attribute name="border-right-width">
				<xsl:text>1pt</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="border-right-style">
				<xsl:text>solid</xsl:text>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="contains( $allCodesInCap, 'UNDERLINE')">
			<xsl:attribute name="text-decoration">
				<xsl:text>underline</xsl:text>
			</xsl:attribute>
		</xsl:if>
		
		<xsl:if test="not( contains( $allCodesInCap, 'NO_XMCHANGE'))">
			<xsl:if test="not( boolean(parent::v3:renderMultiMedia)) and not(boolean(ancestor-or-self::v3:table)) and contains( $allCodesInCap, 'XMCHANGE')">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
		</xsl:if>
		<!--end of disabled styleFirsto Toprule Botrule Lrule Rrule -->
	</xsl:template>
	<xsl:template name="uniqueStyleCodesExsl">
		<xsl:param name="inRtf" select="/.."/>
		<xsl:param name="in" select="exsl:node-set($inRtf)/token[@value]"/>
		<xsl:param name="done" select="/.."/>
		<xsl:if test="$in">
			<xsl:if test="not(contains($done,$in[1]/@value))">
				<xsl:value-of select="$in[1]/@value"/>
			</xsl:if>
			<xsl:call-template name="uniqueStyleCodesExsl">
				<xsl:with-param name="inRtf">
					<xsl:copy-of select="$in[position()>1]"/>
				</xsl:with-param>
				<xsl:with-param name="done" select="concat($done,@value)"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="uniqueStyleCodesMsxsl">
		<xsl:param name="inRtf" select="/.."/>
		<xsl:param name="in" select="msxsl:node-set($inRtf)/token[@value]"/>
		<xsl:param name="done" select="/.."/>
		<xsl:if test="$in">
			<xsl:if test="not(contains($done,$in[1]/@value))">
				<xsl:value-of select="$in[1]/@value"/>
			</xsl:if>
			<xsl:call-template name="uniqueStyleCodesMsxsl">
				<xsl:with-param name="inRtf">
					<xsl:copy-of select="$in[position()>1]"/>
				</xsl:with-param>
				<xsl:with-param name="done" select="concat($done,@value)"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="splitTokens">
		<xsl:param name="text" select="."/>
		<xsl:param name="firstCode" select="substring-before($text,' ')"/>
		<xsl:param name="restOfCodes" select="substring-after($text,' ')"/>
		<xsl:choose>
			<xsl:when test="$firstCode">
				<token
					value="{concat(translate(substring($firstCode,1,1),                                  'abcdefghijklmnopqrstuvwxyz',      'ABCDEFGHIJKLMNOPQRSTUVWXYZ'),          substring($firstCode,2))}"/>
				<xsl:if test="string-length($restOfCodes) > 0">
					<xsl:call-template name="splitTokens">
						<xsl:with-param name="text" select="$restOfCodes"/>
					</xsl:call-template>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<token
					value="{concat(translate(substring($text,1,1),                                  'abcdefghijklmnopqrstuvwxyz',      'ABCDEFGHIJKLMNOPQRSTUVWXYZ'),          substring($text,2))}"
				/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- DOCUMENT MODEL -->
	<!-- Even if no title tag is present the title should be displayed  -->
	<xsl:template mode="title" match="v3:document">
		<!--**  Construct the title of the SPL for Non PLR SPLs. There will be one title line per dosage form. -->
		<!-- changed by Brian Suggs on 07-27-06 to display the title based on content within the label rather than using the labels title element.  Per FDA request -->		
		<fo:block xsl:use-attribute-sets="spl-content" span="all">
			<xsl:apply-templates select="./title/@*"/>
			<xsl:for-each select=".//v3:subject[v3:manufacturedProduct[v3:manufacturedMedicine|v3:manufacturedProduct]]">
					<xsl:variable name="prevProductHeaderString">
						<xsl:for-each select="preceding::v3:manufacturedProduct/v3:manufacturedMedicine|preceding::v3:manufacturedProduct/v3:manufacturedProduct">
							<xsl:call-template name="headerString">
								<xsl:with-param name="curProduct" select="." />
							</xsl:call-template>
						</xsl:for-each>
					</xsl:variable>
					<xsl:variable name="curProductHeaderString"><xsl:call-template name="headerString"><xsl:with-param name="curProduct" select="./v3:manufacturedProduct/v3:manufacturedMedicine|./v3:manufacturedProduct/v3:manufacturedProduct" /></xsl:call-template></xsl:variable>
					<xsl:choose>
					<xsl:when test="position() > 1 and contains($prevProductHeaderString, $curProductHeaderString)">
					</xsl:when>
					<xsl:otherwise>
						<xsl:if test="position() > 1">
							<fo:block role="posEqOneManMed"/>
						</xsl:if>
						<xsl:for-each
							select="./v3:manufacturedProduct/v3:manufacturedMedicine|./v3:manufacturedProduct/v3:manufacturedProduct">
							<fo:inline font-weight="bold" role="html:strong">
								<xsl:call-template name="regMedNames"/>
							</fo:inline>
						</xsl:for-each>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:for-each>
			<!-- Even if no title tag is present the title should be displayed  -->
			<xsl:if test="./v3:author/v3:assignedEntity/v3:representedOrganization/v3:name">
				<fo:block role="representedOrganization/v3:name"/>
				<xsl:value-of select="./v3:author/v3:assignedEntity/v3:representedOrganization/v3:name"/>
			</xsl:if>
			<fo:block role="OutsideOfRepresentedOrganization/v3:name"/>	
		</fo:block>
		<!-- changed by Brian Suggs on 11-15-05 to add the footnote to the document title. -->
		<!-- PCR 596 Seperating the Document title footnote display from the section footnote display  -->
		<xsl:call-template name="flushDocumentTitleFootnotes"/>	
		<xsl:if test="boolean($gSr4) or boolean($gSr3)">						
			<fo:block>----------</fo:block>
		</xsl:if>
	</xsl:template>
	<xsl:template name="titleNumerator">
		<xsl:for-each
			select="./v3:activeIngredient[(./v3:quantity/v3:numerator/@unit or ./v3:quantity/v3:denominator/@unit) and (./v3:quantity/v3:numerator/@unit != '' or ./v3:quantity/v3:denominator/@unit != '') and (./v3:quantity/v3:numerator/@unit != '1' or ./v3:quantity/v3:denominator/@unit != '1')]">
			<xsl:if test="position() = 1">&#160;</xsl:if>
			<xsl:if test="position() > 1">&#160;/&#160;</xsl:if>
			<xsl:value-of select="./v3:quantity/v3:numerator/@value"/>
			<xsl:if test="./v3:quantity/v3:numerator/@unit">&#160;<xsl:value-of
					select="./v3:quantity/v3:numerator/@unit"/></xsl:if>
			<xsl:if
				test="./v3:quantity/v3:denominator/@unit != '' and ./v3:quantity/v3:denominator/@unit != '1'">
				<xsl:text>&#160;per&#160;</xsl:text>
				<xsl:value-of select="./v3:quantity/v3:denominator/@value"/>
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./v3:quantity/v3:denominator/@unit"/>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
	<xsl:template name="consumedIn">
		<xsl:for-each select="../v3:consumedIn">
			<xsl:call-template name="string-titlecase">
				<xsl:with-param name="text" select="./v3:substanceAdministration/v3:routeCode/@displayName"
				/>
			</xsl:call-template>
			<xsl:call-template name="printSeperator">
				<xsl:with-param name="currentPos" select="position()"/>
				<xsl:with-param name="lastPos" select="last()"/>
				<xsl:with-param name="lastDelimiter">&#160;and</xsl:with-param>
			</xsl:call-template>
		</xsl:for-each>
	</xsl:template>
	<!-- FOOTNOTES -->
	<xsl:param name="footnoteMarks"
		select="'*&#8224;&#8225;&#167;&#182;#&#0222;&#0223;&#0224;&#0232;&#0240;&#0248;&#0253;&#0163;&#0165;&#0338;&#0339;&#0393;&#0065;&#0066;&#0067;&#0068;&#0069;&#0070;&#0071;&#0072;&#0073;&#0074;&#0075;&#0076;&#0077;&#0078;&#0079;&#0080;&#0081;&#0082;&#0083;&#0084;&#0085;&#0086;&#0087;&#0088;&#0089;&#0090;'"/>
	<xsl:template name="footnoteMark">
		<xsl:param name="target" select="."/>
		<xsl:for-each select="$target[1]">
			<xsl:choose>
				<xsl:when test="ancestor::v3:table">
					<!-- innermost table - FIXME: does not work for the constructed tables -->
					<xsl:variable name="number">
						<xsl:number level="any" from="v3:table" count="v3:footnote"/>
					</xsl:variable>
					<xsl:value-of select="substring($footnoteMarks,$number,1)"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="count(preceding::v3:footnote[not(ancestor::v3:table)])+1"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
	<!-- Not displaying foonote mark inside a  table of content -->
	<xsl:template match="v3:footnote[name(..) != 'text']">
		<xsl:param name="isTableOfContent2"/>
		<xsl:if test="$isTableOfContent2!='yes'">
			<xsl:variable name="mark">
				<xsl:call-template name="footnoteMark"/>
			</xsl:variable>
			<xsl:variable name="globalnumber" select="count(preceding::v3:footnote)+1"/>
			<fo:inline role="footnote_sup" xsl:use-attribute-sets="sup">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)">
						<xsl:attribute name="font-size">12pt</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="font-size">8pt</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:value-of select="$mark"/>
			</fo:inline>
		</xsl:if>
	</xsl:template>
	<xsl:template match="v3:footnoteRef">
		<xsl:variable name="ref" select="@IDREF"/>
		<xsl:variable name="target" select="//v3:footnote[@ID=$ref]"/>
		<xsl:variable name="mark">
			<xsl:call-template name="footnoteMark">
				<xsl:with-param name="target" select="$target"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="globalnumber" select="count($target/preceding::v3:footnote)+1"/>
		<!--todo <fo:basic-link color="blue" internal-destination="footnote-{$globalnumber}" xsl:use-attribute-sets="spl-sup"> -->
		<fo:inline role="footnote_ref_sup" xsl:use-attribute-sets="sup">
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)">
					<xsl:attribute name="font-size">12pt</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="font-size">8pt</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:value-of select="$mark"/>
		</fo:inline>
	</xsl:template>
	<xsl:template name="flushSectionTitleFootnotes">
		<xsl:variable name="footnotes" select="./v3:title/v3:footnote[not(ancestor::v3:table)]"/>
		<xsl:if test="$footnotes">
			<!--todo <hr class="Footnoterule"/> -->
			<fo:block>
				<fo:leader leader-pattern="rule"/>
			</fo:block>
			<!--todo high1 <dl class="Footnote"> -->
			<xsl:apply-templates mode="footnote" select="$footnotes"/>

		</xsl:if>
	</xsl:template>
	<!-- Seperating the Document title footnote display from the section footnote display  -->
	<xsl:template name="flushDocumentTitleFootnotes">
		<xsl:variable name="footnotes" select=".//v3:title/v3:footnote[not(ancestor::v3:table)]"/>
		<xsl:if test="$footnotes">
			<fo:block>
				<fo:leader leader-pattern="rule"/>
			</fo:block>
			<xsl:apply-templates mode="footnote" select="$footnotes"/>
		</xsl:if>
	</xsl:template>
	<xsl:template match="v3:flushfootnotes" name="flushfootnotes">
		<xsl:variable name="footnotes" select=".//v3:footnote[not(ancestor::v3:table)]"/>
		<xsl:if test="$footnotes">
			<fo:block>
				<fo:leader leader-pattern="rule"/>
			</fo:block>
			<xsl:apply-templates mode="footnote" select="$footnotes"/>

		</xsl:if>
	</xsl:template>
	<xsl:template mode="footnote" match="/|node()">
		<xsl:apply-templates mode="footnote" select="node()"/>
	</xsl:template>
	<xsl:template mode="footnoteChanged" match="v3:footnote">
		<xsl:variable name="mark">
			<xsl:call-template name="footnoteMark"/>
		</xsl:variable>
		<xsl:variable name="globalnumber" select="count(preceding::v3:footnote)+1"/>
		<fo:block>
			<fo:inline xsl:use-attribute-sets="spl-dt">
				<xsl:value-of select="$mark"/>
			</fo:inline>
			<fo:inline xsl:use-attribute-sets="spl-dd">
				<xsl:apply-templates mode="mixed" select="node()"/>
			</fo:inline>
		</fo:block>
	</xsl:template>
	<xsl:template mode="footnote" match="v3:footnote">
		<xsl:variable name="mark">
			<xsl:call-template name="footnoteMark"/>
		</xsl:variable>
		<xsl:variable name="globalnumber" select="count(preceding::v3:footnote)+1"/>
		<fo:block>
			<fo:inline xsl:use-attribute-sets="spl-dt">
				<xsl:value-of select="$mark"/>
			</fo:inline>
			<fo:inline xsl:use-attribute-sets="spl-dd">
				<xsl:apply-templates mode="mixed" select="node()"/>
			</fo:inline>
		</fo:block>
	</xsl:template>
	<xsl:template mode="footnote" match="v3:section|v3:table"/>
	<!-- CROSS REFERENCE linkHtml -->
	<xsl:template name="reference" mode="mixed" match="v3:linkHtml[@href]">
		<xsl:param name="current" select="current()"/>
		<xsl:param name="href" select="$current/@href"/>
		<xsl:param name="target" select="//*[@ID=substring-after($href,'#')]"/>
		<xsl:param name="styleCode" select="$current/@styleCode"/>
		<xsl:variable name="targetTable" select="$target/self::v3:table"/>
		<xsl:choose>
			<xsl:when test="$targetTable and self::v3:linkHtml and $current/node()">
				<xsl:apply-templates mode="mixed" select="$current/node()"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:variable name="sectionNumberSequence">
					<xsl:apply-templates mode="sectionNumber" select="$target/ancestor-or-self::v3:section"/>
				</xsl:variable>
				<xsl:if
					test="contains($styleCode,'MainTitle') and $target/ancestor-or-self::v3:section[last()]/v3:title">
					<xsl:value-of select="$target/ancestor-or-self::v3:section[last()]/v3:title"/>
				</xsl:if>
				<xsl:if test="contains($styleCode,'SubTitle') and $target/v3:title">
					<xsl:if
						test="contains($styleCode,'MainTitle') and $target/ancestor-or-self::v3:section[last()]/v3:title">
						<xsl:text>: </xsl:text>
					</xsl:if>
					<xsl:value-of select="$target/v3:title"/>
				</xsl:if>
				<xsl:if
					test="contains($styleCode,'Number') and $target/ancestor-or-self::v3:section[last()]/v3:title">
					<xsl:text>(</xsl:text>
					<xsl:value-of select="substring($sectionNumberSequence,2)"/>
					<xsl:text>)</xsl:text>
				</xsl:if>
				<xsl:if test="self::v3:linkHtml">
					<xsl:apply-templates mode="mixed" select="$current/node()"/>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="sectionNumber" match="/|@*|node()"/>
	<xsl:template mode="sectionNumber" match="v3:section">
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:variable name="standardSectionNumber" select="$standardSection/@number"/>
		<xsl:value-of
			select="concat('.',count(parent::v3:component/preceding-sibling::v3:component[child::v3:section])+1)"/>
	</xsl:template>
	<xsl:template mode="standardSectionNumber" match="v3:section">
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:variable name="standardSectionNumber" select="$standardSection/@number"/>
		<xsl:choose>
			<xsl:when test="$standardSectionNumber">
				<xsl:value-of select="$standardSectionNumber"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of
					select="count(parent::v3:component/preceding-sibling::v3:component[child::v3:section])+1"
				/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- SECTION MODEL -->
	<xsl:template match="v3:section">
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:param name="sectionLevel" select="count(ancestor-or-self::v3:section)"/>
		<xsl:variable name="sectionNumberSequence">
			<xsl:apply-templates mode="sectionNumber" select="ancestor-or-self::v3:section"/>
		</xsl:variable>
		<xsl:variable name="titles" select="v3:title"/>
		<xsl:apply-templates select="$titles[1]">
			<xsl:with-param name="sectionLevel" select="$sectionLevel"/>
			<xsl:with-param name="sectionNumber" select="substring($sectionNumberSequence,2)"/>
		</xsl:apply-templates>
		<xsl:if test="$show-data">
			<xsl:apply-templates mode="data" select="."/>
		</xsl:if>
		<xsl:apply-templates select="@*|node()[not(self::v3:title)]"/>
		<xsl:call-template name="flushSectionTitleFootnotes"/>
	</xsl:template>
	<xsl:template
		match="v3:section[           v3:code[   descendant-or-self::*[   (self::v3:code or self::v3:translation) and   @codeSystem='2.16.840.1.113883.6.1' and @code='34066-1'   ]    ]  ]"
		priority="2">
		<xsl:param name="mode" select="/.."/>
		<xsl:param name="standardSection"
			select="$standardSections//v3:section[@code=current()/v3:code/descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1']/@code]"/>
		<xsl:param name="sectionLevel" select="count(ancestor-or-self::v3:section)"/>
		<!--todo high1 <div> -->
		<xsl:call-template name="styleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode" select="'Warning'"/>
		</xsl:call-template>
		
		<xsl:if test="boolean($isWordVersion)">
			<fo:block>&#160;</fo:block>
		</xsl:if>
		<fo:table role="mainTable" border-style="solid" border-width="0.2mm" space-before="1em"
			space-after="1em">			
			<xsl:if test="boolean($isWordVersion)">
				<fo:table-column column-width="7.5in" role="v3:col-word-fpi-table"/>
			</xsl:if>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block xsl:use-attribute-sets="spl-fpi-warning">
							<xsl:variable name="sectionNumberSequence">
								<xsl:apply-templates mode="sectionNumber" select="ancestor-or-self::v3:section"/>
							</xsl:variable>
							<xsl:variable name="titles" select="v3:title"/>
							<xsl:apply-templates select="$titles[1]">
								<xsl:with-param name="sectionLevel" select="$sectionLevel"/>
								<xsl:with-param name="sectionNumber" select="substring($sectionNumberSequence,2)"/>
							</xsl:apply-templates>
							<xsl:apply-templates select="@*|node()[not(self::v3:title)]"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<xsl:if test="boolean($isWordVersion)">
			<fo:block>&#160;</fo:block>
		</xsl:if>
	</xsl:template>
	<xsl:template
		match="v3:section[v3:code[descendant-or-self::*[(self::v3:code or self::v3:translation) and @codeSystem='2.16.840.1.113883.6.1' and @code='43683-2']]]"
		priority="2"/>
	<xsl:template match="v3:section/v3:title">
		<xsl:param name="sectionLevel" select="count(ancestor::v3:section)"/>
		<xsl:param name="sectionNumber" select="/.."/>
			<xsl:if test="$sectionLevel = 1">
				<fo:block role="v3:section/v3:titleLevel1" xsl:use-attribute-sets="fpi-toc1">
					<xsl:if test="contains(v3:content/@styleCode, 'xmChange')">
						<xsl:attribute name="role">title-spl-xmchange</xsl:attribute>
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="$show-section-numbers and $sectionNumber">
						<xsl:value-of select="$sectionNumber"/>
					</xsl:if>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel = 2">
				<fo:block role="v3:section/v3:titleLevel2" xsl:use-attribute-sets="fpi-toc2">
					<xsl:if test="contains(v3:content/@styleCode, 'xmChange')">
						<xsl:attribute name="role">title-spl-xmchange</xsl:attribute>
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="$show-section-numbers and $sectionNumber">
						<xsl:value-of select="$sectionNumber"/>
					</xsl:if>
					<xsl:apply-templates mode="mixed" select="node()"/>
					</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel = 3">
				<fo:block role="v3:section/v3:titleLevel3" xsl:use-attribute-sets="fpi-toc3">
					<xsl:if test="contains(v3:content/@styleCode, 'xmChange')">
						<xsl:attribute name="role">title-spl-xmchange</xsl:attribute>
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="$show-section-numbers and $sectionNumber">
						<xsl:value-of select="$sectionNumber"/>
					</xsl:if>
					<xsl:apply-templates mode="mixed" select="node()"/>
					&nbsp;</fo:block>
			</xsl:if>
			<xsl:if test="$sectionLevel > 3">
				<fo:block role="v3:section/v3:titleLevel4" xsl:use-attribute-sets="fpi-toc4">
					<xsl:if test="contains(v3:content/@styleCode, 'xmChange')">
						<xsl:attribute name="role">title-spl-xmchange</xsl:attribute>
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:if test="$show-section-numbers and $sectionNumber">
						<xsl:value-of select="$sectionNumber"/>
					</xsl:if>
					<xsl:apply-templates mode="mixed" select="node()"/>
					&nbsp;</fo:block>
			</xsl:if>
	</xsl:template>
	<xsl:template match="v3:section/v3:text">
		<xsl:apply-templates select="@*"/>
		<xsl:apply-templates mode="mixed" select="node()"/>
		<xsl:call-template name="flushfootnotes">
			<xsl:with-param name="isTableOfContent" select="'no'"/>
		</xsl:call-template>
	</xsl:template>
	<xsl:template match="v3:excerpt|v3:subjectOf"/>
	<xsl:template match="v3:paragraph">
		<xsl:choose>
			<xsl:when test="ancestor::v3:tfoot and not(preceding-sibling::v3:paragraph)">
				<fo:inline>
					<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
				</fo:inline>
			</xsl:when>
			<xsl:otherwise>
				<fo:block role="v3:paragraph_080708" xsl:use-attribute-sets="spl-paragraph">
					<xsl:if test="count(ancestor::v3:component) &gt; 3 and not( contains( @styleCode, 'underline') ) and not(ancestor::v3:highlight) and not(ancestor::v3:document[v3:code/@code = '34390-5'])">					
						<xsl:attribute name="space-after">
							<xsl:text>1em</xsl:text>
						</xsl:attribute>
					</xsl:if>	
					<xsl:call-template name="styleCodeAttr">
						<xsl:with-param name="styleCode" select="@styleCode"/>
						<xsl:with-param name="additionalStyleCode">
							<xsl:if test="count(preceding-sibling::v3:paragraph)=0">
								<xsl:text>First</xsl:text>
							</xsl:if>
							<xsl:if test="not($isWordVersion) and descendant::node()[@styleCode = 'xmChange'] and not(ancestor::v3:table)  and not(ancestor::v3:list) " > 
								<xsl:text>xmChange</xsl:text>
							</xsl:if>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]|v3:caption"/>
					<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
				</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="v3:paragraph/v3:caption">
		<xsl:call-template name="styleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode" select="'ParagraphCaption'"/>
		</xsl:call-template>
		<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
		<xsl:apply-templates mode="mixed" select="node()"/>
	</xsl:template>
	<xsl:template match="v3:paragraph[contains(@styleCode,'Footnote') and v3:caption]">
		<fo:block xsl:use-attribute-sets="spl-dt">
			<xsl:apply-templates mode="mixed" select="node()[self::v3:caption]"/>
		</fo:block>
		<fo:block xsl:use-attribute-sets="spl-dd">
			<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
		</fo:block>
	</xsl:template>
	<xsl:template match="v3:list[not(v3:item/v3:caption)]">
		<xsl:apply-templates select="v3:caption"/>
		<fo:list-block  role="v3:list[not(v3:item/v3:caption)]" provisional-label-separation="0in"
			start-indent="0in">
			<xsl:choose>
				<xsl:when test="ancestor::v3:highlight"><xsl:attribute name="provisional-distance-between-starts">0.15in</xsl:attribute></xsl:when>
				<xsl:otherwise><xsl:attribute name="provisional-distance-between-starts">0.25in</xsl:attribute></xsl:otherwise>
			</xsl:choose>
			<xsl:if test="count(ancestor::v3:list) = 1 and not(ancestor::v3:highlight) and not(ancestor::v3:document[v3:code/@code = '34390-5'])">
				<xsl:attribute name="space-after">1em</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="@*|node()[not(self::v3:caption)]"/>
		</fo:list-block>
	</xsl:template>
	
	<xsl:template match="v3:list[@listType='ordered' and        not(v3:item/v3:caption)]" priority="1">
		<xsl:apply-templates select="v3:caption"/>
		<fo:block space-after="1em" >
		<fo:list-block provisional-label-separation="0in"
			start-indent="0in">
			<xsl:choose>
				<xsl:when test="ancestor::v3:highlight"><xsl:attribute name="provisional-distance-between-starts">0.15in</xsl:attribute></xsl:when>
				<xsl:otherwise><xsl:attribute name="provisional-distance-between-starts">0.25in</xsl:attribute></xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates mode="ordered" select="node()[not(self::v3:caption)]"/>
		</fo:list-block>
		&nbsp;</fo:block>	
	</xsl:template>
	<xsl:template mode="ordered" match="v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]">
		<fo:list-item>			
			<xsl:if test="count(ancestor::v3:list) = 1 and not(ancestor::v3:highlight) and not(ancestor::v3:document[v3:code/@code = '34390-5'])">
				<xsl:attribute name="space-after">1em</xsl:attribute>
			</xsl:if>
			<fo:list-item-label>
				<xsl:choose>
					<xsl:when test="not($isWordVersion)">						
						<xsl:attribute name="start-indent">0in</xsl:attribute>
						<xsl:attribute name="end-indent">label-end()</xsl:attribute>
					</xsl:when>
					<xsl:when test="parent::v3:list/@styleCode = 'Arabic'">		
						<xsl:attribute name="start-indent">0in</xsl:attribute>	
						<xsl:attribute name="end-indent">label-end()</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>									
						<xsl:attribute name="start-indent">0.1in</xsl:attribute>
						<xsl:attribute name="end-indent">label-end()</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				
				<fo:block  role="ordered-v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]">
					<xsl:if test="contains(descendant-or-self::v3:content/@styleCode, 'xmChange')">
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:variable name="depth" select="count(ancestor::v3:list[@listType='ordered'])-1"/>					
					<xsl:choose>
						<xsl:when test="boolean($isWordVersion) and parent::v3:list/@styleCode = 'Arabic'">.<xsl:number format="1."/></xsl:when>
						<xsl:when test="parent::v3:list/@styleCode = 'Arabic'"><xsl:number format="1."/></xsl:when>
						<xsl:when test="parent::v3:list/@styleCode = 'Roman'"><xsl:number format="i."/></xsl:when>
						<xsl:when test="parent::v3:list/@styleCode = 'Alpha'"><xsl:number format="a."/></xsl:when>
						<xsl:when test="$depth = 1"><xsl:number format="{$list-label-1}"/></xsl:when>
						<xsl:when test="$depth = 2"><xsl:number format="{$list-label-2}"/></xsl:when>
						<xsl:when test="boolean($isWordVersion)">.<xsl:number format="1."/></xsl:when>
						<xsl:otherwise><xsl:number format="{$list-label-3}"/></xsl:otherwise>
					</xsl:choose>
				</fo:block>
			</fo:list-item-label>
			<fo:list-item-body >
				<xsl:choose>
					<xsl:when test="not($isWordVersion)">						
						<xsl:attribute name="start-indent">body-start()</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>								
						<xsl:attribute name="start-indent">body-start()</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<fo:block role="body-v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]">
					<xsl:if test="contains(descendant-or-self::v3:content/@styleCode, 'xmChange')">
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.55in</xsl:attribute>
								<xsl:attribute name="padding-left">.55in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>

	<xsl:template match="v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]">
		<fo:list-item>			
			<xsl:variable name="depth" select="count(ancestor::v3:list)-1"/>
			<xsl:if test="count(ancestor::v3:list) = 1 and not(ancestor::v3:highlight) and not(ancestor::v3:document[v3:code/@code = '34390-5'])">
				<xsl:attribute name="space-after">1em</xsl:attribute>
			</xsl:if>
			<fo:list-item-label>
				<xsl:choose>
					<xsl:when test="not($isWordVersion)">				
						<xsl:attribute name="start-indent"><xsl:value-of select="number($depth * .3 )"/>in</xsl:attribute>
						<xsl:attribute name="end-indent">label-end()</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>								
						<xsl:attribute name="start-indent"><xsl:value-of select="number($depth * .3 + .1)"/>in</xsl:attribute>
						<xsl:attribute name="end-indent">label-end()</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<fo:block>&abullet;</fo:block>
			</fo:list-item-label>
			<fo:list-item-body>
				<xsl:attribute name="role"><xsl:value-of select="$depth"/><xsl:value-of select="$depth * .3"/></xsl:attribute>
				<xsl:choose>
					<xsl:when test="not($isWordVersion)">						
						<xsl:attribute name="start-indent">body-start() + <xsl:value-of select="number($depth * .3)"/>in</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>								
						<xsl:attribute name="start-indent">body-start() + <xsl:value-of select="number($depth * .3 - .2)"/>in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<fo:block role="v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]">
					<xsl:if test="contains(descendant-or-self::v3:content/@styleCode, 'xmChange')">
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.55in</xsl:attribute>
								<xsl:attribute name="padding-left">.55in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>
	<xsl:template match="v3:list[v3:item/v3:caption]">
		<xsl:apply-templates select="v3:caption"/>
		<fo:block role="v3:list[not(v3:item/v3:caption)]" space-after="1em">
		<fo:list-block provisional-label-separation="0in"
			 start-indent="0in">
			<xsl:choose>
				<xsl:when test="ancestor::v3:highlight"><xsl:attribute name="provisional-distance-between-starts">0.15in</xsl:attribute></xsl:when>
				<xsl:otherwise><xsl:attribute name="provisional-distance-between-starts">0.25in</xsl:attribute></xsl:otherwise>
			</xsl:choose>
			<xsl:apply-templates select="@*|node()[not(self::v3:caption)]"/>
		</fo:list-block>
		&nbsp;</fo:block>
	</xsl:template>
	<xsl:template match="v3:list/v3:item[parent::v3:list/v3:item/v3:caption]">
		<fo:list-item>
			<xsl:if test="count(ancestor::v3:list) = 1 and not(ancestor::v3:highlight) and not(ancestor::v3:document[v3:code/@code = '34390-5'])">
				<xsl:attribute name="space-after">1em</xsl:attribute>
			</xsl:if>
			<xsl:apply-templates select="v3:caption"/>
			<fo:list-item-body start-indent="body-start()">
				<fo:block role="v3:list/v3:item[parent::v3:list/v3:item/v3:caption]">
					<xsl:apply-templates select="@*"/>
					<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
				</fo:block>
			</fo:list-item-body>
		</fo:list-item>
	</xsl:template>
	<xsl:template match="v3:list/v3:item/v3:caption">
		<fo:list-item-label end-indent="label-end()">
			<fo:block role="v3:list/v3:item/v3:caption">
				<xsl:apply-templates select="@*"/>
				<xsl:apply-templates mode="mixed" select="node()"/>
			</fo:block>
		</fo:list-item-label>
	</xsl:template>
	<xsl:template match="v3:list/v3:caption">
		<fo:block xsl:use-attribute-sets="spl-content">
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCode" select="'ListCaption'"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</fo:block>
	</xsl:template>
	<xsl:template mode="mixed" match="@*|node()">
		<xsl:apply-templates mode="mixed" select="@*|node()"/>
	</xsl:template>
	<xsl:template mode="mixed" match="text()" priority="0">
		<xsl:choose>
			<xsl:when test="boolean($isWordVersion)">
				<xsl:copy/>
			</xsl:when>
			<xsl:otherwise>				
				<xsl:call-template name="string-special-char">
					<xsl:with-param name="text" select="."/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="mixed" match="v3:content">
		<xsl:choose>
			<xsl:when test="parent::v3:paragraph">
				<fo:inline role="v3:content_mixed">
					<xsl:call-template name="styleCodeAttr">
						<xsl:with-param name="styleCode" select="@styleCode"/>
						<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
					</xsl:call-template>
					<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:inline>
			</xsl:when>
			<xsl:otherwise>
				<fo:inline role="v3:content_mixed_blockmm">
					<xsl:call-template name="styleCodeAttr">
						<xsl:with-param name="styleCode" select="@styleCode"/>
						<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
					</xsl:call-template>
					<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:inline>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="tocMixed" match="@*|node()">
		<xsl:apply-templates mode="tocMixed" select="@*|node()"/>
	</xsl:template>
	<xsl:template mode="tocMixed" match="text()" priority="0">
		<xsl:choose>
			<xsl:when test="boolean($isWordVersion)">
				<xsl:copy/>
			</xsl:when>
			<xsl:otherwise>				
				<xsl:call-template name="string-special-char">
					<xsl:with-param name="text" select="."/>
				</xsl:call-template>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="tocMixed" match="v3:content">
		<fo:inline role="tocMixed-v3:content">
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCode">
					<xsl:text>force_no_bold no_xmchange</xsl:text>
				</xsl:with-param>
				<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="tocMixed" select="node()"/>
		</fo:inline>
	</xsl:template>

	<xsl:template mode="mixed" match="v3:content[@styleCode = 'xmChange']">
		<xsl:choose>
			<xsl:when test="ancestor::v3:paragraph or ancestor::v3:list">				
				<fo:inline role="tocMixed-v3:content">
				<xsl:if test="ancestor::v3:list and boolean($isWordVersion) and contains(@styleCode, 'xmChange')">
					<xsl:attribute name="role">title-spl-xmchange</xsl:attribute>
					<xsl:attribute name="background-color">yellow</xsl:attribute>
				</xsl:if>
				<xsl:call-template name="styleCodeAttr">
					<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
				</xsl:call-template>
				<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:inline>	
			</xsl:when>
			<xsl:otherwise>
				<fo:block role="standalone_content_zz">	
					<xsl:if test="contains(@styleCode, 'xmChange') and not(ancestor::v3:section/v3:title)">
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:call-template name="styleCodeAttr">
						<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
					</xsl:call-template>
					<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
					<xsl:apply-templates mode="mixed" select="node()"/>
				</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template mode="mixed" match="v3:content[@emphasis='yes']" priority="1">
		<em>
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCodeSequence" select="@revised"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</em>
	</xsl:template>
	<xsl:template mode="mixed" match="v3:content[@emphasis]">
		<em>
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCodeSequence" select="@emphasis|@revised"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</em>
	</xsl:template>

	<xsl:template mode="mixed" priority="1"
		match="v3:renderMultiMedia[@referencedObject     and (   ancestor::v3:paragraph          or ancestor::v3:td          or ancestor::v3:th)]">
		<xsl:variable name="reference" select="@referencedObject"/>
		<xsl:if test="contains(@styleCode, 'xmChange')">
			<xsl:attribute name="role">spl-xmchange-image</xsl:attribute>
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="border-left-color">black</xsl:attribute>
					<xsl:attribute name="border-left-width">1pt</xsl:attribute>
					<xsl:attribute name="border-left-style">solid</xsl:attribute>
					<xsl:attribute name="margin-left">-.3in</xsl:attribute>
					<xsl:attribute name="padding-left">.3in</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="boolean($isWordVersion)">
			<fo:block>&#160;</fo:block>
		</xsl:if>
		<xsl:choose>
			<xsl:when test="boolean(//v3:observationMedia[@ID=$reference]//v3:text)">
				<fo:external-graphic src="{//v3:observationMedia[@ID=$reference]//v3:reference/@value}">
					<xsl:apply-templates select="@*"/>
				</fo:external-graphic>
			</xsl:when>
			<xsl:when test="not(boolean(//v3:observationMedia[@ID=$reference]//v3:text))">
				<fo:external-graphic src="{//v3:observationMedia[@ID=$reference]//v3:reference/@value}">
					<xsl:apply-templates select="@*"/>
				</fo:external-graphic>
			</xsl:when>
		</xsl:choose>
		<xsl:if test="boolean($isWordVersion)">
			<fo:block>&#160;</fo:block>
		</xsl:if>
		<xsl:apply-templates mode="notCentered" select="v3:caption"/>
	</xsl:template>
	<xsl:template mode="mixed" match="v3:renderMultiMedia[@referencedObject]">
		<xsl:variable name="reference" select="@referencedObject"/>
		<xsl:call-template name="styleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode" select="'Figure'"/>
		</xsl:call-template>
		<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
		<fo:block>
			<xsl:if test="contains(@styleCode, 'xmChange')">
				<xsl:attribute name="role">spl-xmchange-imageb</xsl:attribute>
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:if test="boolean($isWordVersion)">
				<fo:block>&#160;</fo:block>
			</xsl:if>
			<xsl:choose>
				<xsl:when test="boolean(//v3:observationMedia[@ID=$reference]//v3:text)">
					<fo:external-graphic width="100%" content-width="scale-to-fit" scaling="uniform"
						content-height="100%" src="{//v3:observationMedia[@ID=$reference]//v3:reference/@value}">
						<xsl:apply-templates select="@*"/>
					</fo:external-graphic>
				</xsl:when>
				<xsl:when test="not(boolean(//v3:observationMedia[@ID=$reference]//v3:text))">
					<fo:external-graphic width="100%" content-width="scale-to-fit" scaling="uniform"
						content-height="100%" src="{//v3:observationMedia[@ID=$reference]//v3:reference/@value}">
						<xsl:apply-templates select="@*"/>
					</fo:external-graphic>
				</xsl:when>
			</xsl:choose>
			<xsl:if test="boolean($isWordVersion)">
				<fo:block>&#160;</fo:block>
			</xsl:if>
		</fo:block>
		<xsl:apply-templates select="v3:caption"/>
	</xsl:template>
	<xsl:template match="v3:renderMultiMedia/v3:caption">
		<fo:block xsl:use-attribute-sets="spl-content">
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCode" select="'MultiMediaCaption'"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</fo:block>
	</xsl:template>
	<xsl:template mode="notCentered" match="v3:renderMultiMedia/v3:caption">
		<fo:block xsl:use-attribute-sets="spl-content">
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCode" select="'MultiMediaCaptionNotCentered'"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</fo:block>
	</xsl:template>
	<!-- EXIT MIXED MODE AT DEFINED POINTS -->
	<!-- Not displaying foonote mark inside a  table of content -->
	<xsl:template mode="mixed"
		match="v3:paragraph|v3:list|v3:table|v3:footnote|v3:footnoteRef|v3:flushfootnotes">
		<xsl:param name="isTableOfContent"/>
		<xsl:choose>
			<xsl:when test="$isTableOfContent='yes'">
				<xsl:apply-templates select=".">
					<xsl:with-param name="isTableOfContent2" select="'yes'"/>
				</xsl:apply-templates>
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select=".">
					<xsl:with-param name="isTableOfContent2" select="'no'"/>
				</xsl:apply-templates>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!-- MODE: DATA -->
	<xsl:template mode="data" match="*">
		<xsl:apply-templates mode="data" select="node()"/>
	</xsl:template>
	<xsl:template mode="data" match="text()">
		<xsl:copy/>
	</xsl:template>
	<xsl:template mode="data" match="*[@displayName and not(@code)]">
		<xsl:value-of select="@displayName"/>
	</xsl:template>
	<xsl:template mode="data" match="*[not(@displayName) and @code]">
		<xsl:value-of select="@code"/>
	</xsl:template>
	<xsl:template mode="data" match="*[@displayName and @code]">
		<xsl:value-of select="@displayName"/>
		<xsl:text> (</xsl:text>
		<xsl:value-of select="@code"/>
		<xsl:text> )</xsl:text>
	</xsl:template>
	<!-- Fix the characteristic unit attribute that wasn't before taken care of -->
	<xsl:template mode="data" match="*[@value and @unit]" priority="1">
		<xsl:value-of select="@value"/>&#160;<xsl:value-of select="@unit"/>
	</xsl:template>
	<xsl:template mode="data" match="*[@value and not(@displayName)]">
		<xsl:value-of select="@value"/>
	</xsl:template>
	<xsl:template mode="data" match="*[@value and @displayName]">
		<xsl:value-of select="@value"/>
		<xsl:text>&#160;</xsl:text>
		<xsl:value-of select="@displayName"/>
	</xsl:template>
	<xsl:template mode="data" match="*[@value and (@xsi:type='TS' or contains(local-name(),'Time'))]"
		priority="1">
		<xsl:param name="displayMonth">true</xsl:param>
		<xsl:param name="displayDay">true</xsl:param>
		<xsl:param name="displayYear">true</xsl:param>
		<xsl:param name="delimiter">/</xsl:param>
		<xsl:variable name="year" select="substring(@value,1,4)"/>
		<xsl:variable name="month" select="substring(@value,5,2)"/>
		<xsl:variable name="day" select="substring(@value,7,2)"/>
		<xsl:if test="$displayMonth = 'true'">
			<xsl:value-of select="$month"/>
			<xsl:value-of select="$delimiter"/>
		</xsl:if>
		<xsl:if test="$displayDay = 'true'">
			<xsl:value-of select="$day"/>
			<xsl:value-of select="$delimiter"/>
		</xsl:if>
		<xsl:if test="$displayYear = 'true'">
			<xsl:value-of select="$year"/>
		</xsl:if>
	</xsl:template>
	<xsl:template mode="data" match="*[v3:numerator]">
		<xsl:apply-templates mode="data" select="v3:numerator/v3:translation"/>
		<xsl:if
			test="v3:denominator/translation[not(@value='1' and (not(@displayName) or @displayName='1'))]">
			<xsl:text> : </xsl:text>
			<xsl:apply-templates mode="data" select="v3:denominator"/>
		</xsl:if>
	</xsl:template>
	<xsl:template name="effectiveDateHighlights">
		<xsl:if test="v3:document/v3:effectiveTime[@value != '']">
			<xsl:text>Revised: </xsl:text>
			<xsl:apply-templates mode="data" select="v3:document/v3:effectiveTime">
				<xsl:with-param name="displayMonth">true</xsl:with-param>
				<xsl:with-param name="displayDay">false</xsl:with-param>
				<xsl:with-param name="displayYear">true</xsl:with-param>
				<xsl:with-param name="delimiter">/</xsl:with-param>
			</xsl:apply-templates>
			<xsl:if test="$update-check-url-base">
				<xsl:variable name="url" select="concat($update-check-url-base, v3:document/v3:setId/@root)"/>
				<xsl:text> </xsl:text>
				<fo:basic-link color="blue" external-destination="{$url}">
					<xsl:text>Click here to check for updated version.</xsl:text>
				</fo:basic-link>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template name="effectiveDate">
		<xsl:if test="v3:document/v3:effectiveTime[@value != '']">
			<xsl:text>Revised: </xsl:text>
			<xsl:apply-templates mode="data" select="v3:document/v3:effectiveTime">
				<xsl:with-param name="displayMonth">true</xsl:with-param>
				<xsl:with-param name="displayDay">false</xsl:with-param>
				<xsl:with-param name="displayYear">true</xsl:with-param>
				<xsl:with-param name="delimiter">/</xsl:with-param>
			</xsl:apply-templates>
			<xsl:if test="$update-check-url-base">
				<xsl:variable name="url" select="concat($update-check-url-base, v3:document/v3:setId/@root)"/>
				<xsl:text> </xsl:text>
				<fo:basic-link color="blue" external-destination="{$url}">
					<xsl:text>Click here to check for updated version.</xsl:text>
				</fo:basic-link>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template name="distributorName">
		<xsl:if test="v3:document/v3:author/v3:assignedEntity/v3:representedOrganization/v3:name != ''">
			Distributed by: <xsl:value-of
				select="./v3:document/v3:author/v3:assignedEntity/v3:representedOrganization/v3:name"/>
		</xsl:if>
	</xsl:template>

	<xsl:attribute-set name="spl-otc-row">
		<xsl:attribute name="role">spl-otc-row</xsl:attribute>
		<xsl:attribute name="border-top-color">black</xsl:attribute>
		<xsl:attribute name="border-top-width">2pt</xsl:attribute>
		<xsl:attribute name="border-top-style">solid</xsl:attribute>
		<xsl:attribute name="text-align">start</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="spl-otc-cell">
		<xsl:attribute name="role">spl-otc-cell</xsl:attribute>
		<xsl:attribute name="vertical-align">top</xsl:attribute>
		<xsl:attribute name="display-align">before</xsl:attribute>
		<xsl:attribute name="font-size">6pt</xsl:attribute>
		<xsl:attribute name="padding">4pt</xsl:attribute>
	</xsl:attribute-set>	
	
	<xsl:attribute-set name="spl-fpi-otc">
		<xsl:attribute name="text-align">start</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>
	
	
	<xsl:attribute-set name="spl-fpi-otc-header0">
		<xsl:attribute name="font-size">10pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="spl-fpi-otc-header">
		<xsl:attribute name="font-size">8pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>
	
	
	<xsl:attribute-set name="spl-fpi-otc-header2">
		<xsl:attribute name="font-size">6pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="keep-with-next">always</xsl:attribute>
	</xsl:attribute-set>
	
	
	<xsl:template name="otcTable">
		<fo:table space-after="1em" table-omit-footer-at-break="true" role="v3:table"
			width="7.5in" border-collapse="collapse" border-style="solid" border-width="2pt">
			<fo:table-column column-width="100%" role="v3:col" text-align="left"/>
			<fo:table-body>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc-header0" role="process-table-cell"> DRUG FACTS </fo:block>						
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:list-block  xsl:use-attribute-sets="spl-fpi-otc-header">
								<fo:list-item>
									<fo:list-item-label end-indent="label-end()">
										<fo:block keep-together.within-line="always" text-align="start"> Active
											ingredient(s) </fo:block>
									</fo:list-item-label>
									<fo:list-item-body start-indent="body-start()">
										<fo:block keep-together.within-line="always" text-align="end"> Purpose
										</fo:block>
									</fo:list-item-body>
								</fo:list-item>
							</fo:list-block>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '34089-3']">
								<xsl:apply-templates mode="otcTable" select="v3:text/v3:paragraph"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header">Use(s)</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '34067-9']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:block  xsl:use-attribute-sets="spl-fpi-otc-header">Warnings</fo:block>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '34071-1']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:block  xsl:use-attribute-sets="spl-fpi-otc-header2">Do not use</fo:block>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50570-1']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:block  xsl:use-attribute-sets="spl-fpi-otc-header2">Ask a doctor before use if you have</fo:block>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50569-3']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:block  xsl:use-attribute-sets="spl-fpi-otc-header2">Ask a doctor or pharmacist before use if you are</fo:block>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50568-5']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header2">When using this product</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50567-7']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header2">Stop use and ask a doctor if</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50566-9']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block>&#160;</fo:block>
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header2">If pregnant or breast-feeding</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '42228-7']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '34078-6']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
						
						<fo:block text-align="center">
							<fo:leader  leader-pattern="rule"  leader-length="7.3in" rule-thickness="0.5pt" alignment-baseline="bottom"/>
						</fo:block>
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header2">Keep out of reach of children</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '50565-1']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header">Directions</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '34068-7']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header">Other information</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '44425-7']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '42229-5']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row xsl:use-attribute-sets="spl-otc-row">
					<fo:table-cell xsl:use-attribute-sets="spl-otc-cell">
						<fo:block xsl:use-attribute-sets="spl-fpi-otc">
							<fo:inline  xsl:use-attribute-sets="spl-fpi-otc-header">Inactive ingredients</fo:inline>
							<xsl:for-each select="//v3:component/v3:section[v3:code/@code = '51727-6']">
								<xsl:apply-templates select="v3:text"/>
							</xsl:for-each>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	
	<xsl:template mode="otcTable" match="v3:text/v3:paragraph">
		<fo:block  xsl:use-attribute-sets="spl-fpi-otc-header2" text-align="start">
		<xsl:apply-templates mode="otcTable" select="v3:content"/>
		</fo:block>
		<fo:block text-align="center" text-align-last="justify">
			<xsl:value-of select="substring-before(text(), '..')"/>
			&#160;<fo:leader leader-pattern="dots" rule-thickness="0.5pt" alignment-baseline="bottom"/>&#160;
			<xsl:value-of select=" translate(substring-after(text(), '..'),'.','')"/>			
		</fo:block>
	</xsl:template>

































	<!--======================================================================
  Parameters
=======================================================================-->

	<!-- page size -->
	<xsl:param name="page-width">auto</xsl:param>
	<xsl:param name="page-height">auto</xsl:param>
	<xsl:param name="page-margin-top">1in</xsl:param>
	<xsl:param name="page-margin-bottom">1in</xsl:param>
	<xsl:param name="page-margin-left">1in</xsl:param>
	<xsl:param name="page-margin-right">1in</xsl:param>

	<!-- page header and footer -->
	<xsl:param name="page-header-margin">0.5in</xsl:param>
	<xsl:param name="page-footer-margin">0.5in</xsl:param>
	<xsl:param name="title-print-in-header">true</xsl:param>
	<xsl:param name="page-number-print-in-footer">true</xsl:param>

	<!-- multi column -->
	<xsl:param name="column-count">1</xsl:param>
	<xsl:param name="column-gap">12pt</xsl:param>

	<!-- writing-mode: lr-tb | rl-tb | tb-rl -->
	<xsl:param name="writing-mode">lr-tb</xsl:param>

	<!-- text-align: justify | start -->
	<xsl:param name="text-align">start</xsl:param>

	<!-- hyphenate: true | false -->
	<xsl:param name="hyphenate">false</xsl:param>


	<!--======================================================================
  Attribute Sets
=======================================================================-->

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Root
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="root">
		<xsl:attribute name="writing-mode">
			<xsl:value-of select="$writing-mode"/>
		</xsl:attribute>
		<xsl:attribute name="hyphenate">
			<xsl:value-of select="$hyphenate"/>
		</xsl:attribute>
		<xsl:attribute name="text-align">
			<xsl:value-of select="$text-align"/>
		</xsl:attribute>
		<!-- specified on fo:root to change the properties' initial values -->
	</xsl:attribute-set>

	<xsl:attribute-set name="page">
		<xsl:attribute name="page-width">
			<xsl:value-of select="$page-width"/>
		</xsl:attribute>
		<xsl:attribute name="page-height">
			<xsl:value-of select="$page-height"/>
		</xsl:attribute>
		<!-- specified on fo:simple-page-master -->
	</xsl:attribute-set>

	<xsl:attribute-set name="body">
		<!-- specified on fo:flow's only child fo:block -->
	</xsl:attribute-set>

	<xsl:attribute-set name="page-header">
		<!-- specified on (page-header)fo:static-content's only child fo:block -->
		<xsl:attribute name="font-size">small</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="page-footer">
		<!-- specified on (page-footer)fo:static-content's only child fo:block -->
		<xsl:attribute name="font-size">small</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Block-level
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="h1">
		<xsl:attribute name="font-size">2em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">0.67em</xsl:attribute>
		<xsl:attribute name="space-after">0.67em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="h2">
		<xsl:attribute name="font-size">1.5em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">0.83em</xsl:attribute>
		<xsl:attribute name="space-after">0.83em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="h3">
		<xsl:attribute name="font-size">1.17em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="h4">
		<xsl:attribute name="font-size">1em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1.17em</xsl:attribute>
		<xsl:attribute name="space-after">1.17em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="h5">
		<xsl:attribute name="font-size">0.83em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1.33em</xsl:attribute>
		<xsl:attribute name="space-after">1.33em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="h6">
		<xsl:attribute name="font-size">0.67em</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="space-before">1.67em</xsl:attribute>
		<xsl:attribute name="space-after">1.67em</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="p">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<!-- e.g.,
<xsl:attribute name="text-indent">1em</xsl:attribute>
-->
	</xsl:attribute-set>

	<xsl:attribute-set name="p-initial" use-attribute-sets="p">
		<!-- initial paragraph, preceded by h1..6 or div -->
		<!-- e.g.,
<xsl:attribute name="text-indent">0em</xsl:attribute>
-->
	</xsl:attribute-set>

	<xsl:attribute-set name="p-initial-first" use-attribute-sets="p-initial">
		<!-- initial paragraph, first child of div, body or td -->
	</xsl:attribute-set>

	<xsl:attribute-set name="blockquote">
		<xsl:attribute name="start-indent">inherited-property-value(start-indent) + 24pt</xsl:attribute>
		<xsl:attribute name="end-indent">inherited-property-value(end-indent) + 24pt</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="pre">
		<xsl:attribute name="font-size">0.83em</xsl:attribute>
		<xsl:attribute name="font-family">monospace</xsl:attribute>
		<xsl:attribute name="white-space">pre</xsl:attribute>
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="address">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="hr">
		<xsl:attribute name="border">1px inset</xsl:attribute>
		<xsl:attribute name="space-before">0.67em</xsl:attribute>
		<xsl:attribute name="space-after">0.67em</xsl:attribute>
	</xsl:attribute-set>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   List
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="ul">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ul-nested">
		<xsl:attribute name="space-before">0pt</xsl:attribute>
		<xsl:attribute name="space-after">0pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ol">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ol-nested">
		<xsl:attribute name="space-before">0pt</xsl:attribute>
		<xsl:attribute name="space-after">0pt</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ul-li">
		<!-- for (unordered)fo:list-item -->
		<xsl:attribute name="relative-align">baseline</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="ol-li">
		<!-- for (ordered)fo:list-item -->
		<xsl:attribute name="relative-align">baseline</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="dl">
		<xsl:attribute name="space-before">1em</xsl:attribute>
		<xsl:attribute name="space-after">1em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="dt">
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="keep-together.within-column">always</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="dd">
		<xsl:attribute name="start-indent">inherited-property-value(start-indent) + 24pt</xsl:attribute>
	</xsl:attribute-set>

	<!-- list-item-label format for each nesting level -->

	<xsl:param name="ul-label-1">&#x2022;</xsl:param>
	<xsl:attribute-set name="ul-label-1">
		<xsl:attribute name="font">1em serif</xsl:attribute>
	</xsl:attribute-set>

	<xsl:param name="ul-label-2">o</xsl:param>
	<xsl:attribute-set name="ul-label-2">
		<xsl:attribute name="font">0.67em monospace</xsl:attribute>
		<xsl:attribute name="baseline-shift">0.25em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:param name="ul-label-3">?</xsl:param>
	<xsl:attribute-set name="ul-label-3">
		<xsl:attribute name="font">bold 0.9em Courier</xsl:attribute>
		<xsl:attribute name="baseline-shift">0.05em</xsl:attribute>
	</xsl:attribute-set>

	<xsl:param name="ol-label-1">1.</xsl:param>
	<xsl:attribute-set name="ol-label-1"/>

	<xsl:param name="ol-label-2">a.</xsl:param>
	<xsl:attribute-set name="ol-label-2"/>

	<xsl:param name="ol-label-3">i.</xsl:param>
	<xsl:attribute-set name="ol-label-3"/>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Table
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="inside-table">
		<!-- prevent unwanted inheritance -->
		<xsl:attribute name="start-indent">0pt</xsl:attribute>
		<xsl:attribute name="end-indent">0pt</xsl:attribute>
		<xsl:attribute name="text-indent">0pt</xsl:attribute>
		<xsl:attribute name="last-line-end-indent">0pt</xsl:attribute>
		<xsl:attribute name="text-align">start</xsl:attribute>
		<xsl:attribute name="text-align-last">relative</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="table-and-caption">
		<xsl:attribute name="display-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="table">
		<xsl:attribute name="space-after">1em</xsl:attribute>
		<xsl:attribute name="table-omit-footer-at-break">true</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="table-caption" use-attribute-sets="inside-table">
		<xsl:attribute name="text-align">center</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="table-column"> </xsl:attribute-set>

	<xsl:attribute-set name="thead" use-attribute-sets="inside-table"> </xsl:attribute-set>

	<xsl:attribute-set name="tfoot" use-attribute-sets="inside-table"> </xsl:attribute-set>

	<xsl:attribute-set name="tbody" use-attribute-sets="inside-table"> </xsl:attribute-set>

	<xsl:attribute-set name="tr"> </xsl:attribute-set>

	<xsl:attribute-set name="th">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-align">center</xsl:attribute>
		<!--
  	<xsl:attribute name="border">1px</xsl:attribute>
  	<xsl:attribute name="border-style">solid</xsl:attribute>
  -->
		<xsl:attribute name="padding">1px</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="td">
		<!--
		<xsl:attribute name="border">1px</xsl:attribute>
  <xsl:attribute name="border-style">solid</xsl:attribute>
-->
		<xsl:attribute name="padding">1px</xsl:attribute>
	</xsl:attribute-set>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Inline-level
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="b">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="strong">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="strong-em">
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="i">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="cite">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="em">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="var">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="dfn">
		<xsl:attribute name="font-style">italic</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="tt">
		<xsl:attribute name="font-family">monospace</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="code">
		<xsl:attribute name="font-family">monospace</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="kbd">
		<xsl:attribute name="font-family">monospace</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="samp">
		<xsl:attribute name="font-family">monospace</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="big">
		<xsl:attribute name="font-size">larger</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="small">
		<xsl:attribute name="font-size">smaller</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="sub">
		<xsl:attribute name="baseline-shift">sub</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="sup">
		<xsl:attribute name="baseline-shift">super</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="s">
		<xsl:attribute name="text-decoration">line-through</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="strike">
		<xsl:attribute name="text-decoration">line-through</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="del">
		<xsl:attribute name="text-decoration">line-through</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="u">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="ins">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
	</xsl:attribute-set>

	<xsl:attribute-set name="abbr">
		<!-- e.g.,
<xsl:attribute name="font-variant">small-caps</xsl:attribute>
<xsl:attribute name="letter-spacing">0.1em</xsl:attribute>
-->
	</xsl:attribute-set>

	<xsl:attribute-set name="acronym">
		<!-- e.g.,
<xsl:attribute name="font-variant">small-caps</xsl:attribute>
<xsl:attribute name="letter-spacing">0.1em</xsl:attribute>
-->
	</xsl:attribute-set>

	<xsl:attribute-set name="q"/>
	<xsl:attribute-set name="q-nested"/>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Image
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="img"> </xsl:attribute-set>

	<xsl:attribute-set name="img-link">
		<xsl:attribute name="border">2px solid</xsl:attribute>
	</xsl:attribute-set>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Link
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:attribute-set name="a-link">
		<xsl:attribute name="text-decoration">underline</xsl:attribute>
		<xsl:attribute name="color">blue</xsl:attribute>
	</xsl:attribute-set>


	<!--======================================================================
  Templates
=======================================================================-->

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Root
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:html">
		<fo:root xsl:use-attribute-sets="root">
			<xsl:call-template name="process-common-attributes"/>
			<xsl:call-template name="make-layout-master-set"/>
			<xsl:apply-templates/>
		</fo:root>
	</xsl:template>

	<xsl:template name="make-layout-master-set">
		<fo:layout-master-set>
			<fo:simple-page-master master-name="all-pages" xsl:use-attribute-sets="page">
				<fo:region-body margin-top="{$page-margin-top}" margin-right="{$page-margin-right}"
					margin-bottom="{$page-margin-bottom}" margin-left="{$page-margin-left}"
					column-count="{$column-count}" column-gap="{$column-gap}"/>
				<xsl:choose>
					<xsl:when test="$writing-mode = 'tb-rl'">
						<fo:region-before extent="{$page-margin-right}" precedence="true"/>
						<fo:region-after extent="{$page-margin-left}" precedence="true"/>
						<fo:region-start region-name="page-header" extent="{$page-margin-top}"
							writing-mode="lr-tb" display-align="before"/>
						<fo:region-end region-name="page-footer" extent="{$page-margin-bottom}"
							writing-mode="lr-tb" display-align="after"/>
					</xsl:when>
					<xsl:when test="$writing-mode = 'rl-tb'">
						<fo:region-before region-name="page-header" extent="{$page-margin-top}"
							display-align="before"/>
						<fo:region-after region-name="page-footer" extent="{$page-margin-bottom}"
							display-align="after"/>
						<fo:region-start extent="{$page-margin-right}"/>
						<fo:region-end extent="{$page-margin-left}"/>
					</xsl:when>
					<xsl:otherwise>
						<!-- $writing-mode = 'lr-tb' -->
						<fo:region-before region-name="page-header" extent="{$page-margin-top}"
							display-align="before"/>
						<fo:region-after region-name="page-footer" extent="{$page-margin-bottom}"
							display-align="after"/>
						<fo:region-start extent="{$page-margin-left}"/>
						<fo:region-end extent="{$page-margin-bottom}"/>
					</xsl:otherwise>
				</xsl:choose>
			</fo:simple-page-master>
		</fo:layout-master-set>
	</xsl:template>

	<xsl:template match="v3:head | v3:script"/>

	<xsl:template match="v3:body">
		<fo:page-sequence master-reference="all-pages">
			<fo:title>
				<xsl:value-of select="/v3:html/v3:head/v3:title"/>
			</fo:title>
			<fo:static-content flow-name="page-header">
				<fo:block space-before.conditionality="retain" space-before="{$page-header-margin}"
					xsl:use-attribute-sets="page-header">
					<xsl:if test="$title-print-in-header = 'true'">
						<xsl:value-of select="/v3:html/v3:head/v3:title"/>
					</xsl:if>
				</fo:block>
			</fo:static-content>
			<fo:static-content flow-name="page-footer">
				<fo:block space-after.conditionality="retain" space-after="{$page-footer-margin}"
					xsl:use-attribute-sets="page-footer">
					<xsl:if test="$page-number-print-in-footer = 'true'">
						<xsl:text>- </xsl:text>
						<fo:page-number/>
						<xsl:text> -</xsl:text>
					</xsl:if>
				</fo:block>
			</fo:static-content>
			<fo:flow flow-name="xsl-region-body">
				<fo:block xsl:use-attribute-sets="body">
					<xsl:call-template name="process-common-attributes"/>
					<xsl:apply-templates/>
				</fo:block>
			</fo:flow>
		</fo:page-sequence>
	</xsl:template>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
process common attributes and children
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template name="process-common-attributes-and-children">
		<xsl:call-template name="process-common-attributes"/>
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template name="process-common-attributes">
		<xsl:attribute name="role">
			<xsl:value-of select="concat('v3:', local-name())"/>
		</xsl:attribute>

		<xsl:choose>
			<xsl:when test="@xml:lang">
				<xsl:attribute name="xml:lang">
					<xsl:value-of select="@xml:lang"/>
				</xsl:attribute>
			</xsl:when>
			<xsl:when test="@lang">
				<xsl:attribute name="xml:lang">
					<xsl:value-of select="@lang"/>
				</xsl:attribute>
			</xsl:when>
		</xsl:choose>

		<xsl:choose>
			<xsl:when test="@id">
				<xsl:attribute name="id">
					<xsl:value-of select="@id"/>
				</xsl:attribute>
			</xsl:when>
			<xsl:when test="self::v3:a/@name">
				<xsl:attribute name="id">
					<xsl:value-of select="@name"/>
				</xsl:attribute>
			</xsl:when>
		</xsl:choose>

		<xsl:if test="@align">
			<xsl:choose>
				<xsl:when test="self::v3:caption"> </xsl:when>
				<xsl:when test="self::v3:img or self::v3:object">
					<xsl:if test="@align = 'bottom' or @align = 'middle' or @align = 'top'">
						<xsl:attribute name="vertical-align">
							<xsl:value-of select="@align"/>
						</xsl:attribute>
					</xsl:if>
				</xsl:when>
				<xsl:otherwise>
					<xsl:call-template name="process-cell-align">
						<xsl:with-param name="align" select="@align"/>
					</xsl:call-template>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="@valign">
			<xsl:call-template name="process-cell-valign">
				<xsl:with-param name="valign" select="@valign"/>
			</xsl:call-template>
		</xsl:if>

		<xsl:if test="@style">
			<xsl:call-template name="process-style">
				<xsl:with-param name="style" select="@style"/>
			</xsl:call-template>
		</xsl:if>

	</xsl:template>

	<xsl:template name="process-style">
		<xsl:param name="style"/>
		<!-- e.g., style="text-align: center; color: red"
     converted to text-align="center" color="red" -->
		<xsl:variable name="name" select="normalize-space(substring-before($style, ':'))"/>
		<xsl:if test="$name">
			<xsl:variable name="value-and-rest" select="normalize-space(substring-after($style, ':'))"/>
			<xsl:variable name="value">
				<xsl:choose>
					<xsl:when test="contains($value-and-rest, ';')">
						<xsl:value-of
							select="normalize-space(substring-before(
                              $value-and-rest, ';'))"
						/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$value-and-rest"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="$name = 'width' and (self::v3:col or self::v3:colgroup)">
					<xsl:attribute name="column-width-m0">
						<xsl:value-of select="$value"/>
					</xsl:attribute>
				</xsl:when>
				<xsl:when
					test="$name = 'vertical-align' and (
                             self::v3:table or self::v3:caption or
                             self::v3:thead or self::v3:tfoot or
                             self::v3:tbody or self::v3:colgroup or
                             self::v3:col or self::v3:tr or
                             self::v3:th or self::v3:td)">
					<xsl:choose>
						<xsl:when test="$value = 'top'">
							<xsl:attribute name="display-align">before</xsl:attribute>
						</xsl:when>
						<xsl:when test="$value = 'bottom'">
							<xsl:attribute name="display-align">after</xsl:attribute>
						</xsl:when>
						<xsl:when test="$value = 'middle'">
							<xsl:attribute name="display-align">center</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="display-align">auto</xsl:attribute>
							<xsl:attribute name="relative-align">baseline</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="{$name}">
						<xsl:value-of select="$value"/>
					</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:variable name="rest" select="normalize-space(substring-after($style, ';'))"/>
		<xsl:if test="$rest">
			<xsl:call-template name="process-style">
				<xsl:with-param name="style" select="$rest"/>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>


	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Block-level
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:h1">
		<fo:block xsl:use-attribute-sets="h1">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:h2">
		<fo:block xsl:use-attribute-sets="h2">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:h3">
		<fo:block xsl:use-attribute-sets="h3">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:h4">
		<fo:block xsl:use-attribute-sets="h4">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:h5">
		<fo:block xsl:use-attribute-sets="h5">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:h6">
		<fo:block xsl:use-attribute-sets="h6">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:p">
		<fo:block xsl:use-attribute-sets="p">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<!-- initial paragraph, preceded by h1..6 or div -->
	<xsl:template
		match="v3:p[preceding-sibling::*[1][
                   self::v3:h1 or self::v3:h2 or self::v3:h3 or
                   self::v3:h4 or self::v3:h5 or self::v3:h6 or
                   self::v3:div]]">
		<fo:block xsl:use-attribute-sets="p-initial">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<!-- initial paragraph, first child of div, body or td -->
	<xsl:template
		match="v3:p[not(preceding-sibling::*) and (
                   parent::v3:div or parent::v3:body or
                   parent::v3:td)]">
		<fo:block xsl:use-attribute-sets="p-initial-first">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:blockquote">
		<fo:block xsl:use-attribute-sets="blockquote">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:pre">
		<fo:block xsl:use-attribute-sets="pre">
			<xsl:call-template name="process-pre"/>
		</fo:block>
	</xsl:template>

	<xsl:template name="process-pre">
		<xsl:call-template name="process-common-attributes"/>
		<!-- remove leading CR/LF/CRLF char -->
		<xsl:variable name="crlf">
			<xsl:text>&#xD;&#xA;</xsl:text>
		</xsl:variable>
		<xsl:variable name="lf">
			<xsl:text>&#xA;</xsl:text>
		</xsl:variable>
		<xsl:variable name="cr">
			<xsl:text>&#xD;</xsl:text>
		</xsl:variable>
		<xsl:for-each select="node()">
			<xsl:choose>
				<xsl:when test="position() = 1 and self::text()">
					<xsl:choose>
						<xsl:when test="starts-with(., $lf)">
							<xsl:value-of select="substring(., 2)"/>
						</xsl:when>
						<xsl:when test="starts-with(., $crlf)">
							<xsl:value-of select="substring(., 3)"/>
						</xsl:when>
						<xsl:when test="starts-with(., $cr)">
							<xsl:value-of select="substring(., 2)"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:apply-templates select="."/>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:apply-templates select="."/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="v3:address">
		<fo:block xsl:use-attribute-sets="address">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:hr">
		<fo:block xsl:use-attribute-sets="hr">
			<xsl:call-template name="process-common-attributes"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:div">
		<xsl:variable name="need-block-container">
			<xsl:call-template name="need-block-container"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$need-block-container = 'true'">
				<fo:block-container>
					<xsl:if test="@dir">
						<xsl:attribute name="writing-mode">
							<xsl:choose>
								<xsl:when test="@dir = 'rtl'">rl-tb</xsl:when>
								<xsl:otherwise>lr-tb</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
					</xsl:if>
					<xsl:call-template name="process-common-attributes"/>
					<fo:block start-indent="0pt" end-indent="0pt">
						<xsl:apply-templates/>
					</fo:block>
				</fo:block-container>
			</xsl:when>
			<xsl:otherwise>
				<fo:block>
					<xsl:call-template name="process-common-attributes"/>
					<xsl:apply-templates/>
				</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="need-block-container">
		<xsl:choose>
			<xsl:when test="@dir">true</xsl:when>
			<xsl:when test="@style">
				<xsl:variable name="s"
					select="concat(';', translate(normalize-space(@style),
                                                ' ', ''))"/>
				<xsl:choose>
					<xsl:when
						test="contains($s, ';width:') or
                      contains($s, ';height:') or
                      contains($s, ';position:absolute') or
                      contains($s, ';position:fixed') or
                      contains($s, ';writing-mode:')"
						>true</xsl:when>
					<xsl:otherwise>false</xsl:otherwise>
				</xsl:choose>
			</xsl:when>
			<xsl:otherwise>false</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="v3:center">
		<fo:block text-align="center">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:fieldset | v3:form | v3:dir | v3:menu">
		<fo:block space-before="1em" space-after="1em">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   List
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:ul">
		<fo:list-block xsl:use-attribute-sets="ul">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:list-block>
	</xsl:template>

	<xsl:template match="v3:li//v3:ul">
		<fo:list-block xsl:use-attribute-sets="ul-nested">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:list-block>
	</xsl:template>

	<xsl:template match="v3:ol">
		<fo:list-block xsl:use-attribute-sets="ol">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:list-block>
	</xsl:template>

	<xsl:template match="v3:li//v3:ol">
		<fo:list-block xsl:use-attribute-sets="ol-nested">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:list-block>
	</xsl:template>

	<xsl:template match="v3:ul/v3:li">
		<fo:list-item xsl:use-attribute-sets="ul-li">
			<xsl:call-template name="process-ul-li"/>
		</fo:list-item>
	</xsl:template>

	<xsl:template name="process-ul-li">
		<xsl:call-template name="process-common-attributes"/>
		<fo:list-item-label end-indent="label-end()" text-align="end" wrap-option="no-wrap">
			<fo:block role="process-ul-li">
				<xsl:variable name="depth" select="count(ancestor::v3:ul)"/>
				<xsl:choose>
					<xsl:when test="$depth = 1">
						<fo:inline xsl:use-attribute-sets="ul-label-1">
							<xsl:value-of select="$ul-label-1"/>
						</fo:inline>
					</xsl:when>
					<xsl:when test="$depth = 2">
						<fo:inline xsl:use-attribute-sets="ul-label-2">
							<xsl:value-of select="$ul-label-2"/>
						</fo:inline>
					</xsl:when>
					<xsl:otherwise>
						<fo:inline xsl:use-attribute-sets="ul-label-3">
							<xsl:value-of select="$ul-label-3"/>
						</fo:inline>
					</xsl:otherwise>
				</xsl:choose>
			</fo:block>
		</fo:list-item-label>
		<fo:list-item-body start-indent="body-start()">
			<fo:block>
				<xsl:apply-templates/>
			</fo:block>
		</fo:list-item-body>
	</xsl:template>

	<xsl:template match="v3:ol/v3:li">
		<fo:list-item xsl:use-attribute-sets="ol-li">
			<xsl:call-template name="process-ol-li"/>
		</fo:list-item>
	</xsl:template>

	<xsl:template name="process-ol-li">
		<xsl:call-template name="process-common-attributes"/>
		<fo:list-item-label end-indent="label-end()" text-align="end" wrap-option="no-wrap">
			<fo:block>
				<xsl:variable name="depth" select="count(ancestor::v3:ol)"/>
				<xsl:choose>
					<xsl:when test="$depth = 1">
						<fo:inline xsl:use-attribute-sets="ol-label-1">
							<xsl:number format="{$ol-label-1}"/>
						</fo:inline>
					</xsl:when>
					<xsl:when test="$depth = 2">
						<fo:inline xsl:use-attribute-sets="ol-label-2">
							<xsl:number format="{$ol-label-2}"/>
						</fo:inline>
					</xsl:when>
					<xsl:otherwise>
						<fo:inline xsl:use-attribute-sets="ol-label-3">
							<xsl:number format="{$ol-label-3}"/>
						</fo:inline>
					</xsl:otherwise>
				</xsl:choose>
			</fo:block>
		</fo:list-item-label>
		<fo:list-item-body start-indent="body-start()">
			<fo:block>
				<xsl:apply-templates/>
			</fo:block>
		</fo:list-item-body>
	</xsl:template>

	<xsl:template match="v3:dl">
		<fo:block xsl:use-attribute-sets="dl">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:dt">
		<fo:block xsl:use-attribute-sets="dt">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:dd">
		<fo:block xsl:use-attribute-sets="dd">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:block>
	</xsl:template>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Table
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->
	<xsl:template
		match="v3:table/@summary                       |v3:table/@width                       |v3:table/@border                       |v3:table/@frame                       |v3:table/@rules                       |v3:table/@cellspacing                       |v3:table/@cellpadding">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:thead/@align                       |v3:thead/@char                       |v3:thead/@charoff                       |v3:thead/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:tfoot/@align                       |v3:tfoot/@char                       |v3:tfoot/@charoff                       |v3:tfoot/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:tbody/@align                       |v3:tbody/@char                       |v3:tbody/@charoff ">
		<xsl:copy-of select="."/>
	</xsl:template>
	<xsl:template
		match="v3:tr/@align                       |v3:tr/@char                       |v3:tr/@charoff                       |v3:tr/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:th/@align                       |v3:th/@char                       |v3:th/@charoff                       |v3:th/@valign                       |v3:th/@abbr                       |v3:th/@axis                       |v3:th/@headers                       |v3:th/@scope                       |v3:th/@number-rows-spanned                       |v3:th/@number-columns-spanned">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:td/@align                       |v3:td/@char                       |v3:td/@charoff                       |v3:td/@valign                       |v3:td/@abbr                       |v3:td/@axis                       |v3:td/@headers                       |v3:td/@scope                       |v3:td/@number-rows-spanned                       |v3:td/@number-columns-spanned">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:colgroup/@span                       |v3:colgroup/@width                       |v3:colgroup/@align                       |v3:colgroup/@char                       |v3:colgroup/@charoff                       |v3:colgroup/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>

	<xsl:template
		match="v3:col/@span                       |v3:col/@width                       |v3:col/@align                       |v3:col/@char                       |v3:col/@charoff                       |v3:col/@valign">
		<xsl:copy-of select="."/>
	</xsl:template>
	
	<xsl:template match="v3:table">
		<xsl:apply-templates select="v3:caption"/>
		<xsl:choose>
			<xsl:when test="not($isWordVersion) and contains(@styleCode, 'xmChange')">
				<fo:block role="spl-xmchange-table">
					<xsl:if test="contains(@styleCode, 'xmChange')">
						<xsl:choose>
							<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="border-left-color">black</xsl:attribute>
								<xsl:attribute name="border-left-width">1pt</xsl:attribute>
								<xsl:attribute name="border-left-style">solid</xsl:attribute>
								<xsl:attribute name="margin-left">-.3in</xsl:attribute>
								<xsl:attribute name="padding-left">.3in</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:if test="boolean($isWordVersion)">
						<fo:block>&#160;</fo:block>
					</xsl:if>
					<fo:table role="v3:table-a" xsl:use-attribute-sets="table">
						<xsl:if test="ancestor::v3:highlight">
							<xsl:attribute name="keep-together.within-page">always</xsl:attribute>
						</xsl:if>
						<xsl:if test="count(descendant::v3:col) + count(descendant::v3:colgroup) = 0">
							<xsl:for-each select="v3:tbody/v3:tr[position()=1]/v3:td">
								<fo:table-column xsl:use-attribute-sets="table-column">
									<xsl:call-template name="process-table-column"/>
								</fo:table-column>
							</xsl:for-each>
						</xsl:if>	
						<xsl:call-template name="process-table"/>
					</fo:table>
					<xsl:if test="boolean($isWordVersion)">
						<fo:block>&#160;</fo:block>
					</xsl:if>
				</fo:block>
			</xsl:when>
			<xsl:otherwise>
				<xsl:if test="boolean($isWordVersion)">
					<fo:block>&#160;</fo:block>
				</xsl:if>
				<fo:table role="v3:table-b" xsl:use-attribute-sets="table">
					<xsl:if test="ancestor::v3:highlight">
						<xsl:attribute name="keep-together.within-page">always</xsl:attribute>
					</xsl:if>
					<xsl:if test="count(descendant::v3:col) + count(descendant::v3:colgroup) = 0">
					<xsl:for-each select="v3:tbody/v3:tr[position()=1]/v3:td">
						<fo:table-column xsl:use-attribute-sets="table-column">
							<xsl:call-template name="process-table-column"/>
						</fo:table-column>
					</xsl:for-each>
					</xsl:if>	
					<xsl:call-template name="process-table"/>
				</fo:table>
				<xsl:if test="boolean($isWordVersion)">
					<fo:block>&#160;</fo:block>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="process-table">
		<xsl:if test="@border or @frame">
			<xsl:choose>
				<xsl:when test="@border &gt; 0">
					<xsl:attribute name="border">
						<xsl:value-of select="@border"/>px</xsl:attribute>
				</xsl:when>
			</xsl:choose>
			<xsl:choose>
				<!-- frame ='void' means there's shouldn't be an outer border -->
				<xsl:when test="@border = '0' or @frame = 'void'">
					<xsl:attribute name="border-style">hidden</xsl:attribute>
					<xsl:attribute name="border-color">white</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'above'">
					<xsl:attribute name="border-style">outset hidden hidden hidden</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'below'">
					<xsl:attribute name="border-style">hidden hidden outset hidden</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'hsides'">
					<xsl:attribute name="border-style">outset hidden</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'vsides'">
					<xsl:attribute name="border-style">hidden outset</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'lhs'">
					<xsl:attribute name="border-style">hidden hidden hidden outset</xsl:attribute>
				</xsl:when>
				<xsl:when test="@frame = 'rhs'">
					<xsl:attribute name="border-style">hidden outset hidden hidden</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="@cellspacing">
			<xsl:attribute name="border-spacing">
				<xsl:value-of select="@cellspacing"/>px</xsl:attribute>
			<xsl:attribute name="border-collapse">separate</xsl:attribute>
		</xsl:if>
		<xsl:if
			test="@rules and (@rules = 'groups' or
                  @rules = 'rows' or
                  @rules = 'cols' or
                  @rules = 'all' and (not(@border or @frame) or
                      @border = '0' or @frame and
                      not(@frame = 'box' or @frame = 'border')))">
			<xsl:attribute name="border-collapse">collapse</xsl:attribute>
			<xsl:if test="not(@border or @frame)">
				<xsl:attribute name="border-style">hidden</xsl:attribute>
			</xsl:if>
		</xsl:if>
		<xsl:call-template name="process-special-stylecode"/>
		<xsl:call-template name="process-common-attributes"/>
		<xsl:apply-templates select="v3:col | v3:colgroup"/>
		<xsl:apply-templates select="v3:thead"/>
		<xsl:apply-templates select="v3:tfoot"/>
		<xsl:choose>
			<xsl:when test="v3:tbody">
				<xsl:apply-templates select="v3:tbody"/>
			</xsl:when>
			<xsl:otherwise>
				<fo:table-body xsl:use-attribute-sets="tbody">
					<xsl:apply-templates select="v3:tr"/>
				</fo:table-body>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="v3:caption">
		<fo:block role="v3:caption">
			<xsl:if test="contains(parent::v3:table/@styleCode, 'xmChange')">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:call-template name="process-common-attributes"/>
			<xsl:apply-templates/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:table/v3:caption">
		<fo:block>&nbsp;</fo:block>
		<fo:block keep-with-next.within-page="always">
			<xsl:attribute name="role">v3:table/v3:caption-<xsl:value-of
					select="contains(parent::v3:table/@styleCode, 'xmChange')"/></xsl:attribute>
			<xsl:if test="contains(parent::v3:table/@styleCode, 'xmChange')">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:call-template name="process-common-attributes"/>
			<xsl:apply-templates select="@*"/>
			<xsl:apply-templates mode="mixed" select="node()"/>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:thead"/>

	<xsl:template mode="custome" match="v3:thead">
		<xsl:call-template name="process-table-rowgroup"/>
	</xsl:template>

	<xsl:template match="v3:tfoot" name="flushtablefootnotes">
		<xsl:variable name="allspan"
			select="count(ancestor::v3:table[1]/v3:colgroup/v3:col|ancestor::v3:table[1]/v3:col)"/>
		<xsl:if test="self::v3:tfoot or ancestor::v3:table[1]//v3:footnote">
			<fo:table-row role="flushtablefootnotes" keep-together.within-page="always">
				<fo:table-cell>
					<xsl:attribute name="number-columns-spanned">
						<xsl:value-of select="$allspan"/>
					</xsl:attribute>
					<xsl:if test="self::v3:tfoot">
						<xsl:apply-templates select="@*|node()"/>
					</xsl:if>
					<xsl:if test="ancestor::v3:table[1]//v3:footnote">
						<fo:block role="ancestor::v3:table[1]//v3:footnote">
							<xsl:choose>
								<xsl:when test="contains(parent::v3:table/@styleCode, 'xmChange')">
									<xsl:apply-templates mode="footnoteChanged" select="ancestor::v3:table[1]/node()"
									/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:apply-templates mode="footnote" select="ancestor::v3:table[1]/node()"/>
								</xsl:otherwise>
							</xsl:choose>
						</fo:block>
					</xsl:if>
				</fo:table-cell>
			</fo:table-row>
		</xsl:if>
	</xsl:template>

	<xsl:template match="v3:tfoot"/>

	<xsl:template mode="custome" match="v3:tfoot">
		<xsl:call-template name="process-tfoot-rowgroup"/>
	</xsl:template>
	<xsl:template match="v3:tbody">
		<fo:table-body role="v3:tbody" xsl:use-attribute-sets="tbody">
			<xsl:if test="preceding-sibling::v3:thead">
				<xsl:apply-templates mode="custome" select="preceding-sibling::v3:thead"/>
			</xsl:if>
			<xsl:if test="following-sibling::v3:thead">
				<xsl:apply-templates mode="custome" select="following-sibling::v3:thead"/>
			</xsl:if>
			<xsl:call-template name="process-table-rowgroup"/>
			<xsl:if test="preceding-sibling::v3:tfoot">
				<xsl:apply-templates mode="custome" select="preceding-sibling::v3:tfoot"/>
			</xsl:if>
			<xsl:if test="following-sibling::v3:tfoot">
				<xsl:apply-templates mode="custome" select="following-sibling::v3:tfoot"/>
			</xsl:if>
			<xsl:if test="not(preceding-sibling::tbody)">
				<xsl:call-template name="flushtablefootnotes"/>
			</xsl:if>
		</fo:table-body>
	</xsl:template>

	<xsl:template match="v3:tbody[not(preceding-sibling::v3:thead)]">
		<fo:table-body>
			<xsl:call-template name="styleCodeAttr">
				<xsl:with-param name="styleCode" select="@styleCode"/>
				<xsl:with-param name="additionalStyleCode" select="'Headless'"/>
			</xsl:call-template>
			<xsl:apply-templates select="@*[not(local-name(.)='styleCode')]"/>
			<xsl:apply-templates select="node()"/>
			<!--todo </tbody> -->
			<xsl:if test="preceding-sibling::v3:tfoot">
				<xsl:apply-templates mode="custome" select="preceding-sibling::v3:tfoot"/>
			</xsl:if>
			<xsl:if test="following-sibling::v3:tfoot">
				<xsl:apply-templates mode="custome" select="following-sibling::v3:tfoot"/>
			</xsl:if>
			<xsl:if test="not(preceding-sibling::tbody)">
				<xsl:call-template name="flushtablefootnotes"/>
			</xsl:if>
		</fo:table-body>

	</xsl:template>

	<xsl:template name="process-tfoot-rowgroup">
		<xsl:call-template name="process-common-attributes-and-children"/>
	</xsl:template>

	<xsl:template name="process-table-rowgroup">
		<xsl:if test="ancestor::v3:table[1]/@rules = 'groups'">
			<xsl:attribute name="border">1px solid</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-common-attributes-and-children"/>
	</xsl:template>
	<xsl:template match="v3:colgroup">
		<xsl:if test="count(descendant::v3:col) = 0">
			<xsl:for-each select="following-sibling::v3:tbody/v3:tr[position()=1]/v3:td">
				<fo:table-column xsl:use-attribute-sets="table-column">
					<xsl:call-template name="process-table-column"/>
				</fo:table-column>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="count(descendant::v3:col) > 0">
			<fo:table-column xsl:use-attribute-sets="table-column">
				<xsl:call-template name="process-table-column"/>
			</fo:table-column>
		</xsl:if>
	</xsl:template>

	<xsl:template match="v3:colgroup[v3:col]">
		<xsl:apply-templates/>
	</xsl:template>
	<xsl:template match="v3:col">
		<fo:table-column xsl:use-attribute-sets="table-column">
			<xsl:call-template name="process-table-column"/>
		</fo:table-column>
	</xsl:template>

	<xsl:template name="process-table-column">
		<xsl:if test="parent::v3:colgroup">
			<xsl:call-template name="process-col-width">
				<xsl:with-param name="width" select="../@width"/>
			</xsl:call-template>
			<xsl:call-template name="process-cell-align">
				<xsl:with-param name="align" select="../@align"/>
			</xsl:call-template>
			<xsl:call-template name="process-cell-valign">
				<xsl:with-param name="valign" select="../@valign"/>
			</xsl:call-template>
		</xsl:if>
		<xsl:if test="@span">
			<xsl:attribute name="number-columns-repeated">
				<xsl:value-of select="@span"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-col-width">
			<xsl:with-param name="width" select="@width"/>
		</xsl:call-template>
		<xsl:if test="ancestor::v3:table[1]/@rules = 'cols'">
			<xsl:attribute name="border">1px solid</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-common-attributes"/>
	</xsl:template>

	<xsl:template match="v3:tr">
		<fo:table-row xsl:use-attribute-sets="tr">
			<xsl:call-template name="process-table-row"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template match="v3:tr[parent::v3:table and v3:th and not(v3:td)]">
		<fo:table-row xsl:use-attribute-sets="tr" keep-with-next="always">
			<xsl:call-template name="process-table-row"/>
		</fo:table-row>
	</xsl:template>

	<xsl:template name="process-table-row">
		<xsl:if test="ancestor::v3:thead">
			<xsl:attribute name="keep-with-next.within-page">always</xsl:attribute>
			<xsl:attribute name="keep-together.within-page">always</xsl:attribute>
		</xsl:if>
		<xsl:if test="ancestor::v3:tfoot">
			<xsl:attribute name="keep-together.within-page">always</xsl:attribute>
		</xsl:if>
		<xsl:if test="ancestor::v3:table[1]/@rules = 'rows'">
			<xsl:attribute name="border">1px solid</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-special-stylecode"/>
		<xsl:call-template name="process-common-attributes-and-children"/>
	</xsl:template>

	<xsl:template match="v3:th">
		<fo:table-cell xsl:use-attribute-sets="th">
			<xsl:call-template name="process-th-td-stylecode"/>
			<xsl:call-template name="process-table-cell"/>
			<xsl:call-template name="process-cell-align">
				<xsl:with-param name="align" select="../@align"/>
			</xsl:call-template>
			<xsl:call-template name="process-cell-valign">
				<xsl:with-param name="valign" select="../@valign"/>
			</xsl:call-template>
		</fo:table-cell>
	</xsl:template>
	
	<xsl:template match="v3:td">
		<fo:table-cell xsl:use-attribute-sets="td">
			<xsl:call-template name="process-th-td-stylecode"/>
			<xsl:call-template name="process-table-cell"/>
		</fo:table-cell>
	</xsl:template>

	<xsl:template name="process-stylecode">
		<xsl:call-template name="styleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode">
				<xsl:if test="boolean($isWordVersion)">
				</xsl:if>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="process-special-stylecode">
		<xsl:call-template name="specialStyleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode">
				<xsl:if test="position()=1 and not( ancestor::v3:tfoot) and not( ancestor-or-self::v3:table/@border = '0' or ancestor-or-self::v3:table/@frame = 'void' )">
					<xsl:text> TrFirst </xsl:text>
				</xsl:if>
				<xsl:if test="position()=last() and not( ancestor::v3:tfoot) and not( ancestor-or-self::v3:table/@border = '0' or ancestor-or-self::v3:table/@frame = 'void' )">
					<xsl:text> TrLast </xsl:text>
				</xsl:if>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>

	<xsl:template name="process-th-td-stylecode">
		<xsl:call-template name="specialStyleCodeAttr">
			<xsl:with-param name="styleCode" select="@styleCode"/>
			<xsl:with-param name="additionalStyleCode"> 
				<xsl:value-of select="../@styleCode"/> 
				<xsl:if test="count(parent::v3:tr/preceding-sibling::v3:tr) = 0 and not( ancestor::v3:tfoot) and not( ancestor-or-self::v3:table/@border = '0' or ancestor-or-self::v3:table/@frame = 'void' )">
					<xsl:text> TrFirst </xsl:text>
				</xsl:if>
				<xsl:if test="count(parent::v3:tr/preceding-sibling::v3:tr) + 1 = count( ancestor::v3:table/descendant::v3:tr) and not( ancestor::v3:tfoot) and not( ancestor-or-self::v3:table/@border = '0' or ancestor-or-self::v3:table/@frame = 'void' )">
					<xsl:text> TrLast </xsl:text>
				</xsl:if>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="process-table-cell">
		<xsl:if test="@colspan">
			<xsl:attribute name="number-columns-spanned">
				<xsl:value-of select="@colspan"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="@align">
			<xsl:attribute name="text-align">
				<xsl:value-of select="@align"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="@valign">
			<xsl:attribute name="vertical-align">
				<xsl:value-of select="@valign"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="@rowspan">
			<xsl:attribute name="number-rows-spanned">
				<xsl:value-of select="@rowspan"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:for-each select="ancestor::v3:table[1]">
			<xsl:if
				test="(@border or @rules) and (@rules = 'all' or
                not(@rules) and not(@border = '0'))">
				<xsl:attribute name="border-style">inset</xsl:attribute>
			</xsl:if>
			<xsl:if test="@cellpadding">
				<xsl:attribute name="padding">
					<xsl:choose>
						<xsl:when test="contains(@cellpadding, '%')">
							<xsl:value-of select="@cellpadding"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@cellpadding"/>px</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</xsl:if>
		</xsl:for-each>
		<xsl:if
			test="not(@align or ../@align or
                  ../parent::*[self::v3:thead or self::v3:tfoot or
                  self::v3:tbody]/@align) and
              ancestor::v3:table[1]/*[self::v3:col or
                  self::v3:colgroup]/descendant-or-self::*/@align">
			<xsl:attribute name="text-align">from-table-column()</xsl:attribute>
		</xsl:if>
		<xsl:if
			test="not(@valign or ../@valign or
                  ../parent::*[self::v3:thead or self::v3:tfoot or
                  self::v3:tbody]/@valign) and
              ancestor::v3:table[1]/*[self::v3:col or
                  self::v3:colgroup]/descendant-or-self::*/@valign">
			<xsl:attribute name="display-align">from-table-column()</xsl:attribute>
			<xsl:attribute name="relative-align">from-table-column()</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-common-attributes"/>
		<fo:block role="process-table-cell">	
			<xsl:if test="boolean($isWordVersion)">
				<xsl:choose>
					<xsl:when test="boolean(preceding-sibling::v3:td/descendant-or-self::v3:footnoteRef/@IDREF)">								
						<xsl:attribute name="font-size">150%</xsl:attribute>
						<xsl:attribute name="baseline-shift">sub</xsl:attribute>
					</xsl:when>
					<xsl:when test="boolean(preceding-sibling::v3:td/descendant-or-self::v3:footnote/@ID)">								
						<xsl:attribute name="font-size">150%</xsl:attribute>
						<xsl:attribute name="baseline-shift">sub</xsl:attribute>
					</xsl:when>
					<xsl:when test="boolean(preceding-sibling::v3:td/descendant-or-self::v3:sup)">								
						<xsl:attribute name="font-size">150%</xsl:attribute>
						<xsl:attribute name="baseline-shift">sub</xsl:attribute>
					</xsl:when>
					<xsl:when test="boolean(preceding-sibling::v3:td/descendant-or-self::v3:footnote)">								
						<xsl:attribute name="font-size">150%</xsl:attribute>
						<xsl:attribute name="baseline-shift">sub</xsl:attribute>
					</xsl:when>
				</xsl:choose>
			</xsl:if>
			<xsl:if test="position()=1 and (contains(parent::v3:tr/@styleCode,'xmChange') or ../descendant::node()[@styleCode = 'xmChange'])">
				<xsl:choose>
					<xsl:when test="boolean($isWordVersion)"><xsl:attribute name="background-color">yellow</xsl:attribute></xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="border-left-color">black</xsl:attribute>
						<xsl:attribute name="border-left-width">1pt</xsl:attribute>
						<xsl:attribute name="border-left-style">solid</xsl:attribute>
						<xsl:attribute name="margin-left">-.3in</xsl:attribute>
						<xsl:attribute name="padding-left">.3in</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:if>
			<xsl:apply-templates mode="mixed" select="node()[not(self::v3:caption)]"/>
			&#160; </fo:block>
	</xsl:template>
	
	<xsl:template name="total">
		<xsl:param name="seq"/>
		<xsl:param name="total-so-far" select="0"/>
		<xsl:choose>
			<xsl:when test="$seq">
				<xsl:call-template name="total">
					<xsl:with-param name="seq" select="$seq[position()!=1]"/>
					<xsl:with-param name="total-so-far" select="$total-so-far + number( translate($seq[1], '%*', ''))"/>
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise><xsl:value-of select="$total-so-far"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	

	<xsl:template name="process-col-width">
		<xsl:param name="width"/>
		<xsl:variable name="totalTableWidth">
			<xsl:call-template name="total">
				<xsl:with-param name="seq" select="ancestor::v3:table/v3:col/@width|ancestor::v3:table/v3:colgroup/v3:col/@width"/>
			</xsl:call-template>
		</xsl:variable>
		<xsl:variable name="defaultTableWidth">
			<xsl:choose>
				<xsl:when test="not($isWordVersion) and boolean(ancestor::v3:highlight)">3.75</xsl:when>
				<xsl:otherwise>7.5</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="$totalTableWidth = 0">		
				<xsl:variable name="countOfColumn">
					<xsl:choose>
						<xsl:when test="ancestor::v3:table/v3:col"><xsl:value-of select="count(ancestor::v3:table/v3:col)"/></xsl:when>
						<xsl:when test="ancestor::v3:table/v3:colgroup/v3:col"><xsl:value-of select="count(ancestor::v3:table/v3:colgroup/v3:col)"/></xsl:when>
						<xsl:when test="ancestor::v3:table/v3:tbody/v3:tr[position()=1]/v3:td"><xsl:value-of select="count(ancestor::v3:table/v3:tbody/v3:tr[position()=1]/v3:td)"/></xsl:when>
						<xsl:when test="parent::v3:tr/v3:td"><xsl:value-of select="count(parent::v3:tr/v3:td)"/></xsl:when>
						<xsl:otherwise>5</xsl:otherwise>
					</xsl:choose>
				</xsl:variable>
				
			</xsl:when>			
			
			<xsl:when test="$width and $width != '0*'">
				<xsl:attribute name="column-width">
					<xsl:choose>
						<xsl:when test="boolean($isWordVersion) and contains($width, '*')"><xsl:value-of select="number( number(substring-before($width, '*')) div $totalTableWidth  *  $defaultTableWidth)"/>in</xsl:when>
						<xsl:when test="boolean($isWordVersion) and contains($width, '%')"><xsl:value-of select="number(number(translate($width, '%', '')) div 100 *  $defaultTableWidth)"/>in</xsl:when>
						<xsl:when test="boolean($isWordVersion)"><xsl:value-of select="number( $width div $totalTableWidth  *  $defaultTableWidth)"/>in</xsl:when>
						<xsl:when test="contains($width, '*')"><xsl:text>proportional-column-width(</xsl:text><xsl:value-of select="substring-before($width, '*')"/><xsl:text>)</xsl:text></xsl:when>
						<xsl:when test="contains($width, '%')"><xsl:value-of select="$width"/></xsl:when>
						<xsl:otherwise><xsl:value-of select="number($width div $totalTableWidth * 100)"/>%</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template name="process-cell-align">
		<xsl:param name="align"/>
		<xsl:if test="$align">
			<xsl:attribute name="text-align">
				<xsl:choose>
					<xsl:when test="$align = 'char'">
						<xsl:choose>
							<xsl:when test="$align/../@char">
								<xsl:value-of select="$align/../@char"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="'.'"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="$align"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</xsl:if>
	</xsl:template>

	<xsl:template name="process-cell-valign">
		<xsl:param name="valign"/>
		<xsl:if test="$valign">
			<xsl:attribute name="display-align">
				<xsl:choose>
					<xsl:when test="$valign = 'middle'">center</xsl:when>
					<xsl:when test="$valign = 'bottom'">after</xsl:when>
					<xsl:when test="$valign = 'baseline'">auto</xsl:when>
					<xsl:otherwise>before</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<xsl:if test="$valign = 'baseline'">
				<xsl:attribute name="relative-align">baseline</xsl:attribute>
			</xsl:if>
		</xsl:if>
	</xsl:template>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Inline-level
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:b">
		<fo:inline xsl:use-attribute-sets="b">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:strong">
		<fo:inline xsl:use-attribute-sets="strong">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:strong//v3:em | v3:em//v3:strong">
		<fo:inline xsl:use-attribute-sets="strong-em">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:i">
		<fo:inline xsl:use-attribute-sets="i">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:cite">
		<fo:inline xsl:use-attribute-sets="cite">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:em">
		<fo:inline xsl:use-attribute-sets="em">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:var">
		<fo:inline xsl:use-attribute-sets="var">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:dfn">
		<fo:inline xsl:use-attribute-sets="dfn">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:tt">
		<fo:inline xsl:use-attribute-sets="tt">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:kbd">
		<fo:inline xsl:use-attribute-sets="kbd">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:samp">
		<fo:inline xsl:use-attribute-sets="samp">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:big">
		<fo:inline xsl:use-attribute-sets="big">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:small">
		<fo:inline xsl:use-attribute-sets="small">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>
	
	<xsl:template mode="mixed" match="v3:sub">
		<fo:inline  role="mixed_sub" xsl:use-attribute-sets="sub">
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)">
					<xsl:attribute name="font-size">12pt</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="font-size">8pt</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="process-common-attributes-and-children"/>
			<xsl:apply-templates mode="mixed" select="@*|node()"/>
		</fo:inline>
	</xsl:template>
	<xsl:template mode="mixed" match="v3:sup">
		<fo:inline   role="mixed_sup" xsl:use-attribute-sets="sup">
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)">
					<xsl:attribute name="font-size">12pt</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="font-size">8pt</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="process-common-attributes-and-children"/>
			<xsl:apply-templates mode="mixed" select="@*|node()"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:sub">
		<fo:inline   role="sub"  xsl:use-attribute-sets="sub">
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)">
					<xsl:attribute name="font-size">12pt</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="font-size">8pt</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:sup">
		<fo:inline   role="sup"  xsl:use-attribute-sets="sup">
			<xsl:choose>
				<xsl:when test="boolean($isWordVersion)">
					<xsl:attribute name="font-size">12pt</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="font-size">8pt</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:s">
		<fo:inline xsl:use-attribute-sets="s">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:strike">
		<fo:inline xsl:use-attribute-sets="strike">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:del">
		<fo:inline xsl:use-attribute-sets="del">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:u">
		<fo:inline xsl:use-attribute-sets="u">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:ins">
		<fo:inline xsl:use-attribute-sets="ins">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:abbr">
		<fo:inline xsl:use-attribute-sets="abbr">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:acronym">
		<fo:inline xsl:use-attribute-sets="acronym">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:span">
		<fo:inline>
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:span[@dir]">
		<fo:bidi-override direction="{@dir}" unicode-bidi="embed">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:bidi-override>
	</xsl:template>

	<xsl:template match="v3:span[@style and contains(@style, 'writing-mode')]">
		<fo:inline-container alignment-baseline="central" text-indent="0pt" last-line-end-indent="0pt"
			start-indent="0pt" end-indent="0pt" text-align="center" text-align-last="center">
			<xsl:call-template name="process-common-attributes"/>
			<fo:block wrap-option="no-wrap" line-height="1">
				<xsl:apply-templates/>
			</fo:block>
		</fo:inline-container>
	</xsl:template>

	<xsl:template match="v3:bdo">
		<fo:bidi-override direction="{@dir}" unicode-bidi="bidi-override">
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:bidi-override>
	</xsl:template>

	<xsl:template mode="mixed" match="v3:br">
		<fo:block role="v3:br"/>
	</xsl:template>

	<xsl:template match="v3:br">
		<fo:block>
			<xsl:call-template name="process-common-attributes"/>
		</fo:block>
	</xsl:template>


	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Image
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:img">
		<fo:block>
			<fo:external-graphic xsl:use-attribute-sets="img">
				<xsl:call-template name="process-img"/>
			</fo:external-graphic>
		</fo:block>
	</xsl:template>

	<xsl:template match="v3:img[ancestor::v3:a/@href]">
		<fo:block>
			<fo:external-graphic xsl:use-attribute-sets="img-link">
				<xsl:call-template name="process-img"/>
			</fo:external-graphic>
		</fo:block>
	</xsl:template>

	<xsl:template name="process-img">
		<xsl:attribute name="src">
			<xsl:text>url('</xsl:text>
			<xsl:value-of select="@src"/>
			<xsl:text>')</xsl:text>
		</xsl:attribute>
		<xsl:if test="@alt">
			<xsl:attribute name="role">
				<xsl:value-of select="@alt"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:if test="@width">
			<xsl:choose>
				<xsl:when test="contains(@width, '%')">
					<xsl:attribute name="width">
						<xsl:value-of select="@width"/>
					</xsl:attribute>
					<xsl:attribute name="content-width">scale-to-fit</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="content-width">
						<xsl:value-of select="@width"/>px</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="@height">
			<xsl:choose>
				<xsl:when test="contains(@height, '%')">
					<xsl:attribute name="height">
						<xsl:value-of select="@height"/>
					</xsl:attribute>
					<xsl:attribute name="content-height">scale-to-fit</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="content-height">
						<xsl:value-of select="@height"/>px</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="@border">
			<xsl:attribute name="border">
				<xsl:value-of select="@border"/>px solid</xsl:attribute>
		</xsl:if>
		<xsl:call-template name="process-common-attributes"/>
	</xsl:template>

	<xsl:template match="v3:object">
		<xsl:apply-templates/>
	</xsl:template>

	<xsl:template match="v3:param"/>
	<xsl:template match="v3:map"/>
	<xsl:template match="v3:area"/>
	<xsl:template match="v3:label"/>
	<xsl:template match="v3:input"/>
	<xsl:template match="v3:select"/>
	<xsl:template match="v3:optgroup"/>
	<xsl:template match="v3:option"/>
	<xsl:template match="v3:textarea"/>
	<xsl:template match="v3:legend"/>
	<xsl:template match="v3:button"/>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Link
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:a">
		<fo:inline>
			<xsl:call-template name="process-common-attributes-and-children"/>
		</fo:inline>
	</xsl:template>

	<xsl:template match="v3:a[@href]">
		<fo:block>
			<fo:basic-link xsl:use-attribute-sets="a-link">
				<xsl:call-template name="process-a-link"/>
			</fo:basic-link>
		</fo:block>
	</xsl:template>

	<xsl:template name="process-a-link">
		<xsl:call-template name="process-common-attributes"/>
		<xsl:choose>
			<xsl:when test="starts-with(@href,'#')">
				<xsl:attribute name="internal-destination">
					<xsl:value-of select="substring-after(@href,'#')"/>
				</xsl:attribute>
			</xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="external-destination">
					<xsl:text>url('</xsl:text>
					<xsl:value-of select="@href"/>
					<xsl:text>')</xsl:text>
				</xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:if test="@title">
			<xsl:attribute name="role">
				<xsl:value-of select="@title"/>
			</xsl:attribute>
		</xsl:if>
		<xsl:apply-templates/>
	</xsl:template>

	<!--=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   Ruby
=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-->

	<xsl:template match="v3:ruby">
		<fo:inline-container alignment-baseline="central" block-progression-dimension="1em"
			text-indent="0pt" last-line-end-indent="0pt" start-indent="0pt" end-indent="0pt"
			text-align="center" text-align-last="center">
			<xsl:call-template name="process-common-attributes"/>
			<fo:block font-size="50%" wrap-option="no-wrap" line-height="1"
				space-before.conditionality="retain" space-before="-1.1em" space-after="0.1em" role="v3:rt">
				<xsl:for-each select="v3:rt | v3:rtc[1]/v3:rt">
					<xsl:call-template name="process-common-attributes"/>
					<xsl:apply-templates/>
				</xsl:for-each>
			</fo:block>
			<fo:block wrap-option="no-wrap" line-height="1" role="v3:rb">
				<xsl:for-each select="v3:rb | v3:rbc[1]/v3:rb">
					<xsl:call-template name="process-common-attributes"/>
					<xsl:apply-templates/>
				</xsl:for-each>
			</fo:block>
			<xsl:if test="v3:rtc[2]/v3:rt">
				<fo:block font-size="50%" wrap-option="no-wrap" line-height="1" space-before="0.1em"
					space-after.conditionality="retain" space-after="-1.1em" role="v3:rt">
					<xsl:for-each select="v3:rt | v3:rtc[2]/v3:rt">
						<xsl:call-template name="process-common-attributes"/>
						<xsl:apply-templates/>
					</xsl:for-each>
				</fo:block>
			</xsl:if>
		</fo:inline-container>
	</xsl:template>

</xsl:stylesheet>
