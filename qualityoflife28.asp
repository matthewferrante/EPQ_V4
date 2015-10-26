
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11301000")="0" then
		strGI11301000answer1="checked"
	end if
	if Session("GI11301000")="1" then
		strGI11301000answer2="checked"
	end if
	if Session("GI11301000")="2" then
		strGI11301000answer3="checked"
	end if
	if Session("GI11301000")="3" then
		strGI11301000answer4="checked"
	end if
	if Session("GI11301000")="4" then
		strGI11301000answer5="checked"
	end if

	if Session("GI11302000")="0" then
		strGI11302000answer1="checked"
	end if
	if Session("GI11302000")="1" then
		strGI11302000answer2="checked"
	end if
	if Session("GI11302000")="2" then
		strGI11302000answer3="checked"
	end if
	if Session("GI11302000")="3" then
		strGI11302000answer4="checked"
	end if
	if Session("GI11302000")="4" then
		strGI11302000answer5="checked"
	end if

	if Session("GI11303000")="0" then
		strGI11303000answer1="checked"
	end if
	if Session("GI11303000")="1" then
		strGI11303000answer2="checked"
	end if
	if Session("GI11303000")="2" then
		strGI11303000answer3="checked"
	end if
	if Session("GI11303000")="3" then
		strGI11303000answer4="checked"
	end if
	if Session("GI11303000")="4" then
		strGI11303000answer5="checked"
	end if

	if Session("GI11304000")="0" then
		strGI11304000answer1="checked"
	end if
	if Session("GI11304000")="1" then
		strGI11304000answer2="checked"
	end if
	if Session("GI11304000")="2" then
		strGI11304000answer3="checked"
	end if
	if Session("GI11304000")="3" then
		strGI11304000answer4="checked"
	end if
	if Session("GI11304000")="4" then
		strGI11304000answer5="checked"
	end if

	if Session("GI11305000")="0" then
		strGI11305000answer1="checked"
	end if
	if Session("GI11305000")="1" then
		strGI11305000answer2="checked"
	end if
	if Session("GI11305000")="2" then
		strGI11305000answer3="checked"
	end if
	if Session("GI11305000")="3" then
		strGI11305000answer4="checked"
	end if
	if Session("GI11305000")="4" then
		strGI11305000answer5="checked"
	end if

	if Session("GI11306000")="0" then
		strGI11306000answer1="checked"
	end if
	if Session("GI11306000")="1" then
		strGI11306000answer2="checked"
	end if
	if Session("GI11306000")="2" then
		strGI11306000answer3="checked"
	end if
	if Session("GI11306000")="3" then
		strGI11306000answer4="checked"
	end if
	if Session("GI11306000")="4" then
		strGI11306000answer5="checked"
	end if

	if Session("GI11307000")="0" then
		strGI11307000answer1="checked"
	end if
	if Session("GI11307000")="1" then
		strGI11307000answer2="checked"
	end if
	if Session("GI11307000")="2" then
		strGI11307000answer3="checked"
	end if
	if Session("GI11307000")="3" then
		strGI11307000answer4="checked"
	end if
	if Session("GI11307000")="4" then
		strGI11307000answer5="checked"
	end if

	if Session("GI11308000")="0" then
		strGI11308000answer1="checked"
	end if
	if Session("GI11308000")="1" then
		strGI11308000answer2="checked"
	end if
	if Session("GI11308000")="2" then
		strGI11308000answer3="checked"
	end if
	if Session("GI11308000")="3" then
		strGI11308000answer4="checked"
	end if
	if Session("GI11308000")="4" then
		strGI11308000answer5="checked"
	end if

	if Session("GI11309000")="0" then
		strGI11309000answer1="checked"
	end if
	if Session("GI11309000")="1" then
		strGI11309000answer2="checked"
	end if
	if Session("GI11309000")="2" then
		strGI11309000answer3="checked"
	end if
	if Session("GI11309000")="3" then
		strGI11309000answer4="checked"
	end if
	if Session("GI11309000")="4" then
		strGI11309000answer5="checked"
	end if

if Session("GI10201000")="1"  then 
if Session("GI10202000")<>"1"  then  

	if Session("GI11319000")="0" then
		strGI11319000answer1="checked"
	end if
	if Session("GI11319000")="1" then
		strGI11319000answer2="checked"
	end if
	if Session("GI11319000")="2" then
		strGI11319000answer3="checked"
	end if
	if Session("GI11319000")="3" then
		strGI11319000answer4="checked"
	end if
	if Session("GI11319000")="4" then
		strGI11319000answer5="checked"
	end if
