
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11325000")="0" then
		strHM11325000answer1="checked"
	end if
	if Session("HM11325000")="1" then
		strHM11325000answer2="checked"
	end if
	if Session("HM11325000")="2" then
		strHM11325000answer3="checked"
	end if
	if Session("HM11325000")="3" then
		strHM11325000answer4="checked"
	end if
	if Session("HM11325000")="4" then
		strHM11325000answer5="checked"
	end if
	if Session("HM11325000")="5" then
		strHM11325000answer6="checked"
	end if
	if Session("HM11325000")="6" then
		strHM11325000answer7="checked"
	end if
	if Session("HM11325000")="7" then
		strHM11325000answer8="checked"
	end if
	if Session("HM11325000")="8" then
		strHM11325000answer9="checked"
	end if
	if Session("HM11325000")="9" then
		strHM11325000answer10="checked"
	end if
	if Session("HM11325000")="10" then
		strHM11325000answer11="checked"
	end if

	if Session("HM11326000")="0" then
		strHM11326000answer1="checked"
	end if
	if Session("HM11326000")="1" then
		strHM11326000answer2="checked"
	end if
	if Session("HM11326000")="2" then
		strHM11326000answer3="checked"
	end if
	if Session("HM11326000")="3" then
		strHM11326000answer4="checked"
	end if
	if Session("HM11326000")="4" then
		strHM11326000answer5="checked"
	end if
	if Session("HM11326000")="5" then
		strHM11326000answer6="checked"
	end if
	if Session("HM11326000")="6" then
		strHM11326000answer7="checked"
	end if
	if Session("HM11326000")="7" then
		strHM11326000answer8="checked"
	end if
	if Session("HM11326000")="8" then
		strHM11326000answer9="checked"
	end if
	if Session("HM11326000")="9" then
		strHM11326000answer10="checked"
	end if
	if Session("HM11326000")="10" then
		strHM11326000answer11="checked"
	end if


	if Session("HM11327000")="0" then
		strHM11327000answer1="checked"
	end if
	if Session("HM11327000")="1" then
		strHM11327000answer2="checked"
	end if
	if Session("HM11327000")="2" then
		strHM11327000answer3="checked"
	end if
	if Session("HM11327000")="3" then
		strHM11327000answer4="checked"
	end if
	if Session("HM11327000")="4" then
		strHM11327000answer5="checked"
	end if
	if Session("HM11327000")="5" then
		strHM11327000answer6="checked"
	end if
	if Session("HM11327000")="6" then
		strHM11327000answer7="checked"
	end if
	if Session("HM11327000")="7" then
		strHM11327000answer8="checked"
	end if
	if Session("HM11327000")="8" then
		strHM11327000answer9="checked"
	end if
	if Session("HM11327000")="9" then
		strHM11327000answer10="checked"
	end if
	if Session("HM11327000")="10" then
		strHM11327000answer11="checked"
	end if


	if Session("HM11328000")="0" then
		strHM11328000answer1="checked"
	end if
	if Session("HM11328000")="1" then
		strHM11328000answer2="checked"
	end if
	if Session("HM11328000")="2" then
		strHM11328000answer3="checked"
	end if
	if Session("HM11328000")="3" then
		strHM11328000answer4="checked"
	end if
	if Session("HM11328000")="4" then
		strHM11328000answer5="checked"
	end if
	if Session("HM11328000")="5" then
		strHM11328000answer6="checked"
	end if
	if Session("HM11328000")="6" then
		strHM11328000answer7="checked"
	end if
	if Session("HM11328000")="7" then
		strHM11328000answer8="checked"
	end if
	if Session("HM11328000")="8" then
		strHM11328000answer9="checked"
	end if
	if Session("HM11328000")="9" then
		strHM11328000answer10="checked"
	end if
	if Session("HM11328000")="10" then
		strHM11328000answer11="checked"
	end if

	if Session("HM11329000")="0" then
		strHM11329000answer1="checked"
	end if
	if Session("HM11329000")="1" then
		strHM11329000answer2="checked"
	end if
	if Session("HM11329000")="2" then
		strHM11329000answer3="checked"
	end if
	if Session("HM11329000")="3" then
		strHM11329000answer4="checked"
	end if
	if Session("HM11329000")="4" then
		strHM11329000answer5="checked"
	end if
	if Session("HM11329000")="5" then
		strHM11329000answer6="checked"
	end if
	if Session("HM11329000")="6" then
		strHM11329000answer7="checked"
	end if
	if Session("HM11329000")="7" then
		strHM11329000answer8="checked"
	end if
	if Session("HM11329000")="8" then
		strHM11329000answer9="checked"
	end if
	if Session("HM11329000")="9" then
		strHM11329000answer10="checked"
	end if
	if Session("HM11329000")="10" then
		strHM11329000answer11="checked"
	end if

	if Session("HM11330000")="0" then
		strHM11330000answer1="checked"
	end if
	if Session("HM11330000")="1" then
		strHM11330000answer2="checked"
	end if
	if Session("HM11330000")="2" then
		strHM11330000answer3="checked"
	end if
	if Session("HM11330000")="3" then
		strHM11330000answer4="checked"
	end if
	if Session("HM11330000")="4" then
		strHM11330000answer5="checked"
	end if
	if Session("HM11330000")="5" then
		strHM11330000answer6="checked"
	end if
	if Session("HM11330000")="6" then
		strHM11330000answer7="checked"
	end if
	if Session("HM11330000")="7" then
		strHM11330000answer8="checked"
	end if
	if Session("HM11330000")="8" then
		strHM11330000answer9="checked"
	end if
	if Session("HM11330000")="9" then
		strHM11330000answer10="checked"
	end if
	if Session("HM11330000")="10" then
		strHM11330000answer11="checked"
	end if

	if Session("HM11331000")="0" then
		strHM11331000answer1="checked"
	end if
	if Session("HM11331000")="1" then
		strHM11331000answer2="checked"
	end if
	if Session("HM11331000")="2" then
		strHM11331000answer3="checked"
	end if
	if Session("HM11331000")="3" then
		strHM11331000answer4="checked"
	end if
	if Session("HM11331000")="4" then
		strHM11331000answer5="checked"
	end if
	if Session("HM11331000")="5" then
		strHM11331000answer6="checked"
	end if
	if Session("HM11331000")="6" then
		strHM11331000answer7="checked"
	end if
	if Session("HM11331000")="7" then
		strHM11331000answer8="checked"
	end if
	if Session("HM11331000")="8" then
		strHM11331000answer9="checked"
	end if
	if Session("HM11331000")="9" then
		strHM11331000answer10="checked"
	end if
	if Session("HM11331000")="10" then
		strHM11331000answer11="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11325000string")= ""
	Session("HM11326000string")= ""
	Session("HM11327000string")= ""
	Session("HM11328000string")= ""
	Session("HM11329000string")= ""
	Session("HM11330000string")= ""
	Session("HM11331000string")= ""

	Session("HM11325000") = Request.Form("HM11325000")
	Session("HM11326000") = Request.Form("HM11326000")
	Session("HM11327000") = Request.Form("HM11327000")
	Session("HM11328000") = Request.Form("HM11328000")
	Session("HM11329000") = Request.Form("HM11329000")
	Session("HM11330000") = Request.Form("HM11330000")
	Session("HM11331000") = Request.Form("HM11331000")


	if Session("HM11325000") = "0" then 
		Session("HM11325000string")= "0"
	end if
	if Session("HM11325000") = "1" then 
		Session("HM11325000string")= "1"
	end if
	if Session("HM11325000") = "2" then 
		Session("HM11325000string")= "2"
	end if
	if Session("HM11325000") = "3" then 
		Session("HM11325000string")= "3"
	end if
	if Session("HM11325000") = "4" then 
		Session("HM11325000string")= "4"
	end if
	if Session("HM11325000") = "5" then 
		Session("HM11325000string")= "5"
	end if
	if Session("HM11325000") = "6" then 
		Session("HM11325000string")= "6"
	end if
	if Session("HM11325000") = "7" then 
		Session("HM11325000string")= "7"
	end if
	if Session("HM11325000") = "8" then 
		Session("HM11325000string")= "8"
	end if
	if Session("HM11325000") = "9" then 
		Session("HM11325000string")= "9"
	end if
	if Session("HM11325000") = "10" then 
		Session("HM11325000string")= "10"
	end if

	if Session("HM11326000") = "0" then 
		Session("HM11326000string")= "0"
	end if
	if Session("HM11326000") = "1" then 
		Session("HM11326000string")= "1"
	end if
	if Session("HM11326000") = "2" then 
		Session("HM11326000string")= "2"
	end if
	if Session("HM11326000") = "3" then 
		Session("HM11326000string")= "3"
	end if
	if Session("HM11326000") = "4" then 
		Session("HM11326000string")= "4"
	end if
	if Session("HM11326000") = "5" then 
		Session("HM11326000string")= "5"
	end if
	if Session("HM11326000") = "6" then 
		Session("HM11326000string")= "6"
	end if
	if Session("HM11326000") = "7" then 
		Session("HM11326000string")= "7"
	end if
	if Session("HM11326000") = "8" then 
		Session("HM11326000string")= "8"
	end if
	if Session("HM11326000") = "9" then 
		Session("HM11326000string")= "9"
	end if
	if Session("HM11326000") = "10" then 
		Session("HM11326000string")= "10"
	end if

	if Session("HM11327000") = "0" then 
		Session("HM11327000string")= "0"
	end if
	if Session("HM11327000") = "1" then 
		Session("HM11327000string")= "1"
	end if
	if Session("HM11327000") = "2" then 
		Session("HM11327000string")= "2"
	end if
	if Session("HM11327000") = "3" then 
		Session("HM11327000string")= "3"
	end if
	if Session("HM11327000") = "4" then 
		Session("HM11327000string")= "4"
	end if
	if Session("HM11327000") = "5" then 
		Session("HM11327000string")= "5"
	end if
	if Session("HM11327000") = "6" then 
		Session("HM11327000string")= "6"
	end if
	if Session("HM11327000") = "7" then 
		Session("HM11327000string")= "7"
	end if
	if Session("HM11327000") = "8" then 
		Session("HM11327000string")= "8"
	end if
	if Session("HM11327000") = "9" then 
		Session("HM11327000string")= "9"
	end if
	if Session("HM11327000") = "10" then 
		Session("HM11327000string")= "10"
	end if

	if Session("HM11328000") = "0" then 
		Session("HM11328000string")= "0"
	end if
	if Session("HM11328000") = "1" then 
		Session("HM11328000string")= "1"
	end if
	if Session("HM11328000") = "2" then 
		Session("HM11328000string")= "2"
	end if
	if Session("HM11328000") = "3" then 
		Session("HM11328000string")= "3"
	end if
	if Session("HM11328000") = "4" then 
		Session("HM11328000string")= "4"
	end if
	if Session("HM11328000") = "5" then 
		Session("HM11328000string")= "5"
	end if
	if Session("HM11328000") = "6" then 
		Session("HM11328000string")= "6"
	end if
	if Session("HM11328000") = "7" then 
		Session("HM11328000string")= "7"
	end if
	if Session("HM11328000") = "8" then 
		Session("HM11328000string")= "8"
	end if
	if Session("HM11328000") = "9" then 
		Session("HM11328000string")= "9"
	end if
	if Session("HM11328000") = "10" then 
		Session("HM11328000string")= "10"
	end if
	
	if Session("HM11329000") = "0" then 
		Session("HM11329000string")= "0"
	end if
	if Session("HM11329000") = "1" then 
		Session("HM11329000string")= "1"
	end if
	if Session("HM11329000") = "2" then 
		Session("HM11329000string")= "2"
	end if
	if Session("HM11329000") = "3" then 
		Session("HM11329000string")= "3"
	end if
	if Session("HM11329000") = "4" then 
		Session("HM11329000string")= "4"
	end if
	if Session("HM11329000") = "5" then 
		Session("HM11329000string")= "5"
	end if
	if Session("HM11329000") = "6" then 
		Session("HM11329000string")= "6"
	end if
	if Session("HM11329000") = "7" then 
		Session("HM11329000string")= "7"
	end if
	if Session("HM11329000") = "8" then 
		Session("HM11329000string")= "8"
	end if
	if Session("HM11329000") = "9" then 
		Session("HM11329000string")= "9"
	end if
	if Session("HM11329000") = "10" then 
		Session("HM11329000string")= "10"
	end if

	if Session("HM11330000") = "0" then 
		Session("HM11330000string")= "0"
	end if
	if Session("HM11330000") = "1" then 
		Session("HM11330000string")= "1"
	end if
	if Session("HM11330000") = "2" then 
		Session("HM11330000string")= "2"
	end if
	if Session("HM11330000") = "3" then 
		Session("HM11330000string")= "3"
	end if
	if Session("HM11330000") = "4" then 
		Session("HM11330000string")= "4"
	end if
	if Session("HM11330000") = "5" then 
		Session("HM11330000string")= "5"
	end if
	if Session("HM11330000") = "6" then 
		Session("HM11330000string")= "6"
	end if
	if Session("HM11330000") = "7" then 
		Session("HM11330000string")= "7"
	end if
	if Session("HM11330000") = "8" then 
		Session("HM11330000string")= "8"
	end if
	if Session("HM11330000") = "9" then 
		Session("HM11330000string")= "9"
	end if
	if Session("HM11330000") = "10" then 
		Session("HM11330000string")= "10"
	end if

	if Session("HM11331000") = "0" then 
		Session("HM11331000string")= "0"
	end if
	if Session("HM11331000") = "1" then 
		Session("HM11331000string")= "1"
	end if
	if Session("HM11331000") = "2" then 
		Session("HM11331000string")= "2"
	end if
	if Session("HM11331000") = "3" then 
		Session("HM11331000string")= "3"
	end if
	if Session("HM11331000") = "4" then 
		Session("HM11331000string")= "4"
	end if
	if Session("HM11331000") = "5" then 
		Session("HM11331000string")= "5"
	end if
	if Session("HM11331000") = "6" then 
		Session("HM11331000string")= "6"
	end if
	if Session("HM11331000") = "7" then 
		Session("HM11331000string")= "7"
	end if
	if Session("HM11331000") = "8" then 
		Session("HM11331000string")= "8"
	end if
	if Session("HM11331000") = "9" then 
		Session("HM11331000string")= "9"
	end if
	if Session("HM11331000") = "10" then 
		Session("HM11331000string")= "10"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=38
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="40"
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

    <form action="qualityoflife39.asp" method="post" id="formQuestion" name="formQuestion">
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
<td>		Your problem with <b>lack of appetite</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11325000" class="required" type="text" value="0" size="1" name="HM11325000" <%=strHM11325000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="1" size="1" name="HM11325000" <%=strHM11325000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="2" size="1" name="HM11325000" <%=strHM11325000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="3" size="1" name="HM11325000" <%=strHM11325000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="4" size="1" name="HM11325000" <%=strHM11325000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="5" size="1" name="HM11325000" <%=strHM11325000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="6" size="1" name="HM11325000" <%=strHM11325000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="7" size="1" name="HM11325000" <%=strHM11325000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="8" size="1" name="HM11325000" <%=strHM11325000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="9" size="1" name="HM11325000" <%=strHM11325000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11325000" type="text" value="10" size="1" name="HM11325000" <%=strHM11325000answer11%>></td>
</tr>

