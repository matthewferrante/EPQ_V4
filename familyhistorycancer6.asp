
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10802010")="1" then
		strCUTA10802010answer1="checked"
	end if
	if Session("CUTA10802020")="1" then
		strCUTA10802020answer1="checked"
	end if
	if Session("CUTA10802030")="1" then
		strCUTA10802030answer1="checked"
	end if
	if Session("CUTA10802040")="1" then
		strCUTA10802040answer1="checked"
	end if
	if Session("CUTA10802040")="2" then
		strCUTA10802040answer2="checked"
	end if

	if Session("HM10803000")="1" then
		strHM10803000answer1="checked"
	end if
	if Session("HM10804000")="1" then
		strHM10804000answer1="checked"
	end if
	if Session("HM10805000")="1" then
		strHM10805000answer1="checked"
	end if
	if Session("HM10806000")="1" then
		strHM10806000answer1="checked"
	end if
	if Session("HM10806000")="2" then
		strHM10806000answer2="checked"
	end if

	if Session("EPQ30821010")="1" then
		strEPQ30821010answer1="checked"
	end if
	if Session("EPQ30821020")="1" then
		strEPQ30821020answer1="checked"
	end if
	if Session("EPQ30821030")="1" then
		strEPQ30821030answer1="checked"
	end if
	if Session("EPQ30821040")="1" then
		strEPQ30821040answer1="checked"
	end if
	if Session("EPQ30821040")="2" then
		strEPQ30821040answer2="checked"
	end if
	if Session("EPQ30821040")="88" then
		strEPQ30821040answer3="checked"
	end if

	if Session("EPQ30822010")="1" then
		strEPQ30822010answer1="checked"
	end if
	if Session("EPQ30822020")="1" then
		strEPQ30822020answer1="checked"
	end if
	if Session("EPQ30822030")="1" then
		strEPQ30822030answer1="checked"
	end if
	if Session("EPQ30822040")="1" then
		strEPQ30822040answer1="checked"
	end if
	if Session("EPQ30822040")="2" then
		strEPQ30822040answer2="checked"
	end if
	if Session("EPQ30822040")="88" then
		strEPQ30822040answer3="checked"
	end if
	if Session("EPQ30823010")="1" then
		strEPQ30823010answer1="checked"
	end if
	if Session("EPQ30823020")="1" then
		strEPQ30823020answer1="checked"
	end if
	if Session("EPQ30823030")="1" then
		strEPQ30823030answer1="checked"
	end if
	if Session("EPQ30823040")="1" then
		strEPQ30823040answer1="checked"
	end if
	if Session("EPQ30823040")="2" then
		strEPQ30823040answer2="checked"
	end if
	if Session("EPQ30823040")="88" then
		strEPQ30823040answer3="checked"
	end if
	if Session("EPQ30824010")="1" then
		strEPQ30824010answer1="checked"
	end if
	if Session("EPQ30824020")="1" then
		strEPQ30824020answer1="checked"
	end if
	if Session("EPQ30824030")="1" then
		strEPQ30824030answer1="checked"
	end if
	if Session("EPQ30824040")="1" then
		strEPQ30824040answer1="checked"
	end if
	if Session("EPQ30824040")="2" then
		strEPQ30824040answer2="checked"
	end if
	if Session("EPQ30824040")="88" then
		strEPQ30824040answer3="checked"
	end if
	if Session("EPQ30825010")="1" then
		strEPQ30825010answer1="checked"
	end if
	if Session("EPQ30825020")="1" then
		strEPQ30825020answer1="checked"
	end if
	if Session("EPQ30825030")="1" then
		strEPQ30825030answer1="checked"
	end if
	if Session("EPQ30825040")="1" then
		strEPQ30825040answer1="checked"
	end if
	if Session("EPQ30825040")="2" then
		strEPQ30825040answer2="checked"
	end if
	if Session("EPQ30825040")="88" then
		strEPQ30825040answer3="checked"
	end if
	if Session("EPQ30826010")="1" then
		strEPQ30826010answer1="checked"
	end if
	if Session("EPQ30826020")="1" then
		strEPQ30826020answer1="checked"
	end if
	if Session("EPQ30826030")="1" then
		strEPQ30826030answer1="checked"
	end if
	if Session("EPQ30826040")="1" then
		strEPQ30826040answer1="checked"
	end if
	if Session("EPQ30826040")="2" then
		strEPQ30826040answer2="checked"
	end if
	if Session("EPQ30826040")="88" then
		strEPQ30826040answer3="checked"
	end if
	if Session("EPQ30827010")="1" then
		strEPQ30827010answer1="checked"
	end if
	if Session("EPQ30827020")="1" then
		strEPQ30827020answer1="checked"
	end if
	if Session("EPQ30827030")="1" then
		strEPQ30827030answer1="checked"
	end if
	if Session("EPQ30827040")="1" then
		strEPQ30827040answer1="checked"
	end if
	if Session("EPQ30827040")="2" then
		strEPQ30827040answer2="checked"
	end if
	if Session("EPQ30827040")="88" then
		strEPQ30827040answer3="checked"
	end if
	if Session("EPQ30828010")="1" then
		strEPQ30828010answer1="checked"
	end if
	if Session("EPQ30828020")="1" then
		strEPQ30828020answer1="checked"
	end if
	if Session("EPQ30828030")="1" then
		strEPQ30828030answer1="checked"
	end if
	if Session("EPQ30828040")="1" then
		strEPQ30828040answer1="checked"
	end if
	if Session("EPQ30828040")="2" then
		strEPQ30828040answer2="checked"
	end if
	if Session("EPQ30828040")="88" then
		strEPQ30828040answer3="checked"
	end if
	if Session("EPQ30829010")="1" then
		strEPQ30829010answer1="checked"
	end if
	if Session("EPQ30829020")="1" then
		strEPQ30829020answer1="checked"
	end if
	if Session("EPQ30829030")="1" then
		strEPQ30829030answer1="checked"
	end if
	if Session("EPQ30829040")="1" then
		strEPQ30829040answer1="checked"
	end if
	if Session("EPQ30829040")="2" then
		strEPQ30829040answer2="checked"
	end if
	if Session("EPQ30829040")="88" then
		strEPQ30829040answer3="checked"
	end if
	if Session("EPQ30830010")="1" then
		strEPQ30830010answer1="checked"
	end if
	if Session("EPQ30830020")="1" then
		strEPQ30830020answer1="checked"
	end if
	if Session("EPQ30830030")="1" then
		strEPQ30830030answer1="checked"
	end if

	if Session("EPQ30830040")="1" then
		strEPQ30830040answer1="checked"
	end if
	if Session("EPQ30830040")="2" then
		strEPQ30830040answer2="checked"
	end if
	if Session("EPQ30830040")="88" then
		strEPQ30830040answer3="checked"
	end if

	if Session("EPQ30831010")="1" then
		strEPQ30831010answer1="checked"
	end if
	if Session("EPQ30831020")="1" then
		strEPQ30831020answer1="checked"
	end if
	if Session("EPQ30831030")="1" then
		strEPQ30831030answer1="checked"
	end if

	if Session("EPQ30831040")="1" then
		strEPQ30831040answer1="checked"
	end if
	if Session("EPQ30831040")="2" then
		strEPQ30831040answer2="checked"
	end if
	if Session("EPQ30831040")="88" then
		strEPQ30831040answer3="checked"
	end if

