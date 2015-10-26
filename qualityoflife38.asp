
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11318000")="0" then
		strHM11318000answer1="checked"
	end if
	if Session("HM11318000")="1" then
		strHM11318000answer2="checked"
	end if
	if Session("HM11318000")="2" then
		strHM11318000answer3="checked"
	end if
	if Session("HM11318000")="3" then
		strHM11318000answer4="checked"
	end if
	if Session("HM11318000")="4" then
		strHM11318000answer5="checked"
	end if
	if Session("HM11318000")="5" then
		strHM11318000answer6="checked"
	end if
	if Session("HM11318000")="6" then
		strHM11318000answer7="checked"
	end if
	if Session("HM11318000")="7" then
		strHM11318000answer8="checked"
	end if
	if Session("HM11318000")="8" then
		strHM11318000answer9="checked"
	end if
	if Session("HM11318000")="9" then
		strHM11318000answer10="checked"
	end if
	if Session("HM11318000")="10" then
		strHM11318000answer11="checked"
	end if


	if Session("HM11319000")="0" then
		strHM11319000answer1="checked"
	end if
	if Session("HM11319000")="1" then
		strHM11319000answer2="checked"
	end if
	if Session("HM11319000")="2" then
		strHM11319000answer3="checked"
	end if
	if Session("HM11319000")="3" then
		strHM11319000answer4="checked"
	end if
	if Session("HM11319000")="4" then
		strHM11319000answer5="checked"
	end if
	if Session("HM11319000")="5" then
		strHM11319000answer6="checked"
	end if
	if Session("HM11319000")="6" then
		strHM11319000answer7="checked"
	end if
	if Session("HM11319000")="7" then
		strHM11319000answer8="checked"
	end if
	if Session("HM11319000")="8" then
		strHM11319000answer9="checked"
	end if
	if Session("HM11319000")="9" then
		strHM11319000answer10="checked"
	end if
	if Session("HM11319000")="10" then
		strHM11319000answer11="checked"
	end if


	if Session("HM11320000")="0" then
		strHM11320000answer1="checked"
	end if
	if Session("HM11320000")="1" then
		strHM11320000answer2="checked"
	end if
	if Session("HM11320000")="2" then
		strHM11320000answer3="checked"
	end if
	if Session("HM11320000")="3" then
		strHM11320000answer4="checked"
	end if
	if Session("HM11320000")="4" then
		strHM11320000answer5="checked"
	end if
	if Session("HM11320000")="5" then
		strHM11320000answer6="checked"
	end if
	if Session("HM11320000")="6" then
		strHM11320000answer7="checked"
	end if
	if Session("HM11320000")="7" then
		strHM11320000answer8="checked"
	end if
	if Session("HM11320000")="8" then
		strHM11320000answer9="checked"
	end if
	if Session("HM11320000")="9" then
		strHM11320000answer10="checked"
	end if
	if Session("HM11320000")="10" then
		strHM11320000answer11="checked"
	end if

	if Session("HM11321000")="0" then
		strHM11321000answer1="checked"
	end if
	if Session("HM11321000")="1" then
		strHM11321000answer2="checked"
	end if
	if Session("HM11321000")="2" then
		strHM11321000answer3="checked"
	end if
	if Session("HM11321000")="3" then
		strHM11321000answer4="checked"
	end if
	if Session("HM11321000")="4" then
		strHM11321000answer5="checked"
	end if
	if Session("HM11321000")="5" then
		strHM11321000answer6="checked"
	end if
	if Session("HM11321000")="6" then
		strHM11321000answer7="checked"
	end if
	if Session("HM11321000")="7" then
		strHM11321000answer8="checked"
	end if
	if Session("HM11321000")="8" then
		strHM11321000answer9="checked"
	end if
	if Session("HM11321000")="9" then
		strHM11321000answer10="checked"
	end if
	if Session("HM11321000")="10" then
		strHM11321000answer11="checked"
	end if

	if Session("HM11322000")="0" then
		strHM11322000answer1="checked"
	end if
	if Session("HM11322000")="1" then
		strHM11322000answer2="checked"
	end if
	if Session("HM11322000")="2" then
		strHM11322000answer3="checked"
	end if
	if Session("HM11322000")="3" then
		strHM11322000answer4="checked"
	end if
	if Session("HM11322000")="4" then
		strHM11322000answer5="checked"
	end if
	if Session("HM11322000")="5" then
		strHM11322000answer6="checked"
	end if
	if Session("HM11322000")="6" then
		strHM11322000answer7="checked"
	end if
	if Session("HM11322000")="7" then
		strHM11322000answer8="checked"
	end if
	if Session("HM11322000")="8" then
		strHM11322000answer9="checked"
	end if
	if Session("HM11322000")="9" then
		strHM11322000answer10="checked"
	end if
	if Session("HM11322000")="10" then
		strHM11322000answer11="checked"
	end if

	if Session("HM11323000")="0" then
		strHM11323000answer1="checked"
	end if
	if Session("HM11323000")="1" then
		strHM11323000answer2="checked"
	end if
	if Session("HM11323000")="2" then
		strHM11323000answer3="checked"
	end if
	if Session("HM11323000")="3" then
		strHM11323000answer4="checked"
	end if
	if Session("HM11323000")="4" then
		strHM11323000answer5="checked"
	end if
	if Session("HM11323000")="5" then
		strHM11323000answer6="checked"
	end if
	if Session("HM11323000")="6" then
		strHM11323000answer7="checked"
	end if
	if Session("HM11323000")="7" then
		strHM11323000answer8="checked"
	end if
	if Session("HM11323000")="8" then
		strHM11323000answer9="checked"
	end if
	if Session("HM11323000")="9" then
		strHM11323000answer10="checked"
	end if
	if Session("HM11323000")="10" then
		strHM11323000answer11="checked"
	end if

	if Session("HM11324000")="0" then
		strHM11324000answer1="checked"
	end if
	if Session("HM11324000")="1" then
		strHM11324000answer2="checked"
	end if
	if Session("HM11324000")="2" then
		strHM11324000answer3="checked"
	end if
	if Session("HM11324000")="3" then
		strHM11324000answer4="checked"
	end if
	if Session("HM11324000")="4" then
		strHM11324000answer5="checked"
	end if
	if Session("HM11324000")="5" then
		strHM11324000answer6="checked"
	end if
	if Session("HM11324000")="6" then
		strHM11324000answer7="checked"
	end if
	if Session("HM11324000")="7" then
		strHM11324000answer8="checked"
	end if
	if Session("HM11324000")="8" then
		strHM11324000answer9="checked"
	end if
	if Session("HM11324000")="9" then
		strHM11324000answer10="checked"
	end if
	if Session("HM11324000")="10" then
		strHM11324000answer11="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("HM11318000string")= ""
	Session("HM11319000string")= ""
	Session("HM11320000string")= ""
	Session("HM11321000string")= ""
	Session("HM11322000string")= ""
	Session("HM11323000string")= ""
	Session("HM11324000string")= ""




	Session("HM11318000") = Request.Form("HM11318000")
	Session("HM11319000") = Request.Form("HM11319000")
	Session("HM11320000") = Request.Form("HM11320000")
	Session("HM11321000") = Request.Form("HM11321000")
	Session("HM11322000") = Request.Form("HM11322000")
	Session("HM11323000") = Request.Form("HM11323000")
	Session("HM11324000") = Request.Form("HM11324000")



	if Session("HM11318000") = "0" then 
		Session("HM11318000string")= "0"
	end if
	if Session("HM11318000") = "1" then 
		Session("HM11318000string")= "1"
	end if
	if Session("HM11318000") = "2" then 
		Session("HM11318000string")= "2"
	end if
	if Session("HM11318000") = "3" then 
		Session("HM11318000string")= "3"
	end if
	if Session("HM11318000") = "4" then 
		Session("HM11318000string")= "4"
	end if
	if Session("HM11318000") = "5" then 
		Session("HM11318000string")= "5"
	end if
	if Session("HM11318000") = "6" then 
		Session("HM11318000string")= "6"
	end if
	if Session("HM11318000") = "7" then 
		Session("HM11318000string")= "7"
	end if
	if Session("HM11318000") = "8" then 
		Session("HM11318000string")= "8"
	end if
	if Session("HM11318000") = "9" then 
		Session("HM11318000string")= "9"
	end if
	if Session("HM11318000") = "10" then 
		Session("HM11318000string")= "10"
	end if

	if Session("HM11319000") = "0" then 
		Session("HM11319000string")= "0"
	end if
	if Session("HM11319000") = "1" then 
		Session("HM11319000string")= "1"
	end if
	if Session("HM11319000") = "2" then 
		Session("HM11319000string")= "2"
	end if
	if Session("HM11319000") = "3" then 
		Session("HM11319000string")= "3"
	end if
	if Session("HM11319000") = "4" then 
		Session("HM11319000string")= "4"
	end if
	if Session("HM11319000") = "5" then 
		Session("HM11319000string")= "5"
	end if
	if Session("HM11319000") = "6" then 
		Session("HM11319000string")= "6"
	end if
	if Session("HM11319000") = "7" then 
		Session("HM11319000string")= "7"
	end if
	if Session("HM11319000") = "8" then 
		Session("HM11319000string")= "8"
	end if
	if Session("HM11319000") = "9" then 
		Session("HM11319000string")= "9"
	end if
	if Session("HM11319000") = "10" then 
		Session("HM11319000string")= "10"
	end if

	if Session("HM11320000") = "0" then 
		Session("HM11320000string")= "0"
	end if
	if Session("HM11320000") = "1" then 
		Session("HM11320000string")= "1"
	end if
	if Session("HM11320000") = "2" then 
		Session("HM11320000string")= "2"
	end if
	if Session("HM11320000") = "3" then 
		Session("HM11320000string")= "3"
	end if
	if Session("HM11320000") = "4" then 
		Session("HM11320000string")= "4"
	end if
	if Session("HM11320000") = "5" then 
		Session("HM11320000string")= "5"
	end if
	if Session("HM11320000") = "6" then 
		Session("HM11320000string")= "6"
	end if
	if Session("HM11320000") = "7" then 
		Session("HM11320000string")= "7"
	end if
	if Session("HM11320000") = "8" then 
		Session("HM11320000string")= "8"
	end if
	if Session("HM11320000") = "9" then 
		Session("HM11320000string")= "9"
	end if
	if Session("HM11320000") = "10" then 
		Session("HM11320000string")= "10"
	end if
	
	if Session("HM11321000") = "0" then 
		Session("HM11321000string")= "0"
	end if
	if Session("HM11321000") = "1" then 
		Session("HM11321000string")= "1"
	end if
	if Session("HM11321000") = "2" then 
		Session("HM11321000string")= "2"
	end if
	if Session("HM11321000") = "3" then 
		Session("HM11321000string")= "3"
	end if
	if Session("HM11321000") = "4" then 
		Session("HM11321000string")= "4"
	end if
	if Session("HM11321000") = "5" then 
		Session("HM11321000string")= "5"
	end if
	if Session("HM11321000") = "6" then 
		Session("HM11321000string")= "6"
	end if
	if Session("HM11321000") = "7" then 
		Session("HM11321000string")= "7"
	end if
	if Session("HM11321000") = "8" then 
		Session("HM11321000string")= "8"
	end if
	if Session("HM11321000") = "9" then 
		Session("HM11321000string")= "9"
	end if
	if Session("HM11321000") = "10" then 
		Session("HM11321000string")= "10"
	end if

	if Session("HM11322000") = "0" then 
		Session("HM11322000string")= "0"
	end if
	if Session("HM11322000") = "1" then 
		Session("HM11322000string")= "1"
	end if
	if Session("HM11322000") = "2" then 
		Session("HM11322000string")= "2"
	end if
	if Session("HM11322000") = "3" then 
		Session("HM11322000string")= "3"
	end if
	if Session("HM11322000") = "4" then 
		Session("HM11322000string")= "4"
	end if
	if Session("HM11322000") = "5" then 
		Session("HM11322000string")= "5"
	end if
	if Session("HM11322000") = "6" then 
		Session("HM11322000string")= "6"
	end if
	if Session("HM11322000") = "7" then 
		Session("HM11322000string")= "7"
	end if
	if Session("HM11322000") = "8" then 
		Session("HM11322000string")= "8"
	end if
	if Session("HM11322000") = "9" then 
		Session("HM11322000string")= "9"
	end if
	if Session("HM11322000") = "10" then 
		Session("HM11322000string")= "10"
	end if

	if Session("HM11323000") = "0" then 
		Session("HM11323000string")= "0"
	end if
	if Session("HM11323000") = "1" then 
		Session("HM11323000string")= "1"
	end if
	if Session("HM11323000") = "2" then 
		Session("HM11323000string")= "2"
	end if
	if Session("HM11323000") = "3" then 
		Session("HM11323000string")= "3"
	end if
	if Session("HM11323000") = "4" then 
		Session("HM11323000string")= "4"
	end if
	if Session("HM11323000") = "5" then 
		Session("HM11323000string")= "5"
	end if
	if Session("HM11323000") = "6" then 
		Session("HM11323000string")= "6"
	end if
	if Session("HM11323000") = "7" then 
		Session("HM11323000string")= "7"
	end if
	if Session("HM11323000") = "8" then 
		Session("HM11323000string")= "8"
	end if
	if Session("HM11323000") = "9" then 
		Session("HM11323000string")= "9"
	end if
	if Session("HM11323000") = "10" then 
		Session("HM11323000string")= "10"
	end if

	if Session("HM11324000") = "0" then 
		Session("HM11324000string")= "0"
	end if
	if Session("HM11324000") = "1" then 
		Session("HM11324000string")= "1"
	end if
	if Session("HM11324000") = "2" then 
		Session("HM11324000string")= "2"
	end if
	if Session("HM11324000") = "3" then 
		Session("HM11324000string")= "3"
	end if
	if Session("HM11324000") = "4" then 
		Session("HM11324000string")= "4"
	end if
	if Session("HM11324000") = "5" then 
		Session("HM11324000string")= "5"
	end if
	if Session("HM11324000") = "6" then 
		Session("HM11324000string")= "6"
	end if
	if Session("HM11324000") = "7" then 
		Session("HM11324000string")= "7"
	end if
	if Session("HM11324000") = "8" then 
		Session("HM11324000string")= "8"
	end if
	if Session("HM11324000") = "9" then 
		Session("HM11324000string")= "9"
	end if
	if Session("HM11324000") = "10" then 
		Session("HM11324000string")= "10"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10201000")="1" then
		Session("Page")="37"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10203000")="1" then
		Session("Page")="37"
		Response.Redirect "qualityoflifemaster.asp"
	else
			Session("Page")="5"
		Response.Redirect "qualityoflifemaster.asp"
	end if


