
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10804010")="1" then
		strCUTA10804010answer1="checked"
	end if
	if Session("CUTA10804020")="1" then
		strCUTA10804020answer1="checked"
	end if
	if Session("CUTA10804030")="1" then
		strCUTA10804030answer1="checked"
	end if
	if Session("CUTA10804040")="1" then
		strCUTA10804040answer1="checked"
	end if
	if Session("CUTA10804040")="2" then
		strCUTA10804040answer2="checked"
	end if

	if Session("HM10807000")="1" then
		strHM10807000answer1="checked"
	end if
	if Session("HM10808000")="1" then
		strHM10808000answer1="checked"
	end if
	if Session("HM10809000")="1" then
		strHM10809000answer1="checked"
	end if
	if Session("HM10810000")="1" then
		strHM10810000answer1="checked"
	end if
	if Session("HM10810000")="2" then
		strHM10810000answer2="checked"
	end if

	if Session("EPQ30809010")="1" then
		strEPQ30809010answer1="checked"
	end if
	if Session("EPQ30809020")="1" then
		strEPQ30809020answer1="checked"
	end if
	if Session("EPQ30809030")="1" then
		strEPQ30809030answer1="checked"
	end if

	if Session("EPQ30809040")="1" then
		strEPQ30809040answer1="checked"
	end if
	if Session("EPQ30809040")="2" then
		strEPQ30809040answer2="checked"
	end if
	if Session("EPQ30809040")="88" then
		strEPQ30809040answer3="checked"
	end if

	if Session("EPQ30810010")="1" then
		strEPQ30810010answer1="checked"
	end if
	if Session("EPQ30810020")="1" then
		strEPQ30810020answer1="checked"
	end if
	if Session("EPQ30810030")="1" then
		strEPQ30810030answer1="checked"
	end if
	if Session("EPQ30810040")="1" then
		strEPQ30810040answer1="checked"
	end if
	if Session("EPQ30810040")="2" then
		strEPQ30810040answer2="checked"
	end if
	if Session("EPQ30810040")="88" then
		strEPQ30810040answer3="checked"
	end if


	if Session("EPQ30811010")="1" then
		strEPQ30811010answer1="checked"
	end if
	if Session("EPQ30811020")="1" then
		strEPQ30811020answer1="checked"
	end if
	if Session("EPQ30811030")="1" then
		strEPQ30811030answer1="checked"
	end if
	if Session("EPQ30811040")="1" then
		strEPQ30811040answer1="checked"
	end if
	if Session("EPQ30811040")="2" then
		strEPQ30811040answer2="checked"
	end if


	if Session("EPQ30812010")="1" then
		strEPQ30812010answer1="checked"
	end if
	if Session("EPQ30812020")="1" then
		strEPQ30812020answer1="checked"
	end if
	if Session("EPQ30812030")="1" then
		strEPQ30812030answer1="checked"
	end if
	if Session("EPQ30812040")="1" then
		strEPQ30812040answer1="checked"
	end if
	if Session("EPQ30812040")="2" then
		strEPQ30812040answer2="checked"
	end if
	if Session("EPQ30812040")="88" then
		strEPQ30812040answer3="checked"
	end if
	if Session("EPQ30813010")="1" then
		strEPQ30813010answer1="checked"
	end if
	if Session("EPQ30813020")="1" then
		strEPQ30813020answer1="checked"
	end if
	if Session("EPQ30813030")="1" then
		strEPQ30813030answer1="checked"
	end if
	if Session("EPQ30813040")="1" then
		strEPQ30813040answer1="checked"
	end if
	if Session("EPQ30813040")="2" then
		strEPQ30813040answer2="checked"
	end if
	if Session("EPQ30813040")="88" then
		strEPQ30813040answer3="checked"
	end if
	if Session("EPQ30814010")="1" then
		strEPQ30814010answer1="checked"
	end if
	if Session("EPQ30814020")="1" then
		strEPQ30814020answer1="checked"
	end if
	if Session("EPQ30814030")="1" then
		strEPQ30814030answer1="checked"
	end if
	if Session("EPQ30814040")="1" then
		strEPQ30814040answer1="checked"
	end if
	if Session("EPQ30814040")="2" then
		strEPQ30814040answer2="checked"
	end if
	if Session("EPQ30814040")="88" then
		strEPQ30814040answer3="checked"
	end if
	if Session("EPQ30815010")="1" then
		strEPQ30815010answer1="checked"
	end if
	if Session("EPQ30815020")="1" then
		strEPQ30815020answer1="checked"
	end if
	if Session("EPQ30815030")="1" then
		strEPQ30815030answer1="checked"
	end if
	if Session("EPQ30815040")="1" then
		strEPQ30815040answer1="checked"
	end if
	if Session("EPQ30815040")="2" then
		strEPQ30815040answer2="checked"
	end if
	if Session("EPQ30815040")="88" then
		strEPQ30815040answer3="checked"
	end if
	if Session("EPQ30816010")="1" then
		strEPQ30816010answer1="checked"
	end if
	if Session("EPQ30816020")="1" then
		strEPQ30816020answer1="checked"
	end if
	if Session("EPQ30816030")="1" then
		strEPQ30816030answer1="checked"
	end if
	if Session("EPQ30816040")="1" then
		strEPQ30816040answer1="checked"
	end if
	if Session("EPQ30816040")="2" then
		strEPQ30816040answer2="checked"
	end if
	if Session("EPQ30816040")="88" then
		strEPQ30816040answer3="checked"
	end if
	if Session("EPQ30817010")="1" then
		strEPQ30817010answer1="checked"
	end if
	if Session("EPQ30817020")="1" then
		strEPQ30817020answer1="checked"
	end if
	if Session("EPQ30817030")="1" then
		strEPQ30817030answer1="checked"
	end if
	if Session("EPQ30817040")="1" then
		strEPQ30817040answer1="checked"
	end if
	if Session("EPQ30817040")="2" then
		strEPQ30817040answer2="checked"
	end if
	if Session("EPQ30817040")="88" then
		strEPQ30817040answer3="checked"
	end if
	if Session("EPQ30818010")="1" then
		strEPQ30818010answer1="checked"
	end if
	if Session("EPQ30818020")="1" then
		strEPQ30818020answer1="checked"
	end if
	if Session("EPQ30818030")="1" then
		strEPQ30818030answer1="checked"
	end if
	if Session("EPQ30818040")="1" then
		strEPQ30818040answer1="checked"
	end if
	if Session("EPQ30818040")="2" then
		strEPQ30818040answer2="checked"
	end if
	if Session("EPQ30818040")="88" then
		strEPQ30818040answer3="checked"
	end if

	if Session("EPQ30819010")="1" then
		strEPQ30819010answer1="checked"
	end if
	if Session("EPQ30819020")="1" then
		strEPQ30819020answer1="checked"
	end if
	if Session("EPQ30819030")="1" then
		strEPQ30819030answer1="checked"
	end if
	if Session("EPQ30819040")="1" then
		strEPQ30819040answer1="checked"
	end if
	if Session("EPQ30819040")="2" then
		strEPQ30819040answer2="checked"
	end if
	if Session("EPQ30819040")="88" then
		strEPQ30819040answer3="checked"
	end if

	if Session("EPQ30832010")="1" then
		strEPQ30832010answer1="checked"
	end if
	if Session("EPQ30832020")="1" then
		strEPQ30832020answer1="checked"
	end if
	if Session("EPQ30832030")="1" then
		strEPQ30832030answer1="checked"
	end if
	if Session("EPQ30832040")="1" then
		strEPQ30832040answer1="checked"
	end if
	if Session("EPQ30832040")="2" then
		strEPQ30832040answer2="checked"
	end if
	if Session("EPQ30832040")="88" then
		strEPQ30832040answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then


	Session("CUTA10804010") = Request.Form("CUTA10804010")
	Session("CUTA10804020") = Request.Form("CUTA10804020")
	Session("CUTA10804030") = Request.Form("CUTA10804030")
	Session("CUTA10804040") = Request.Form("CUTA10804040")

	Session("HM10807000") = Request.Form("HM10807000")
	Session("HM10808000") = Request.Form("HM10808000")
	Session("HM10809000") = Request.Form("HM10809000")
	Session("HM10810000") = Request.Form("HM10810000")

	Session("EPQ30809010") = Request.Form("EPQ30809010")
	Session("EPQ30809020") = Request.Form("EPQ30809020")
	Session("EPQ30809030") = Request.Form("EPQ30809030")
	Session("EPQ30809040") = Request.Form("EPQ30809040")

	Session("EPQ30810010") = Request.Form("EPQ30810010")
	Session("EPQ30810020") = Request.Form("EPQ30810020")
	Session("EPQ30810030") = Request.Form("EPQ30810030")
	Session("EPQ30810040") = Request.Form("EPQ30810040")

	Session("EPQ30811010") = Request.Form("EPQ30811010")
	Session("EPQ30811020") = Request.Form("EPQ30811020")
	Session("EPQ30811030") = Request.Form("EPQ30811030")
	Session("EPQ30811040") = Request.Form("EPQ30811040")

	Session("EPQ30812010") = Request.Form("EPQ30812010")
	Session("EPQ30812020") = Request.Form("EPQ30812020")
	Session("EPQ30812030") = Request.Form("EPQ30812030")
	Session("EPQ30812040") = Request.Form("EPQ30812040")

	Session("EPQ30813010") = Request.Form("EPQ30813010")
	Session("EPQ30813020") = Request.Form("EPQ30813020")
	Session("EPQ30813030") = Request.Form("EPQ30813030")
	Session("EPQ30813040") = Request.Form("EPQ30813040")

	Session("EPQ30814010") = Request.Form("EPQ30814010")
	Session("EPQ30814020") = Request.Form("EPQ30814020")
	Session("EPQ30814030") = Request.Form("EPQ30814030")
	Session("EPQ30814040") = Request.Form("EPQ30814040")

	Session("EPQ30815010") = Request.Form("EPQ30815010")
	Session("EPQ30815020") = Request.Form("EPQ30815020")
	Session("EPQ30815030") = Request.Form("EPQ30815030")
	Session("EPQ30815040") = Request.Form("EPQ30815040")

	Session("EPQ30816010") = Request.Form("EPQ30816010")
	Session("EPQ30816020") = Request.Form("EPQ30816020")
	Session("EPQ30816030") = Request.Form("EPQ30816030")
	Session("EPQ30816040") = Request.Form("EPQ30816040")

	Session("EPQ30817010") = Request.Form("EPQ30817010")
	Session("EPQ30817020") = Request.Form("EPQ30817020")
	Session("EPQ30817030") = Request.Form("EPQ30817030")
	Session("EPQ30817040") = Request.Form("EPQ30817040")

	Session("EPQ30818010") = Request.Form("EPQ30818010")
	Session("EPQ30818020") = Request.Form("EPQ30818020")
	Session("EPQ30818030") = Request.Form("EPQ30818030")
	Session("EPQ30818040") = Request.Form("EPQ30818040")

	Session("EPQ30819010") = Request.Form("EPQ30819010")
	Session("EPQ30819020") = Request.Form("EPQ30819020")
	Session("EPQ30819030") = Request.Form("EPQ30819030")
	Session("EPQ30819040") = Request.Form("EPQ30819040")

	Session("EPQ30832010") = Request.Form("EPQ30832010")
	Session("EPQ30832020") = Request.Form("EPQ30832020")
	Session("EPQ30832030") = Request.Form("EPQ30832030")
	Session("EPQ30832040") = Request.Form("EPQ30832040")


