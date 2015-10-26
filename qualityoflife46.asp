
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11351000")="1" then
		strHM11351000answer1="checked"
	end if
	if Session("HM11351000")="2" then
		strHM11351000answer2="checked"
	end if
	if Session("HM11351000")="3" then
		strHM11351000answer3="checked"
	end if

	if Session("HM11352000")="1" then
		strHM11352000answer1="checked"
	end if
	if Session("HM11352000")="2" then
		strHM11352000answer2="checked"
	end if

	if Session("HM11353000")="1" then
		strHM11353000answer1="checked"
	end if
	if Session("HM11353000")="2" then
		strHM11353000answer2="checked"
	end if
	if Session("HM11353000")="3" then
		strHM11353000answer3="checked"
	end if

	if Session("HM11354000")="1" then
		strHM11354000answer1="checked"
	end if
	if Session("HM11354000")="2" then
		strHM11354000answer2="checked"
	end if
	if Session("HM11354000")="3" then
		strHM11354000answer3="checked"
	end if

end if
	
if Request.Form("ispostback")="1" then
	Session("HM11351000string")= ""
	Session("HM11352000string")= ""
	Session("HM11353000string")= ""
	Session("HM11354000string")= ""

	Session("HM11351000") = Request.Form("HM11351000")
	Session("HM11352000") = Request.Form("HM11352000")
	Session("HM11353000") = Request.Form("HM11353000")
	Session("HM11354000") = Request.Form("HM11354000")


	if Session("HM11351000") = "3" then 
		Session("HM11351000string")= "Without help"
	end if
	if Session("HM11351000") = "2" then 
		Session("HM11351000string")= "With some help"
	end if
	if Session("HM11351000") = "1" then 
		Session("HM11351000string")= "Completely unable to do any housework"
	end if

	if Session("HM11352000") = "1" then 
		Session("HM11352000string")= "Yes"
	end if
	if Session("HM11352000") = "2" then 
		Session("HM11352000string")= "No"
	end if

	if Session("HM11353000") = "3" then 
		Session("HM11353000string")= "Without help (in the right doses at the right time)"
	end if
	if Session("HM11353000") = "2" then 
		Session("HM11353000string")= "With some help (take medicine if someone prepares it for you and/or reminds you to take it)"
	end if
	if Session("HM11353000") = "1" then 
		Session("HM11353000string")= "Completely unable to take own medicine"
	end if

	if Session("HM11354000") = "3" then 
		Session("HM11354000string")= "Without help (in the right doses at the right time)"
	end if
	if Session("HM11354000") = "2" then 
		Session("HM11354000string")= "With some help (take medicine if someone prepares it for you and/or reminds you to take it)"
	end if
	if Session("HM11354000") = "1" then 
		Session("HM11354000string")= "Completely unable to take own medicine"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=45
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="47"
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

    <form action="qualityoflife46.asp" method="post" id="formQuestion" name="formQuestion">
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
	Can you do your own laundry?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11351000" value="3" id="HM11351010" class="required" <%=strHM11351000answer3%>>
		<label for="HM11351010">Without help</label><br>
		<input type="radio" name="HM11351000" value="2" id="HM11351020" <%=strHM11351000answer2%>>
		<label for="HM11351020">With some help</label><br>
		<input type="radio" name="HM11351000" value="1" id="HM11351030" <%=strHM11351000answer1%>>
		<label for="HM11351030">Completely unable to do any laundry at all</label><br>
	</div><!-- [ /#AnswerBox] -->   
</fieldset
<br>
<fieldset>
<legend class='QuestionBox'>
    Do you take medicines or use any medications?<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" class="required qTrigger2 qTriggerOff3" name="HM11352000" value="1" id="HM11352010" class="required" <%=strHM11352000answer1%>>
    <label for="HM11352010">Yes</label><br>
    <input type="radio" class="qTrigger3 qTriggerOff2"  name="HM11352000" value="2" id="HM11352020" <%=strHM11352000answer2%>>
    <label for="HM11352020">No</label><br>

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ2"> 
<fieldset>
<legend class='QuestionBox'>
    Do you take your own medicine?<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11353000" value="3" id="HM11353010" class="requiredIfBranchActive" <%=strHM11353000answer3%>>
    <label for="HM11353010">Without help (in the right doses at the right time)</label><br>
    <input type="radio" name="HM11353000" value="2" id="HM11353020" <%=strHM11353000answer2%>>
    <label for="HM11353020">With some help (take medicine if someone prepares it for you and/or reminds you to take it)</label><br>
    <input type="radio" name="HM11353000" value="1" id="HM11353030" <%=strHM11353000answer1%>>
    <label for="HM11353030">Completely unable to take own medicine</label><br>


	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

</div>

<div class="hiddenQ3"> 
<fieldset>
<legend class='QuestionBox'>
    If you had to take medicine, could you do it?<br>
</legend>
	<div class="QuestionAnswersBox">

    <input type="radio" name="HM11354000" value="3" id="HM11354010" class="requiredIfBranchActive" <%=strHM11354000answer3%>>
    <label for="HM11354010">Without help (in the right doses at the right time)</label><br>
    <input type="radio" name="HM11354000" value="2" id="HM11354020" <%=strHM11354000answer2%>>
    <label for="HM11354020">With some help (take medicine if someone prepares it for you and/or reminds you to take it)</label><br>
    <input type="radio" name="HM11354000" value="1" id="HM11354030" <%=strHM11354000answer1%>>
    <label for="HM11354030">Completely unable to take own medicine</label><br>


	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

</div>
	

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
