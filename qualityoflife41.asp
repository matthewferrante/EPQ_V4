
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("HM11338000")="0" then
		strHM11338000answer1="checked"
	end if
	if Session("HM11338000")="1" then
		strHM11338000answer2="checked"
	end if
	if Session("HM11338000")="2" then
		strHM11338000answer3="checked"
	end if
	if Session("HM11338000")="3" then
		strHM11338000answer4="checked"
	end if
	if Session("HM11338000")="4" then
		strHM11338000answer5="checked"
	end if
	if Session("HM11338000")="5" then
		strHM11338000answer6="checked"
	end if
	if Session("HM11338000")="6" then
		strHM11338000answer7="checked"
	end if
	if Session("HM11338000")="7" then
		strHM11338000answer8="checked"
	end if
	if Session("HM11338000")="8" then
		strHM11338000answer9="checked"
	end if
	if Session("HM11338000")="9" then
		strHM11338000answer10="checked"
	end if
	if Session("HM11338000")="10" then
		strHM11338000answer11="checked"
	end if

	if Session("HM11339000")="0" then
		strHM11339000answer1="checked"
	end if
	if Session("HM11339000")="1" then
		strHM11339000answer2="checked"
	end if
	if Session("HM11339000")="2" then
		strHM11339000answer3="checked"
	end if
	if Session("HM11339000")="3" then
		strHM11339000answer4="checked"
	end if
	if Session("HM11339000")="4" then
		strHM11339000answer5="checked"
	end if
	if Session("HM11339000")="5" then
		strHM11339000answer6="checked"
	end if
	if Session("HM11339000")="6" then
		strHM11339000answer7="checked"
	end if
	if Session("HM11339000")="7" then
		strHM11339000answer8="checked"
	end if
	if Session("HM11339000")="8" then
		strHM11339000answer9="checked"
	end if
	if Session("HM11339000")="9" then
		strHM11339000answer10="checked"
	end if
	if Session("HM11339000")="10" then
		strHM11339000answer11="checked"
	end if

	if Session("HM11340000")="0" then
		strHM11340000answer1="checked"
	end if
	if Session("HM11340000")="1" then
		strHM11340000answer2="checked"
	end if
	if Session("HM11340000")="2" then
		strHM11340000answer3="checked"
	end if
	if Session("HM11340000")="3" then
		strHM11340000answer4="checked"
	end if
	if Session("HM11340000")="4" then
		strHM11340000answer5="checked"
	end if
	if Session("HM11340000")="5" then
		strHM11340000answer6="checked"
	end if
	if Session("HM11340000")="6" then
		strHM11340000answer7="checked"
	end if
	if Session("HM11340000")="7" then
		strHM11340000answer8="checked"
	end if
	if Session("HM11340000")="8" then
		strHM11340000answer9="checked"
	end if
	if Session("HM11340000")="9" then
		strHM11340000answer10="checked"
	end if
	if Session("HM11340000")="10" then
		strHM11340000answer11="checked"
	end if

	if Session("HM11341000")="0" then
		strHM11341000answer1="checked"
	end if
	if Session("HM11341000")="1" then
		strHM11341000answer2="checked"
	end if
	if Session("HM11341000")="2" then
		strHM11341000answer3="checked"
	end if
	if Session("HM11341000")="3" then
		strHM11341000answer4="checked"
	end if
	if Session("HM11341000")="4" then
		strHM11341000answer5="checked"
	end if
	if Session("HM11341000")="5" then
		strHM11341000answer6="checked"
	end if
	if Session("HM11341000")="6" then
		strHM11341000answer7="checked"
	end if
	if Session("HM11341000")="7" then
		strHM11341000answer8="checked"
	end if
	if Session("HM11341000")="8" then
		strHM11341000answer9="checked"
	end if
	if Session("HM11341000")="9" then
		strHM11341000answer10="checked"
	end if
	if Session("HM11341000")="10" then
		strHM11341000answer11="checked"
	end if


	if Session("HM11342000")="0" then
		strHM11342000answer1="checked"
	end if
	if Session("HM11342000")="1" then
		strHM11342000answer2="checked"
	end if
	if Session("HM11342000")="2" then
		strHM11342000answer3="checked"
	end if
	if Session("HM11342000")="3" then
		strHM11342000answer4="checked"
	end if
	if Session("HM11342000")="4" then
		strHM11342000answer5="checked"
	end if
	if Session("HM11342000")="5" then
		strHM11342000answer6="checked"
	end if
	if Session("HM11342000")="6" then
		strHM11342000answer7="checked"
	end if
	if Session("HM11342000")="7" then
		strHM11342000answer8="checked"
	end if
	if Session("HM11342000")="8" then
		strHM11342000answer9="checked"
	end if
	if Session("HM11342000")="9" then
		strHM11342000answer10="checked"
	end if
	if Session("HM11342000")="10" then
		strHM11342000answer11="checked"
	end if


	if Session("HM11343000")="0" then
		strHM11343000answer1="checked"
	end if
	if Session("HM11343000")="1" then
		strHM11343000answer2="checked"
	end if
	if Session("HM11343000")="2" then
		strHM11343000answer3="checked"
	end if
	if Session("HM11343000")="3" then
		strHM11343000answer4="checked"
	end if
	if Session("HM11343000")="4" then
		strHM11343000answer5="checked"
	end if
	if Session("HM11343000")="5" then
		strHM11343000answer6="checked"
	end if
	if Session("HM11343000")="6" then
		strHM11343000answer7="checked"
	end if
	if Session("HM11343000")="7" then
		strHM11343000answer8="checked"
	end if
	if Session("HM11343000")="8" then
		strHM11343000answer9="checked"
	end if
	if Session("HM11343000")="9" then
		strHM11343000answer10="checked"
	end if
	if Session("HM11343000")="10" then
		strHM11343000answer11="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("HM11338000string")= ""
	Session("HM11339000string")= ""
	Session("HM11340000string")= ""
	Session("HM11341000string")= ""
	Session("HM11342000string")= ""
	Session("HM11343000string")= ""

	Session("HM11338000") = Request.Form("HM11338000")
	Session("HM11339000") = Request.Form("HM11339000")
	Session("HM11340000") = Request.Form("HM11340000")
	Session("HM11341000") = Request.Form("HM11341000")
	Session("HM11342000") = Request.Form("HM11342000")
	Session("HM11343000") = Request.Form("HM11343000")


	if Session("HM11338000") = "0" then 
		Session("HM11338000string")= "0"
	end if
	if Session("HM11338000") = "1" then 
		Session("HM11338000string")= "1"
	end if
	if Session("HM11338000") = "2" then 
		Session("HM11338000string")= "2"
	end if
	if Session("HM11338000") = "3" then 
		Session("HM11338000string")= "3"
	end if
	if Session("HM11338000") = "4" then 
		Session("HM11338000string")= "4"
	end if
	if Session("HM11338000") = "5" then 
		Session("HM11338000string")= "5"
	end if
	if Session("HM11338000") = "6" then 
		Session("HM11338000string")= "6"
	end if
	if Session("HM11338000") = "7" then 
		Session("HM11338000string")= "7"
	end if
	if Session("HM11338000") = "8" then 
		Session("HM11338000string")= "8"
	end if
	if Session("HM11338000") = "9" then 
		Session("HM11338000string")= "9"
	end if
	if Session("HM11338000") = "10" then 
		Session("HM11338000string")= "10"
	end if


	if Session("HM11339000") = "0" then 
		Session("HM11339000string")= "0"
	end if
	if Session("HM11339000") = "1" then 
		Session("HM11339000string")= "1"
	end if
	if Session("HM11339000") = "2" then 
		Session("HM11339000string")= "2"
	end if
	if Session("HM11339000") = "3" then 
		Session("HM11339000string")= "3"
	end if
	if Session("HM11339000") = "4" then 
		Session("HM11339000string")= "4"
	end if
	if Session("HM11339000") = "5" then 
		Session("HM11339000string")= "5"
	end if
	if Session("HM11339000") = "6" then 
		Session("HM11339000string")= "6"
	end if
	if Session("HM11339000") = "7" then 
		Session("HM11339000string")= "7"
	end if
	if Session("HM11339000") = "8" then 
		Session("HM11339000string")= "8"
	end if
	if Session("HM11339000") = "9" then 
		Session("HM11339000string")= "9"
	end if
	if Session("HM11339000") = "10" then 
		Session("HM11339000string")= "10"
	end if

	if Session("HM11340000") = "0" then 
		Session("HM11340000string")= "0"
	end if
	if Session("HM11340000") = "1" then 
		Session("HM11340000string")= "1"
	end if
	if Session("HM11340000") = "2" then 
		Session("HM11340000string")= "2"
	end if
	if Session("HM11340000") = "3" then 
		Session("HM11340000string")= "3"
	end if
	if Session("HM11340000") = "4" then 
		Session("HM11340000string")= "4"
	end if
	if Session("HM11340000") = "5" then 
		Session("HM11340000string")= "5"
	end if
	if Session("HM11340000") = "6" then 
		Session("HM11340000string")= "6"
	end if
	if Session("HM11340000") = "7" then 
		Session("HM11340000string")= "7"
	end if
	if Session("HM11340000") = "8" then 
		Session("HM11340000string")= "8"
	end if
	if Session("HM11340000") = "9" then 
		Session("HM11340000string")= "9"
	end if
	if Session("HM11340000") = "10" then 
		Session("HM11340000string")= "10"
	end if

	if Session("HM11341000") = "0" then 
		Session("HM11341000string")= "0"
	end if
	if Session("HM11341000") = "1" then 
		Session("HM11341000string")= "1"
	end if
	if Session("HM11341000") = "2" then 
		Session("HM11341000string")= "2"
	end if
	if Session("HM11341000") = "3" then 
		Session("HM11341000string")= "3"
	end if
	if Session("HM11341000") = "4" then 
		Session("HM11341000string")= "4"
	end if
	if Session("HM11341000") = "5" then 
		Session("HM11341000string")= "5"
	end if
	if Session("HM11341000") = "6" then 
		Session("HM11341000string")= "6"
	end if
	if Session("HM11341000") = "7" then 
		Session("HM11341000string")= "7"
	end if
	if Session("HM11341000") = "8" then 
		Session("HM11341000string")= "8"
	end if
	if Session("HM11341000") = "9" then 
		Session("HM11341000string")= "9"
	end if
	if Session("HM11341000") = "10" then 
		Session("HM11341000string")= "10"
	end if

	if Session("HM11342000") = "0" then 
		Session("HM11342000string")= "0"
	end if
	if Session("HM11342000") = "1" then 
		Session("HM11342000string")= "1"
	end if
	if Session("HM11342000") = "2" then 
		Session("HM11342000string")= "2"
	end if
	if Session("HM11342000") = "3" then 
		Session("HM11342000string")= "3"
	end if
	if Session("HM11342000") = "4" then 
		Session("HM11342000string")= "4"
	end if
	if Session("HM11342000") = "5" then 
		Session("HM11342000string")= "5"
	end if
	if Session("HM11342000") = "6" then 
		Session("HM11342000string")= "6"
	end if
	if Session("HM11342000") = "7" then 
		Session("HM11342000string")= "7"
	end if
	if Session("HM11342000") = "8" then 
		Session("HM11342000string")= "8"
	end if
	if Session("HM11342000") = "9" then 
		Session("HM11342000string")= "9"
	end if
	if Session("HM11342000") = "10" then 
		Session("HM11342000string")= "10"
	end if

	if Session("HM11343000") = "0" then 
		Session("HM11343000string")= "0"
	end if
	if Session("HM11343000") = "1" then 
		Session("HM11343000string")= "1"
	end if
	if Session("HM11343000") = "2" then 
		Session("HM11343000string")= "2"
	end if
	if Session("HM11343000") = "3" then 
		Session("HM11343000string")= "3"
	end if
	if Session("HM11343000") = "4" then 
		Session("HM11343000string")= "4"
	end if
	if Session("HM11343000") = "5" then 
		Session("HM11343000string")= "5"
	end if
	if Session("HM11343000") = "6" then 
		Session("HM11343000string")= "6"
	end if
	if Session("HM11343000") = "7" then 
		Session("HM11343000string")= "7"
	end if
	if Session("HM11343000") = "8" then 
		Session("HM11343000string")= "8"
	end if
	if Session("HM11343000") = "9" then 
		Session("HM11343000string")= "9"
	end if
	if Session("HM11343000") = "10" then 
		Session("HM11343000string")= "10"
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=40
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("HM10204000")="1" OR Session("HM10207000")="1" then
		Session("Page")="42"
		Response.Redirect "qualityoflifemaster.asp"
	else
	Session("QOLSectionStatus")="Completed"
	Session("Page")="0"
	Response.Redirect "qualityoflifemaster.asp"
	end if

	 <!--#include file="autosavefunction.asp"-->
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
<b>Part II.</b> How have your symptoms interfered with your life? Symptoms frequently interfere with how we feel and function. How much have your symptoms interfered with the following items in the last 24 hours:

	</div>
