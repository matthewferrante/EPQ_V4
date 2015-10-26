
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM10401000")="1" then
		strHM10401000answer1="checked"
	end if
	if Session("HM10401000")="2" then
		strHM10401000answer2="checked"
	end if
	if Session("HM10401000")="3" then
		strHM10401000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then



	Session("HM10401000")= Request.Form("HM10401000")
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="8"
		Response.Redirect "pastmedicalmaster.asp"
end if


if Request.Form("ContinueID")="1" then

	Session("Page")="9"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
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


<form action="pastmedical8a.asp" method="post" id="formQuestion" name="formQuestion">
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset>
  <legend class="QuestionBox">
How severe is your dementia?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM10401000" class="required" value="1" 
id="HM10401010" <%=strHM10401000answer1%>>
		<label for="HM104010001">Mild</label><br>
		<input type="radio" name="HM10401000" value="2" id="HM10401020" <%=strHM10401000answer2%>>
		<label for="HM104010002">Moderate</label><br>
		<input type="radio" name="HM10401000" value="3" id="HM10401030" <%=strHM10401000answer3%>>
		<label for="HM104010003">Severe</label><br>
	</div><!-- [ /#AnswerBox] -->
 </fieldset>
	</div>

	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->
	</div> <!-- [ /#buttonBox ] -->
</div> <!-- [ /#formBlock ] -->


	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
 </div> <!-- [ /#rightbar ] -->

 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