end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	If session("FHCDisplayCounter") > 9 then
	Session("Page")="6b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805030")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805040")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805060")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


		Session("ReturnID")="1"
		Session("Page")=5

		Response.Redirect "familyhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30812000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("FHCFemaleDisplayCounter") > 9 then
	Session("Page")="7b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


	If Session("SurveyVersion")="Thoracic" OR Session("GI10201000")="1" OR Session("GI10202000")="1" then
	Session("Page")="8thoracic"
	else
	Session("Page")="8"
	end if

	Session("FamilyHistoryCancerSectionStatus")="Completed"

	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "familyhistorycancermaster.asp"
end if
%>

<?xml version="1.0" encoding="iso-8859-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title><%=Session("PageHolder")%></title>

<link href="css/styles.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
		<link href="css/ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 7]>
		<link href="css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
k	 <!--#include file="functionbox.asp"-->
		-->
		</script>


</head>
<body>

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->

</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">
    <form action="familyhistorycancer7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<!-- [ Sample Question boxes ] -->		
	
	
		<!-- [ Tables - the div container is given a class name that governs the CSS:
			either 	.tableBasic
					.tablePersonalHistory
					.tableFamilyHistory
					
			each table is given the class name .dataTable, which is
			used for the jQuery alternating color scheme; ] -->
		
  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>
	
	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup width="6"></colgroup>
		  <colgroup width="6"></colgroup>
		  <colgroup width="6"></colgroup>
			<tr>
				<th rowspan="2">Type of cancer</th>
				<th colspan="5">Who has had this type of cancer?</th>
				<th colspan="3">Were any of these relatives diagnosed<br />at or before age 50?</th>
			</tr>
		   
			<tr class="tableSubHeading">
				<th>Mother</th>
				<th>1 sister</th>
				<th>2 or more sisters</th>
				<th>1 daughter</th>
				<th>2 or more daughters</th>
				<th>Yes</th>
				<th>No</th>
				<th>Don't know</th>
			</tr>
		   <tbody>
