
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11345000")="1" then
		strHM11345000answer1="checked"
	end if
	if Session("HM11345000")="2" then
		strHM11345000answer2="checked"
	end if
	if Session("HM11345000")="3" then
		strHM11345000answer3="checked"
	end if

	if Session("HM11346000")="1" then
		strHM11346000answer1="checked"
	end if
	if Session("HM11346000")="2" then
		strHM11346000answer2="checked"
	end if
	if Session("HM11346000")="3" then
		strHM11346000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11345000string")= ""
	Session("HM11346000string")= ""


	Session("HM11345000") = Request.Form("HM11345000")
	Session("HM11346000") = Request.Form("HM11346000")




	if Session("HM11345000") = "3" then 
		Session("HM11345000string")= "Without help"
	end if
	if Session("HM11345000") = "2" then 
		Session("HM11345000string")= "With some help"
	end if
	if Session("HM11345000") = "1" then 
		Session("HM11345000string")= "Completely unable to use the telephone"
	end if

	if Session("HM11346000") = "3" then 
		Session("HM11346000string")= "Without help"
	end if
	if Session("HM11346000") = "2" then 
		Session("HM11346000string")= "With some help"
	end if
	if Session("HM11346000") = "1" then 
		Session("HM11346000string")= "Completely unable to travel unless special arrangements are made"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=42
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="44"
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

    <form action="qualityoflife43.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <div id='SpecialNote'>
<b>For each question, select the answer that best applies to your situation.</b>
	</div>
<br>



	<fieldset>

  <legend class='QuestionBox'>
	Can you use the telephone?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11345000" value="3" id="HM11345010" class="required" <%=strHM11345000answer3%>>
		<label for="HM11345010">Without help</label><br>
		<input type="radio" name="HM11345000" value="2" id="HM11345020" <%=strHM11345000answer2%>>
		<label for="HM11345020">With some help</label><br>
		<input type="radio" name="HM11345000" value="1" id="HM11345030" <%=strHM11345000answer1%>>
		<label for="HM11345030">Completely unable to use the telephone</label><br>
	</div><!-- [ /#AnswerBox] -->   
</fieldset
<br>
<fieldset>
<legend class='QuestionBox'>
    Can you get to places that are out of walking distance?<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11346000" value="3" id="HM11346010" class="required" <%=strHM11346000answer3%>>
    <label for="HM11346010">Without help</label><br>
    <input type="radio" name="HM11346000" value="2" id="HM11346020" <%=strHM11346000answer2%>>
    <label for="HM11346020">With some help</label><br>
    <input type="radio" name="HM11346000" value="1" id="HM11346030" <%=strHM11346000answer1%>>
    <label for="HM11346030">Completely unable to travel unless special arrangements are made</label><br>


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
