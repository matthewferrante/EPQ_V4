
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC30603000")="1" then
		strTHRC30603000answer1="checked"
	end if
	if Session("THRC30603000")="2" then
		strTHRC30603000answer2="checked"
	end if
	if Session("THRC30603000")="3" then
		strTHRC30603000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("THRC30603000") = Request.Form("THRC30603000")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("THRC30400020")="1" then
		Session("Page")="17b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400010")="1" then
		Session("Page")="17b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="17b"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("THRC30400040")="1" then
		Session("Page")="17b4"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400050")="1" then
		Session("Page")="17b5"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400060")="1" then
		Session("Page")="17b6"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31147000")="1" then
	Session("Page")="18"
	else
	Session("Page")="19"
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
    <form action="cancerrisk17b3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
  <legend class='QuestionBox'>
How long did you use Nicotine lozenges (for example, Commit)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30603000" value="1" id="THRC306030001" class="required" <%=strTHRC30603000answer1%>>
		<label for="THRC306030001">Less than 3 months</label><br>
		<input type="radio" name="THRC30603000" value="2" id="THRC306030002" <%=strTHRC30603000answer2%>>
		<label for="THRC306030002">3-6 months</label><br>
		<input type="radio" name="THRC30603000" value="3" id="THRC306030003" <%=strTHRC30603000answer3%>>
		<label for="THRC306030003">Longer than 6 months</label><br>
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
