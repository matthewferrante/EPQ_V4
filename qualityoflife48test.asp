
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11356000")="1" then
		strHM11356000answer1="checked"
	end if
	if Session("HM11356000")="0" then
		strHM11356000answer0="checked"
	end if
	if Session("HM11356000")="0.0" then
		strHM11356000answer00="checked"
	end if
	if Session("HM11356000")="0.00" then
		strHM11356000answer000="checked"
	end if
	if Session("HM11356000")="0.000" then
		strHM11356000answer0000="checked"
	end if

	if Session("HM11357000")="1" then
		strHM11357000answer1="checked"
	end if
	if Session("HM11357000")="2" then
		strHM11357000answer2="checked"
	end if
	if Session("HM11357000")="0" then
		strHM11357000answer0="checked"
	end if
	if Session("HM11357000")="0.0" then
		strHM11357000answer00="checked"
	end if
	if Session("HM11357000")="0.00" then
		strHM11357000answer000="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("HM11356000string")= ""
	Session("HM11357000string")= ""


	Session("HM11356000") = Request.Form("HM11356000")
	Session("HM11357000") = Request.Form("HM11357000")




	if Session("HM11356000") = "1" then 
		Session("HM11356000string")= "Manage on your own?"
	end if
	if Session("HM11356000") = "0" then 
		Session("HM11356000string")= "Need help getting in and out?"
	end if
	if Session("HM11356000") = "0.0" then 
		Session("HM11356000string")= "Need other help?"
	end if
	if Session("HM11356000") = "0.00" then 
		Session("HM11356000string")= "Never have a bath or shower?"
	end if
	if Session("HM11356000") = "0.000" then 
		Session("HM11356000string")= "Need to be washed in bed?"
	end if

	if Session("HM11357000") = "2" then 
		Session("HM11357000string")= "Without any help?"
	end if
	if Session("HM11357000") = "1" then 
		Session("HM11357000string")= "With someone carrying your frame?"
	end if
	if Session("HM11357000") = "0" then 
		Session("HM11357000string")= "With someone encouraging you?"
	end if
	if Session("HM11357000") = "0.0" then 
		Session("HM11357000string")= "With physical help?"
	end if
	if Session("HM11357000") = "0.00" then 
		Session("HM11357000string")= "Not at all?"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=47
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="49"
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

    <form action="qualityoflife48.asp" method="post" id="formQuestion" name="formQuestion">
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
	In the bath or shower, do you:<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11356000" value="1" id="HM11356010" class="required" <%=strHM11356000answer1%>>
		<label for="HM11356010">Manage on your own?</label><br>
		<input type="radio" name="HM11356000" value="0" id="HM11356020" <%=strHM11356000answer0%>>
		<label for="HM11356020">Need help getting in and out?</label><br>
		<input type="radio" name="HM11356000" value="0.0" id="HM11356030" <%=strHM11356000answer00%>>
		<label for="HM11356030">Need other help?</label><br>
		<input type="radio" name="HM11356000" value="0.00" id="HM11356040" <%=strHM11356000answer000%>>
		<label for="HM11356040">Never have a bath or shower?</label><br>
		<input type="radio" name="HM11356000" value="0.000" id="HM11356050" <%=strHM11356000answer0000%>>
		<label for="HM11356050">Need to be washed in bed?</label><br>
	</div><!-- [ /#AnswerBox] -->   
</fieldset>


<br>
<fieldset>
<legend class='QuestionBox'>
    Do you climb stairs at home:<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11357000" value="2" id="HM11357010" class="required" <%=strHM11357000answer2%>>
    <label for="HM11357010">Without any help?</label><br>
    <input type="radio" name="HM11357000" value="1" id="HM11357020" <%=strHM11357000answer1%>>
    <label for="HM11357020">With someone carrying your frame?</label><br>
    <input type="radio" name="HM11357000" value="0" id="HM11357030" <%=strHM11357000answer0%>>
    <label for="HM11357030">With someone encouraging you?</label><br>
    <input type="radio" name="HM11357000" value="0.0" id="HM11357040" <%=strHM11357000answer00%>>
    <label for="HM11357040">With physical help?</label><br>

    <input type="radio" name="HM11357000" value="0.00" id="HM11357050" <%=strHM11357000answer000%>>
    <label for="HM11357040">Not at all?</label><br>


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