<tr>
<td>		Your feeling <b>drowsy (sleepy)</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11326000" class="required" type="text" value="0" size="1" name="HM11326000" <%=strHM11326000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="1" size="1" name="HM11326000" <%=strHM11326000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="2" size="1" name="HM11326000" <%=strHM11326000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="3" size="1" name="HM11326000" <%=strHM11326000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="4" size="1" name="HM11326000" <%=strHM11326000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="5" size="1" name="HM11326000" <%=strHM11326000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="6" size="1" name="HM11326000" <%=strHM11326000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="7" size="1" name="HM11326000" <%=strHM11326000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="8" size="1" name="HM11326000" <%=strHM11326000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="9" size="1" name="HM11326000" <%=strHM11326000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11326000" type="text" value="10" size="1" name="HM11326000" <%=strHM11326000answer11%>></td>
</tr>
<tr>
<td>		Your having a <b>dry mouth</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11327000" class="required" type="text" value="0" size="1" name="HM11327000" <%=strHM11327000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="1" size="1" name="HM11327000" <%=strHM11327000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="2" size="1" name="HM11327000" <%=strHM11327000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="3" size="1" name="HM11327000" <%=strHM11327000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="4" size="1" name="HM11327000" <%=strHM11327000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="5" size="1" name="HM11327000" <%=strHM11327000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="6" size="1" name="HM11327000" <%=strHM11327000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="7" size="1" name="HM11327000" <%=strHM11327000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="8" size="1" name="HM11327000" <%=strHM11327000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="9" size="1" name="HM11327000" <%=strHM11327000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11327000" type="text" value="10" size="1" name="HM11327000" <%=strHM11327000answer11%>></td>



