
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("TEMPEPQ31155000")="1" then
		strTEMPEPQ31155000answer1="checked"
	end if
	if Session("TEMPEPQ31155000")="2" then
		strTEMPEPQ31155000answer2="checked"
	end if
	if Session("TEMPEPQ31155000")="0" then
		strTEMPEPQ31155000answer3="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("TEMPEPQ31156000string")= ""
	Session("TEMPEPQ31157000string")= ""
	Session("TEMPEPQ31155000string")= ""

	Session("TEMPEPQ31155000") = Request.Form("TEMPEPQ31155000")

	if Session("TEMPEPQ31155000") = "1" then 
		Session("TEMPEPQ31155000string")= ""
	end if
	if Session("TEMPEPQ31155000") = "2" then 
		Session("TEMPEPQ31155000string")= ""
	end if
	if Session("TEMPEPQ31155000") = "0" then 
		Session("TEMPEPQ31155000string")= ""
	end if


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"


Session("Page")="19"
Response.Redirect "cancerriskmaster.asp"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("TEMPEPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("TEMPEPQ31155000")="1" then
	Session("Page")="19ecig2"
else
	Session("Page")="19exposure"
end if
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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


    <form action="cancerrisk19ecig.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<!-- [Question boxes ] -->		

<div id="SpecialNote">
An electronic cigarette (e-cig or e-cigarette, e-hookah, hookah pen, personal vaporizer (PV), electronic nicotine delivery system (ENDS)) is a battery-powered vaporizer that produces a mist rather than cigarette smoke and has the feel of tobacco smoking.
</div><br>
	<fieldset><legend class='QuestionBox'>
Have you ever used an electronic cigarette (also called e-cigarette, hookah pen, personal vaporizer)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPQ31155000" value="1" id="TEMPEPQ311550001" class="required" <%=strTEMPEPQ31155000answer1%>>
		<label for="TEMPEPQ311550001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" class="qTriggerOff" name="TEMPEPQ31155000" value="2" id="TEMPEPQ311550002" <%=strTEMPEPQ31155000answer2%>>
		<label for="TEMPEPQ311550002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" class="qTriggerOff" name="TEMPEPQ31155000" value="0" id="TEMPEPQ311550003" <%=strTEMPEPQ31155000answer3%>>
		<label for="TEMPEPQ311550003">Infrequently or never</label><br>
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