end if


if Request.Form("ispostback")="1" then

	Session("CUTA10802010") = Request.Form("CUTA10802010")
	Session("CUTA10802020") = Request.Form("CUTA10802020")
	Session("CUTA10802030") = Request.Form("CUTA10802030")
	Session("CUTA10802040") = Request.Form("CUTA10802040")

	Session("HM10803000") = Request.Form("HM10803000")
	Session("HM10804000") = Request.Form("HM10804000")
	Session("HM10805000") = Request.Form("HM10805000")
	Session("HM10806000") = Request.Form("HM10806000")

	Session("EPQ30821010") = Request.Form("EPQ30821010")
	Session("EPQ30821020") = Request.Form("EPQ30821020")
	Session("EPQ30821030") = Request.Form("EPQ30821030")
	Session("EPQ30821040") = Request.Form("EPQ30821040")

	Session("EPQ30822010") = Request.Form("EPQ30822010")
	Session("EPQ30822020") = Request.Form("EPQ30822020")
	Session("EPQ30822030") = Request.Form("EPQ30822030")
	Session("EPQ30822040") = Request.Form("EPQ30822040")

	Session("EPQ30823010") = Request.Form("EPQ30823010")
	Session("EPQ30823020") = Request.Form("EPQ30823020")
	Session("EPQ30823030") = Request.Form("EPQ30823030")
	Session("EPQ30823040") = Request.Form("EPQ30823040")

	Session("EPQ30824010") = Request.Form("EPQ30824010")
	Session("EPQ30824020") = Request.Form("EPQ30824020")
	Session("EPQ30824030") = Request.Form("EPQ30824030")
	Session("EPQ30824040") = Request.Form("EPQ30824040")

	Session("EPQ30825010") = Request.Form("EPQ30825010")
	Session("EPQ30825020") = Request.Form("EPQ30825020")
	Session("EPQ30825030") = Request.Form("EPQ30825030")
	Session("EPQ30825040") = Request.Form("EPQ30825040")

	Session("EPQ30826010") = Request.Form("EPQ30826010")
	Session("EPQ30826020") = Request.Form("EPQ30826020")
	Session("EPQ30826030") = Request.Form("EPQ30826030")
	Session("EPQ30826040") = Request.Form("EPQ30826040")

	Session("EPQ30827010") = Request.Form("EPQ30827010")
	Session("EPQ30827020") = Request.Form("EPQ30827020")
	Session("EPQ30827030") = Request.Form("EPQ30827030")
	Session("EPQ30827040") = Request.Form("EPQ30827040")

	Session("EPQ30828010") = Request.Form("EPQ30828010")
	Session("EPQ30828020") = Request.Form("EPQ30828020")
	Session("EPQ30828030") = Request.Form("EPQ30828030")
	Session("EPQ30828040") = Request.Form("EPQ30828040")

	Session("EPQ30829010") = Request.Form("EPQ30829010")
	Session("EPQ30829020") = Request.Form("EPQ30829020")
	Session("EPQ30829030") = Request.Form("EPQ30829030")
	Session("EPQ30829040") = Request.Form("EPQ30829040")

	Session("EPQ30830010") = Request.Form("EPQ30830010")
	Session("EPQ30830020") = Request.Form("EPQ30830020")
	Session("EPQ30830030") = Request.Form("EPQ30830030")
	Session("EPQ30830040") = Request.Form("EPQ30830040")

	Session("EPQ30831010") = Request.Form("EPQ30831010")
	Session("EPQ30831020") = Request.Form("EPQ30831020")
	Session("EPQ30831030") = Request.Form("EPQ30831030")
	Session("EPQ30831040") = Request.Form("EPQ30831040")