<br>

    <form action="qualityoflife41.asp" method="post" id="formQuestion" name="formQuestion">
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
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">Please select from 0 (symptoms did not interfere) to 10 (symptoms completely interfered) below for each item.</th>
				<th rowspan="2">0</th>
				<th rowspan="2">1</th>
				<th rowspan="2">2</th>
				<th rowspan="2">3</th>
				<th rowspan="2">4</th>
				<th rowspan="2">5</th>
				<th rowspan="2">6</th>
				<th rowspan="2">7</th>
				<th rowspan="2">8</th>
				<th rowspan="2">9</th>
				<th rowspan="2">10</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">

<tr>
<td>		<b>General activity?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" class="required" type="text" value="0" size="1" name="HM11338000" <%=strHM11338000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="1" size="1" name="HM11338000" <%=strHM11338000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="2" size="1" name="HM11338000" <%=strHM11338000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="3" size="1" name="HM11338000" <%=strHM11338000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="4" size="1" name="HM11338000" <%=strHM11338000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="5" size="1" name="HM11338000" <%=strHM11338000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="6" size="1" name="HM11338000" <%=strHM11338000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="7" size="1" name="HM11338000" <%=strHM11338000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="8" size="1" name="HM11338000" <%=strHM11338000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="9" size="1" name="HM11338000" <%=strHM11338000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11338000" type="text" value="10" size="1" name="HM11338000" <%=strHM11338000answer11%>></td>
</tr>

