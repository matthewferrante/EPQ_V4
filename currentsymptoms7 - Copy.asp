
<%



Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30511000")="1" then
		strEPQ30511000answer1="checked"
	end if
	if Session("EPQ30511000")="2" then
		strEPQ30511000answer2="checked"
	end if
	if Session("EPQ30511000")="3" then
		strEPQ30511000answer3="checked"
	end if
	if Session("EPQ30511000")="4" then
		strEPQ30511000answer4="checked"
	end if

	if Session("EPQ30512000")="1" then
		strEPQ30512000answer1="checked"
	end if
	if Session("EPQ30512000")="2" then
		strEPQ30512000answer2="checked"
	end if
	if Session("EPQ30512000")="3" then
		strEPQ30512000answer3="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30511000string")= ""
	Session("EPQ30512000string")= ""


	Session("EPQ30511000") = Request.Form("EPQ30511000")
	Session("EPQ30512000") = Request.Form("EPQ30512000")

	if Session("EPQ30511000") = "1" then 
		Session("EPQ30511000string")= ""
	end if
	if Session("EPQ30511000") = "2" then 
		Session("EPQ30511000string")= ""
	end if
	if Session("EPQ30511000") = "3" then 
		Session("EPQ30511000string")= ""
	end if
	if Session("EPQ30511000") = "4" then 
		Session("EPQ30511000string")= ""
	end if
	if Session("EPQ30511000") = "77" then 
		Session("EPQ30511000string")= ""
	end if

	if Session("EPQ30512000") = "1" then 
		Session("EPQ30512000string")= ""
	end if
	if Session("EPQ30512000") = "2" then 
		Session("EPQ30512000string")= ""
	end if
	if Session("EPQ30512000") = "3" then 
		Session("EPQ30512000string")= ""
	end if
	if Session("EPQ30512000") = "77" then 
		Session("EPQ30512000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"

	if Session("EPQ30508080")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	else
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30508090") <> "1" then 
	Session("Page")="8"
	Response.Redirect "currentsymptomsmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30508090") <> "1" then 
	Session("Page")="6"
	Response.Redirect "currentsymptomsmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30511000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="8"
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

    <form action="currentsymptoms7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      How often do you have nipple discharge?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30511000" value="1" id="EPQ30511001" class="required" <%=strEPQ30511000answer1%>>
		<label for="EPQ30511001">Less than once a day</label><br>
		<input type="radio" name="EPQ30511000" value="2" id="EPQ30511002" <%=strEPQ30511000answer2%>>
		<label for="EPQ30511002">Once a day</label><br>
		<input type="radio" name="EPQ30511000" value="3" id="EPQ30511003" <%=strEPQ30511000answer3%>>
		<label for="EPQ30511003">Several times a day</label><br>
		<input type="radio" name="EPQ30511000" value="4" id="EPQ30511004" <%=strEPQ30511000answer4%>>
		<label for="EPQ30511004">It doesn't stop</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>


	<fieldset>
    <legend class="QuestionBox">
      When does the nipple discharge happen?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30512000" value="1" id="EPQ30512001" class="required" <%=strEPQ30512000answer1%>>
		<label for="EPQ30512001">When I squeeze it</label><br>
		<input type="radio" name="EPQ30512000" value="2" id="EPQ30512002" <%=strEPQ30512000answer2%>>
		<label for="EPQ30512002">On its own</label><br>
		<input type="radio" name="EPQ30512000" value="3" id="EPQ30512003" <%=strEPQ30512000answer3%>>
		<label for="EPQ30512003">When I squeeze it and on its own</label><br>
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
