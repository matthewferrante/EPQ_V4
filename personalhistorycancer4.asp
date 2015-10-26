
<%

Session("PersonalHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Personal History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

end if

if Request.Form("ispostback")="1" then
	Session("EPQ30343000")= Request.Form("EPQ30343000")

end if


if Request.Form("StopID")="1" then
		Session("PersonalHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


			Session("Page")="3"
			if Session("PHCDisplayCounter") > 9 then
			Session("Page")="31"
			end if
			if Session("PHCDisplayCounter") > 18 then
			Session("Page")="32"
			end if
			if Session("PHCDisplayCounter") > 27 then
			Session("Page")="33"
			end if

		Session("ReturnID")="1"
		Response.Redirect "personalhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30430000")) = 0 then
		 <!--#include file="questionscomplete.asp"-->
	else
	end if


if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311026")="1" then
	Session("Page")="1cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311035")="1" then
	Session("Page")="2cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="3cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if

	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "personalhistorycancermaster.asp"
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


    <form action="personalhistorycancer4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
  <fieldset>
    <legend class="QuestionBox">
What type of other treatment did you have?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="text" size="75" maxlength="75" ID="EPQ30343000" name="EPQ30343000" class="requiredCompleteText" value='<%=Session("EPQ30343000")%>' >

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
