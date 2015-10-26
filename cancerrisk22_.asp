
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31162000")="0" then
		strEPQ31162000answer0="checked"
	end if

	if Session("EPQ31162000")="1" then
		strEPQ31162000answer1="checked"
	end if
	if Session("EPQ31162000")="2" then
		strEPQ31162000answer2="checked"
	end if
	if Session("EPQ31162000")="3" then
		strEPQ31162000answer3="checked"
	end if
	if Session("EPQ31162000")="4" then
		strEPQ31162000answer4="checked"
	end if

	if Session("EPQ31163000")="0" then
		strEPQ31163000answer0="checked"
	end if
	if Session("EPQ31163000")="1" then
		strEPQ31163000answer1="checked"
	end if
	if Session("EPQ31163000")="2" then
		strEPQ31163000answer2="checked"
	end if
	if Session("EPQ31163000")="3" then
		strEPQ31163000answer3="checked"
	end if
	if Session("EPQ31163000")="4" then
		strEPQ31163000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31162000string")= ""
	Session("EPQ31163000string")= ""


	Session("EPQ31162000") = Request.Form("EPQ31162000")
	Session("EPQ31163000") = Request.Form("EPQ31163000")

	if Session("EPQ31162000") = "0" then 
		Session("EPQ31162000string")= "never took aspirin"
	end if
	if Session("EPQ31162000") = "1" then 
		Session("EPQ31162000string")= "took aspirin 1-3 times a month"
	end if
	if Session("EPQ31162000") = "2" then 
		Session("EPQ31162000string")= "took aspirin 1 time per week"
	end if
	if Session("EPQ31162000") = "3" then 
		Session("EPQ31162000string")= "took aspirin 2-5 times per week"
	end if
	if Session("EPQ31162000") = "4" then 
		Session("EPQ31162000string")= "took aspirin 6 or more times per week"
	end if


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("SurveyVersion")="EPQ" then
	Session("Page")="21"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	Session("Page")="21"
	Response.Redirect "cancerriskmaster.asp"
end if
end if

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
	Session("Page")="21"
	Response.Redirect "cancerriskmaster.asp"
end if
end if

if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	Session("Page")="21"
	Response.Redirect "cancerriskmaster.asp"
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="21d"
	Response.Redirect "cancerriskmaster.asp"

end if
end if

	if Session("THRC30605000")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605000")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if


		Session("ReturnID")="1"
		Session("Page")="21b"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31162000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31163000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

If Session("SurveyVersion")="Thoracic" then 
	Session("Page")="23"
else
	Session("Page")="0"
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="22b"
end if
end if
if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
	Session("Page")="25"
	Response.Redirect "cancerriskmaster.asp"
end if
end if

if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10201000")="1" or Session("HM10206000")="1" or Session("HM10207000")="1" or Session("HM10202000")="1" or Session("HM10203000")="1" or Session("HM10204000")="1" then
		Session("Page")="25a"
		Response.Redirect "cancerriskmaster.asp"
	else
			Session("Page")="0"
		Response.Redirect "cancerriskmaster.asp"
	end if

end if
end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"


	Session("Page")="0"
	Session("CancerRiskSectionStatus")="Completed"

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


    <form action="cancerrisk22.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
<b>Over the past 12 months, how often did you take aspirin? Examples of aspirin include: Bufferin,<br> Anacin, enteric-coated aspirin, Ecotrin, and Excedrin. </b>(<u>Do not include</u> acetaminophen, Tylenol,<br> Ibuprofen, Advil.)<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31162000" value="0" id="EPQ311620001" class="required" <%=strEPQ31162000answer0%>>
		<label for="EPQ311620001">Never</label><br>
		<input type="radio" name="EPQ31162000" value="1" id="EPQ311620002" <%=strEPQ31162000answer1%>>
		<label for="EPQ311620002">1-3 times per month</label><br>
		<input type="radio" name="EPQ31162000" value="2" id="EPQ311620003" <%=strEPQ31162000answer2%>>
		<label for="EPQ311620003">1 time per week</label><br>
		<input type="radio" name="EPQ31162000" value="3" id="EPQ311620004" <%=strEPQ31162000answer3%>>
		<label for="EPQ311620004">2-5 times per week</label><br>
		<input type="radio" name="EPQ31162000" value="4" id="EPQ311620005" <%=strEPQ31162000answer4%>>
		<label for="EPQ311620005">6 or more times per week</label>
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
<b>Over the past 12 months, how often did you take other nonsteroidal anti-inflammatory drugs or<br> arthritis medications? Examples include Ibuprofen, Advil, Nuprin, Motrin, Aleve, Naprosyn, Feldene,<br> Clinoril. </b> (<u>Do not include</u> Aspirin, acetaminophen, Tylenol, prednisone, cortisone, Deltasone)<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31163000" value="0" id="EPQ311630001" class="required" <%=strEPQ31163000answer0%>>
		<label for="EPQ311630001">Never</label><br>
		<input type="radio" name="EPQ31163000" value="1" id="EPQ311630002" <%=strEPQ31163000answer1%>>
		<label for="EPQ311630002">1-3 times per month</label><br>
		<input type="radio" name="EPQ31163000" value="2" id="EPQ311630003" <%=strEPQ31163000answer2%>>
		<label for="EPQ311630003">1 time per week</label><br>
		<input type="radio" name="EPQ31163000" value="3" id="EPQ311630004" <%=strEPQ31163000answer3%>>
		<label for="EPQ311630004">2-5 times per week</label><br>
		<input type="radio" name="EPQ31163000" value="4" id="EPQ311630005" <%=strEPQ31163000answer4%>>
		<label for="EPQ311630005">6 or more times per week</label>
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