<tr>
<td>		<b>Mood?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" class="required" type="text" value="0" size="1" name="HM11339000" <%=strHM11339000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="1" size="1" name="HM11339000" <%=strHM11339000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="2" size="1" name="HM11339000" <%=strHM11339000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="3" size="1" name="HM11339000" <%=strHM11339000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="4" size="1" name="HM11339000" <%=strHM11339000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="5" size="1" name="HM11339000" <%=strHM11339000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="6" size="1" name="HM11339000" <%=strHM11339000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="7" size="1" name="HM11339000" <%=strHM11339000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="8" size="1" name="HM11339000" <%=strHM11339000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="9" size="1" name="HM11339000" <%=strHM11339000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11339000" type="text" value="10" size="1" name="HM11339000" <%=strHM11339000answer11%>></td>
</tr>


<tr>
<td>		<b>Work (including work around the house)?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" class="required" type="text" value="0" size="1" name="HM11340000" <%=strHM11340000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="1" size="1" name="HM11340000" <%=strHM11340000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="2" size="1" name="HM11340000" <%=strHM11340000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="3" size="1" name="HM11340000" <%=strHM11340000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="4" size="1" name="HM11340000" <%=strHM11340000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="5" size="1" name="HM11340000" <%=strHM11340000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="6" size="1" name="HM11340000" <%=strHM11340000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="7" size="1" name="HM11340000" <%=strHM11340000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="8" size="1" name="HM11340000" <%=strHM11340000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="9" size="1" name="HM11340000" <%=strHM11340000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11340000" type="text" value="10" size="1" name="HM11340000" <%=strHM11340000answer11%>></td>
</tr>