end if
end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GI11301000string")= ""
	Session("GI11302000string")= ""
	Session("GI11303000string")= ""
	Session("GI11304000string")= ""
	Session("GI11305000string")= ""
	Session("GI11306000string")= ""
	Session("GI11307000string")= ""
	Session("GI11308000string")= ""
	Session("GI11309000string")= ""
	Session("GI11319000string")= ""

if Session("GI10201000")="1"  then 
if Session("GI10202000")<>"1"  then  
	Session("GI11319000string")= ""
	Session("GI11319000") = Request.Form("GI11319000")
end if
end if






	Session("GI11301000") = Request.Form("GI11301000")
	Session("GI11302000") = Request.Form("GI11302000")
	Session("GI11303000") = Request.Form("GI11303000")
	Session("GI11304000") = Request.Form("GI11304000")
	Session("GI11305000") = Request.Form("GI11305000")
	Session("GI11306000") = Request.Form("GI11306000")
	Session("GI11307000") = Request.Form("GI11307000")
	Session("GI11308000") = Request.Form("GI11308000")
	Session("GI11309000") = Request.Form("GI11309000")


	if Session("GI11301000") = "0" then 
		Session("GI11301000string")= "Not at all"
	end if
	if Session("GI11301000") = "1" then 
		Session("GI11301000string")= "A little bit"
	end if
	if Session("GI11301000") = "2" then 
		Session("GI11301000string")= "Some what"
	end if
	if Session("GI11301000") = "3" then 
		Session("GI11301000string")= "Quite a bit"
	end if
	if Session("GI11301000") = "4" then 
		Session("GI11301000string")= "Very much"
	end if

	if Session("GI11302000") = "0" then 
		Session("GI11302000string")= "Not at all"
	end if
	if Session("GI11302000") = "1" then 
		Session("GI11302000string")= "A little bit"
	end if
	if Session("GI11302000") = "2" then 
		Session("GI11302000string")= "Some what"
	end if
	if Session("GI11302000") = "3" then 
		Session("GI11302000string")= "Quite a bit"
	end if
	if Session("GI11302000") = "4" then 
		Session("GI11302000string")= "Very much"
	end if

	if Session("GI11303000") = "0" then 
		Session("GI11303000string")= "Not at all"
	end if
	if Session("GI11303000") = "1" then 
		Session("GI11303000string")= "A little bit"
	end if
	if Session("GI11303000") = "2" then 
		Session("GI11303000string")= "Some what"
	end if
	if Session("GI11303000") = "3" then 
		Session("GI11303000string")= "Quite a bit"
	end if
	if Session("GI11303000") = "4" then 
		Session("GI11303000string")= "Very much"
	end if

	if Session("GI11304000") = "0" then 
		Session("GI11304000string")= "Not at all"
	end if
	if Session("GI11304000") = "1" then 
		Session("GI11304000string")= "A little bit"
	end if
	if Session("GI11304000") = "2" then 
		Session("GI11304000string")= "Some what"
	end if
	if Session("GI11304000") = "3" then 
		Session("GI11304000string")= "Quite a bit"
	end if
	if Session("GI11304000") = "4" then 
		Session("GI11304000string")= "Very much"
	end if

	if Session("GI11305000") = "0" then 
		Session("GI11305000string")= "Not at all"
	end if
	if Session("GI11305000") = "1" then 
		Session("GI11305000string")= "A little bit"
	end if
	if Session("GI11305000") = "2" then 
		Session("GI11305000string")= "Some what"
	end if
	if Session("GI11305000") = "3" then 
		Session("GI11305000string")= "Quite a bit"
	end if
	if Session("GI11305000") = "4" then 
		Session("GI11305000string")= "Very much"
	end if

	if Session("GI11306000") = "0" then 
		Session("GI11306000string")= "Not at all"
	end if
	if Session("GI11306000") = "1" then 
		Session("GI11306000string")= "A little bit"
	end if
	if Session("GI11306000") = "2" then 
		Session("GI11306000string")= "Some what"
	end if
	if Session("GI11306000") = "3" then 
		Session("GI11306000string")= "Quite a bit"
	end if
	if Session("GI11306000") = "4" then 
		Session("GI11306000string")= "Very much"
	end if

	if Session("GI11307000") = "0" then 
		Session("GI11307000string")= "Not at all"
	end if
	if Session("GI11307000") = "1" then 
		Session("GI11307000string")= "A little bit"
	end if
	if Session("GI11307000") = "2" then 
		Session("GI11307000string")= "Some what"
	end if
	if Session("GI11307000") = "3" then 
		Session("GI11307000string")= "Quite a bit"
	end if
	if Session("GI11307000") = "4" then 
		Session("GI11307000string")= "Very much"
	end if

	if Session("GI11308000") = "0" then 
		Session("GI11308000string")= "Not at all"
	end if
	if Session("GI11308000") = "1" then 
		Session("GI11308000string")= "A little bit"
	end if
	if Session("GI11308000") = "2" then 
		Session("GI11308000string")= "Some what"
	end if
	if Session("GI11308000") = "3" then 
		Session("GI11308000string")= "Quite a bit"
	end if
	if Session("GI11308000") = "4" then 
		Session("GI11308000string")= "Very much"
	end if

	if Session("GI11309000") = "0" then 
		Session("GI11309000string")= "Not at all"
	end if
	if Session("GI11309000") = "1" then 
		Session("GI11309000string")= "A little bit"
	end if
	if Session("GI11309000") = "2" then 
		Session("GI11309000string")= "Some what"
	end if
	if Session("GI11309000") = "3" then 
		Session("GI11309000string")= "Quite a bit"
	end if
	if Session("GI11309000") = "4" then 
		Session("GI11309000string")= "Very much"
	end if

	if Session("GI11319000") = "0" then 
		Session("GI11319000string")= "Not at all"
	end if
	if Session("GI11319000") = "1" then 
		Session("GI11319000string")= "A little bit"
	end if
	if Session("GI11319000") = "2" then 
		Session("GI11319000string")= "Some what"
	end if
	if Session("GI11319000") = "3" then 
		Session("GI11319000string")= "Quite a bit"
	end if
	if Session("GI11319000") = "4" then 
		Session("GI11319000string")= "Very much"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
