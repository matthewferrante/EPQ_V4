
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("TEMPEPR30604100")="1" then
		strTEMPEPR30604100answer1="checked"
	end if
	if Session("TEMPEPR30604100")="2" then
		strTEMPEPR30604100answer2="checked"
	end if
	if Session("TEMPEPR30604100")="3" then
		strTEMPEPR30604100answer3="checked"
	end if
	if Session("TEMPEPR30604100")="4" then
		strTEMPEPR30604100answer4="checked"
	end if

	if Session("TEMP2EPR30604100")="1" then
		strTEMP2EPR30604100answer1="checked"
	end if
	if Session("TEMP2EPR30604100")="2" then
		strTEMP2EPR30604100answer2="checked"
	end if
	if Session("TEMP2EPR30604100")="3" then
		strTEMP2EPR30604100answer3="checked"
	end if
	if Session("TEMP2EPR30604100")="4" then
		strTEMP2EPR30604100answer4="checked"
	end if
	if Session("TEMP3EPR30604100")="1" then
		strTEMP3EPR30604100answer1="checked"
	end if
	if Session("TEMP3EPR30604100")="2" then
		strTEMP3EPR30604100answer2="checked"
	end if
	if Session("TEMP3EPR30604100")="3" then
		strTEMP3EPR30604100answer3="checked"
	end if
	if Session("TEMP3EPR30604100")="4" then
		strTEMP3EPR30604100answer4="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("TEMPEPR30604100") = Request.Form("TEMPEPR30604100")
	Session("TEMP2EPR30604100") = Request.Form("TEMP2EPR30604100")
	Session("TEMP3EPR30604100") = Request.Form("TEMP3EPR30604100")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("TEMPEPQ31165000") = "1" then 
	Session("Page")="43"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31164000") = "1" then 
	Session("Page")="41"
	Response.Redirect "cancerriskmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="40"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="45"
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


    <form action="cancerrisk44.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">

Examples of acetaminophen are <i>Tylenol, Anacin-3, Aspirin-free Excedrin</i>
</div>
<br>

	<fieldset>
  <legend class='QuestionBox'>
Over the past 12 months, how often on average did you take acetaminophen? <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPR30604100" value="1" id="TEMPEPR306041001" class="required" <%=strTEMPEPR30604100answer1%>>
		<label for="TEMPEPR306041001">1-2 days per week</label><br>
		<input type="radio" name="TEMPEPR30604100" value="2" id="TEMPEPR306041002" <%=strTEMPEPR30604100answer2%>>
		<label for="TEMPEPR306041002">3-4 days per week</label><br>
		<input type="radio" name="TEMPEPR30604100" value="3" id="TEMPEPR306041003" <%=strTEMPEPR30604100answer3%>>
		<label for="TEMPEPR306041003">5-6 days per week</label><br>
		<input type="radio" name="TEMPEPR30604100" value="4" id="TEMPEPR306041003" <%=strTEMPEPR30604100answer4%>>
		<label for="TEMPEPR306041003">Daily (7 days per week)</label><br>

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset>
 <legend class='QuestionBox'>
Over the past 12 months, how many pills of acetaminophen did you take on average per day? </legend>
<div class="QuestionAnswersBox">

<input type="radio" name="TEMP2EPR30604100" value="1" id="TEMP2EPR306041001" class="required" <%=strTEMP2EPR30604100answer1%>>
<label for="TEMP2EPR306041001">1 pill per day</label><br>

<input type="radio" name="TEMP2EPR30604100" value="2" id="TEMP2EPR306041002" <%=strTEMP2EPR30604100answer2%>>
<label for="TEMP2EPR306041002">2 pills per day</label><br>


<input type="radio" name="TEMP2EPR30604100" value="3" id="TEMP2EPR306041003" <%=strTEMP2EPR30604100answer3%>>
<label for="TEMP2EPR306041003">3-4 pills per day</label><br>

<input type="radio" name="TEMP2EPR30604100" value="4" id="TEMP2EPR306041003" <%=strTEMP2EPR30604100answer4%>>
<label for="TEMP2EPR30604100">5 or more pills per day</label><br>


	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
How long have you taken acetaminophen on a regular basis (at least once per week)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMP3EPR30604100" value="1"  id="TEMP3EPR306041001" class="required" <%=strTEMP3EPR30604100answer1%>>
		<label for="TEMPEPR306041001">Only for the past 12 months </label><br>
		<input type="radio" name="TEMP3EPR30604100" value="2"  id="TEMP3EPR306041002" <%=strTEMP3EPR30604100answer2%>>
		<label for="TEMPEPR306041002">For the past 2-5 years</label><br>
		<input type="radio" name="TEMP3EPR30604100" value="3"  id="TEMP3EPR306041003" <%=strTEMP3EPR30604100answer3%>>
		<label for="TEMPEPR306041003">For the past 6-9 years</label><br>
		<input type="radio" name="TEMP3EPR30604100" value="4"  id="TEMP3EPR306041003" <%=strTEMP3EPR30604100answer4%>>
		<label for="TEMP3EPR30604100">For the past 10 years or more</label><br>

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
