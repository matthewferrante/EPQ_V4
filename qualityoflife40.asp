
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("HM11332000")="0" then
		strHM11332000answer1="checked"
	end if
	if Session("HM11332000")="1" then
		strHM11332000answer2="checked"
	end if
	if Session("HM11332000")="2" then
		strHM11332000answer3="checked"
	end if
	if Session("HM11332000")="3" then
		strHM11332000answer4="checked"
	end if
	if Session("HM11332000")="4" then
		strHM11332000answer5="checked"
	end if
	if Session("HM11332000")="5" then
		strHM11332000answer6="checked"
	end if
	if Session("HM11332000")="6" then
		strHM11332000answer7="checked"
	end if
	if Session("HM11332000")="7" then
		strHM11332000answer8="checked"
	end if
	if Session("HM11332000")="8" then
		strHM11332000answer9="checked"
	end if
	if Session("HM11332000")="9" then
		strHM11332000answer10="checked"
	end if
	if Session("HM11332000")="10" then
		strHM11332000answer11="checked"
	end if

	if Session("HM11333000")="0" then
		strHM11333000answer1="checked"
	end if
	if Session("HM11333000")="1" then
		strHM11333000answer2="checked"
	end if
	if Session("HM11333000")="2" then
		strHM11333000answer3="checked"
	end if
	if Session("HM11333000")="3" then
		strHM11333000answer4="checked"
	end if
	if Session("HM11333000")="4" then
		strHM11333000answer5="checked"
	end if
	if Session("HM11333000")="5" then
		strHM11333000answer6="checked"
	end if
	if Session("HM11333000")="6" then
		strHM11333000answer7="checked"
	end if
	if Session("HM11333000")="7" then
		strHM11333000answer8="checked"
	end if
	if Session("HM11333000")="8" then
		strHM11333000answer9="checked"
	end if
	if Session("HM11333000")="9" then
		strHM11333000answer10="checked"
	end if
	if Session("HM11333000")="10" then
		strHM11333000answer11="checked"
	end if

	if Session("HM11334000")="0" then
		strHM11334000answer1="checked"
	end if
	if Session("HM11334000")="1" then
		strHM11334000answer2="checked"
	end if
	if Session("HM11334000")="2" then
		strHM11334000answer3="checked"
	end if
	if Session("HM11334000")="3" then
		strHM11334000answer4="checked"
	end if
	if Session("HM11334000")="4" then
		strHM11334000answer5="checked"
	end if
	if Session("HM11334000")="5" then
		strHM11334000answer6="checked"
	end if
	if Session("HM11334000")="6" then
		strHM11334000answer7="checked"
	end if
	if Session("HM11334000")="7" then
		strHM11334000answer8="checked"
	end if
	if Session("HM11334000")="8" then
		strHM11334000answer9="checked"
	end if
	if Session("HM11334000")="9" then
		strHM11334000answer10="checked"
	end if
	if Session("HM11334000")="10" then
		strHM11334000answer11="checked"
	end if

	if Session("HM11335000")="0" then
		strHM11335000answer1="checked"
	end if
	if Session("HM11335000")="1" then
		strHM11335000answer2="checked"
	end if
	if Session("HM11335000")="2" then
		strHM11335000answer3="checked"
	end if
	if Session("HM11335000")="3" then
		strHM11335000answer4="checked"
	end if
	if Session("HM11335000")="4" then
		strHM11335000answer5="checked"
	end if
	if Session("HM11335000")="5" then
		strHM11335000answer6="checked"
	end if
	if Session("HM11335000")="6" then
		strHM11335000answer7="checked"
	end if
	if Session("HM11335000")="7" then
		strHM11335000answer8="checked"
	end if
	if Session("HM11335000")="8" then
		strHM11335000answer9="checked"
	end if
	if Session("HM11335000")="9" then
		strHM11335000answer10="checked"
	end if
	if Session("HM11335000")="10" then
		strHM11335000answer11="checked"
	end if


	if Session("HM11336000")="0" then
		strHM11336000answer1="checked"
	end if
	if Session("HM11336000")="1" then
		strHM11336000answer2="checked"
	end if
	if Session("HM11336000")="2" then
		strHM11336000answer3="checked"
	end if
	if Session("HM11336000")="3" then
		strHM11336000answer4="checked"
	end if
	if Session("HM11336000")="4" then
		strHM11336000answer5="checked"
	end if
	if Session("HM11336000")="5" then
		strHM11336000answer6="checked"
	end if
	if Session("HM11336000")="6" then
		strHM11336000answer7="checked"
	end if
	if Session("HM11336000")="7" then
		strHM11336000answer8="checked"
	end if
	if Session("HM11336000")="8" then
		strHM11336000answer9="checked"
	end if
	if Session("HM11336000")="9" then
		strHM11336000answer10="checked"
	end if
	if Session("HM11336000")="10" then
		strHM11336000answer11="checked"
	end if


	if Session("HM11337000")="0" then
		strHM11337000answer1="checked"
	end if
	if Session("HM11337000")="1" then
		strHM11337000answer2="checked"
	end if
	if Session("HM11337000")="2" then
		strHM11337000answer3="checked"
	end if
	if Session("HM11337000")="3" then
		strHM11337000answer4="checked"
	end if
	if Session("HM11337000")="4" then
		strHM11337000answer5="checked"
	end if
	if Session("HM11337000")="5" then
		strHM11337000answer6="checked"
	end if
	if Session("HM11337000")="6" then
		strHM11337000answer7="checked"
	end if
	if Session("HM11337000")="7" then
		strHM11337000answer8="checked"
	end if
	if Session("HM11337000")="8" then
		strHM11337000answer9="checked"
	end if
	if Session("HM11337000")="9" then
		strHM11337000answer10="checked"
	end if
	if Session("HM11337000")="10" then
		strHM11337000answer11="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("HM11332000string")= ""
	Session("HM11333000string")= ""
	Session("HM11334000string")= ""
	Session("HM11335000string")= ""
	Session("HM11336000string")= ""
	Session("HM11337000string")= ""


	Session("HM11332000") = Request.Form("HM11332000")
	Session("HM11333000") = Request.Form("HM11333000")
	Session("HM11334000") = Request.Form("HM11334000")
	Session("HM11335000") = Request.Form("HM11335000")
	Session("HM11336000") = Request.Form("HM11336000")
	Session("HM11337000") = Request.Form("HM11337000")


	if Session("HM11332000") = "0" then 
		Session("HM11332000string")= "0"
	end if
	if Session("HM11332000") = "1" then 
		Session("HM11332000string")= "1"
	end if
	if Session("HM11332000") = "2" then 
		Session("HM11332000string")= "2"
	end if
	if Session("HM11332000") = "3" then 
		Session("HM11332000string")= "3"
	end if
	if Session("HM11332000") = "4" then 
		Session("HM11332000string")= "4"
	end if
	if Session("HM11332000") = "5" then 
		Session("HM11332000string")= "5"
	end if
	if Session("HM11332000") = "6" then 
		Session("HM11332000string")= "6"
	end if
	if Session("HM11332000") = "7" then 
		Session("HM11332000string")= "7"
	end if
	if Session("HM11332000") = "8" then 
		Session("HM11332000string")= "8"
	end if
	if Session("HM11332000") = "9" then 
		Session("HM11332000string")= "9"
	end if
	if Session("HM11332000") = "10" then 
		Session("HM11332000string")= "10"
	end if


	if Session("HM11333000") = "0" then 
		Session("HM11333000string")= "0"
	end if
	if Session("HM11333000") = "1" then 
		Session("HM11333000string")= "1"
	end if
	if Session("HM11333000") = "2" then 
		Session("HM11333000string")= "2"
	end if
	if Session("HM11333000") = "3" then 
		Session("HM11333000string")= "3"
	end if
	if Session("HM11333000") = "4" then 
		Session("HM11333000string")= "4"
	end if
	if Session("HM11333000") = "5" then 
		Session("HM11333000string")= "5"
	end if
	if Session("HM11333000") = "6" then 
		Session("HM11333000string")= "6"
	end if
	if Session("HM11333000") = "7" then 
		Session("HM11333000string")= "7"
	end if
	if Session("HM11333000") = "8" then 
		Session("HM11333000string")= "8"
	end if
	if Session("HM11333000") = "9" then 
		Session("HM11333000string")= "9"
	end if
	if Session("HM11333000") = "10" then 
		Session("HM11333000string")= "10"
	end if

	if Session("HM11334000") = "0" then 
		Session("HM11334000string")= "0"
	end if
	if Session("HM11334000") = "1" then 
		Session("HM11334000string")= "1"
	end if
	if Session("HM11334000") = "2" then 
		Session("HM11334000string")= "2"
	end if
	if Session("HM11334000") = "3" then 
		Session("HM11334000string")= "3"
	end if
	if Session("HM11334000") = "4" then 
		Session("HM11334000string")= "4"
	end if
	if Session("HM11334000") = "5" then 
		Session("HM11334000string")= "5"
	end if
	if Session("HM11334000") = "6" then 
		Session("HM11334000string")= "6"
	end if
	if Session("HM11334000") = "7" then 
		Session("HM11334000string")= "7"
	end if
	if Session("HM11334000") = "8" then 
		Session("HM11334000string")= "8"
	end if
	if Session("HM11334000") = "9" then 
		Session("HM11334000string")= "9"
	end if
	if Session("HM11334000") = "10" then 
		Session("HM11334000string")= "10"
	end if

	if Session("HM11335000") = "0" then 
		Session("HM11335000string")= "0"
	end if
	if Session("HM11335000") = "1" then 
		Session("HM11335000string")= "1"
	end if
	if Session("HM11335000") = "2" then 
		Session("HM11335000string")= "2"
	end if
	if Session("HM11335000") = "3" then 
		Session("HM11335000string")= "3"
	end if
	if Session("HM11335000") = "4" then 
		Session("HM11335000string")= "4"
	end if
	if Session("HM11335000") = "5" then 
		Session("HM11335000string")= "5"
	end if
	if Session("HM11335000") = "6" then 
		Session("HM11335000string")= "6"
	end if
	if Session("HM11335000") = "7" then 
		Session("HM11335000string")= "7"
	end if
	if Session("HM11335000") = "8" then 
		Session("HM11335000string")= "8"
	end if
	if Session("HM11335000") = "9" then 
		Session("HM11335000string")= "9"
	end if
	if Session("HM11335000") = "10" then 
		Session("HM11335000string")= "10"
	end if

	if Session("HM11336000") = "0" then 
		Session("HM11336000string")= "0"
	end if
	if Session("HM11336000") = "1" then 
		Session("HM11336000string")= "1"
	end if
	if Session("HM11336000") = "2" then 
		Session("HM11336000string")= "2"
	end if
	if Session("HM11336000") = "3" then 
		Session("HM11336000string")= "3"
	end if
	if Session("HM11336000") = "4" then 
		Session("HM11336000string")= "4"
	end if
	if Session("HM11336000") = "5" then 
		Session("HM11336000string")= "5"
	end if
	if Session("HM11336000") = "6" then 
		Session("HM11336000string")= "6"
	end if
	if Session("HM11336000") = "7" then 
		Session("HM11336000string")= "7"
	end if
	if Session("HM11336000") = "8" then 
		Session("HM11336000string")= "8"
	end if
	if Session("HM11336000") = "9" then 
		Session("HM11336000string")= "9"
	end if
	if Session("HM11336000") = "10" then 
		Session("HM11336000string")= "10"
	end if

	if Session("HM11337000") = "0" then 
		Session("HM11337000string")= "0"
	end if
	if Session("HM11337000") = "1" then 
		Session("HM11337000string")= "1"
	end if
	if Session("HM11337000") = "2" then 
		Session("HM11337000string")= "2"
	end if
	if Session("HM11337000") = "3" then 
		Session("HM11337000string")= "3"
	end if
	if Session("HM11337000") = "4" then 
		Session("HM11337000string")= "4"
	end if
	if Session("HM11337000") = "5" then 
		Session("HM11337000string")= "5"
	end if
	if Session("HM11337000") = "6" then 
		Session("HM11337000string")= "6"
	end if
	if Session("HM11337000") = "7" then 
		Session("HM11337000string")= "7"
	end if
	if Session("HM11337000") = "8" then 
		Session("HM11337000string")= "8"
	end if
	if Session("HM11337000") = "9" then 
		Session("HM11337000string")= "9"
	end if
	if Session("HM11337000") = "10" then 
		Session("HM11337000string")= "10"
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=39
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="41"
	Response.Redirect "qualityoflifemaster.asp"
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
<b>Part I.</b> How <b>severe</b> are your symptoms?<br>
People with cancer frequently have symptoms that are caused by their disease or by their treatment.
We ask you to rate how severe the following symptoms have been in the <b><i>last 24 hours</b></i>.

	</div>