if Session("GI10202000")="1" then
	Session("Page")="29"
	Response.Redirect "qualityoflifemaster.asp"
else
	Session("Page")="30"
	Response.Redirect "qualityoflifemaster.asp"

	 <!--#include file="autosavefunction.asp"-->
end if
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
	<div id="SpecialNote">
	Below is a list of statements that other people with your illness have said are important.
	</div>
<br>

    <form action="qualityoflife28.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

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
			<tr>
				<th rowspan="2">Additional Concerns<br> Please mark
one per line to indicate your response<br> as it applies to the past 7 days.</th>
				<th rowspan="2">Not at all</th>
				<th rowspan="2">A little bit</th>
				<th rowspan="2">Some what</th>
				<th rowspan="2">Quite a bit</th>
				<th rowspan="2">Very much</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		I have swelling or cramps in my stomach area</td>
<td style="text-align: center;"><input type="radio" id="GI11301000" class="required" type="text" value="0" size="1" name="GI11301000" <%=strGI11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11301000" type="text" value="1" size="1" name="GI11301000" <%=strGI11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11301000" type="text" value="2" size="1" name="GI11301000" <%=strGI11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11301000" type="text" value="3" size="1" name="GI11301000" <%=strGI11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11301000" type="text" value="4" size="1" name="GI11301000" <%=strGI11301000answer5%>></td>
</tr>
<tr>
<td>		I am losing weight</td>
<td style="text-align: center;"><input type="radio" id="GI11302000" class="required" type="text" value="0" size="1" name="GI11302000" <%=strGI11302000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11302000" type="text" value="1" size="1" name="GI11302000" <%=strGI11302000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11302000" type="text" value="2" size="1" name="GI11302000" <%=strGI11302000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11302000" type="text" value="3" size="1" name="GI11302000" <%=strGI11302000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11302000" type="text" value="4" size="1" name="GI11302000" <%=strGI11302000answer5%>></td>
</tr>

<tr>
<td>		I have control of my bowels</td>
<td style="text-align: center;"><input type="radio" id="GI11303000" class="required" type="text" value="0" size="1" name="GI11303000" <%=strGI11303000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11303000" type="text" value="1" size="1" name="GI11303000" <%=strGI11303000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11303000" type="text" value="2" size="1" name="GI11303000" <%=strGI11303000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11303000" type="text" value="3" size="1" name="GI11303000" <%=strGI11303000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11303000" type="text" value="4" size="1" name="GI11303000" <%=strGI11303000answer5%>></td>
</tr>

