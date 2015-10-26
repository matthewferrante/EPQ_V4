
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11315000")="1" then
		strGU11315000answer1="checked"
	end if
	if Session("GU11315000")="2" then
		strGU11315000answer2="checked"
	end if
	if Session("GU11315000")="3" then
		strGU11315000answer3="checked"
	end if
	if Session("GU11315000")="4" then
		strGU11315000answer4="checked"
	end if
	if Session("GU11315000")="5" then
		strGU11315000answer5="checked"
	end if

	if Session("GU11316000")="1" then
		strGU11316000answer1="checked"
	end if
	if Session("GU11316000")="2" then
		strGU11316000answer2="checked"
	end if
	if Session("GU11316000")="3" then
		strGU11316000answer3="checked"
	end if
	if Session("GU11316000")="4" then
		strGU11316000answer4="checked"
	end if
	if Session("GU11316000")="5" then
		strGU11316000answer5="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11315000string")= ""
	Session("GU11316000string")= ""


	Session("GU11315000") = Request.Form("GU11315000")
	Session("GU11316000") = Request.Form("GU11316000")




	if Session("GU11315000") = "1" then 
		Session("GU11315000string")= "Rectal urgency more than once a day in the last 4 weeks"
	end if
	if Session("GU11315000") = "2" then 
		Session("GU11315000string")= "Rectal urgency about once a day in the last 4 weeks"
	end if
	if Session("GU11315000") = "3" then 
		Session("GU11315000string")= "Rectal urgency more than once a week in the last 4 weeks"
	end if
	if Session("GU11315000") = "4" then 
		Session("GU11315000string")= "Rectal urgency about once a week in the last 4 weeks"
	end if
	if Session("GU11315000") = "5" then 
		Session("GU11315000string")= "Rectal urgency rarely or never in the last 4 weeks"
	end if

	if Session("GU11316000") = "1" then 
		Session("GU11316000string")= "No loose stools in the past 4 weeks"
	end if
	if Session("GU11316000") = "2" then 
		Session("GU11316000string")= "Rarely had loose stools in the past 4 weeks"
	end if
	if Session("GU11316000") = "3" then 
		Session("GU11316000string")= "Loose stools about half the time in the past 4 weeks"
	end if
	if Session("GU11316000") = "4" then 
		Session("GU11316000string")= "Usually had loose stools in the past 4 weeks"
	end if
	if Session("GU11316000") = "5" then 
		Session("GU11316000string")= "Always had loose stools in the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=9
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

	Session("Page")="11"
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

    <form action="qualityoflife10.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <div id='SpecialNote'>
	<b>BOWEL HABITS</b><br>The next section is about your bowel habits and abdominal pain.
<br>
Please consider <b>ONLY THE PAST 4 WEEKS</b>.
	</div>
<br>

	<fieldset>
  <legend class='QuestionBox'>
		How often have you had rectal urgency (felt like I had to pass stool, but did not) <b>during the past 4 weeks</b>?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="GU11315000" value="1" id="GU11315010" class="required" <%=strGU11315000answer1%>>
		<label for="GU11315010">More than once a day</label><br>
		<input type="radio" name="GU11315000" value="2" id="GU11315020" <%=strGU11315000answer2%>>
		<label for="GU11315020">About once a day</label><br>
		<input type="radio" name="GU11315000" value="3" id="GU11315030" <%=strGU11315000answer3%>>
		<label for="GU11315030">More than once a week</label><br>
		<input type="radio" name="GU11315000" value="4" id="GU11315040" <%=strGU11315000answer4%>>
		<label for="GU11315040">About once a week</label><br>
		<input type="radio" name="GU11315000" value="5" id="GU11315050" <%=strGU11315000answer5%>>
		<label for="GU11315050">Rarely or never</label><br>
	</div><!-- [ /#AnswerBox] -->   
	</fieldset>
	<fieldset>
<br>
  <legend class='QuestionBox'>
    How often have you had stools (bowel movements) that were loose or liquid (no form, watery, mushy) <b><br>during the past 4 weeks</b>?<br>
</legend>

	<div class="QuestionAnswersBox">
    <input type="radio" name="GU11316000" value="1" id="GU11316010" class="required" <%=strGU11316000answer1%>>
    <label for="GU11316010">Never</label><br>
    <input type="radio" name="GU11316000" value="2" id="GU11316020" <%=strGU11316000answer2%>>
    <label for="GU11316020">Rarely</label><br>
    <input type="radio" name="GU11316000" value="3" id="GU11316030" <%=strGU11316000answer3%>>
    <label for="GU11316030">About half the time</label><br>
    <input type="radio" name="GU11316000" value="4" id="GU11316040" <%=strGU11316000answer4%>>
    <label for="GU11316040">Usually</label><br>
    <input type="radio" name="GU11316000" value="5" id="GU11316050" <%=strGU11316000answer5%>>
    <label for="GU11316050">Always</label><br>
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