end if
end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="39"
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

    <form action="qualityoflife38.asp" method="post" id="formQuestion" name="formQuestion">
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
<td>		Your <b>pain</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11318000" class="required" type="text" value="0" size="1" name="HM11318000" <%=strHM11318000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="1" size="1" name="HM11318000" <%=strHM11318000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="2" size="1" name="HM11318000" <%=strHM11318000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="3" size="1" name="HM11318000" <%=strHM11318000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="4" size="1" name="HM11318000" <%=strHM11318000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="5" size="1" name="HM11318000" <%=strHM11318000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="6" size="1" name="HM11318000" <%=strHM11318000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="7" size="1" name="HM11318000" <%=strHM11318000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="8" size="1" name="HM11318000" <%=strHM11318000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="9" size="1" name="HM11318000" <%=strHM11318000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11318000" type="text" value="10" size="1" name="HM11318000" <%=strHM11318000answer11%>></td>
</tr>
<tr>
<td>		Your <b>fatigue (tiredness)</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11319000" class="required" type="text" value="0" size="1" name="HM11319000" <%=strHM11319000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="1" size="1" name="HM11319000" <%=strHM11319000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="2" size="1" name="HM11319000" <%=strHM11319000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="3" size="1" name="HM11319000" <%=strHM11319000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="4" size="1" name="HM11319000" <%=strHM11319000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="5" size="1" name="HM11319000" <%=strHM11319000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="6" size="1" name="HM11319000" <%=strHM11319000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="7" size="1" name="HM11319000" <%=strHM11319000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="8" size="1" name="HM11319000" <%=strHM11319000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="9" size="1" name="HM11319000" <%=strHM11319000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11319000" type="text" value="10" size="1" name="HM11319000" <%=strHM11319000answer11%>></td>



