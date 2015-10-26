
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC39400000")="1" then
		strTHRC39400000answer1="checked"
	end if
	if Session("THRC39400000")="2" then
		strTHRC39400000answer2="checked"
	end if
	if Session("THRC39400000")="0" then
		strTHRC39400000answer3="checked"
	end if

end if
	
if Request.Form("ispostback")="1" then
	Session("THRC39400000") = Request.Form("THRC39400000")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="19exposure"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("THRC39400000")="0" then

		Session.Contents.Remove("THRC39900000")
		Session.Contents.Remove("THRC39910000")

	end if

	if Session("EPQ31158000")="1" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31158000")="2" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31159000")="1" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31159000")="2" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC39400000")="1" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC39400000")="2" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if



	Session("Page")="21"
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


    <form action="cancerrisk19b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class="QuestionBox">
Have you ever been exposed to someone else's cigarette smoke at leisure (including restaurants, bars, casinos,<br> cars, etc)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC39400000" value="1" id="THRC394000001" class="required" <%=strTHRC39400000answer1%>>
		<label for="THRC394000001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="THRC39400000" value="2" id="THRC394000002" <%=strTHRC39400000answer2%>>
		<label for="THRC394000002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="THRC39400000" value="0" id="THRC394000003" <%=strTHRC39400000answer3%>>
		<label for="THRC394000003">Never or infrequently</label><br>

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
