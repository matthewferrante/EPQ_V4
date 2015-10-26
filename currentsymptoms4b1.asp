
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10505000")="1" then
		strCUTA10505000answer1="checked"
	end if
	if Session("CUTA10505000")="2" then
		strCUTA10505000answer2="checked"
	end if
	if Session("CUTA10505000")="3" then
		strCUTA10505000answer3="checked"
	end if
	if Session("CUTA10506000")="1" then
		strCUTA10506000answer1="checked"
	end if
	if Session("CUTA10506000")="2" then
		strCUTA10506000answer2="checked"
	end if
	if Session("CUTA10506000")="3" then
		strCUTA10506000answer3="checked"
	end if

	if Session("CUTA10507000")="1" then
		strCUTA10507000answer1="checked"
	end if
	if Session("CUTA10507000")="2" then
		strCUTA10507000answer2="checked"
	end if
	if Session("CUTA10507000")="3" then
		strCUTA10507000answer3="checked"
	end if
	if Session("CUTA10508000")="1" then
		strCUTA10508000answer1="checked"
	end if
	if Session("CUTA10508000")="2" then
		strCUTA10508000answer2="checked"
	end if
	if Session("CUTA10508000")="3" then
		strCUTA10508000answer3="checked"
	end if
	if Session("CUTA10509000")="1" then
		strCUTA10509000answer1="checked"
	end if
	if Session("CUTA10509000")="2" then
		strCUTA10509000answer2="checked"
	end if
	if Session("CUTA10509000")="3" then
		strCUTA10509000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA10505000string")= ""
	Session("CUTA10506000string")= ""
	Session("CUTA10507000string")= ""
	Session("CUTA10508000string")= ""
	Session("CUTA10509000string")= ""

	Session("CUTA10505000") = Request.Form("CUTA10505000")
	Session("CUTA10506000") = Request.Form("CUTA10506000")
	Session("CUTA10507000") = Request.Form("CUTA10507000")
	Session("CUTA10508000") = Request.Form("CUTA10508000")
	Session("CUTA10509000") = Request.Form("CUTA10509000")

	if Session("CUTA10505000") = "1" then 
		Session("CUTA10505000string")= ""
	end if
	if Session("CUTA10505000") = "2" then 
		Session("CUTA10505000string")= ""
	end if
	if Session("CUTA10505000") = "3" then 
		Session("CUTA10505000string")= ""
	end if

	if Session("CUTA10506000") = "1" then 
		Session("CUTA10506000string")= ""
	end if
	if Session("CUTA10506000") = "2" then 
		Session("CUTA10506000string")= ""
	end if
	if Session("CUTA10506000") = "3" then 
		Session("CUTA10506000string")= ""
	end if
	if Session("CUTA10507000") = "1" then 
		Session("CUTA10507000string")= ""
	end if
	if Session("CUTA10507000") = "2" then 
		Session("CUTA10507000string")= ""
	end if
	if Session("CUTA10507000") = "3" then 
		Session("CUTA10507000string")= ""
	end if
	if Session("CUTA10508000") = "1" then 
		Session("CUTA10508000string")= ""
	end if
	if Session("CUTA10508000") = "2" then 
		Session("CUTA10508000string")= ""
	end if
	if Session("CUTA10508000") = "3" then 
		Session("CUTA10508000string")= ""
	end if
	if Session("CUTA10509000") = "1" then 
		Session("CUTA10509000string")= ""
	end if
	if Session("CUTA10509000") = "2" then 
		Session("CUTA10509000string")= ""
	end if
	if Session("CUTA10509000") = "3" then 
		Session("CUTA10509000string")= ""
	end if


end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		 <!--#include file="autosavefunction.asp"-->
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="4b"
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("CUTA10501000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="4b2"

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
    <form action="currentsymptoms4b1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
		<legend class="QuestionBox">
Did your lesion begin as a mole?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10505000" value="1" class="qTrigger required" id="CUTA10503001" <%=strCUTA10505000answer1%>>
			<label for="CUTA10503001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10505000" value="2" class="qTriggerOff" id="CUTA10503002" <%=strCUTA10505000answer2%>>
			<label for="CUTA10501002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10505000" value="3" class="qTriggerOff" id="CUTA10503003" <%=strCUTA10505000answer3%>>
			<label for="CUTA10503003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset class="hiddenQ">
		<legend class="QuestionBox">
Was the mole present at birth?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10506000" value="1" class="requiredIfBranchActive" id="CUTA10504001" <%=strCUTA10506000answer1%>>
			<label for="CUTA10504001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10506000" value="2" class="" id="CUTA10504002" <%=strCUTA10506000answer2%>>
			<label for="CUTA10504002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10506000" value="3" class="" id="CUTA10504003" <%=strCUTA10506000answer3%>>
			<label for="CUTA10504003">Unknown</label><br>
		</div><!-- [ /#AnswerBox] -->

	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Did your lesion change color?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10507000" value="1" class="required" id="CUTA10503001" <%=strCUTA10507000answer1%>>
			<label for="CUTA10505001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10507000" value="2" class="" id="CUTA10505002" <%=strCUTA10507000answer2%>>
			<label for="CUTA10505002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10507000" value="3" class="" id="CUTA10505003" <%=strCUTA10507000answer3%>>
			<label for="CUTA10505003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Did your lesion change in size?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10508000" value="1" class="qTrigger2 required" id="CUTA10506001" <%=strCUTA10508000answer1%>>
			<label for="CUTA10506001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10508000" value="2" class="qTriggerOff2" id="CUTA10506002" <%=strCUTA10508000answer2%>>
			<label for="CUTA10506002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10508000" value="3" class="qTriggerOff2" id="CUTA10506003" <%=strCUTA10508000answer3%>>
			<label for="CUTA10506003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset class="hiddenQ2">
		<legend class="QuestionBox">
Did it ever get larger?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10509000" value="1" class="requiredIfBranchActive" id="CUTA10507001" <%=strCUTA10509000answer1%>>
			<label for="CUTA10507001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10509000" value="2" class="" id="CUTA10507002" <%=strCUTA10509000answer2%>>
			<label for="CUTA10507002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10509000" value="3" class="" id="CUTA10507003" <%=strCUTA10509000answer3%>>
			<label for="CUTA10507003">Unknown</label>
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
