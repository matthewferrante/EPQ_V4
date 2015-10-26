
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
	<legend class="QuestionBox">Have you had a menstrual period within the last year?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30602000" value="1" class="required qTrigger" id="EPQ306020001" <%=strEPQ30602000answer1%>>
		<label for="EPQ306020001">Yes</label><br>

		<input type="radio" name="EPQ30602000" value="0" class="required qTriggerOff" id="EPQ306020002" <%=strEPQ30602000answer2%>>
		<label for="EPQ306020002">No</label><br>
	</div><!-- [ /#AnswerBox] -->
</fieldset>


<fieldset class="hiddenQ">
	<legend class="QuestionBox">Please provide additional details:</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30602001" value="1" class="requiredIfBranchActive" id="EPQ306020011" <%=strEPQ30602001answer1%>>
		<label for="EPQ306020011">and I am <u>not</u> going through menopause (change of life).</label><br>

		<input type="radio" name="EPQ30602001" value="2" id="EPQ306020012" <%=strEPQ30602001answer2%>>
		<label for="EPQ306020012">and I am <u>possibly</u> going through menopause (change of life).</label><br>

		<input type="radio" name="EPQ30602001" value="3" id="EPQ306020013" <%=strEPQ30602001answer3%>>
		<label for="EPQ306020013">and I am <u>definitely</u> going through menopause (change of life).</label><br>

		<input type="radio" name="EPQ30602001" value="4" id="EPQ306020014" <%=strEPQ30602001answer4%>>
		<label for="EPQ306020014">but I am <u>now</u> pregnant or breastfeeding.</label><br>
	</div>
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
