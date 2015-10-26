
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10503000")="1" then
		strCUTA10503000answer1="checked"
	end if
	if Session("CUTA10503000")="2" then
		strCUTA10503000answer2="checked"
	end if


	if Session("CUTA10504000")="1" then
		strCUTA10504000answer1="checked"
	end if
	if Session("CUTA10504000")="2" then
		strCUTA10504000answer2="checked"
	end if
	if Session("CUTA10504000")="3" then
		strCUTA10504000answer3="checked"
	end if
	if Session("CUTA10504000")="4" then
		strCUTA10504000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA10504000string")= ""

	Session("CUTA10503000") = Request.Form("CUTA10503000")
	Session("CUTA10504000") = Request.Form("CUTA10504000")

	if Session("CUTA10504000") = "1" then 
		Session("CUTA10504000string")= ""
	end if
	if Session("CUTA10504000") = "2" then 
		Session("CUTA10504000string")= ""
	end if
	if Session("CUTA10504000") = "3" then 
		Session("CUTA10504000string")= ""
	end if
	if Session("CUTA10504000") = "4" then 
		Session("CUTA10504000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("Page")="4a"
 	<!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("CUTA10503000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("CUTA10503000")="2" then
		Session.Contents.Remove("CUTA10505000")
		Session.Contents.Remove("CUTA10506000")
		Session.Contents.Remove("CUTA10507000")
		Session.Contents.Remove("CUTA10508000")
		Session.Contents.Remove("CUTA10509000")
		Session.Contents.Remove("CUTA10510000")
		Session.Contents.Remove("CUTA10511000")
		Session.Contents.Remove("CUTA10512000")
		Session.Contents.Remove("CUTA10513000")
		Session.Contents.Remove("CUTA10514000")
		Session.Contents.Remove("CUTA10515000")

	end if


if Session("CUTA10503000") = "1" then 
	Session("Page")="4b1"
else
	Session("Page")="5"
end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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
<br>
    <form action="currentsymptoms4b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

<div id="SpecialNote">
This section includes questions about the skin lesion for which you are seeing the doctor at Moffitt.
</div>
<br>
	<fieldset>
		<legend class="QuestionBox">
Most of our patients have a skin lesion that is related to the visit.<br> Do you have a lesion?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10503000" value="1" class="qTrigger required" id="CUTA10503000" <%=strCUTA10503000answer1%>>
			<label for="CUTA10501001">Yes</label><br>
			<input type="radio" name="CUTA10503000" value="2" class="qTriggerOff" id="CUTA10503000" <%=strCUTA10503000answer2%>>
			<label for="CUTA10503000">No</label><br>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset class="hiddenQ">
		<legend class="QuestionBox">How long has your lesion been present?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10504000" value="1" id="CUTA10502001" class="requiredIfBranchActive" <%=strCUTA10504000answer1%>>
			<label for="CUTA10502001">Less than 6 months</label><br>
			<input type="radio" name="CUTA10504000" value="2" id="CUTA10502002" <%=strCUTA10504000answer2%>>
			<label for="CUTA10502002">6 - 12 months</label><br>
			<input type="radio" name="CUTA10504000" value="3" id="CUTA10502003" <%=strCUTA10504000answer3%>>
			<label for="CUTA10502003">13 months - 2 years</label><br>
			<input type="radio" name="CUTA10504000" value="4" id="CUTA10502004" <%=strCUTA10504000answer4%>>
			<label for="CUTA10502004">More than 2 years</label>
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
<script>
$(function() {
	$('#formQuestion').validate({
		errorPlacement: function(error, element) {
			error.appendTo(element.closest('fieldset').find('legend'));
			element.closest('.QuestionAnswersBox').effect('highlight', {}, 12000);
		}
	});
});
</script>
	
 </body>
</html>