end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"

	if Session("EPQ30805010")="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805020")="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805070") ="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

		Session("Page")=4
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

	if Session("FHCDisplayCounter") > 9 then
	Session("Page")="6b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805010")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805020")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805070") ="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


	If Session("SurveyVersion")="Thoracic" OR Session("GI10201000")="1" OR Session("GI10202000")="1" then
	Session("Page")="8thoracic"
	else
	Session("Page")="8"
	end if

	Session("FamilyHistoryCancerSectionStatus")="Completed"
	Response.Redirect "familyhistorycancermaster.asp"

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
	 <!--#include file="functionbox.asp"-->
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
    <form action="familyhistorycancer6.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th>Father</th>
				<th>1 brother</th>
				<th>2 or more brothers</th>
				<th>1 son</th>
				<th>2 or more sons</th>

				<th>Yes</th>
				<th>No</th>
				<th>Don't know</th>
			</tr>
		   <tbody>

<%if session("TEMPEPQ30820010")=1 then%>
<%if session("TEMPEPQ30820010Page1")=1 then%>

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


<%if session("EPQ30820010")=1 then%>
<%if session("EPQ30820010Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Breast cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30821010" value="1" id="EPQ30821010" <%=strEPQ30821010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30821020" value="1" id="EPQ30821020" <%=strEPQ30821020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30821030" value="1" id="EPQ30821030" <%=strEPQ30821030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30821050" value="1" id="EPQ30821050" <%=strEPQ30821020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30821060" value="1" id="EPQ30821060" <%=strEPQ30821030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30821040" value="1" id="EPQ30821040" <%=strEPQ30821040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30821040" value="2" id="EPQ30821040" <%=strEPQ30821040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30821040" value="3" id="EPQ30821040" <%=strEPQ30821040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820020")=1 then%>
<%if session("EPQ30820020Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Colon or rectal cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30822010" value="1" id="EPQ30822010" <%=strEPQ30822010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30822020" value="1" id="EPQ30822020" <%=strEPQ30822020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30822030" value="1" id="EPQ30822030" <%=strEPQ30822030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="EPQ30822050" value="1" id="EPQ30822050" <%=strEPQ30822020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30822060" value="1" id="EPQ30822060" <%=strEPQ30822030answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30822040" value="1" id="EPQ30822040" <%=strEPQ30822040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30822040" value="2" id="EPQ30822040" <%=strEPQ30822040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30822040" value="3" id="EPQ30822040" <%=strEPQ30822040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820030")=1 then%>
<%if session("EPQ30820030Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Kidney (renal cell) cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30825010" value="1" id="EPQ30825010" <%=strEPQ30825010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30825020" value="1" id="EPQ30825020" <%=strEPQ30825020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30825030" value="1" id="EPQ30825030" <%=strEPQ30825030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30825050" value="1" id="EPQ30825050" <%=strEPQ30825020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30825060" value="1" id="EPQ30825060" <%=strEPQ30825030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30825040" value="1" id="EPQ30825040" <%=strEPQ30825040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30825040" value="2" id="EPQ30825040" <%=strEPQ30825040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30825040" value="3" id="EPQ30825040" <%=strEPQ30825040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820040")=1 then%>
<%if session("EPQ30820040Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Leukemia</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30826010" value="1" id="EPQ30826010" <%=strEPQ30826010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30826020" value="1" id="EPQ30826020" <%=strEPQ30826020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30826030" value="1" id="EPQ30826030" <%=strEPQ30826030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30826050" value="1" id="EPQ30826050" <%=strEPQ30826020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30826060" value="1" id="EPQ30826060" <%=strEPQ30826030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30826040" value="1" id="EPQ30826040" <%=strEPQ30826040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30826040" value="2" id="EPQ30826040" <%=strEPQ30826040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30826040" value="3" id="EPQ30826040" <%=strEPQ30826040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820050")=1 then%>
<%if session("EPQ30820050Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Lung cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30824010" value="1" id="EPQ30824010" <%=strEPQ30824010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30824020" value="1" id="EPQ30824020" <%=strEPQ30824020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30824030" value="1" id="EPQ30824030" <%=strEPQ30824030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30824050" value="1" id="EPQ30824050" <%=strEPQ30824020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30824060" value="1" id="EPQ30824060" <%=strEPQ30824030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30824040" value="1" id="EPQ30824040" <%=strEPQ30824040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30824040" value="2" id="EPQ30824040" <%=strEPQ30824040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30824040" value="3" id="EPQ30824040" <%=strEPQ30824040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820060")=1 then%>
<%if session("EPQ30820060Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Melanoma</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30823010" value="1" id="EPQ30823010" <%=strEPQ30823010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30823020" value="1" id="EPQ30823020" <%=strEPQ30823020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30823030" value="1" id="EPQ30823030" <%=strEPQ30823030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30823050" value="1" id="EPQ30823050" <%=strEPQ30823020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30823060" value="1" id="EPQ30823060" <%=strEPQ30823030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30823040" value="1" id="EPQ30823040" <%=strEPQ30823040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30823040" value="2" id="EPQ30823040" <%=strEPQ30823040answer2%>></td>

				<td style="text-align: center;"><input type="radio" name="EPQ30823040" value="3" id="EPQ30823040" <%=strEPQ30823040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<% if Session("HM10204000")="1" then  %>
<%if session("HM10801000")=1 then%>
<% if Session("HM10801000Page1")="1" then  %>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Multiple myeloma or plasma cell tumor</td>
				<td style="text-align: center;"><input type="checkbox" name="HM10803000" value="1" id="HM10803000" <%=strHM10803000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10804000" value="1" id="HM10804000" <%=strHM10804000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10805000" value="1" id="HM10805000" <%=strHM10805000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10807000" value="1" id="HM10807000" <%=strHM10804000answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="HM10808000" value="1" id="HM10808000" <%=strHM10805000answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="HM10806000" value="1" id="HM10806000" <%=strHM10806000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="HM10806000" value="2" id="HM10806000" <%=strHM10806000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="HM10806000" value="3" id="HM10806000" <%=strHM10806000answer2%>></td>

			</tr>
<% end if %>
<% end if %>
<% end if %>

<% if Session("ProductionModeSpoke")="C" then %>
<% if Session("SurveyVersion")="Cutaneous" then %>
<%if session("CUTA10801000")=1 then%>
<%if session("CUTA10801000Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Non-melanoma skin cancer (includes basal, squamous, but not melanoma)</td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10802010" value="1" id="CUTA10802010" <%=strCUTA10802010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10802020" value="1" id="CUTA10802020" <%=strCUTA10802020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10802030" value="1" id="CUTA10802030" <%=strCUTA10802030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10802050" value="1" id="CUTA10802050" <%=strCUTA10802050answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="CUTA10802060" value="1" id="CUTA10802060" <%=strCUTA10802060answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="CUTA10802040" value="1" id="CUTA10802040" <%=strCUTA10802040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="CUTA10802040" value="2" id="CUTA10802040" <%=strCUTA10802040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="CUTA10802040" value="3" id="CUTA10802040" <%=strCUTA10802040answer2%>></td>

			</tr>
<% end if %>
<% end if %>
<% end if %>
<% end if %>

<%if session("EPQ30820110")=1 then%>
<%if session("EPQ30820110Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Oral Cavity or Throat Cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30831010" value="1" id="EPQ30831010" <%=strEPQ30831010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30831020" value="1" id="EPQ30831020" <%=strEPQ30831020answer1%>></td>
				<td style="tt-align: center;"><input type="checkbox" name="EPQ30831030" value="1" id="EPQ30831030" <%=strEPQ30831030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30831050" value="1" id="EPQ30831050" <%=strEPQ30831020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30831060" value="1" id="EPQ30831060" <%=strEPQ30831030answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30831040" value="1" id="EPQ30831040" <%=strEPQ30831040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30831040" value="2" id="EPQ30831040" <%=strEPQ30831040answer2%>></td>

				<td style="text-align: center;"><input type="radio" name="EPQ30831040" value="3" id="EPQ30831040" <%=strEPQ30831040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820070")=1 then%>
<%if session("EPQ30820070Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Pancreatic cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30827010" value="1" id="EPQ30827010" <%=strEPQ30827010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30827020" value="1" id="EPQ30827020" <%=strEPQ30827020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30827030" value="1" id="EPQ30827030" <%=strEPQ30827030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="EPQ30827050" value="1" id="EPQ30827050" <%=strEPQ30827020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30827060" value="1" id="EPQ30827060" <%=strEPQ30827030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30827040" value="1" id="EPQ30827040" <%=strEPQ30827040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30827040" value="2" id="EPQ30827040" <%=strEPQ30827040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30827040" value="3" id="EPQ30827040" <%=strEPQ30827040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820080")=1 then%>
<%if session("EPQ30820080Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Prostate cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30829010" value="1" id="EPQ30829010" <%=strEPQ30829010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30829020" value="1" id="EPQ30829020" <%=strEPQ30829020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30829030" value="1" id="EPQ30829030" <%=strEPQ30829030answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30829050" value="1" id="EPQ30829050" <%=strEPQ30829020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30829060" value="1" id="EPQ30829060" <%=strEPQ30829030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30829040" value="1" id="EPQ30829040" <%=strEPQ30829040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30829040" value="2" id="EPQ30829040" <%=strEPQ30829040answer2%>></td>

				<td style="text-align: center;"><input type="radio" name="EPQ30829040" value="3" id="EPQ30829040" <%=strEPQ30829040answer2%>></td>
			</tr>
<% end if %>
<% end if %>

              
<%if session("TEMP1EPQ30820090")=1 then%>
<%if session("TEMP1EPQ30820090Page1")=1 then%>
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

<%if session("TEMP2EPQ30820090")=1 then%>
<%if session("TEMP2EPQ30820090Page1")=1 then%>
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


<%if session("EPQ30820090")=1 then%>
<%if session("EPQ30820090Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td>Thyroid cancer</td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30828010" value="1" id="EPQ30828010" <%=strEPQ30828010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30828020" value="1" id="EPQ30828020" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30828030" value="1" id="EPQ30828030" <%=strEPQ30828030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="EPQ30828050" value="1" id="EPQ30828050" <%=strEPQ30828020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30828060" value="1" id="EPQ30828060" <%=strEPQ30828030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30828040" value="1" id="EPQ30828040" <%=strEPQ30828040answer1%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30828040" value="2" id="EPQ30828040" <%=strEPQ30828040answer2%>></td>
				<td style="text-align: center;"><input type="radio" class="required" name="EPQ30828040" value="3" id="EPQ30828040" <%=strEPQ30828040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("EPQ30820100")=1 then%>
<%if session("EPQ30820100Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMPEPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30830010" value="1" id="EPQ30830010" <%=strEPQ30830010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30830020" value="1" id="EPQ30830020" <%=strEPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30830030" value="1" id="EPQ30830030" <%=strEPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="EPQ30830050" value="1" id="EPQ30830050" <%=strEPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="EPQ30830060" value="1" id="EPQ30830060" <%=strEPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required "name="EPQ30830040" value="1" id="EPQ30830040" <%=strEPQ30830040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30830040" value="2" id="EPQ30830040" <%=strEPQ30830040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="EPQ30830040" value="3" id="EPQ30830040" <%=strEPQ30830040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("TEMP1EPQ30820100")=1 then%>
<%if session("TEMP1EPQ30820100Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMP2EPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30830010" value="1" id="TEMP1EPQ30830010" <%=strEPQ30830010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30830020" value="1" id="TEMP1EPQ30830020" <%=strEPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30830030" value="1" id="TEMP1EPQ30830030" <%=strEPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30830050" value="1" id="TEMP1EPQ30830050" <%=strEPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP1EPQ30830060" value="1" id="TEMP1EPQ30830060" <%=strEPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required "name="TEMP1EPQ30830040" value="1" id="TEMP1EPQ30830040" <%=strTEMP1EPQ30830040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP1EPQ30830040" value="2" id="TEMP1EPQ30830040" <%=strTEMP1EPQ30830040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP1EPQ30830040" value="3" id="TEMP1EPQ30830040" <%=strTEMP1EPQ30830040answer2%>></td>

			</tr>
<% end if %>
<% end if %>

<%if session("TEMP2EPQ30820100")=1 then%>
<%if session("TEMP2EPQ30820100Page1")=1 then%>
			<tr class="eitherOneOrTwoOrMoreCheckboxes">
				<td><%=Session("TEMP3EPQ30341000")%></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30830010" value="1" id="TEMP2EPQ30830010" <%=strTEMP2EPQ30830010answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30830020" value="1" id="TEMP2EPQ30830020" <%=strTEMP2EPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30830030" value="1" id="TEMP2EPQ30830030" <%=strTEMP2EPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30830050" value="1" id="TEMP2EPQ30830050" <%=strTEMP2EPQ30830020answer1%>></td>
				<td style="text-align: center;"><input type="checkbox" name="TEMP2EPQ30830060" value="1" id="TEMP2EPQ30830060" <%=strTEMP2EPQ30830030answer1%>></td>

				<td style="text-align: center;"><input type="radio" class="required "name="TEMP2EPQ30830040" value="1" id="TEMP2EPQ30830040" <%=strTEMP2EPQ30830040answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP2EPQ30830040" value="2" id="TEMP2EPQ30830040" <%=strTEMP2EPQ30830040answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="TEMP2EPQ30830040" value="3" id="TEMP2EPQ30830040" <%=strTEMP2EPQ30830040answer2%>></td>

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
