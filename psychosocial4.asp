
<%
Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11301000")="0" then
		strHM11301000answer1="checked"
	end if
	if Session("HM11301000")="1" then
		strHM11301000answer2="checked"
	end if
	if Session("HM11301000")="2" then
		strHM11301000answer3="checked"
	end if
	if Session("HM11301000")="3" then
		strHM11301000answer4="checked"
	end if
	if Session("HM11301000")="4" then
		strHM11301000answer5="checked"
	end if
	if Session("HM11301000")="5" then
		strHM11301000answer6="checked"
	end if
	if Session("HM11301000")="6" then
		strHM11301000answer7="checked"
	end if
	if Session("HM11301000")="7" then
		strHM11301000answer8="checked"
	end if
	if Session("HM11301000")="8" then
		strHM11301000answer9="checked"
	end if
	if Session("HM11301000")="9" then
		strHM11301000answer10="checked"
	end if
	if Session("HM11301000")="10" then
		strHM11301000answer11="checked"
	end if



	if Session("2HM11301000")="0" then
		str2HM11301000answer1="checked"
	end if
	if Session("2HM11301000")="1" then
		str2HM11301000answer2="checked"
	end if
	if Session("2HM11301000")="2" then
		str2HM11301000answer3="checked"
	end if
	if Session("2HM11301000")="3" then
		str2HM11301000answer4="checked"
	end if
	if Session("2HM11301000")="4" then
		str2HM11301000answer5="checked"
	end if
	if Session("2HM11301000")="5" then
		str2HM11301000answer6="checked"
	end if
	if Session("2HM11301000")="6" then
		str2HM11301000answer7="checked"
	end if
	if Session("2HM11301000")="7" then
		str2HM11301000answer8="checked"
	end if
	if Session("2HM11301000")="8" then
		str2HM11301000answer9="checked"
	end if
	if Session("2HM11301000")="9" then
		str2HM11301000answer10="checked"
	end if
	if Session("2HM11301000")="10" then
		str2HM11301000answer11="checked"
	end if



	if Session("3HM11301000")="0" then
		str3HM11301000answer1="checked"
	end if
	if Session("3HM11301000")="1" then
		str3HM11301000answer2="checked"
	end if
	if Session("3HM11301000")="2" then
		str3HM11301000answer3="checked"
	end if
	if Session("3HM11301000")="3" then
		str3HM11301000answer4="checked"
	end if
	if Session("3HM11301000")="4" then
		str3HM11301000answer5="checked"
	end if
	if Session("3HM11301000")="5" then
		str3HM11301000answer6="checked"
	end if
	if Session("3HM11301000")="6" then
		str3HM11301000answer7="checked"
	end if
	if Session("3HM11301000")="7" then
		str3HM11301000answer8="checked"
	end if
	if Session("3HM11301000")="8" then
		str3HM11301000answer9="checked"
	end if
	if Session("3HM11301000")="9" then
		str3HM11301000answer10="checked"
	end if
	if Session("3HM11301000")="10" then
		str3HM11301000answer11="checked"
	end if


	if Session("4HM11301000")="0" then
		str4HM11301000answer1="checked"
	end if
	if Session("4HM11301000")="1" then
		str4HM11301000answer2="checked"
	end if
	if Session("4HM11301000")="2" then
		str4HM11301000answer3="checked"
	end if
	if Session("4HM11301000")="3" then
		str4HM11301000answer4="checked"
	end if
	if Session("4HM11301000")="4" then
		str4HM11301000answer5="checked"
	end if
	if Session("4HM11301000")="5" then
		str4HM11301000answer6="checked"
	end if
	if Session("4HM11301000")="6" then
		str4HM11301000answer7="checked"
	end if
	if Session("4HM11301000")="7" then
		str4HM11301000answer8="checked"
	end if
	if Session("4HM11301000")="8" then
		str4HM11301000answer9="checked"
	end if
	if Session("4HM11301000")="9" then
		str4HM11301000answer10="checked"
	end if
	if Session("4HM11301000")="10" then
		str4HM11301000answer11="checked"
	end if



	if Session("5HM11301000")="0" then
		str5HM11301000answer1="checked"
	end if
	if Session("5HM11301000")="1" then
		str5HM11301000answer2="checked"
	end if
	if Session("5HM11301000")="2" then
		str5HM11301000answer3="checked"
	end if
	if Session("5HM11301000")="3" then
		str5HM11301000answer4="checked"
	end if
	if Session("5HM11301000")="4" then
		str5HM11301000answer5="checked"
	end if
	if Session("5HM11301000")="5" then
		str5HM11301000answer6="checked"
	end if
	if Session("5HM11301000")="6" then
		str5HM11301000answer7="checked"
	end if
	if Session("5HM11301000")="7" then
		str5HM11301000answer8="checked"
	end if
	if Session("5HM11301000")="8" then
		str5HM11301000answer9="checked"
	end if
	if Session("5HM11301000")="9" then
		str5HM11301000answer10="checked"
	end if
	if Session("5HM11301000")="10" then
		str5HM11301000answer11="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11301000string")= ""
	Session("HM11302000string")= ""
	Session("HM11303000string")= ""
	Session("HM11304000string")= ""
	Session("HM11305000string")= ""
	Session("HM11306000string")= ""
	Session("HM11307000string")= ""
	Session("HM11308000string")= ""
	Session("HM11309000string")= ""



	Session("HM11301000") = Request.Form("HM11301000")
	Session("2HM11301000") = Request.Form("2HM11301000")
	Session("3HM11301000") = Request.Form("3HM11301000")
	Session("4HM11301000") = Request.Form("4HM11301000")
	Session("5HM11301000") = Request.Form("5HM11301000")

	if Session("HM11301000") = "0" then 
		Session("HM11301000string")= "Not at all"
	end if
	if Session("HM11301000") = "1" then 
		Session("HM11301000string")= "A little bit"
	end if
	if Session("HM11301000") = "2" then 
		Session("HM11301000string")= "Some what"
	end if
	if Session("HM11301000") = "3" then 
		Session("HM11301000string")= "Quite a bit"
	end if
	if Session("HM11301000") = "4" then 
		Session("HM11301000string")= "Very much"
	end if

	if Session("HM11302000") = "0" then 
		Session("HM11302000string")= "Not at all"
	end if
	if Session("HM11302000") = "1" then 
		Session("HM11302000string")= "A little bit"
	end if
	if Session("HM11302000") = "2" then 
		Session("HM11302000string")= "Some what"
	end if
	if Session("HM11302000") = "3" then 
		Session("HM11302000string")= "Quite a bit"
	end if
	if Session("HM11302000") = "4" then 
		Session("HM11302000string")= "Very much"
	end if

	if Session("HM11303000") = "0" then 
		Session("HM11303000string")= "Not at all"
	end if
	if Session("HM11303000") = "1" then 
		Session("HM11303000string")= "A little bit"
	end if
	if Session("HM11303000") = "2" then 
		Session("HM11303000string")= "Some what"
	end if
	if Session("HM11303000") = "3" then 
		Session("HM11303000string")= "Quite a bit"
	end if
	if Session("HM11303000") = "4" then 
		Session("HM11303000string")= "Very much"
	end if

	if Session("HM11304000") = "0" then 
		Session("HM11304000string")= "Not at all"
	end if
	if Session("HM11304000") = "1" then 
		Session("HM11304000string")= "A little bit"
	end if
	if Session("HM11304000") = "2" then 
		Session("HM11304000string")= "Some what"
	end if
	if Session("HM11304000") = "3" then 
		Session("HM11304000string")= "Quite a bit"
	end if
	if Session("HM11304000") = "4" then 
		Session("HM11304000string")= "Very much"
	end if

	if Session("HM11305000") = "0" then 
		Session("HM11305000string")= "Not at all"
	end if
	if Session("HM11305000") = "1" then 
		Session("HM11305000string")= "A little bit"
	end if
	if Session("HM11305000") = "2" then 
		Session("HM11305000string")= "Some what"
	end if
	if Session("HM11305000") = "3" then 
		Session("HM11305000string")= "Quite a bit"
	end if
	if Session("HM11305000") = "4" then 
		Session("HM11305000string")= "Very much"
	end if

	if Session("HM11306000") = "0" then 
		Session("HM11306000string")= "Not at all"
	end if
	if Session("HM11306000") = "1" then 
		Session("HM11306000string")= "A little bit"
	end if
	if Session("HM11306000") = "2" then 
		Session("HM11306000string")= "Some what"
	end if
	if Session("HM11306000") = "3" then 
		Session("HM11306000string")= "Quite a bit"
	end if
	if Session("HM11306000") = "4" then 
		Session("HM11306000string")= "Very much"
	end if

	if Session("HM11307000") = "0" then 
		Session("HM11307000string")= "Not at all"
	end if
	if Session("HM11307000") = "1" then 
		Session("HM11307000string")= "A little bit"
	end if
	if Session("HM11307000") = "2" then 
		Session("HM11307000string")= "Some what"
	end if
	if Session("HM11307000") = "3" then 
		Session("HM11307000string")= "Quite a bit"
	end if
	if Session("HM11307000") = "4" then 
		Session("HM11307000string")= "Very much"
	end if

	if Session("HM11308000") = "0" then 
		Session("HM11308000string")= "Not at all"
	end if
	if Session("HM11308000") = "1" then 
		Session("HM11308000string")= "A little bit"
	end if
	if Session("HM11308000") = "2" then 
		Session("HM11308000string")= "Some what"
	end if
	if Session("HM11308000") = "3" then 
		Session("HM11308000string")= "Quite a bit"
	end if
	if Session("HM11308000") = "4" then 
		Session("HM11308000string")= "Very much"
	end if

	if Session("HM11309000") = "0" then 
		Session("HM11309000string")= "Not at all"
	end if
	if Session("HM11309000") = "1" then 
		Session("HM11309000string")= "A little bit"
	end if
	if Session("HM11309000") = "2" then 
		Session("HM11309000string")= "Some what"
	end if
	if Session("HM11309000") = "3" then 
		Session("HM11309000string")= "Quite a bit"
	end if
	if Session("HM11309000") = "4" then 
		Session("HM11309000string")= "Very much"
	end if

