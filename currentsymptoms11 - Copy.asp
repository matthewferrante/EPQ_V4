
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30516010")="1" then
		strEPQ30516010answer1="checked"
	end if
	if Session("EPQ30516020")="1" then
		strEPQ30516020answer1="checked"
	end if
	if Session("EPQ30516030")="1" then
		strEPQ30516030answer1="checked"
	end if
	if Session("EPQ30516040")="1" then
		strEPQ30516040answer1="checked"
	end if
	if Session("EPQ30516050")="1" then
		strEPQ30516050answer1="checked"
	end if
	if Session("EPQ30516060")="1" then
		strEPQ30516060answer1="checked"
	end if
	if Session("EPQ30516070")="1" then
		strEPQ30516070answer1="checked"
	end if
	if Session("EPQ30516100")="1" then
		strEPQ30516100answer1="checked"
	end if
	if Session("EPQ30516100")="2" then
		strEPQ30516100answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30516000") = Request.Form("EPQ30516000")
	Session("EPQ30516010") = Request.Form("EPQ30516010")
	Session("EPQ30516020") = Request.Form("EPQ30516020")
	Session("EPQ30516030") = Request.Form("EPQ30516030")
	Session("EPQ30516040") = Request.Form("EPQ30516040")
	Session("EPQ30516050") = Request.Form("EPQ30516050")
	Session("EPQ30516060") = Request.Form("EPQ30516060")
	Session("EPQ30516070") = Request.Form("EPQ30516070")
	Session("EPQ30516100") = Request.Form("EPQ30516100")

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("HM10204000")="1" OR Session("HM10207000")="1"  then
if Session("EPQ30515040")="1" then

	Session("Page")="10a1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"

end if
end if

if Session("HM10204000")="1" OR Session("HM10207000")="1"  then
if Session("EPQ30515050")="1" then
	Session("Page")="10a"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
end if
end if


		Session("ReturnID")="1"
		Session("Page")=10
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30516010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="12"
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


    <form action="currentsymptoms11.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any mental health or emotional problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30516030" value="1" class="qTrigger2" id="EPQ30516030" <%=strEPQ30516030answer1%>>
		<label for="EPQ30516030">Anxiety</label><br>
		<input type="checkbox" name="EPQ30516050" value="1" class="qTrigger2" id="EPQ30516050" <%=strEPQ30516050answer1%>>
		<label for="EPQ30516050">Confusion</label><br>

		<input type="checkbox" name="EPQ30516010" value="1" class="qTrigger2" id="EPQ30516010" <%=strEPQ30516010answer1%>>
		<label for="EPQ30516010">Mood swings</label><br>
<br><br>		<input type="radio" name="EPQ30516060" value="1" class="qTriggerOff2" id="EPQ30516060" <%=strEPQ30516060answer1%>>
		<label for="EPQ30516060">None</label><br>


</span>

<span class="column2">
		<input type="checkbox" name="EPQ30516020" value="1" class="qTrigger2" id="EPQ30516020" <%=strEPQ30516020answer1%>>
		<label for="EPQ30516020">Sad, low, down or depressed mood</label><br>
		<input type="checkbox" name="EPQ30516070" value="1" class="qTrigger2" id="EPQ30516070" <%=strEPQ30516070answer1%>>
		<label for="EPQ30516070">Sleeping difficulties / insomnia</label><br>

		<input type="checkbox" name="EPQ30516040" value="1" class="qTrigger2" id="EPQ30516040" <%=strEPQ30516040answer1%>>
		<label for="EPQ30516040">Other, specify:</label>		<input id="EPQ30516000" type="text" maxlength="75" size="15" name="EPQ30516000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30516000")%>' ><br>

</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<div class="ResetBox">
</div>
<div class="hiddenQ2">
	<fieldset>
    <legend class="QuestionBox">
      Are you currently receiving professional care for one or more of these mental health or emotional issues?<br>
	  </legend>
	<div class="QuestionAnswersBox">

		<input type="radio" name="EPQ30516100" value="1" id="EPQ305161001" class="requiredIfBranchActive" <%=strEPQ30516100answer1%>>
		<label for="EPQ305161001">Yes</label><br>

		<input type="radio" name="EPQ30516100" value="2" id="EPQ305161002" <%=strEPQ30516100answer2%>>

		<label for="EPQ305161002">No</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
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
<script>
	$('#EPQ30516060').click(function(event) {
	  $('.hiddenQ2').find(':radio').removeAttr('checked', 'checked');
	});
</script>
	
 </body>
</html>
