
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11305000")="1" then
		strGU11305000answer1="checked"
	end if
	if Session("GU11305000")="2" then
		strGU11305000answer2="checked"
	end if
	if Session("GU11305000")="3" then
		strGU11305000answer3="checked"
	end if
	if Session("GU11305000")="4" then
		strGU11305000answer4="checked"
	end if


	if Session("GU11306000")="1" then
		strGU11306000answer1="checked"
	end if
	if Session("GU11306000")="2" then
		strGU11306000answer2="checked"
	end if
	if Session("GU11306000")="3" then
		strGU11306000answer3="checked"
	end if
	if Session("GU11306000")="4" then
		strGU11306000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11305000string")= ""
	Session("GU11306000string")= ""


	Session("GU11305000") = Request.Form("GU11305000")
	Session("GU11306000") = Request.Form("GU11306000")




	if Session("GU11305000") = "1" then 
		Session("GU11305000string")= "No urinary leakage control whatsoever while awake during the past 4 weeks"
	end if
	if Session("GU11305000") = "2" then 
		Session("GU11305000string")= "Frequent dribbling while awake during the past 4 weeks"
	end if
	if Session("GU11305000") = "3" then 
		Session("GU11305000string")= "Occasional dribbling while awake during the past 4 weeks"
	end if
	if Session("GU11305000") = "4" then 
		Session("GU11305000string")= "Total control of urinary leakage while awake during the past 4 weeks"
	end if


	if Session("GU11306000") = "1" then 
		Session("GU11306000string")= "No urinary leakage control whatsoever when sleeping during the past 4 weeks"
	end if
	if Session("GU11306000") = "2" then 
		Session("GU11306000string")= "Frequent dribbling when sleeping during the past 4 weeks"
	end if
	if Session("GU11306000") = "3" then 
		Session("GU11306000string")= "Occasional dribbling when sleeping during the past 4 weeks"
	end if
	if Session("GU11306000") = "4" then 
		Session("GU11306000string")= "Total control of urinary leakage when sleeping during the past 4 weeks"
	end if





end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="6a"
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31301000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31302000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "qualityoflifemaster.asp"
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

    <form action="qualityoflife6b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class="QuestionBox">
	 <b>Over the past 4 weeks</b>, which of the following best describes your urinary leakage when you are awake?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="GU11305000" value="1" id="GU11305010" class="required" <%=strGU11305000answer1%>>
		<label for="GU11305010">No control whatsoever</label><br>
		<input type="radio" name="GU11305000" value="2" id="GU11305020" <%=strGU11305000answer2%>>
		<label for="GU11305020">Frequent dribbling</label><br>
		<input type="radio" name="GU11305000" value="3" id="GU11305030" <%=strGU11305000answer3%>>
		<label for="GU11305030">Occasional dribbling</label><br>
		<input type="radio" name="GU11305000" value="4" id="GU11305040" <%=strGU11305000answer4%>>
		<label for="GU11305040">Total control</label><br>

	</div><!-- [ /#AnswerBox] -->   
    <br>
</fieldset>
<fieldset>
  <legend class="QuestionBox">
<b>Over the past 4 weeks</b>, which of the following best describes your urinary leakage when you are sleeping?<br>
</legend>
	<div class="QuestionAnswersBox">
    <input type="radio" name="GU11306000" value="1" id="GU11306010" class="required" <%=strGU11306000answer1%>>
    <label for="GU11306010">No control whatsoever</label><br>
    <input type="radio" name="GU11306000" value="2" id="GU11306020" <%=strGU11306000answer2%>>
    <label for="GU11306020">Frequent dribbling</label><br>
    <input type="radio" name="GU11306000" value="3" id="GU11306030" <%=strGU11306000answer3%>>
    <label for="GU11306030">Occasional dribbling</label><br>
    <input type="radio" name="GU11306000" value="4" id="GU11306040" <%=strGU11306000answer4%>>
    <label for="GU11306040">Total control</label><br>

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
