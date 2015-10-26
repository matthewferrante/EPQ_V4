
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then



	if Session("EPQ31158000")="1" then
		strEPQ31158000answer1="checked"
	end if
	if Session("EPQ31158000")="2" then
		strEPQ31158000answer2="checked"
	end if
	if Session("EPQ31158000")="0" then
		strEPQ31158000answer3="checked"
	end if
	if Session("EPQ31159000")="1" then
		strEPQ31159000answer1="checked"
	end if
	if Session("EPQ31159000")="2" then
		strEPQ31159000answer2="checked"
	end if
	if Session("EPQ31159000")="0" then
		strEPQ31159000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31158000string")= ""
	Session("EPQ31159000string")= ""

	Session("EPQ31158000") = Request.Form("EPQ31158000")
	Session("EPQ31159000") = Request.Form("EPQ31159000")


	if Session("EPQ31158000") = "1" then 
		Session("EPQ31158000string")= ""
	end if
	if Session("EPQ31158000") = "2" then 
		Session("EPQ31158000string")= ""
	end if
	if Session("EPQ31158000") = "0" then 
		Session("EPQ3115800string")= ""
	end if
	if Session("EPQ31159000") = "1" then 
		Session("EPQ31159000string")= ""
	end if
	if Session("EPQ31159000") = "2" then 
		Session("EPQ31159000string")= ""
	end if
	if Session("EPQ31159000") = "0" then 
		Session("EPQ31159000string")= ""
	end if





end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"

if Session("TEMPEPQ31155000")="1" then
	Session("Page")="19ecig2"
else
	Session("Page")="19ecig"
end if

Response.Redirect "cancerriskmaster.asp"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ31158000")="0" then

		Session.Contents.Remove("THRC39500000")
		Session.Contents.Remove("THRC39600000")

	end if

	if Session("EPQ31159000")="0" then

		Session.Contents.Remove("THRC39700000")
		Session.Contents.Remove("THRC39800000")

	end if

	if Session("SurveyVersion")="Thoracic" then 
	Session("Page")="19b"
	else
	Session("Page")="21"
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


    <form action="cancerrisk19exposure.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
Have you ever been exposed to someone else’s cigarette smoke at home?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31158000" value="1" id="EPQ311580001" class="required" <%=strEPQ31158000answer1%>>
		<label for="EPQ311580001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31158000" value="2" id="EPQ311580002" <%=strEPQ31158000answer2%>>
		<label for="EPQ311580002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31158000" value="0" id="EPQ311580003" <%=strEPQ31158000answer3%>>
		<label for="EPQ311580003">Infrequently or never</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
Have you ever been exposed to someone else’s cigarette smoke at work?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31159000" value="1" id="EPQ311590001" class="required" <%=strEPQ31159000answer1%>>
		<label for="EPQ311590001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31159000" value="2" id="EPQ311590002" <%=strEPQ31159000answer2%>>
		<label for="EPQ311590002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31159000" value="0" id="EPQ311590003" <%=strEPQ31159000answer3%>>
		<label for="EPQ311590003">Infrequently or never</label><br>
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