</tr>

<tr>
<td>		Your feeling <b>sad</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11328000" class="required" type="text" value="0" size="1" name="HM11328000" <%=strHM11328000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="1" size="1" name="HM11328000" <%=strHM11328000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="2" size="1" name="HM11328000" <%=strHM11328000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="3" size="1" name="HM11328000" <%=strHM11328000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="4" size="1" name="HM11328000" <%=strHM11328000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="5" size="1" name="HM11328000" <%=strHM11328000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="6" size="1" name="HM11328000" <%=strHM11328000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="7" size="1" name="HM11328000" <%=strHM11328000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="8" size="1" name="HM11328000" <%=strHM11328000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="9" size="1" name="HM11328000" <%=strHM11328000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11328000" type="text" value="10" size="1" name="HM11328000" <%=strHM11328000answer11%>></td>
</tr>

<tr>
<td>		Your <b>vomiting</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11329000" class="required" type="text" value="0" size="1" name="HM11329000" <%=strHM11329000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="1" size="1" name="HM11329000" <%=strHM11329000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="2" size="1" name="HM11329000" <%=strHM11329000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="3" size="1" name="HM11329000" <%=strHM11329000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="4" size="1" name="HM11329000" <%=strHM11329000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="5" size="1" name="HM11329000" <%=strHM11329000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="6" size="1" name="HM11329000" <%=strHM11329000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="7" size="1" name="HM11329000" <%=strHM11329000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="8" size="1" name="HM11329000" <%=strHM11329000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="9" size="1" name="HM11329000" <%=strHM11329000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11329000" type="text" value="10" size="1" name="HM11329000" <%=strHM11329000answer11%>></td>
</tr>

