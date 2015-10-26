
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11354000")="1" then
		strGU11354000answer1="checked"
	end if
	if Session("GU11354000")="2" then
		strGU11354000answer2="checked"
	end if
	if Session("GU11354000")="3" then
		strGU11354000answer3="checked"
	end if
	if Session("GU11354000")="4" then
		strGU11354000answer4="checked"
	end if
	if Session("GU11354000")="99" then
		strGU11354000answer99="checked"
	end if


	if Session("GU11355000")="1" then
		strGU11355000answer1="checked"
	end if
	if Session("GU11355000")="2" then
		strGU11355000answer2="checked"
	end if
	if Session("GU11355000")="3" then
		strGU11355000answer3="checked"
	end if
	if Session("GU11355000")="4" then
		strGU11355000answer4="checked"
	end if
	if Session("GU11355000")="5" then
		strGU11355000answer5="checked"
	end if
	if Session("GU11355000")="99" then
		strGU11355000answer99="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11354000string")= ""
	Session("GU11355000string")= ""


	Session("GU11354000") = Request.Form("GU11354000")
	Session("GU11355000") = Request.Form("GU11355000")




	if Session("GU11354000") = "1" then 
		Session("GU11354000string")= "Describes quality of erections as none at all"
	end if
	if Session("GU11354000") = "2" then 
		Session("GU11354000string")= "Describes quality of erections as not firm enough for any sexual activity during the past 4 weeks"
	end if
	if Session("GU11354000") = "3" then 
		Session("GU11354000string")= "Describes quality of erections as firm enough for masturbation and foreplay only during the past 4 weeks"
	end if
	if Session("GU11354000") = "4" then 
		Session("GU11354000string")= "Describes quality of erections as firm enough for entercourse during the past 4 weeks"
	end if
	if Session("GU11354000") = "99" then 
		Session("GU11354000string")= "Prefer not to answer"
	end if

	if Session("GU11355000") = "1" then 
		Session("GU11355000string")= "I never had an erection when I wanted one during the past 4 weeks"
	end if
	if Session("GU11355000") = "2" then 
		Session("GU11355000string")= "I had an erection less than half the time I wanted one during the past 4 weeks"
	end if
	if Session("GU11355000") = "3" then 
		Session("GU11355000string")= "I had an erection about half the time I wanted one during the past 4 weeks"
	end if
	if Session("GU11355000") = "4" then 
		Session("GU11355000string")= "I had an erection more than half the time I wanted one during the past 4 weeks"
	end if
	if Session("GU11355000") = "5" then 
		Session("GU11355000string")= "I had an erection whenever I wanted one during the past 4 weeks"
	end if
	if Session("GU11355000") = "99" then 
		Session("GU11355000string")= "Prefer not to answer"
	end if



end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=24
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

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10202000")="1" then
		Session("Page")="27"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if
end if
end if


	Session("Page")="26"
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

    <form action="qualityoflife25.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	 How would you describe the usual QUALITY of your erections <b>during the last 4 weeks</b>?
	</legend>

	<div class="QuestionAnswersBox">

		<input type="radio" name="GU11354000" value="1" id="GU11354010" class="required" <%=strGU11354000answer1%>>
		<label for="GU11354010">None at all</label><br>
		<input type="radio" name="GU11354000" value="2" id="GU11354020" <%=strGU11354000answer2%>>
		<label for="GU11354020">Not firm enough for any sexual activity</label><br>
		<input type="radio" name="GU11354000" value="3" id="GU11354030" <%=strGU11354000answer3%>>
		<label for="GU11354030">Firm enough for masturbation and foreplay only</label><br>
		<input type="radio" name="GU11354000" value="4" id="GU11354040" <%=strGU11354000answer4%>>
		<label for="GU11354040">Firm enough for intercourse</label><br>
		<input type="radio" name="GU11354000" value="99" id="GU11354050" <%=strGU11354000answer99%>>
		<label for="GU11354050">Prefer not to answer</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>
<br>
  <fieldset>
  <legend class='QuestionBox'>
    How would you describe the FREQUENCY of your erections <b>during the last 4 weeks</b>?
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="GU11355000" value="1" id="GU11355010" class="required" <%=strGU11355000answer1%>>
    <label for="GU11355010">I NEVER had an erection when I wanted one</label><br>
    <input type="radio" name="GU11355000" value="2" id="GU11355020" <%=strGU11355000answer2%>>
    <label for="GU11355020">I had an erection LESS THAN HALF the time I wanted one</label><br>
    <input type="radio" name="GU11355000" value="3" id="GU11355030" <%=strGU11355000answer3%>>
    <label for="GU11355030">I had an erection ABOUT HALF the time I wanted one</label><br>
    <input type="radio" name="GU11355000" value="4" id="GU11355040" <%=strGU11355000answer4%>>
    <label for="GU11355040">I had an erection MORE THAN HALF the time I wanted one</label><br>
    <input type="radio" name="GU11355000" value="5" id="GU11355050" <%=strGU11355000answer5%>>
    <label for="GU11355050">I had an erection WHENEVER I wanted one</label><br>
    <input type="radio" name="GU11355000" value="99" id="GU11355060" <%=strGU11355000answer99%>>
    <label for="GU11355060">Prefer not to answer</label><br>
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