<tr>
<td>		<b>Relations with other people?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" class="required" type="text" value="0" size="1" name="HM11341000" <%=strHM11341000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="1" size="1" name="HM11341000" <%=strHM11341000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="2" size="1" name="HM11341000" <%=strHM11341000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="3" size="1" name="HM11341000" <%=strHM11341000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="4" size="1" name="HM11341000" <%=strHM11341000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="5" size="1" name="HM11341000" <%=strHM11341000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="6" size="1" name="HM11341000" <%=strHM11341000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="7" size="1" name="HM11341000" <%=strHM11341000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="8" size="1" name="HM11341000" <%=strHM11341000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="9" size="1" name="HM11341000" <%=strHM11341000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11341000" type="text" value="10" size="1" name="HM11341000" <%=strHM11341000answer11%>></td>
</tr>
<tr>
<td>		<b>Walking?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" class="required" type="text" value="0" size="1" name="HM11342000" <%=strHM11342000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="1" size="1" name="HM11342000" <%=strHM11342000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="2" size="1" name="HM11342000" <%=strHM11342000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="3" size="1" name="HM11342000" <%=strHM11342000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="4" size="1" name="HM11342000" <%=strHM11342000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="5" size="1" name="HM11342000" <%=strHM11342000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="6" size="1" name="HM11342000" <%=strHM11342000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="7" size="1" name="HM11342000" <%=strHM11342000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="8" size="1" name="HM11342000" <%=strHM11342000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="9" size="1" name="HM11342000" <%=strHM11342000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11342000" type="text" value="10" size="1" name="HM11342000" <%=strHM11342000answer11%>></td>
</tr>

<tr>
<td>		 <b>Enjoyment of life?</b></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" class="required" type="text" value="0" size="1" name="HM11343000" <%=strHM11343000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="1" size="1" name="HM11343000" <%=strHM11343000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="2" size="1" name="HM11343000" <%=strHM11343000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="3" size="1" name="HM11343000" <%=strHM11343000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="4" size="1" name="HM11343000" <%=strHM11343000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="5" size="1" name="HM11343000" <%=strHM11343000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="6" size="1" name="HM11343000" <%=strHM11343000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="7" size="1" name="HM11343000" <%=strHM11343000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="8" size="1" name="HM11343000" <%=strHM11343000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="9" size="1" name="HM11343000" <%=strHM11343000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11343000" type="text" value="10" size="1" name="HM11343000" <%=strHM11343000answer11%>></td>
</tr>



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
