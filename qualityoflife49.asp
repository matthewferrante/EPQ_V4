
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("HM11358000")="0" then
		strHM11358000answer0="checked"
	end if
	if Session("HM11358000")="1" then
		strHM11358000answer1="checked"
	end if
	if Session("HM11358000")="2" then
		strHM11358000answer2="checked"
	end if


	if Session("HM11359000")="1" then
		strHM11359000answer1="checked"
	end if
	if Session("HM11359000")="2" then
		strHM11359000answer2="checked"
	end if
	if Session("HM11359000")="3" then
		strHM11359000answer3="checked"
	end if

	if Session("HM11359000")="2.0" then
		strHM11359000answer20="checked"
	end if
	if Session("HM11359000")="0" then
		strHM11359000answer0="checked"
	end if
	if Session("HM11359000")="0.0" then
		strHM11359000answer00="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM11358000string")= ""
	Session("HM11359000string")= ""


	Session("HM11358000") = Request.Form("HM11358000")
	Session("HM11359000") = Request.Form("HM11359000")


	if Session("HM11358000") = "2" then 
		Session("HM11358000string")= "Without any help?"
	end if
	if Session("HM11358000") = "1" then 
		Session("HM11358000string")= "Just with help with buttons?"
	end if
	if Session("HM11358000") = "0" then 
		Session("HM11358000string")= "With someone helping you most of the time?"
	end if


	if Session("HM11359000") = "3" then 
		Session("HM11359000string")= "Without any help apart from a frame?"
	end if
	if Session("HM11359000") = "2" then 
		Session("HM11359000string")= "With one person watching over you?"
	end if
	if Session("HM11359000") = "2.0" then 
		Session("HM11359000string")= "With one person helping you?"
	end if
	if Session("HM11359000") = "0" then 
		Session("HM11359000string")= "With more than one person helping?"
	end if
	if Session("HM11359000") = "0.0" then 
		Session("HM11359000string")= "Not at all?"
	end if
	if Session("HM11359000") = "1" then 
		Session("HM11359000string")= "Or do you use wheelchair independently (e.g. round corners)?"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=48
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="50"
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

    <form action="qualityoflife49.asp" method="post" id="formQuestion" name="formQuestion">
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
	Do you get dressed:<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11358000" value="2" id="HM11358010" class="required" <%=strHM11358000answer2%>>
		<label for="HM11358010">Without any help?</label><br>
		<input type="radio" name="HM11358000" value="1" id="HM11358020" <%=strHM11358000answer1%>>
		<label for="HM11358020">Just with help with buttons?</label><br>
		<input type="radio" name="HM11358000" value="0" id="HM11358030" <%=strHM11358000answer0%>>
		<label for="HM11358030">With someone helping you most of the time?</label><br>

	</div><!-- [ /#AnswerBox] -->   
</fieldset
<br>
<fieldset>
<legend class='QuestionBox'>
    Do you walk indoors:<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11359000" value="3" id="HM11359010" class="required" <%=strHM11359000answer3%>>
    <label for="HM11359010">Without any help apart from a frame?</label><br>
    <input type="radio" name="HM11359000" value="2" id="HM11359020" <%=strHM11359000answer2%>>
    <label for="HM11359020">With one person watching over you?</label><br>
    <input type="radio" name="HM11359000" value="2.0" id="HM11359030" <%=strHM11359000answer20%>>
    <label for="HM11359030">With one person helping you?</label><br>
    <input type="radio" name="HM11359000" value="0" id="HM11359040" <%=strHM11359000answer0%>>
    <label for="HM11359040">With more than one person helping?</label><br>
    <input type="radio" name="HM11359000" value="0.0" id="HM11359050" <%=strHM11359000answer00%>>
    <label for="HM11359040">Not at all?</label><br>

    <input type="radio" name="HM11359000" value="1" id="HM11359060" <%=strHM11359000answer1%>>
    <label for="HM11359040">Or do you use wheelchair independently (e.g. round corners)?</label><br>


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