<tr>
<td>		Your <b>numbness and tingling</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11330000" class="required" type="text" value="0" size="1" name="HM11330000" <%=strHM11330000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="1" size="1" name="HM11330000" <%=strHM11330000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="2" size="1" name="HM11330000" <%=strHM11330000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="3" size="1" name="HM11330000" <%=strHM11330000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="4" size="1" name="HM11330000" <%=strHM11330000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="5" size="1" name="HM11330000" <%=strHM11330000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="6" size="1" name="HM11330000" <%=strHM11330000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="7" size="1" name="HM11330000" <%=strHM11330000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="8" size="1" name="HM11330000" <%=strHM11330000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="9" size="1" name="HM11330000" <%=strHM11330000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11330000" type="text" value="10" size="1" name="HM11330000" <%=strHM11330000answer11%>></td>
</tr>
<tr>
<td>		Your <b>diarrhea</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11331000" class="required" type="text" value="0" size="1" name="HM11331000" <%=strHM11331000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="1" size="1" name="HM11331000" <%=strHM11331000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="2" size="1" name="HM11331000" <%=strHM11331000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="3" size="1" name="HM11331000" <%=strHM11331000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="4" size="1" name="HM11331000" <%=strHM11331000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="5" size="1" name="HM11331000" <%=strHM11331000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="6" size="1" name="HM11331000" <%=strHM11331000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="7" size="1" name="HM11331000" <%=strHM11331000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="8" size="1" name="HM11331000" <%=strHM11331000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="9" size="1" name="HM11331000" <%=strHM11331000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11331000" type="text" value="10" size="1" name="HM11331000" <%=strHM11331000answer11%>></td>
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