<tr>
<td>		I can digest my food well</td>
<td style="text-align: center;"><input type="radio" id="GI11304000" class="required" type="text" value="0" size="1" name="GI11304000" <%=strGI11304000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11304000" type="text" value="1" size="1" name="GI11304000" <%=strGI11304000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11304000" type="text" value="2" size="1" name="GI11304000" <%=strGI11304000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11304000" type="text" value="3" size="1" name="GI11304000" <%=strGI11304000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11304000" type="text" value="4" size="1" name="GI11304000" <%=strGI11304000answer5%>></td>
</tr>
<tr>
<td>		I have diarrhea (diarrhoea)</td>
<td style="text-align: center;"><input type="radio" id="GI11305000" class="required" type="text" value="0" size="1" name="GI11305000" <%=strGI11305000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11305000" type="text" value="1" size="1" name="GI11305000" <%=strGI11305000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11305000" type="text" value="2" size="1" name="GI11305000" <%=strGI11305000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11305000" type="text" value="3" size="1" name="GI11305000" <%=strGI11305000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11305000" type="text" value="4" size="1" name="GI11305000" <%=strGI11305000answer5%>></td>
</tr>
<tr>
<td>		I have a good appetite</td>
<td style="text-align: center;"><input type="radio" id="GI11306000" class="required" type="text" value="0" size="1" name="GI11306000" <%=strGI11306000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11306000" type="text" value="1" size="1" name="GI11306000" <%=strGI11306000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11306000" type="text" value="2" size="1" name="GI11306000" <%=strGI11306000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11306000" type="text" value="3" size="1" name="GI11306000" <%=strGI11306000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11306000" type="text" value="4" size="1" name="GI11306000" <%=strGI11306000answer5%>></td>
</tr>


<% if Session("GI10202000")="1"  then  %>

<tr>
<td>		I am unhappy about a change in my appearance</td>
<td style="text-align: center;"><input type="radio" id="GI11307000" class="required" type="text" value="0" size="1" name="GI11307000" <%=strGI11307000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11307000" type="text" value="1" size="1" name="GI11307000" <%=strGI11307000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11307000" type="text" value="2" size="1" name="GI11307000" <%=strGI11307000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11307000" type="text" value="3" size="1" name="GI11307000" <%=strGI11307000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11307000" type="text" value="4" size="1" name="GI11307000" <%=strGI11307000answer5%>></td>
</tr>
<tr>
<td>		I have pain in my back</td>
<td style="text-align: center;"><input type="radio" id="GI11308000" class="required" type="text" value="0" size="1" name="GI11308000" <%=strGI11308000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11308000" type="text" value="1" size="1" name="GI11308000" <%=strGI11308000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11308000" type="text" value="2" size="1" name="GI11308000" <%=strGI11308000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11308000" type="text" value="3" size="1" name="GI11308000" <%=strGI11308000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11308000" type="text" value="4" size="1" name="GI11308000" <%=strGI11308000answer5%>></td>
</tr>
<tr>
<td>		I am bothered by constipation</td>
<td style="text-align: center;"><input type="radio" id="GI11309000" class="required" type="text" value="0" size="1" name="GI11309000" <%=strGI11309000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11309000" type="text" value="1" size="1" name="GI11309000" <%=strGI11309000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11309000" type="text" value="2" size="1" name="GI11309000" <%=strGI11309000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11309000" type="text" value="3" size="1" name="GI11309000" <%=strGI11309000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11309000" type="text" value="4" size="1" name="GI11309000" <%=strGI11309000answer5%>></td>
</tr>

<% end if%>

<% if Session("GI10201000")="1"  then  %>
<% if Session("GI10202000")<>"1"  then  %>
<tr>
<td>		I like the appearance of my body</td>
<td style="text-align: center;"><input type="radio" id="GI11319000" class="required" type="text" value="0" size="1" name="GI11319000" <%=strGI11319000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11319000" type="text" value="1" size="1" name="GI11319000" <%=strGI11319000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11319000" type="text" value="2" size="1" name="GI11319000" <%=strGI11319000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11319000" type="text" value="3" size="1" name="GI11319000" <%=strGI11319000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11319000" type="text" value="4" size="1" name="GI11319000" <%=strGI11319000answer5%>></td>
</tr>
<% end if%>
<% end if%>




</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
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
