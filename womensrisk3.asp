
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30603000")="1" then
		strEPQ30603000answer1="checked"
	end if
	if Session("EPQ30603000")="2" then
		strEPQ30603000answer2="checked"
	end if
	if Session("EPQ30603000")="3" then
		strEPQ30603000answer3="checked"
	end if
	if Session("EPQ30603000")="4" then
		strEPQ30603000answer4="checked"
	end if

	if Session("EPQ30604000")="1" then
		strEPQ30604000answer1="checked"
	end if
	if Session("EPQ30604000")="2" then
		strEPQ30604000answer2="checked"
	end if
	if Session("EPQ30604000")="3" then
		strEPQ30604000answer3="checked"
	end if
	if Session("EPQ30604000")="4" then
		strEPQ30604000answer4="checked"
	end if
	if Session("EPQ30604000")="5" then
		strEPQ30604000answer5="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30603000string")= ""
	Session("EPQ30604000string")= ""

	Session("TEMPEPQ30603000") = Request.Form("TEMPEPQ30603000")
	Session("TEMPEPQ30604000") = Request.Form("TEMPEPQ30604000")

	if Session("EPQ30603000") = "1" then 
		Session("EPQ30603000string")= "Less than 21 days"
	end if
	if Session("EPQ30603000") = "2" then 
		Session("EPQ30603000string")= "Between 21 to 35 days"
	end if
	if Session("EPQ30603000") = "3" then 
		Session("EPQ30603000string")= "More than 35 days"
	end if
	if Session("EPQ30603000") = "4" then 
		Session("EPQ30603000string")= "Periods do not occur on a regular cycle"
	end if

	if Session("EPQ30604000") = "1" then 
		Session("EPQ30604000string")= "Less than 1 day"
	end if
	if Session("EPQ30604000") = "2" then 
		Session("EPQ30604000string")= "1 to 2 days"
	end if
	if Session("EPQ30604000") = "3" then 
		Session("EPQ30604000string")= "3 to 4 days"
	end if
	if Session("EPQ30604000") = "4" then 
		Session("EPQ30604000string")= "5 to 6 days"
	end if
	if Session("EPQ30604000") = "5" then 
		Session("EPQ30604000string")= "7 or more days"
	end if
end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

if Session("TEMPEPQ30603000")="4" then
	Session("Page")="5"
	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
Over the last year, have your periods become<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" class="qTrigger required" name="TEMPEPQ30603000" value="1" id="EPQ306030001" <%=strEPQ30603000answer1%>>
		<label for="EPQ306030001">More frequent</label><br>
		<input type="radio"  class="qTrigger" name="TEMPEPQ30603000" value="2" id="EPQ306030002" <%=strEPQ30603000answer2%>>
		<label for="EPQ306030002">No change</label><br>
		<input type="radio"  class="qTrigger" name="TEMPEPQ30603000" value="3" id="EPQ306030003" <%=strEPQ30603000answer3%>>
		<label for="EPQ306030003">Less frequent</label><br>
		<input type="radio" class="qTriggerOff" name="TEMPEPQ30603000" value="4" id="EPQ306030004" <%=strEPQ30603000answer4%>>
		<label for="EPQ306030004">They stopped completely</label><br>
	</div><!-- [ /#AnswerBox] --> </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
Over the last year, have your periods become<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPQ30604000" value="1" class="requiredIfBranchActive" id="EPQ306040001" <%=strEPQ30604000answer1%>>
		<label for="EPQ306040001">Heavier</label><br>

		<input type="radio" name="TEMPEPQ30604000" value="2" id="EPQ306040002" <%=strEPQ30604000answer2%>>
		<label for="EPQ306040002">Lighter</label><br>
		<input type="radio" name="TEMPEPQ30604000" value="3" id="EPQ30604003" <%=strEPQ30604000answer3%>>
		<label for="EPQ30604003">No change</label><br>
	</div><!-- [ /#AnswerBox] --> </fieldset>
</div>

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
