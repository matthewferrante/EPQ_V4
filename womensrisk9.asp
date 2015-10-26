
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30613000")="1" then
		strEPQ30613000answer1="checked"
	end if
	if Session("EPQ30613000")="2" then
		strEPQ30613000answer2="checked"
	end if
	if Session("EPQ30613000")="0" then
		strEPQ30613000answer3="checked"
	end if
	if Session("EPQ30613000")="77" then
		strEPQ30613000answer4="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30613000string")= ""

	Session("EPQ30613000") = Request.Form("EPQ30613000")

	if Session("EPQ30613000") = "1" then 
		Session("EPQ30613000string")= "Yes, taking now"
	end if
	if Session("EPQ30613000") = "2" then 
		Session("EPQ30613000string")= "Yes, taken in the past but not using now"
	end if
	if Session("EPQ30613000") = "3" then 
		Session("EPQ30613000string")= "No, never taken"
	end if
	if Session("EPQ30613000") = "77" then 
		Session("EPQ30613000string")= "I need help answering question"
	end if
end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		if Session("EPQ30608000") = "0" then 
		Session("Page")="6"
		else
		Session("Page")="8"
		end if

	
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30613000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30613000") = "0" then 
	Session("Page")="12"
	else
	Session("Page")="10"
	end if

	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
Have you ever taken hormonal birth control?<br> (e.g., the pill or mini-pill, Norplant, Depo-Provera, Lunelle shots, Orth Evra, Nuva Ring. <u>Do not</U> include female hormones taken for other reasons)<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30613000" value="1" id="EPQ30613000" class="required" <%=strEPQ30613000answer1%>>
		<label for="EPQ30613000">Yes, taking now</label><br>
		<input type="radio" name="EPQ30613000" value="2" id="EPQ30613000" <%=strEPQ30613000answer2%>>
		<label for="EPQ30613000">Yes, taken in the past not using now</label><br>
		<input type="radio" name="EPQ30613000" value="0" id="EPQ30613000" <%=strEPQ30613000answer3%>>
		<label for="EPQ30613000">No, never taken</label><br>
		<input type="radio" name="EPQ30613000" value="77" id="EPQ30613000" <%=strEPQ30613000answer4%>>
		<label for="EPQ30613000">I need help answering question
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
</div> <!-- [ /#formBlock ] -->
	
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
