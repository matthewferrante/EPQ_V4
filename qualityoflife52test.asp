
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11364000")="1" then
		strHM11364000answer1="checked"
	end if
	if Session("HM11364000")="2" then
		strHM11364000answer2="checked"
	end if
	if Session("HM11364000")="2.0" then
		strHM11364000answer2.0="checked"
	end if
	if Session("HM11364000")="0" then
		strHM11364000answer0="checked"
	end if
	if Session("HM11364000")="0.0" then
		strHM11364000answer0.0="checked"
	end if

	if Session("HM11365000")="1" then
		strHM11365000answer1="checked"
	end if
	if Session("HM11365000")="2" then
		strHM11365000answer2="checked"
	end if
	if Session("HM11365000")="0" then
		strHM11365000answer0="checked"
	end if
	if Session("HM11365000")="0.0" then
		strHM11365000answer0.0="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11364000string")= ""
	Session("HM11365000string")= ""


	Session("HM11364000") = Request.Form("HM11364000")
	Session("HM11365000") = Request.Form("HM11365000")


	if Session("HM11364000") = "2" then 
		Session("HM11364000string")= "Never"
	end if
	if Session("HM11364000") = "2.0" then 
		Session("HM11364000string")= "Less than once a week"
	end if
	if Session("HM11364000") = "1" then 
		Session("HM11364000string")= "Less than once a day"
	end if
	if Session("HM11364000") = "0" then 
		Session("HM11364000string")= "More often"
	end if
	if Session("HM11364000") = "0.0" then 
		Session("HM11364000string")= "Or do you have a catheter managed for you?"
	end if

	if Session("HM11365000") = "2" then 
		Session("HM11365000string")= "Never"
	end if
	if Session("HM11365000") = "1" then 
		Session("HM11365000string")= "Occasional accident"
	end if
	if Session("HM11365000") = "0" then 
		Session("HM11365000string")= "All the time"
	end if
	if Session("HM11365000") = "0.0" then 
		Session("HM11365000string")= "Or do you need someone to give an enema?"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=51
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="0"
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

    <form action="qualityoflife52.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


  <div class='QuestionBox'>
<b>These are some questions about your ability to look after yourself. These may not seem to apply to you. Please select one for each of the following questions.</b>
	</div>
<br>

	<fieldset>

  <legend class='QuestionBox'>
	Are you incontinent with urine?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11364000" value="2" id="HM11364010" class="required" <%=strHM11364000answer2%>>
		<label for="HM11364010">Never</label><br>
		<input type="radio" name="HM11364000" value="2.0" id="HM11364020" <%=strHM11364000answer2.0%>>
		<label for="HM11364020">Less than once a week</label><br>
		<input type="radio" name="HM11364000" value="1" id="HM11364030" <%=strHM11364000answer1%>>
		<label for="HM11364030">Less than once a day</label><br>
		<input type="radio" name="HM11364000" value="0" id="HM11364040" <%=strHM11364000answer0%>>
		<label for="HM11364040">More often</label><br>
		<input type="radio" name="HM11364000" value="0.0" id="HM11364050" <%=strHM11364000answer0.0%>>
		<label for="HM11364050">Or do you have a catheter managed for you?</label><br>
	</div><!-- [ /#AnswerBox] -->   
</fieldset>
<br>
<fieldset>
<legend class='QuestionBox'>
    Do you soil yourself?<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11365000" value="2" id="HM11365010" class="required" <%=strHM11365000answer2%>>
    <label for="HM11365010">Never</label><br>
    <input type="radio" name="HM11365000" value="1" id="HM11365020" <%=strHM11365000answer1%>>
    <label for="HM11365020">Occasional accident</label><br>
    <input type="radio" name="HM11365000" value="0" id="HM11365030" <%=strHM11365000answer0%>>
    <label for="HM11365030">All the time</label><br>
    <input type="radio" name="HM11365000" value="0.0" id="HM11365040" <%=strHM11365000answer0.0%>>
    <label for="HM11365040">Or do you need someone to give an enema?</label><br>


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
