<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"
Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31142000")="1" then
		strEPQ31142000answer1="checked"
	end if
	if Session("EPQ31142000")="0" then
		strEPQ31142000answer2="checked"
	end if
	if Session("EPQ31142000")="77" then
		strEPQ31142000answer3="checked"
	end if

	if Session("EPQ31143010")="1" then
		strEPQ31143010answer1="checked"
	end if
	if Session("EPQ31143020")="1" then
		strEPQ31143020answer1="checked"
	end if
	if Session("EPQ31143030")="1" then
		strEPQ31143030answer1="checked"
	end if
	if Session("EPQ31143040")="1" then
		strEPQ31143040answer1="checked"
	end if
	if Session("EPQ31143050")="1" then
		strEPQ31143050answer1="checked"
	end if

	if Session("EPQ31144000")="1" then
		strEPQ31144000answer1="checked"
	end if
	if Session("EPQ31144000")="2" then
		strEPQ31144000answer2="checked"
	end if
	if Session("EPQ31144000")="3" then
		strEPQ31144000answer3="checked"
	end if
	if Session("EPQ31144000")="88" then
		strEPQ31144000answer4="checked"
	end if
end if

if Request.Form("ispostback")="1" then
	Session("EPQ31142000string")= ""
	Session("EPQ31143010string")= ""
	Session("EPQ31143020string")= ""
	Session("EPQ31143030string")= ""
	Session("EPQ31143040string")= ""
	Session("EPQ31143050string")= ""
	Session("EPQ31144000string")= ""

	Session("EPQ31142000") = Request.Form("EPQ31142000")
	Session("EPQ31143010") = Request.Form("EPQ31143010")
	Session("EPQ31143020") = Request.Form("EPQ31143020")
	Session("EPQ31143030") = Request.Form("EPQ31143030")
	Session("EPQ31143040") = Request.Form("EPQ31143040")
	Session("EPQ31143050") = Request.Form("EPQ31143050")
	Session("EPQ31144000") = Request.Form("EPQ31144000")

	if Session("EPQ31142000") = "1" then 
		Session("EPQ31142000string")= ""
	end if
	if Session("EPQ31142000") = "2" then 
		Session("EPQ31142000string")= ""
	end if
	if Session("EPQ31142000") = "77" then 
		Session("EPQ31142000string")= ""
	end if

	if Session("EPQ31143010") = "1" then 
		Session("EPQ31143010string")= ""
	end if
	if Session("EPQ31143020") = "1" then 
		Session("EPQ31143020string")= ""
	end if
	if Session("EPQ31143030") = "1" then 
		Session("EPQ31143030string")= ""
	end if
	if Session("EPQ31143040") = "1" then 
		Session("EPQ31143040string")= ""
	end if
	if Session("EPQ31143050") = "1" then 
		Session("EPQ31143050string")= ""
	end if

	if Session("EPQ31144000") = "1" then 
		Session("EPQ31144000string")= ""
	end if
	if Session("EPQ31144000") = "2" then 
		Session("EPQ31144000string")= ""
	end if
	if Session("EPQ31144000") = "3" then 
		Session("EPQ31144000string")= ""
	end if
	if Session("EPQ31144000") = "88" then 
		Session("EPQ31144000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="8"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="16"
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
	<div id="SpecialNote">
A sunburn is any reddening or discomfort of your skin that lasts longer than 2 hours after exposure to the sun or other UV (ultraviolet) sources such as tanning beds or sun lamps.
	</div>
<br>

    <form action="cancerrisk15.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<fieldset>
	<legend class='QuestionBox'>
	Have you ever been sunburned severely enough to cause blistering?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31142000" value="1" class="required qTrigger" id="EPQ311420001" <%=strEPQ31142000answer1%>>
		<label for="EPQ311420001">Yes</label><br>
		<input type="radio" name="EPQ31142000" value="0" class="qTriggerOff qTriggerOff2" id="EPQ311420002" <%=strEPQ31142000answer2%>>
		<label for="EPQ311420002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   
</fieldset>


<div class="hiddenQ atLeastOneCheckboxIfBranchActive">
	<fieldset>
		<legend class='QuestionBox'>
			At what age(s) did this occur? Check all that apply.<br>
		</legend>
		<div class="QuestionAnswersBox">
			<input type="checkbox" name="EPQ31143010" value="1" class="qTrigger2" id="EPQ31143010" <%=strEPQ31143010answer1%>>
			<label for="EPQ31143010">5 or younger</label><br>
			<input type="checkbox" name="EPQ31143020" value="1" class="qTrigger2" id="EPQ31143020" <%=strEPQ31143020answer1%>>
			<label for="EPQ31143020">6-10 years of age</label><br>
			<input type="checkbox" name="EPQ31143030" value="1" class="qTrigger2" id="EPQ31143030" <%=strEPQ31143030answer1%>>
			<label for="EPQ31143030">11-15 years of age</label><br>
			<input type="checkbox" name="EPQ31143040" value="1" id="EPQ31143040" <%=strEPQ31143040answer1%>>
			<label for="EPQ31143040">16-20 years of age</label><br>
			<input type="checkbox" name="EPQ31143050" value="1" id="EPQ31143050" <%=strEPQ31143050answer1%>>
			<label for="EPQ31143050">over 20 years of age</label><br>
		</div><!-- [ /#AnswerBox] -->   
	</fieldset>
</div>
<div class="hiddenQ2">
	<fieldset>
		<legend class='QuestionBox'>
			About how many blistering burns did you get before the age of 15?<br>
		</legend>

		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ31144000" value="1" class="requiredIfBranchActive" id="EPQ311440001" <%=strEPQ31144000answer1%>>
			<label for="EPQ311440001">1-2</label><br>

			<input type="radio" name="EPQ31144000" value="2" id="EPQ311440002" <%=strEPQ31144000answer2%>>
			<label for="EPQ311440002">3-5</label><br>

			<input type="radio" name="EPQ31144000" value="3" id="EPQ311440003" <%=strEPQ31144000answer3%>>
			<label for="EPQ311440003">more than 5</label><br>

			<input type="radio" name="EPQ31144000" value="88" id="EPQ311440004" <%=strEPQ31144000answer4%>>
			<label for="EPQ311440004">Don't know</label><br>

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
	
 </body>
</html>
