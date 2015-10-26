
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30605000")="1" then
		strEPQ30605000answer1="checked"
	end if
	if Session("EPQ30605000")="2" then
		strEPQ30605000answer2="checked"
	end if
	if Session("EPQ30605000")="3" then
		strEPQ30605000answer3="checked"
	end if
	if Session("EPQ30605000")="77" then
		strEPQ30605000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30605000string")= ""

	Session("EPQ30605000") = Request.Form("EPQ30605000")

	if Session("EPQ30605000") = "1" then 
		Session("EPQ30605000string")= "Light"
	end if
	if Session("EPQ30605000") = "2" then 
		Session("EPQ30605000string")= "Medium"
	end if
	if Session("EPQ30605000") = "3" then 
		Session("EPQ30605000string")= "Heavy"
	end if


end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30605000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="6"
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


    <form action="womensrisk4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
How would you characterize your menstrual flow?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30605000" value="1" class="required" id="EPQ306050001" <%=strEPQ30605000answer1%>>
		<label for="EPQ306050001">Light</label><br>
		<input type="radio" name="EPQ30605000" value="2" id="EPQ306050002" <%=strEPQ30605000answer2%>>
		<label for="EPQ306050002">Medium</label><br>
		<input type="radio" name="EPQ30605000" value="3" id="EPQ306050003" <%=strEPQ30605000answer3%>>
		<label for="EPQ306050003">Heavy</label><br>
	</div><!-- [ /#AnswerBox] --> </fieldset>


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
