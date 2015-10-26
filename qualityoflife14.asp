
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11325000")="1" then
		strGU11325000answer1="checked"
	end if
	if Session("GU11325000")="2" then
		strGU11325000answer2="checked"
	end if
	if Session("GU11325000")="3" then
		strGU11325000answer3="checked"
	end if
	if Session("GU11325000")="4" then
		strGU11325000answer4="checked"
	end if
	if Session("GU11325000")="5" then
		strGU11325000answer5="checked"
	end if
	if Session("GU11325000")="99" then
		strGU11325000answer99="checked"
	end if


	if Session("GU11326000")="1" then
		strGU11326000answer1="checked"
	end if
	if Session("GU11326000")="2" then
		strGU11326000answer2="checked"
	end if
	if Session("GU11326000")="3" then
		strGU11326000answer3="checked"
	end if
	if Session("GU11326000")="4" then
		strGU11326000answer4="checked"
	end if
	if Session("GU11326000")="5" then
		strGU11326000answer5="checked"
	end if
	if Session("GU11326000")="99" then
		strGU11326000answer99="checked"
	end if


	if Session("GU11327000")="1" then
		strGU11327000answer1="checked"
	end if
	if Session("GU11327000")="2" then
		strGU11327000answer2="checked"
	end if
	if Session("GU11327000")="3" then
		strGU11327000answer3="checked"
	end if
	if Session("GU11327000")="4" then
		strGU11327000answer4="checked"
	end if
	if Session("GU11327000")="5" then
		strGU11327000answer5="checked"
	end if
	if Session("GU11327000")="99" then
		strGU11327000answer99="checked"
	end if

	if Session("GU11328000")="1" then
		strGU11328000answer1="checked"
	end if
	if Session("GU11328000")="2" then
		strGU11328000answer2="checked"
	end if
	if Session("GU11328000")="3" then
		strGU11328000answer3="checked"
	end if
	if Session("GU11328000")="4" then
		strGU11328000answer4="checked"
	end if
	if Session("GU11328000")="5" then
		strGU11328000answer5="checked"
	end if
	if Session("GU11328000")="99" then
		strGU11328000answer99="checked"
	end if

	if Session("GU11329000")="1" then
		strGU11329000answer1="checked"
	end if
	if Session("GU11329000")="2" then
		strGU11329000answer2="checked"
	end if
	if Session("GU11329000")="3" then
		strGU11329000answer3="checked"
	end if
	if Session("GU11329000")="4" then
		strGU11329000answer4="checked"
	end if
	if Session("GU11329000")="5" then
		strGU11329000answer5="checked"
	end if
	if Session("GU11329000")="99" then
		strGU11329000answer99="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11325000string")= ""
	Session("GU11326000string")= ""
	Session("GU11327000string")= ""
	Session("GU11328000string")= ""
	Session("GU11329000string")= ""


	Session("GU11325000") = Request.Form("GU11325000")
	Session("GU11326000") = Request.Form("GU11326000")
	Session("GU11327000") = Request.Form("GU11327000")
	Session("GU11328000") = Request.Form("GU11328000")
	Session("GU11329000") = Request.Form("GU11329000")

	if Session("GU11325000") = "1" then 
		Session("GU11325000string")= "Very poor level of sexual desire"
	end if
	if Session("GU11325000") = "2" then 
		Session("GU11325000string")= "Poor level of sexual desire"
	end if
	if Session("GU11325000") = "3" then 
		Session("GU11325000string")= "Fair level of sexual desire"
	end if
	if Session("GU11325000") = "4" then 
		Session("GU11325000string")= "Good level of sexual desire"
	end if
	if Session("GU11325000") = "5" then 
		Session("GU11325000string")= "Very good level of sexual desire"
	end if
	if Session("GU11325000") = "99" then 
		Session("GU11325000string")= "Prefer not to answer"
	end if

	if Session("GU11326000") = "1" then 
		Session("GU11326000string")= "Very poor ability to reach orgasm (climax)"
	end if
	if Session("GU11326000") = "2" then 
		Session("GU11326000string")= "Poor ability to reach orgasm (climax)"
	end if
	if Session("GU11326000") = "3" then 
		Session("GU11326000string")= "Fair ability to reach orgasm (climax)"
	end if
	if Session("GU11326000") = "4" then 
		Session("GU11326000string")= "Good ability to reach orgasm (climax)"
	end if
	if Session("GU11326000") = "5" then 
		Session("GU11326000string")= "Very good ability to reach orgasm (climax)"
	end if
	if Session("GU11326000") = "99" then 
		Session("GU11326000string")= "Prefer not to answer"
	end if



	if Session("GU11327000") = "1" then 
		Session("GU11327000string")= "Very poor level of sensation in the genital area"
	end if
	if Session("GU11327000") = "2" then 
		Session("GU11327000string")= "Poor level of sensation in the genital area"
	end if
	if Session("GU11327000") = "3" then 
		Session("GU11327000string")= "Fair level of sensation in the genital area"
	end if
	if Session("GU11327000") = "4" then 
		Session("GU11327000string")= "Good level of sensation in the genital area"
	end if
	if Session("GU11327000") = "5" then 
		Session("GU11327000string")= "Very good level of sensation in the genital area"
	end if
	if Session("GU11327000") = "99" then 
		Session("GU11327000string")= "Prefer not to answer"
	end if


	if Session("GU11328000") = "1" then 
		Session("GU11328000string")= "Very poor ability to be sexually aroused"
	end if
	if Session("GU11328000") = "2" then 
		Session("GU11328000string")= "Poor ability to be sexually aroused"
	end if
	if Session("GU11328000") = "3" then 
		Session("GU11328000string")= "Fair ability to be sexually aroused"
	end if
	if Session("GU11328000") = "4" then 
		Session("GU11328000string")= "Good ability to be sexually aroused"
	end if
	if Session("GU11328000") = "5" then 
		Session("GU11328000string")= "Very good ability to be sexually aroused"
	end if
	if Session("GU11328000") = "99" then 
		Session("GU11328000string")= "Prefer not to answer"
	end if

	if Session("GU11329000") = "1" then 
		Session("GU11329000string")= "Very poor ability to have intercourse"
	end if
	if Session("GU11329000") = "2" then 
		Session("GU11329000string")= "Poor ability to have intercourse"
	end if
	if Session("GU11329000") = "3" then 
		Session("GU11329000string")= "Fair ability to have intercourse"
	end if
	if Session("GU11329000") = "4" then 
		Session("GU11329000string")= "Good ability to have intercourse"
	end if
	if Session("GU11329000") = "5" then 
		Session("GU11329000string")= "Very good ability to have intercourse"
	end if
	if Session("GU11329000") = "99" then 
		Session("GU11329000string")= "Prefer not to answer"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=13
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("GU10202000")="1" AND Session("GU10201000")="1" then
		Session("GU11353000")=Session("GU11326000")
	else
	end if


	if len(Session("GU11325000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11326000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11327000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11328000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	Session("Page")="15"
	Session("QOLSectionStatus")="Completed"
	Session("SurveyStatus")="Completed"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "qualityoflifemaster.asp"
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
	<b>SEXUAL FUNCTION</b><br>The next section is about your sexual function and sexual satisfaction. Many of the questions are very personal, but they will help us understand the important issues that you face every day. Please answer honestly about <b>THE PAST 4 WEEKS ONLY</b>.
	</div>

    <form action="qualityoflife14.asp" method="post" id="formQuestion" name="formQuestion">
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
			<tr>
				<th style="text-align: left;" rowspan="2">How would you rate each of the following <b>during the past 4 weeks</b>?</th>
				<th rowspan="2">Very Poor</th>
				<th rowspan="2">Poor</th>
				<th rowspan="2">Fair</th>
				<th rowspan="2">Good</th>
				<th rowspan="2">Very good</th>
				<th rowspan="2">Prefer not to answer</th>

			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		Your level of sexual desire?</td>
<td style="text-align: center;"><input type="radio" id="GU11325000" class="required" type="text" value="1" size="1" name="GU11325000" <%=strGU11325000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11325000" type="text" value="2" size="1" name="GU11325000" <%=strGU11325000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11325000" type="text" value="3" size="1" name="GU11325000" <%=strGU11325000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11325000" type="text" value="4" size="1" name="GU11325000" <%=strGU11325000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11325000" type="text" value="5" size="1" name="GU11325000" <%=strGU11325000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11325000" type="text" value="99" size="1" name="GU11325000" <%=strGU11325000answer99%>></td>

</tr>
<tr>
<td>		Your ability to reach orgasm (climax)?</td>
<td style="text-align: center;"><input type="radio" id="GU11326000" class="required" type="text" value="1" size="1" name="GU11326000" <%=strGU11326000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11326000" type="text" value="2" size="1" name="GU11326000" <%=strGU11326000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11326000" type="text" value="3" size="1" name="GU11326000" <%=strGU11326000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11326000" type="text" value="4" size="1" name="GU11326000" <%=strGU11326000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11326000" type="text" value="5" size="1" name="GU11326000" <%=strGU11326000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11326000" type="text" value="99" size="1" name="GU11326000" <%=strGU11326000answer99%>></td>
</tr>
<tr>
<td>Your level of sensation in the genital area?</td>
<td style="text-align: center;"><input type="radio" id="GU11327000" class="required" type="text" value="1" size="1" name="GU11327000" <%=strGU11327000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11327000" type="text" value="2" size="1" name="GU11327000" <%=strGU11327000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11327000" type="text" value="3" size="1" name="GU11327000" <%=strGU11327000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11327000" type="text" value="4" size="1" name="GU11327000" <%=strGU11327000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11327000" type="text" value="5" size="1" name="GU11327000" <%=strGU11327000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11327000" type="text" value="99" size="1" name="GU11327000" <%=strGU11327000answer99%>></td>
</tr>
<tr>
<td>Your ability to be sexually aroused?</td>
<td style="text-align: center;"><input type="radio" id="GU11328000" class="required" type="text" value="1" size="1" name="GU11328000" <%=strGU11328000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11328000" type="text" value="2" size="1" name="GU11328000" <%=strGU11328000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11328000" type="text" value="3" size="1" name="GU11328000" <%=strGU11328000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11328000" type="text" value="4" size="1" name="GU11328000" <%=strGU11328000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11328000" type="text" value="5" size="1" name="GU11328000" <%=strGU11328000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11328000" type="text" value="99" size="1" name="GU11328000" <%=strGU11328000answer99%>></td>
</tr>

<tr>
<td>Your ability to have intercourse?</td>
<td style="text-align: center;"><input type="radio" id="GU11329000" class="required" type="text" value="1" size="1" name="GU11329000" <%=strGU11329000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11329000" type="text" value="2" size="1" name="GU11329000" <%=strGU11329000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11329000" type="text" value="3" size="1" name="GU11329000" <%=strGU11329000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11329000" type="text" value="4" size="1" name="GU11329000" <%=strGU11329000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11329000" type="text" value="5" size="1" name="GU11329000" <%=strGU11329000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11329000" type="text" value="99" size="1" name="GU11329000" <%=strGU11329000answer99%>></td>
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
