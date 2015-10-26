
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC30700000")="1" then
		strTHRC30700000answer1="checked"
	end if
	if Session("THRC30700000")="0" then
		strTHRC30700000answer2="checked"
	end if
	if Session("THRC30800000")="1" then
		strTHRC30800000answer1="checked"
	end if
	if Session("THRC30800000")="0" then
		strTHRC30800000answer2="checked"
	end if
	if Session("THRC30900000")="1" then
		strTHRC30900000answer1="checked"
	end if
	if Session("THRC30900000")="0" then
		strTHRC30900000answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("THRC30700000") = Request.Form("THRC30700000")
	Session("THRC30800000") = Request.Form("THRC30800000")
	Session("THRC30900000") = Request.Form("THRC30900000")
end if


if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"
		Session("Page")="18"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="18b2"
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

    <form action="cancerrisk18b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
  <legend class='QuestionBox'>
Do you find it difficult to refrain from smoking in places where it is forbidden e.g. in church, at the library, in cinema, etc.?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30700000" value="1" id="THRC307000001" class="required" <%=strTHRC30700000answer1%>>
		<label for="THRC307000001">Yes</label><br>
		<input type="radio" name="THRC30700000" value="0" id="THRC307000002" <%=strTHRC30700000answer2%>>
		<label for="THRC307000002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset>
  <legend class='QuestionBox'>
Which cigarette would you hate most to give up?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30800000" value="1" id="THRC308000001" class="required" <%=strTHRC30800000answer1%>>
		<label for="THRC308000001">The first cigarette in the morning</label><br>
		<input type="radio" name="THRC30800000" value="0" id="THRC308000002" <%=strTHRC30800000answer2%>>
		<label for="THRC308000002">Any other cigarette</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset>
  <legend class='QuestionBox'>
Do you smoke more frequently during the first hours after waking than during the rest of the day? <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30900000" value="1" id="THRC309000001" class="required" <%=strTHRC30900000answer1%>>
		<label for="THRC309000001">Yes</label><br>
		<input type="radio" name="THRC30900000" value="0" id="THRC309000002" <%=strTHRC30900000answer2%>>
		<label for="THRC309000002">No</label><br>
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