</tr>

<tr>
<td>		Your <b>nausea</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11320000" class="required" type="text" value="0" size="1" name="HM11320000" <%=strHM11320000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="1" size="1" name="HM11320000" <%=strHM11320000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="2" size="1" name="HM11320000" <%=strHM11320000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="3" size="1" name="HM11320000" <%=strHM11320000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="4" size="1" name="HM11320000" <%=strHM11320000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="5" size="1" name="HM11320000" <%=strHM11320000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="6" size="1" name="HM11320000" <%=strHM11320000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="7" size="1" name="HM11320000" <%=strHM11320000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="8" size="1" name="HM11320000" <%=strHM11320000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="9" size="1" name="HM11320000" <%=strHM11320000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11320000" type="text" value="10" size="1" name="HM11320000" <%=strHM11320000answer11%>></td>
</tr>

<tr>
<td>		Your <b>disturbed sleep</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11321000" class="required" type="text" value="0" size="1" name="HM11321000" <%=strHM11321000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="1" size="1" name="HM11321000" <%=strHM11321000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="2" size="1" name="HM11321000" <%=strHM11321000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="3" size="1" name="HM11321000" <%=strHM11321000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="4" size="1" name="HM11321000" <%=strHM11321000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="5" size="1" name="HM11321000" <%=strHM11321000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="6" size="1" name="HM11321000" <%=strHM11321000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="7" size="1" name="HM11321000" <%=strHM11321000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="8" size="1" name="HM11321000" <%=strHM11321000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="9" size="1" name="HM11321000" <%=strHM11321000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11321000" type="text" value="10" size="1" name="HM11321000" <%=strHM11321000answer11%>></td>
</tr>

