
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30619000")="1" then
		strEPQ30619000answer1="checked"
	end if
	if Session("EPQ30619000")="0" then
		strEPQ30619000answer2="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30619000string")= ""

	Session("EPQ30619000") = Request.Form("EPQ30619000")

	if Session("EPQ30619000") = "1" then 
		Session("EPQ30619000string")= ""
	end if
	if Session("EPQ30619000") = "0" then 
		Session("EPQ30619000string")= "G0"
	end if
end if

if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		if Session("EPQ30617000")="1" then
		Session("Page")="13"
		 <!--#include file="autosavefunction.asp"-->
		else
		Session("Page")="12"
		end if

		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30619000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("EPQ30619000")<>"1" then

		Session.Contents.Remove("CUTA10601000")
		Session.Contents.Remove("EPQ30620000")
		Session.Contents.Remove("EPQ30621000")
		Session.Contents.Remove("EPQ30622000")
		Session.Contents.Remove("EPQ30623000")
		Session.Contents.Remove("EPQ30625000")
		Session.Contents.Remove("EPQ30624000")

	end if


	if Session("EPQ30619000")="1" then

	Session("Page")="15"
	Response.Redirect "womensriskmaster.asp"

	else
	Session("WomensRiskScreeningSectionStatus")="Completed"
	Session("Page")="0"
	Response.Redirect "womensriskmaster.asp"

	end if
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


    <form action="womensrisk14.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
Have you ever been pregnant? (Please include all miscarriages and abortions as well as full-term pregnancies)<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30619000" value="1" id="EPQ306190001" class="required" <%=strEPQ30619000answer1%>>
		<label for="EPQ306190001">Yes</label><br>
		<input type="radio" name="EPQ30619000" value="0" id="EPQ306190002" <%=strEPQ30619000answer2%>>
		<label for="EPQ306190002">No</label>
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
