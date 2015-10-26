
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30602000")="1" then
		strEPQ30602000answer1="checked"
	end if
	if Session("EPQ30602000")="0" then
		strEPQ30602000answer2="checked"
	end if
	if Session("EPQ30602000")="77" then
		strEPQ30602000answer3="checked"
	end if


	if Session("EPQ30602001")="1" then
		strEPQ30602001answer1="checked"
	end if
	if Session("EPQ30602001")="2" then
		strEPQ30602001answer2="checked"
	end if
	if Session("EPQ30602001")="3" then
		strEPQ30602001answer3="checked"
	end if
	if Session("EPQ30602001")="4" then
		strEPQ30602001answer4="checked"
	end if

	if Session("EPQ30602002")="1" then
		strEPQ30602002answer1="checked"
	end if
	if Session("EPQ30602002")="2" then
		strEPQ30602002answer2="checked"
	end if
	if Session("EPQ30602002")="3" then
		strEPQ30602002answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30602000string")= ""
	Session("EPQ30602001string")= ""


	Session("EPQ30602000") = Request.Form("EPQ30602000")
	Session("EPQ30602001") = Request.Form("EPQ30602001")



	if Session("EPQ30602000") = "1" then 
		Session("EPQ30201000string")= ""
	end if
	if Session("EPQ30602000") = "0" then 
		Session("EPQ30602000string")= "No menses within last yr "
	end if
	if Session("EPQ30602000") = "77" then 
		Session("EPQ30602000string")= "PT needs help with menstrual Hx "
	end if

	if Session("EPQ30602001") = "1" then 
		Session("EPQ30602001string")= "Pre-menopausal"
	end if
	if Session("EPQ30602001") = "2" then 
		Session("EPQ30602001string")= "Possibly menopausal"
	end if
	if Session("EPQ30602001") = "3" then 
		Session("EPQ30602001string")= ""
	end if
	if Session("EPQ30602001") = "4" then 
		Session("EPQ30602001string")= ""
	end if

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30602000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if len(Session("EPQ30602001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30602000")="0" then
		Session.Contents.Remove("EPQ30603000")
		Session.Contents.Remove("EPQ30604000")
		Session.Contents.Remove("EPQ30605000")
	end if

	if Session("EPQ30602000") ="1" or Session("EPQ30602000") ="77" then 
	Session("Page")="3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
	end if


	if Session("EPQ30602000")="0" then 
		Session("Page")="5"
		Response.Redirect "womensriskmaster.asp"
	end if

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


    <form action="womensrisk2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<fieldset>
	<legend class="QuestionBox">When was your last menstrual period?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30602000" value="1" class="required qTrigger" id="EPQ306020001" <%=strEPQ30602000answer1%>>
		<label for="EPQ306020001">Within the past year</label><br>

		<input type="radio" name="EPQ30602000" value="0" class="required qTriggerOff" id="EPQ306020002" <%=strEPQ30602000answer2%>>
		<label for="EPQ306020002">Not within the past year</label><br>
	</div><!-- [ /#AnswerBox] -->
</fieldset>

<div class="hiddenQ">
<fieldset>
	<legend class="QuestionBox">When did you begin your last period?  Please give the best estimate of when this occurred.</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPQ30602000" value="1" class="requiredIfBranchActive qTriggerOff2" id="EPQ306020001" <%=strEPQ30602000answer1%>>
		<label for="EPQ306020001">More than 6 months ago</label><br>

		<input type="radio" name="TEMPEPQ30602000" value="2" class="qTriggerOff2" id="EPQ306020002" <%=strEPQ30602000answer2%>>
		<label for="EPQ306020002">More than 2 months ago, but less than 6 months ago</label><br>
		<input type="radio" name="TEMPEPQ30602000" value="3" class="qTrigger2" id="EPQ306020002" <%=strEPQ30602000answer2%>>
	<label for="EPQ306020002">Within the last 2 months</label><br>
	</div><!-- [ /#AnswerBox] -->
</fieldset>


	<fieldset>
 <div class="hiddenQ2">
	<div class="QuestionAnswersBox datePast">
	Date:
		<input id="EPQ30202000" type="text" size="2" name="EPQ30202000" class="dateMonth datePast requiredIfPreviousRadio" maxlength="2" onKeyup="autotab(this, document.formQuestion.EPQ30203000)" value=<%=Session("EPQ30202000")%>>
		/
		<input id="EPQ30203000" type="text" size="2" name="EPQ30203000" class="dateDay requiredIfPreviousRadio" maxlength="2" onKeyup="autotab(this, document.formQuestion.EPQ30204000)" value=<%=Session("EPQ30203000")%>>
		/
		<input id="EPQ30204000" type="text" size="4" name="EPQ30204000" class="dateYear requiredIfPreviousRadio" maxlength="4" value=<%=Session("EPQ30204000")%>>
<br><br>

	</div><!-- [ /#AnswerBox] -->
	</fieldset>
</div>

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
