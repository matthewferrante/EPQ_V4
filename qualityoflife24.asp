
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11352000")="1" then
		strGU11352000answer1="checked"
	end if
	if Session("GU11352000")="2" then
		strGU11352000answer2="checked"
	end if
	if Session("GU11352000")="3" then
		strGU11352000answer3="checked"
	end if
	if Session("GU11352000")="4" then
		strGU11352000answer4="checked"
	end if
	if Session("GU11352000")="5" then
		strGU11352000answer5="checked"
	end if
	if Session("GU11352000")="99" then
		strGU11352000answer99="checked"
	end if


	if Session("GU11353000")="1" then
		strGU11353000answer1="checked"
	end if
	if Session("GU11353000")="2" then
		strGU11353000answer2="checked"
	end if
	if Session("GU11353000")="3" then
		strGU11353000answer3="checked"
	end if
	if Session("GU11353000")="4" then
		strGU11353000answer4="checked"
	end if
	if Session("GU11353000")="5" then
		strGU11353000answer5="checked"
	end if
	if Session("GU11353000")="99" then
		strGU11353000answer99="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11352000string")= ""
	Session("GU11353000string")= ""



	Session("GU11352000") = Request.Form("GU11352000")

	if Session("GU10202000") <> "1" then
	Session("GU11353000") = Request.Form("GU11353000")
	end if

	if Session("GU11352000") = "1" then 
		Session("GU11352000string")= "Very poor to no ability to have an erection"
	end if
	if Session("GU11352000") = "2" then 
		Session("GU11352000string")= "Poor ability to have an erection"
	end if
	if Session("GU11352000") = "3" then 
		Session("GU11352000string")= "Fair ability to have an erection"
	end if
	if Session("GU11352000") = "4" then 
		Session("GU11352000string")= "Good ability to have an erection"
	end if
	if Session("GU11352000") = "5" then 
		Session("GU11352000string")= "Very good ability to have an erection"
	end if
	if Session("GU11352000") = "99" then 
		Session("GU11352000string")= "Prefer not to answer"
	end if

	if Session("GU11353000") = "1" then 
		Session("GU11353000string")= "Very poor to no ability to reach orgasm (climax)"
	end if
	if Session("GU11353000") = "2" then 
		Session("GU11353000string")= "Poor ability to reach orgasm (climax)"
	end if
	if Session("GU11353000") = "3" then 
		Session("GU11353000string")= "Fair ability to reach orgasm (climax)"
	end if
	if Session("GU11353000") = "4" then 
		Session("GU11353000string")= "Good ability to reach orgasm (climax)"
	end if
	if Session("GU11353000") = "5" then 
		Session("GU11353000string")= "Very good ability to reach orgasm (climax)"
	end if
	if Session("GU11353000") = "99" then 
		Session("GU11353000string")= "Prefer not to answer"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10202000")="1" then
		Session("Page")="22"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if
end if
end if



		Session("ReturnID")="1"
		Session("Page")=23
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11352000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11353000")) = 0 then 
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


	Session("Page")="25"
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
<b>SEXUAL FUNCTION</b><BR>
The next section is about your <b>current</b> sexual function and sexual satisfaction. Many of the questions are very personal, but they will help us understand the important issues that you face every day. Please answer honestly about <b>THE LAST 4 WEEKS ONLY</b>.	</div>

    <form action="qualityoflife24.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2">How would you rate each of the following <b>during the last 4 weeks</b>?</th>
				<th rowspan="2">Very poor to none</th>
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
<td>		Your ability to have an erection?</td>
<td style="text-align: center;"><input type="radio" id="GU11352000" class="required" type="text" value="1" size="1" name="GU11352000" <%=strGU11352000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11352000" type="text" value="2" size="1" name="GU11352000" <%=strGU11352000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11352000" type="text" value="3" size="1" name="GU11352000" <%=strGU11352000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11352000" type="text" value="4" size="1" name="GU11352000" <%=strGU11352000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11352000" type="text" value="5" size="1" name="GU11352000" <%=strGU11352000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11352000" type="text" value="99" size="1" name="GU11352000" <%=strGU11352000answer99%>></td>

</tr>

<%
	if Session("GU10202000") <> "1" then
%>

<tr>
<td>		Your ability to reach orgasm (climax)?</td>
<td style="text-align: center;"><input type="radio" id="GU11353000" class="required" type="text" value="1" size="1" name="GU11353000" <%=strGU11353000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11353000" type="text" value="2" size="1" name="GU11353000" <%=strGU11353000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11353000" type="text" value="3" size="1" name="GU11353000" <%=strGU11353000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11353000" type="text" value="4" size="1" name="GU11353000" <%=strGU11353000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11353000" type="text" value="5" size="1" name="GU11353000" <%=strGU11353000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="GU11353000" type="text" value="99" size="1" name="GU11353000" <%=strGU11353000answer99%>></td>
</tr>

<%
end if
%>

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
