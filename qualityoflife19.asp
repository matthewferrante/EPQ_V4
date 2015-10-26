
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11339000")="0" then
		strGU11339000answer0="checked"
	end if
	if Session("GU11339000")="1" then
		strGU11339000answer1="checked"
	end if
	if Session("GU11339000")="2" then
		strGU11339000answer2="checked"
	end if
	if Session("GU11339000")="3" then
		strGU11339000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU11339000string")= ""
	

	Session("GU11339000") = Request.Form("GU11339000")
	


	if Session("GU11339000") = "0" then 
		Session("GU11339000string")= "No pads or adult diapers to control leakage during the last 4 weeks"
	end if
	if Session("GU11339000") = "1" then 
		Session("GU11339000string")= "1 pads or adult diaper per day to control leakage during the last 4 weeks"
	end if
	if Session("GU11339000") = "2" then 
		Session("GU11339000string")= "2 pads or adult diapers per day to control leakage during the last 4 weeks"
	end if
	if Session("GU11339000") = "3" then 
		Session("GU11339000string")= "3 or more pads or adult diapers per day to control leakage during the last 4 weeks"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=18
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

	Session("Page")="20"
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

    <form action="qualityoflife19.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	How many pads or adult diapers <u>per day</u> did you usually use to control leakage <b>during the last 4 weeks</b>?<br>
	</legend>

	<div class="QuestionAnswersBox">
	
		<input type="radio" name="GU11339000" value="0" id="GU11339010" class="required" <%=strGU11339000answer0%>>
		<label for="GU11339010">None</label><br>
		<input type="radio" name="GU11339000" value="1" id="GU11339020" <%=strGU11339000answer1%>>
		<label for="GU11339020">1 pad per day</label><br>
		<input type="radio" name="GU11339000" value="2" id="GU11339030" <%=strGU11339000answer2%>>
		<label for="GU11339030">2 pads per day</label><br>
		<input type="radio" name="GU11339000" value="3" id="GU11339040" <%=strGU11339000answer3%>>
		<label for="GU11339040">3 or more pads per day</label><br>

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
