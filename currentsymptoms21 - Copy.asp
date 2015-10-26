
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30527000") = Request.Form("EPQ30527000")

	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"


	if Session("EPQ30522040") = "1" then 
	Session("Page")="20"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522060") = "1" then 
	Session("Page")="19"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522010") = "1" then 
	Session("Page")="18"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	Session("Page")="17"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30522010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	'if Session("GU10202000")="1" then
	'	Session("Page")="29"
	'	Response.Redirect "currentsymptomsmaster.asp"
	'end if 

	if Session("GU10201000")="1" then
		Session("Page")="29"
		Response.Redirect "currentsymptomsmaster.asp"
	end if 

	end if
	end if

	Session("Page")="22"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms21.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      Which "other" digestive problem have you had in the past 3 months?<br>
	  </legend>
	<div class="QuestionAnswersBox">
	<input type="text" name="EPQ30527000" maxlength="75" size="75" id="EPQ30527000" class="requiredCompleteText" value='<%=Session("EPQ30527000")%>' >
</span>
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
