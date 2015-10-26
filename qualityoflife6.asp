
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11301000")="1" then
		strGU11301000answer1="checked"
	end if
	if Session("GU11301000")="2" then
		strGU11301000answer2="checked"
	end if
	if Session("GU11301000")="3" then
		strGU11301000answer3="checked"
	end if
	if Session("GU11301000")="4" then
		strGU11301000answer4="checked"
	end if
	if Session("GU11301000")="5" then
		strGU11301000answer5="checked"
	end if

	if Session("GU11302000")="1" then
		strGU11302000answer1="checked"
	end if
	if Session("GU11302000")="2" then
		strGU11302000answer2="checked"
	end if
	if Session("GU11302000")="3" then
		strGU11302000answer3="checked"
	end if
	if Session("GU11302000")="4" then
		strGU11302000answer4="checked"
	end if
	if Session("GU11302000")="5" then
		strGU11302000answer5="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11301000string")= ""
	Session("GU11301100string")= ""
	Session("GU11302000string")= ""


	Session("GU11301000") = Request.Form("GU11301000")
	Session("GU11301001") = Request.Form("GU11301001")
	Session("GU11302000") = Request.Form("GU11302000")




	if Session("GU11301000") = "1" then 
		Session("GU11301000string")= "Currently has own (native) bladder"
	end if
	if Session("GU11301000") = "2" then 
		Session("GU11301000string")= "Currently has conduit/ostomy"
	end if
	if Session("GU11301000") = "3" then 
		Session("GU11301000string")= "Currently has neo-bladder"
	end if
	if Session("GU11301000") = "4" then 
		Session("GU11301000string")= "Currently has continent urinary diversion/catheterizable pouch"
	end if
	if Session("GU11301000") = "5" then 
		Session("GU11301000string")= "Currently has other, "&Session("GU11301001")
	end if

	if Session("GU11302000") = "1" then 
		Session("GU11302000string")= "Feels the need to empty bladder, neo-bladder, pouch or external appliance more freqently than once an hour during the day over the past 4 weeks"
	end if
	if Session("GU11302000") = "2" then 
		Session("GU11302000string")= "Feels the need to empty bladder, neo-bladder, pouch or external appliance once an hour during the day over the past 4 weeks"
	end if
	if Session("GU11302000") = "3" then 
		Session("GU11302000string")= "Feels the need to empty bladder, neo-bladder, pouch or external appliance once every 2 hours during the day over the past 4 weeks"
	end if
	if Session("GU11302000") = "4" then 
		Session("GU11302000string")= "Feels the need to empty bladder, neo-bladder, pouch or external appliance once every 3-5 hours during the day over the past 4 weeks"
	end if
	if Session("GU11302000") = "5" then 
		Session("GU11302000string")= "Feels the need to empty bladder, neo-bladder, pouch or external appliance only once or twice a day during the day over the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
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

	Session("Page")="6a"
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

<div id="SpecialNote">
The next set of questions is designed to measure Quality of Life issues in patients with bladder problems and/or urinary diversions. In order to help us get the most accurate assessment, it is important that you answer all questions honestly and completely.
</div>
<br>
    <form action="qualityoflife6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <div id='SpecialNote'>
	<b>URINARY FUNCTION</b><br>This section is about your urinary habits. Please consider <b>ONLY THE PAST 4 WEEKS</b>.<br>
	</div>
<br>

	<fieldset>
    <legend class="QuestionBox">

		Which of the following do you currently have?<br>
</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="GU11301000" value="1" id="GU11301010" class="required" <%=strGU11301000answer1%>>
		<label for="GU11301010">Own (native) bladder</label><br>
		<input type="radio" name="GU11301000" value="2" id="GU11301020" <%=strGU11301000answer2%>>
		<label for="GU11301020">Ileal conduit or ostomy</label><br>
		<input type="radio" name="GU11301000" value="3" id="GU11301030" <%=strGU11301000answer3%>>
		<label for="GU11301030">Neo-bladder</label><br>
		<input type="radio" name="GU11301000" value="4" id="GU11301040" <%=strGU11301000answer4%>>
		<label for="GU11301040">Continent urinary diversion or catheterizable pouch (such as an Indiana, Koch, Miami, Maintz or UCLA pouch)</label><br>
		<input type="radio" name="GU11301000" value="5" id="GU11301050" <%=strGU11301000answer5%>>
			<label for="GU11301050">Other: Specify</label><input id="GU11301001" class="requiredIfPreviousRadio" type="text" maxlength="25" size="25" id="GU11301001" name="GU11301001" value='<%=Session("GU11301001")%>'><br>	</div><!-- [ /#AnswerBox] -->   
</fieldset>

<fieldset>
<legend class="QuestionBox">
    <b>Over the past 4 weeks</b>, how often did you typically feel the need to empty your bladder, neo-bladder, pouch or external appliance (bag) during the day?<br>
</legend>
	<div class="QuestionAnswersBox">
    <input type="radio" name="GU11302000" value="1" id="GU11302010" class="required" <%=strGU11302000answer1%>>
    <label for="GU11302010">More frequently than once an hour</label><br>
    <input type="radio" name="GU11302000" value="2" id="GU11302020" <%=strGU11302000answer2%>>
    <label for="GU11302020">Once an hour</label><br>
    <input type="radio" name="GU11302000" value="3" id="GU11302030" <%=strGU11302000answer3%>>
    <label for="GU11302030">Once every 2 hours</label><br>
    <input type="radio" name="GU11302000" value="4" id="GU11302040" <%=strGU11302000answer4%>>
    <label for="GU11302040">Once every 3-5 hours</label><br>
    <input type="radio" name="GU11302000" value="5" id="GU11302050" <%=strGU11302000answer5%>>
    <label for="GU11302050">Only once or twice a day</label><br>
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