end if

if Request.Form("StopID")="1" then
		Session("psychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="5"


	Response.Redirect "psychosocialmaster.asp"
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
Please have the patient complete this section or if they are not able to, please have them next to you when completing it so they indicate to you how they feel NOW.
<br><br>
	We would like to ask you about common symptoms experienced by patients.  Please complete the following questions about how you feel NOW; with 0 meaning that the symptom is absent and 10 that it is the worst possible severity.<br>
	</div>
<br>

    <form action="psychosocial4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">


  <fieldset class="tabular">
  <legend>
<div class="QuestionBox">
Please select the number that best describes how you feel NOW:
</div>  </legend>

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
			<tr>
				<th></th>
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
				<th></th>
			</tr>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		   <tbody>
		</div>
		<div class="cell1">










<tr>
<td>No pain</td>
<td style="text-align: center;"><input type="radio" id="HM11301000" class="required" type="text" value="0" size="1" name="HM11301000" <%=strHM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="1" size="1" name="HM11301000" <%=strHM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="2" size="1" name="HM11301000" <%=strHM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="3" size="1" name="HM11301000" <%=strHM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="4" size="1" name="HM11301000" <%=strHM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="5" size="1" name="HM11301000" <%=strHM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="6" size="1" name="HM11301000" <%=strHM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="7" size="1" name="HM11301000" <%=strHM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="8" size="1" name="HM11301000" <%=strHM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="9" size="1" name="HM11301000" <%=strHM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="HM11301000" type="text" value="10" size="1" name="HM11301000" <%=strHM11301000answer11%>></td>
<td>Worst possible pain</td>
</tr>


<tr>
<td>No tiredness <br>
(Tiredness = lack of energy)</td>
<td style="text-align: center;"><input type="radio" id="HM11301000" class="required" type="text" value="0" size="1" name="2HM11301000" <%=strHM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="1" size="1" name="2HM11301000" <%=str2HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="2" size="1" name="2HM11301000" <%=str2HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="3" size="1" name="2HM11301000" <%=str2HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="4" size="1" name="2HM11301000" <%=str2HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="5" size="1" name="2HM11301000" <%=str2HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="6" size="1" name="2HM11301000" <%=str2HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="7" size="1" name="2HM11301000" <%=str2HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="8" size="1" name="2HM11301000" <%=str2HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="9" size="1" name="2HM11301000" <%=str2HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="2HM11301000" type="text" value="10" size="1" name="2HM11301000" <%=str2HM11301000answer11%>></td>
<td>Worst possible tiredness<br> 
</td>
</tr>


<tr>
<td>No drowsiness <br>
(Drowsiness = feeling sleepy)
</td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" class="required" type="text" value="0" size="1" name="3HM11301000" <%=str3HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="1" size="1" name="3HM11301000" <%=str3HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="2" size="1" name="3HM11301000" <%=str3HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="3" size="1" name="3HM11301000" <%=str3HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="4" size="1" name="3HM11301000" <%=str3HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="5" size="1" name="3HM11301000" <%=str3HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="6" size="1" name="3HM11301000" <%=str3HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="7" size="1" name="3HM11301000" <%=str3HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="8" size="1" name="3HM11301000" <%=str3HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="9" size="1" name="3HM11301000" <%=str3HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="3HM11301000" type="text" value="10" size="1" name="3HM11301000" <%=str3HM11301000answer11%>></td>
<td>Worst possible drowsiness<br>
</td>
</tr>


<tr>
<td>No nausea</td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" class="required" type="text" value="0" size="1" name="4HM11301000" <%=str4HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="1" size="1" name="4HM11301000" <%=str4HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="2" size="1" name="4HM11301000" <%=str4HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="3" size="1" name="4HM11301000" <%=str4HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="4" size="1" name="4HM11301000" <%=str4HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="5" size="1" name="4HM11301000" <%=str4HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="6" size="1" name="4HM11301000" <%=str4HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="7" size="1" name="4HM11301000" <%=str4HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="4HM411301000" type="text" value="8" size="1" name="4HM11301000" <%=strHM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="9" size="1" name="4HM11301000" <%=str4HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="4HM11301000" type="text" value="10" size="1" name="4HM11301000" <%=str4HM11301000answer11%>></td>
<td>Worst possible nausea</td>
</tr>


<tr>
<td>No lack of appetite</td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" class="required" type="text" value="0" size="1" name="5HM11301000" <%=str5HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="1" size="1" name="5HM11301000" <%=str5HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="2" size="1" name="5HM11301000" <%=str5HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="3" size="1" name="5HM11301000" <%=str5HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="4" size="1" name="5HM11301000" <%=str5HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="5" size="1" name="5HM11301000" <%=str5HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="6" size="1" name="5HM11301000" <%=str5HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="7" size="1" name="5HM11301000" <%=str5HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="8" size="1" name="5HM11301000" <%=str5HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="9" size="1" name="5HM11301000" <%=str5HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="5HM11301000" type="text" value="10" size="1" name="5HM11301000" <%=str5HM11301000answer11%>></td>
<td>Worst possible lack of appetite</td>
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