<br>

    <form action="qualityoflife40.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th rowspan="2">Please select from 0 (symptom has not been present) to 10 (the symptom was as bad as you can imagine it could be) below for each item.</th>
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
<td>		Your <b>swelling of hands, legs, feet, abdomen or around your eyes</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11332000" class="required" type="text" value="0" size="1" name="HM11332000" <%=strHM11332000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="1" size="1" name="HM11332000" <%=strHM11332000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="2" size="1" name="HM11332000" <%=strHM11332000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="3" size="1" name="HM11332000" <%=strHM11332000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="4" size="1" name="HM11332000" <%=strHM11332000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="5" size="1" name="HM11332000" <%=strHM11332000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="6" size="1" name="HM11332000" <%=strHM11332000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="7" size="1" name="HM11332000" <%=strHM11332000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="8" size="1" name="HM11332000" <%=strHM11332000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="9" size="1" name="HM11332000" <%=strHM11332000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11332000" type="text" value="10" size="1" name="HM11332000" <%=strHM11332000answer11%>></td>
</tr>

<tr>
<td>		Your <b>rash or skin change</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11333000" class="required" type="text" value="0" size="1" name="HM11333000" <%=strHM11333000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="1" size="1" name="HM11333000" <%=strHM11333000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="2" size="1" name="HM11333000" <%=strHM11333000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="3" size="1" name="HM11333000" <%=strHM11333000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="4" size="1" name="HM11333000" <%=strHM11333000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="5" size="1" name="HM11333000" <%=strHM11333000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="6" size="1" name="HM11333000" <%=strHM11333000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="7" size="1" name="HM11333000" <%=strHM11333000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="8" size="1" name="HM11333000" <%=strHM11333000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="9" size="1" name="HM11333000" <%=strHM11333000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11333000" type="text" value="10" size="1" name="HM11333000" <%=strHM11333000answer11%>></td>
</tr>


