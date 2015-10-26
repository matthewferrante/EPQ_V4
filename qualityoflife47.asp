
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11355000")="1" then
		strHM11355000answer1="checked"
	end if
	if Session("HM11355000")="2" then
		strHM11355000answer2="checked"
	end if
	if Session("HM11355000")="3" then
		strHM11355000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("HM11355000string")= ""

	Session("HM11355000") = Request.Form("HM11355000")

	if Session("HM11355000") = "3" then 
		Session("HM11355000string")= "Without help"
	end if
	if Session("HM11355000") = "2" then 
		Session("HM11355000string")= "With some help"
	end if
	if Session("HM11355000") = "1" then 
		Session("HM11355000string")= "Completely unable to handle money"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=46
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="48"
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

    <form action="qualityoflife47.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <div id="SpecialNote">
<b>For each question, select the answer that best applies to your situation.</b>
	</div>
<br>

	<fieldset>

  <legend class='QuestionBox'>
	Can you manage your own money?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11355000" value="3" id="HM11355010" class="required" <%=strHM11355000answer3%>>
		<label for="HM11355010">Without help</label><br>
		<input type="radio" name="HM11355000" value="2" id="HM11355020" <%=strHM11355000answer2%>>
		<label for="HM11355020">With some help</label><br>
		<input type="radio" name="HM11355000" value="1" id="HM11355030" <%=strHM11355000answer1%>>
		<label for="HM11355030">Completely unable to handle money</label><br>
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