<%if session("TEMPEPQ30820010F")=1 then%>
<%if session("TEMPEPQ30820010FPage1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Brain cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="TEMPEPQ30821010" value="1" id="TEMPEPQ30821010" <%=strEPQ30821010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMPEPQ30821020" value="1" id="TEMPEPQ30821020" <%=strEPQ30821020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMPEPQ30821030" value="1" id="TEMPEPQ30821030" <%=strEPQ30821030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMPEPQ30821020A" value="1" id="TEMPEPQ30821020A" <%=strEPQ30821020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMPEPQ30821030B" value="1" id="TEMPEPQ30821030B" <%=strEPQ30821030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="TEMPEPQ30821040" value="1" id="TEMPEPQ30821040" <%=strEPQ30821040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMPEPQ30821040" value="2" id="TEMPEPQ30821040" <%=strEPQ30821040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMPEPQ30821040" value="3" id="TEMPEPQ30821040" <%=strEPQ30821040answer2%>></td>

			</tr>
<% end if %>
<% end if %>


<%if session("EPQ30808010")=1 then%>
<%if session("EPQ30808010Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Breast cancer</td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30809010" value="1" 
id="EPQ30809010" <%=strEPQ30809010answer1%>> </td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30809020" value="1" 
id="EPQ30809020" <%=strEPQ30809020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30809030" value="1" 
id="EPQ30809030" <%=strEPQ30809030answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30809020" value="1" 
id="EPQ30809050" <%=strEPQ30809050answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30809030" value="1" 
id="EPQ30809060" <%=strEPQ30809060answer1%>></td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30809040" value="1" 
id="EPQ30809040" <%=strEPQ30809040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30809040" value="2" 
id="EPQ30809040" <%=strEPQ30809040answer2%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30809040" value="3" 
id="EPQ30809040" <%=strEPQ30809040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808020")=1 then%>
<%if session("EPQ30808020Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Colon or rectal cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30812010" value="1" 
id="EPQ30812010" <%=strEPQ30812010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30812020" value="1" 
id="EPQ30812020" <%=strEPQ30812020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30812030" value="1" 
id="EPQ30812030" <%=strEPQ30812030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30812050" value="1" 
id="EPQ30812050" <%=strEPQ30812020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30812060" value="1" 
id="EPQ30812060" <%=strEPQ30812030answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30812040" value="1" 
id="EPQ30812040" <%=strEPQ30812040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30812040" value="2" 
id="EPQ30812040" <%=strEPQ30812040answer2%>></td>
<td style="text-align: center;">		<input type="radio" name="EPQ30812040" value="3" 
id="EPQ30812040" <%=strEPQ30812040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808040")=1 then%>
<%if session("EPQ30808040Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Kidney (renal cell) cancer</td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30815010" value="1" 
id="EPQ30815010" <%=strEPQ30815010answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30815020" value="1" 
id="EPQ30815020" <%=strEPQ30815020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30815030" value="1" 
id="EPQ30815030" <%=strEPQ30815030answer1%>></td>

				<td style="text-align: center;">		<input type="checkbox" name="EPQ30815050" value="1" 
id="EPQ30815050" <%=strEPQ30815020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30815060" value="1" 
id="EPQ30815060" <%=strEPQ30815030answer1%>></td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30815040" value="1" 
id="EPQ30815040" <%=strEPQ30815040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30815040" value="2" 
id="EPQ30815040" <%=strEPQ30815040answer2%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30815040" value="3" 
id="EPQ30815040" <%=strEPQ30815040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808050")=1 then%>
<%if session("EPQ30808050Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Leukemia</td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30816010" value="1" 
id="EPQ30816010" <%=strEPQ30816010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30816020" value="1" 
id="EPQ30816020" <%=strEPQ30816020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30816030" value="1" 
id="EPQ30816030" <%=strEPQ30816030answer1%>>
</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30816050" value="1" 
id="EPQ30816050" <%=strEPQ30816020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30816060" value="1" 
id="EPQ30816060" <%=strEPQ30816030answer1%>>
</td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30816040" value="1" 
id="EPQ30816040" <%=strEPQ30816040answer1%>>
</td>
				<td style="text-align: center;"><input type="radio" name="EPQ30816040" value="2" 
id="EPQ30816040" <%=strEPQ30816040answer2%>></td>
			<td style="text-align: center;"><input type="radio" name="EPQ30816040" value="3" 
id="EPQ30816040" <%=strEPQ30816040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808060")=1 then%>
<%if session("EPQ30808060Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Lung cancer</td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30814010" value="1" 
id="EPQ30814010" <%=strEPQ30814010answer1%>>
</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30814020" value="1" 
id="EPQ30814020" <%=strEPQ30814020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30814030" value="1" 
id="EPQ30814030" <%=strEPQ30814030answer1%>>
</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30814050" value="1" 
id="EPQ30814050" <%=strEPQ30814020answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30814060" value="1" 
id="EPQ30814060" <%=strEPQ30814030answer1%>>
</td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30814040" value="1" 
id="EPQ30814040" <%=strEPQ30814040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30814040" value="2" 
id="EPQ30814040" <%=strEPQ30814040answer2%>>

			<td style="text-align: center;">		<input type="radio" name="EPQ30814040" value="3" 
id="EPQ30814040" <%=strEPQ30814040answer2%>>
</td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808070")=1 then%>
<%if session("EPQ30808070Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Melanoma</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30813010" value="1" 
id="EPQ30813010" <%=strEPQ30813010answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30813020" value="1" 
id="EPQ30813020" <%=strEPQ30813020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30813030" value="1" 
id="EPQ30813030" <%=strEPQ30813030answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30813050" value="1" 
id="EPQ30813050" <%=strEPQ30813020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30813060" value="1" 
id="EPQ30813060" <%=strEPQ30813030answer1%>></td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30813040" value="1" 
id="EPQ30813040" <%=strEPQ30813040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30813040" value="2" 
id="EPQ30813040" <%=strEPQ30813040answer2%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30813040" value="3" 
id="EPQ30813040" <%=strEPQ30813040answer2%>></td>
			</tr>
<% end if %>
<% end if %>


<% if Session("HM10204000")="1" then  %>
<%if session("HM10802000")=1 then%>
<%if session("HM10802000Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Multiple myeloma or plasma cell tumor</td>
				<td style="text-align: center;"><input type="checkbox" name="HM10807000" value="1" id="HM10807000" <%=strHM10807000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10808000" value="1" id="HM10808000" <%=strHM10808000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10809000" value="1" id="HM10809000" <%=strHM10809000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10811000" value="1" id="HM10811000" <%=strHM10811000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10812000" value="1" id="HM10812000" <%=strHM10812000answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="HM10810000" value="1" id="HM10810000" <%=strHM10810000answer1%>></td>

				<td style="text-align: center;"><input type="radio" name="HM10810000" value="2" id="HM10810000" <%=strHM10810000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="HM10810000" value="3" id="HM10810000" <%=strHM10810000answer2%>></td>			</tr>
<% end if %>
<% end if %>
<% end if %>

<% if Session("SurveyVersion")="Cutaneous" then %>
<%if session("CUTA10803000")=1 then%>
<%if session("CUTA10803000Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Non-melanoma skin cancer (includes basal, squamous, but not melanoma)</td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10804010" value="1" id="CUTA10804010" <%=strCUTA10804010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10804020" value="1" id="CUTA10804020" <%=strCUTA10804020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10804030" value="1" id="CUTA10804030" <%=strCUTA10804030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10804050" value="1" id="CUTA10804020" <%=strCUTA10804050answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10804060" value="1" id="CUTA10804030" <%=strCUTA10804060answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="CUTA10804040" value="1" id="CUTA10804040" <%=strCUTA10804040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="CUTA10804040" value="2" id="CUTA10804040" <%=strCUTA10804040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="CUTA10804040" value="3" id="CUTA10804040" <%=strCUTA10804040answer2%>></td>
			</tr>
<% end if %>
<% end if %>
<% end if %>

<%if session("EPQ30808120")=1 then%>
<%if session("EPQ30808120Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Oral Cavity or Throat Cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30832010" value="1" 
id="EPQ30832010" <%=strEPQ30832010answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30832020" value="1" 
id="EPQ30832020" <%=strEPQ30832020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30832030" value="1" 
id="EPQ30832030" <%=strEPQ30832030answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30832050" value="1" 
id="EPQ30832050" <%=strEPQ30832020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30832060" value="1" 
id="EPQ30832060" <%=strEPQ30832030answer1%>></td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30832040" value="1" 
id="EPQ30832040" <%=strEPQ30832040answer1%>></td>
				<td style="text-align: center;">		<input type="radio" name="EPQ30832040" value="2" 
id="EPQ30832040" <%=strEPQ30832040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808080")=1 then%>
<%if session("EPQ30808080Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Ovarian cancer (includes fallopian and peritoneal cancers)</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30810010" value="1" 
id="EPQ30810010" <%=strEPQ30810010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30810020" value="1" 
id="EPQ30810020" <%=strEPQ30810020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30810030" value="1" 
id="EPQ30810030" <%=strEPQ30810030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30810050" value="1" 
id="EPQ30810050" <%=strEPQ30810020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30810060" value="1" 
id="EPQ30810060" <%=strEPQ30810030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30810040" value="1" 
id="EPQ30810040" <%=strEPQ30810040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30810040" value="2" 
id="EPQ30810040" <%=strEPQ30810040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30810040" value="3" 
id="EPQ30810040" <%=strEPQ30810040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808090")=1 then%>
<%if session("EPQ30808090Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Pancreatic cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30817010" value="1" 
id="EPQ30817010" <%=strEPQ30817010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ3081702k0" value="1" 
id="EPQ30817020" <%=strEPQ30817020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30817030" value="1" 
id="EPQ30817030" <%=strEPQ30817030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30817050" value="1" 
id="EPQ30817050" <%=strEPQ30817020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30817060" value="1" 
id="EPQ30817060" <%=strEPQ30817030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30817040" value="1" 
id="EPQ30817040" <%=strEPQ30817040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30817040" value="2" 
id="EPQ30817040" <%=strEPQ30817040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30817040" value="3" 
id="EPQ30817040" <%=strEPQ30817040answer2%>></td>
			</tr>

<% end if %>
<% end if %>
              
<%if session("TEMP1EPQ30820090F")=1 then%>
<%if session("TEMP1EPQ30820090FPage1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Sarcoma</td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30828010" value="1" id="TEMP1EPQ30828010" <%=strEPQ30828010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30828020" value="1" id="TEMP1EPQ30828020" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30828030" value="1" id="TEMP1EPQ30828030" <%=strEPQ30828030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30828050" value="1" id="TEMP1EPQ30828050" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30828060" value="1" id="TEMP1EPQ30828060" <%=strEPQ30828030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="TEMP1EPQ30828040" value="1" id="TEMP1EPQ30828040" <%=strEPQ30828040answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="TEMP1EPQ30828040" value="2" id="TEMP1EPQ30828040" <%=strEPQ30828040answer2%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="TEMP1EPQ30828040" value="3" id="TEMP1EPQ30828040" <%=strEPQ30828040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("TEMP2EPQ30820090F")=1 then%>
<%if session("TEMP2EPQ30820090FPage1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Stomach (gastric) cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30828010" value="1" id="TEMP2EPQ30828010" <%=strEPQ30828010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30828020" value="1" id="TEMP2EPQ30828020" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30828030" value="1" id="TEMP2EPQ30828030" <%=strEPQ30828030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30828050" value="1" id="TEMP2EPQ30828050" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30828060" value="1" id="TEMP2EPQ30828060" <%=strEPQ30828030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="TEMP2EPQ30828040" value="1" id="TEMP2EPQ30828040" <%=strEPQ30828040answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="TEMP2EPQ30828040" value="2" id="TEMP2EPQ30828040" <%=strEPQ30828040answer2%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="TEMP2EPQ30828040" value="3" id="TEMP2EPQ30828040" <%=strEPQ30828040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808100")=1 then%>
<%if session("EPQ30808100Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Thyroid cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30818010" value="1" 
id="EPQ30818010" <%=strEPQ30818010answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30818020" value="1" 
id="EPQ30818020" <%=strEPQ30818020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30818030" value="1" 
id="EPQ30818030" <%=strEPQ30818030answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30818050" value="1" 
id="EPQ30818050" <%=strEPQ30818020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ308180660" value="1" 
id="EPQ30818060" <%=strEPQ30818030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30818040" value="1" 
id="EPQ30818040" <%=strEPQ30818040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30818040" value="2" 
id="EPQ30818040" <%=strEPQ30818040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30818040" value="3" 
id="EPQ30818040" <%=strEPQ30818040answer2%>></td>
				
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808030")=1 then%>
<%if session("EPQ30808030Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Uterine (endometrial) cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30811010" value="1" 
id="EPQ30811010" <%=strEPQ30811010answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30811020" value="1" 
id="EPQ30811020" <%=strEPQ30811020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30811030" value="1" 
id="EPQ30811030" <%=strEPQ30811030answer1%>></td>
				<td style="text-align: center;">		<input type="checkbox" name="EPQ30811050" value="1" 
id="EPQ30811050" <%=strEPQ30811020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30811060" value="1" 
id="EPQ30811060" <%=strEPQ30811030answer1%>></td>

				<td style="text-align: center;">		<input type="radio" class="required" name="EPQ30811040" value="1" 
id="EPQ30811040" <%=strEPQ30811040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30811040" value="2" 
id="EPQ30811040" <%=strEPQ30811040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30811040" value="3" 
id="EPQ30811040" <%=strEPQ30811040answer2%>></td>
</td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30808110")=1 then%>
<%if session("EPQ30808110Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMP4EPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30819010" value="1" 
id="EPQ30819010" <%=strEPQ30819010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30819020" value="1" 
id="EPQ30819020" <%=strEPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30819030" value="1" 
id="EPQ30819030" <%=strEPQ30819030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30819050" value="1" 
id="EPQ30819050" <%=strEPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30819060" value="1" 
id="EPQ30819060" <%=strEPQ30819030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30819040" value="1" 
id="EPQ30819040" <%=strEPQ30819040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30819040" value="2" 
id="EPQ30819040" <%=strEPQ30819040answer2%>></td>

				<td style="text-align: center;"><input type="radio" name="EPQ30819040" value="3" 
id="EPQ30819040" <%=strEPQ30819040answer3%>></td>
			</tr>
<% end if %>
<% end if %>
			

<%if session("TEMP1EPQ30808110")=1 then%>
<%if session("TEMP1EPQ30808110Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMP5EPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30819010" value="1" 
id="TEMP1EPQ30819010" <%=strEPQ30819010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30819020" value="1" 
id="TEMP1EPQ30819020" <%=strEPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30819030" value="1" 
id="TEMP1EPQ30819030" <%=strEPQ30819030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30819050" value="1" 
id="TEMP1EPQ30819050" <%=strEPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30819060" value="1" 
id="TEMP1EPQ30819060" <%=strEPQ30819030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="TEMP1EPQ30819040" value="1" 
id="TEMP1EPQ30819040" <%=strTEMP1EPQ30819040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP1EPQ30819040" value="2" 
id="TEMP1EPQ30819040" <%=strTEMP1EPQ30819040answer2%>></td>
			
				<td style="text-align: center;"><input type="radio" name="TEMP1EPQ30819040" value="3" 
id="TEMP1EPQ30819040" <%=strTEMP1EPQ30819040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("TEMP2EPQ30808110")=1 then%>
<%if session("TEMP2EPQ30808110Page1")=1 then%>
		    <tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMP6EPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30819010" value="1" 
id="TEMP2EPQ30819010" <%=strTEMP2EPQ30819010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30819020" value="1" 
id="TEMP2EPQ30819020" <%=strTEMP2EPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30819030" value="1" 
id="TEMP2EPQ30819030" <%=strTEMP2EPQ30819030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30819050" value="1" 
id="TEMP2EPQ30819050" <%=strTEMP2EPQ30819020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30819060" value="1" 
id="TEMP2EPQ30819060" <%=strTEMP2EPQ30819030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="TEMP2EPQ30819040" value="1" 
id="TEMP2EPQ30819040" <%=strTEMP2EPQ30819040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP2EPQ30819040" value="2" 
id="TEMP2EPQ30819040" <%=strTEMP2EPQ30819040answer2%>></td>
			
				<td style="text-align: center;"><input type="radio" name="TEMP2EPQ30819040" value="3" 
id="TEMP2EPQ30819040" <%=strTEMP2EPQ30819040answer2%>></td>
			</tr>
<% end if %>
<% end if %>
		   </tbody>
		</table>
	</div> <!-- [ /.tablePersonalHistory ] -->
  </fieldset>

</div><!-- [ /#formBlock ] -->
	
	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