<tr>
<td>		Your <b>muscle soreness or cramping</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11334000" class="required" type="text" value="0" size="1" name="HM11334000" <%=strHM11334000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="1" size="1" name="HM11334000" <%=strHM11334000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="2" size="1" name="HM11334000" <%=strHM11334000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="3" size="1" name="HM11334000" <%=strHM11334000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="4" size="1" name="HM11334000" <%=strHM11334000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="5" size="1" name="HM11334000" <%=strHM11334000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="6" size="1" name="HM11334000" <%=strHM11334000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="7" size="1" name="HM11334000" <%=strHM11334000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="8" size="1" name="HM11334000" <%=strHM11334000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="9" size="1" name="HM11334000" <%=strHM11334000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11334000" type="text" value="10" size="1" name="HM11334000" <%=strHM11334000answer11%>></td>
</tr>

<tr>
<td>		Your <b>bruising easily or bleeding</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11335000" class="required" type="text" value="0" size="1" name="HM11335000" <%=strHM11335000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="1" size="1" name="HM11335000" <%=strHM11335000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="2" size="1" name="HM11335000" <%=strHM11335000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="3" size="1" name="HM11335000" <%=strHM11335000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="4" size="1" name="HM11335000" <%=strHM11335000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="5" size="1" name="HM11335000" <%=strHM11335000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="6" size="1" name="HM11335000" <%=strHM11335000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="7" size="1" name="HM11335000" <%=strHM11335000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="8" size="1" name="HM11335000" <%=strHM11335000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="9" size="1" name="HM11335000" <%=strHM11335000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11335000" type="text" value="10" size="1" name="HM11335000" <%=strHM11335000answer11%>></td>
</tr>
<tr>
<td>		Your <b>feeling of malaise (not feeling well)</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11336000" class="required" type="text" value="0" size="1" name="HM11336000" <%=strHM11336000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="1" size="1" name="HM11336000" <%=strHM11336000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="2" size="1" name="HM11336000" <%=strHM11336000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="3" size="1" name="HM11336000" <%=strHM11336000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="4" size="1" name="HM11336000" <%=strHM11336000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="5" size="1" name="HM11336000" <%=strHM11336000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="6" size="1" name="HM11336000" <%=strHM11336000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="7" size="1" name="HM11336000" <%=strHM11336000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="8" size="1" name="HM11336000" <%=strHM11336000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="9" size="1" name="HM11336000" <%=strHM11336000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11336000" type="text" value="10" size="1" name="HM11336000" <%=strHM11336000answer11%>></td>
</tr>

<tr>
<td>		Your <b>headache</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11337000" class="required" type="text" value="0" size="1" name="HM11337000" <%=strHM11337000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="1" size="1" name="HM11337000" <%=strHM11337000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="2" size="1" name="HM11337000" <%=strHM11337000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="3" size="1" name="HM11337000" <%=strHM11337000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="4" size="1" name="HM11337000" <%=strHM11337000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="5" size="1" name="HM11337000" <%=strHM11337000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="6" size="1" name="HM11337000" <%=strHM11337000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="7" size="1" name="HM11337000" <%=strHM11337000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="8" size="1" name="HM11337000" <%=strHM11337000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="9" size="1" name="HM11337000" <%=strHM11337000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11337000" type="text" value="10" size="1" name="HM11337000" <%=strHM11337000answer11%>></td>
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
