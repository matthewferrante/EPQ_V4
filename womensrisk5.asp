
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30606000")="1" then
		strEPQ30606000answer1="checked"
	end if
	if Session("EPQ30606000")="2" then
		strEPQ30606000answer2="checked"
	end if
	if Session("EPQ30606000")="3" then
		strEPQ30606000answer3="checked"
	end if
	if Session("EPQ30606000")="4" then
		strEPQ30606000answer4="checked"
	end if
	if Session("EPQ30606000")="5" then
		strEPQ30606000answer5="checked"
	end if
	if Session("EPQ30606000")="6" then
		strEPQ30606000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30606000string")= ""

	Session("EPQ30606000") = Request.Form("EPQ30606000")
	Session("EPQ30607000") = Request.Form("EPQ30607000")
	Session("EPQ30606001") = Request.Form("EPQ30606001")

	if Session("EPQ30606000") = "1" then 
		Session("EPQ30606000string")= "Natural menopause (change of life)"
	end if
	if Session("EPQ30606000") = "2" then 
		Session("EPQ30606000string")= "Because of hysterectomy or removal of ovaries (or both)"
	end if
	if Session("EPQ30606000") = "3" then 
		Session("EPQ30606000string")= "Took medication that stopped my period, including treatment for breast cancer."
	end if
	if Session("EPQ30606000") = "4" then 
		Session("EPQ30606000string")= "Other, please specify:"
	end if
	if Session("EPQ30606000") = "5" then 
		Session("EPQ30606000string")= "Pregnant or breastfeeding and they stopped temporarily."
	end if
	if Session("EPQ30606000") = "6" then 
		Session("EPQ30606000string")= "Took birth control that stopped my period temporarily."
	end if

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("TEMPEPQ30603000")="4" then
	Session("Page")="3"
	Response.Redirect "womensriskmaster.asp"
end if

		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30606000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30607000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
What was the reason your periods stopped?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30606000" class="required qTrigger" value="1" id="EPQ306060001" <%=strEPQ30606000answer1%>>
		<label for="EPQ306060001">Natural menopause (change of life)</label><br>

		<input type="radio" name="EPQ30606000" class="qTrigger" value="2" id="EPQ306060002" <%=strEPQ30606000answer2%>>
		<label for="EPQ306060002">Because of removal of my uterus (hysterectomy), ovaries (oophorectomy), or both</label><br>

		<input type="radio" name="EPQ30606000" class="qTriggerOff" value="5" id="EPQ306060005" <%=strEPQ30606000answer5%>>
		<label for="EPQ306060005">I have been pregnant or breastfeeding and they stopped temporarily</label><br>

		<input type="radio" name="EPQ30606000" class="qTriggerOff" value="6" id="EPQ306060006" <%=strEPQ30606000answer6%>>
		<label for="EPQ306060006">I take birth control that stopped my period temporarily</label><br>

		<input type="radio" name="EPQ30606000" class="qTrigger" value="3" id="EPQ306060003" <%=strEPQ30606000answer3%>>
		<label for="EPQ306060003">I took medication that permanently stopped my period, including treatment for cancer</label><br>
		<input type="radio" name="EPQ30606000" class="qTriggerOff" value="4" id="EPQ30606004" <%=strEPQ30606000answer4%>>
		<label for="EPQ306060004">Other, specify:
</label>
		<input id="EPQ30606001" type="text" maxlength="28" size="28" name="EPQ30606001" class="requiredIfPreviousRadio" value='<%=Session("EPQ30606001")%>' ><br>

	</div><!-- [ /#AnswerBox] --> </fieldset>


<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
How old were you when your periods stopped completely?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input id="EPQ30607000" type="text" size="2" maxlength="2" name="EPQ30607000" class="yearsExposed requiredIfBranchActive" value=<%=Session("EPQ30607000")%>>
		<label for="EPQ30607000">years old</label><br>
	</div><!-- [ /#AnswerBox] --> </fieldset>
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
