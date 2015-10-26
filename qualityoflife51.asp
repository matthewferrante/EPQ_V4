
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11362000")="1" then
		strHM11362000answer1="checked"
	end if
	if Session("HM11362000")="2" then
		strHM11362000answer2="checked"
	end if
	if Session("HM11362000")="0" then
		strHM11362000answer0="checked"
	end if

	if Session("HM11363000")="1" then
		strHM11363000answer1="checked"
	end if
	if Session("HM11363000")="0" then
		strHM11363000answer0="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11362000string")= ""
	Session("HM11363000string")= ""


	Session("HM11362000") = Request.Form("HM11362000")
	Session("HM11363000") = Request.Form("HM11363000")




	if Session("HM11362000") = "2" then 
		Session("HM11362000string")= "Without any help?"
	end if
	if Session("HM11362000") = "1" then 
		Session("HM11362000string")= "With some help but can do something?"
	end if
	if Session("HM11362000") = "0" then 
		Session("HM11362000string")= "With quite a lot of help?"
	end if



	if Session("HM11363000") = "1" then 
		Session("HM11363000string")= "Without any help?"
	end if
	if Session("HM11363000") = "0" then 
		Session("HM11363000string")= "With help?"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=50
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="52"
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

    <form action="qualityoflife51.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


  <div id="SpecialNote">
<b>These are some questions about your ability to look after yourself. These may not seem to apply to you. Please select one for each of the following questions.</b>
	</div>
<br>

	<fieldset>

  <legend class='QuestionBox'>
	Do you use the toilet or commode:<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11362000" value="2" id="HM11362010" class="required" <%=strHM11362000answer2%>>
		<label for="HM11362010">Without any help?</label><br>
		<input type="radio" name="HM11362000" value="1" id="HM11362020" <%=strHM11362000answer1%>>
		<label for="HM11362020">With some help but can do something?</label><br>
		<input type="radio" name="HM11362000" value="0" id="HM11362030" <%=strHM11362000answer0%>>
		<label for="HM11362030">With quite a lot of help?</label><br>


	</div><!-- [ /#AnswerBox] -->   
</fieldset
<br>
<fieldset>
<legend class='QuestionBox'>
    Do you brush your hair and teeth, wash your face and shave:<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11363000" value="1" id="HM11363010" class="required" <%=strHM11363000answer1%>>
    <label for="HM11363010">Without help?</label><br>
    <input type="radio" name="HM11363000" value="0" id="HM11363020" <%=strHM11363000answer0%>>
    <label for="HM11363020">With help?</label><br>



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
