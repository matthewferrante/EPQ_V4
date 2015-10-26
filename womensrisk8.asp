
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30611000") = Request.Form("EPQ30611000")
	Session("EPQ30612000") = Request.Form("EPQ30612000")

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30611000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30612000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30627000") = "1" then 
	Session("Page")="10"
	Response.Redirect "womensriskmaster.asp"
	end if


	Session("Page")="12"
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

    <form action="womensrisk8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
How old were you when you first began taking hormone replacement therapy (HRT)? <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input id="EPQ30611000" type="text" size="2" maxlength="2" name="EPQ30611000" class="required yearsExposed" value=<%=Session("EPQ30611000")%>>
		<label for="EPQ30611000">years old</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
In total, how many years have you taken hormone replacement therapy (HRT) throughout your lifetime, <u>not</u> including any breaks that you may have taken?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input id="EPQ30612000" type="text" size="2" maxlength="2" name="EPQ30612000" class="required yearsExposed" value=<%=Session("EPQ30612000")%>>
		<label for="EPQ30612000">years</label>
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