<tr>
<td>		Your feeling of being <b>distressed (upset)</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11322000" class="required" type="text" value="0" size="1" name="HM11322000" <%=strHM11322000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="1" size="1" name="HM11322000" <%=strHM11322000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="2" size="1" name="HM11322000" <%=strHM11322000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="3" size="1" name="HM11322000" <%=strHM11322000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="4" size="1" name="HM11322000" <%=strHM11322000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="5" size="1" name="HM11322000" <%=strHM11322000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="6" size="1" name="HM11322000" <%=strHM11322000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="7" size="1" name="HM11322000" <%=strHM11322000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="8" size="1" name="HM11322000" <%=strHM11322000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="9" size="1" name="HM11322000" <%=strHM11322000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11322000" type="text" value="10" size="1" name="HM11322000" <%=strHM11322000answer11%>></td>
</tr>
<tr>
<td>		Your <b>shortness of breath</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11323000" class="required" type="text" value="0" size="1" name="HM11323000" <%=strHM11323000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="1" size="1" name="HM11323000" <%=strHM11323000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="2" size="1" name="HM11323000" <%=strHM11323000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="3" size="1" name="HM11323000" <%=strHM11323000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="4" size="1" name="HM11323000" <%=strHM11323000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="5" size="1" name="HM11323000" <%=strHM11323000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="6" size="1" name="HM11323000" <%=strHM11323000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="7" size="1" name="HM11323000" <%=strHM11323000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="8" size="1" name="HM11323000" <%=strHM11323000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="9" size="1" name="HM11323000" <%=strHM11323000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11323000" type="text" value="10" size="1" name="HM11323000" <%=strHM11323000answer11%>></td>
</tr>



<tr>
<td>		Your problem with <b>remembering things</b> at its WORST?</td>
<td style="text-align: center;"><input type="radio" id="HM11324000" class="required" type="text" value="0" size="1" name="HM11324000" <%=strHM11324000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="1" size="1" name="HM11324000" <%=strHM11324000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="2" size="1" name="HM11324000" <%=strHM11324000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="3" size="1" name="HM11324000" <%=strHM11324000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="4" size="1" name="HM11324000" <%=strHM11324000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="5" size="1" name="HM11324000" <%=strHM11324000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="6" size="1" name="HM11324000" <%=strHM11324000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="7" size="1" name="HM11324000" <%=strHM11324000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="8" size="1" name="HM11324000" <%=strHM11324000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="9" size="1" name="HM11324000" <%=strHM11324000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11324000" type="text" value="10" size="1" name="HM11324000" <%=strHM11324000answer11%>></td>
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
