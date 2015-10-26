
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30501000")="1" then
		strEPQ30501000answer1="checked"
	end if
	if Session("EPQ30501000")="2" then
		strEPQ30501000answer2="checked"
	end if
	if Session("EPQ30501000")="3" then
		strEPQ30501000answer3="checked"
	end if

	if Session("EPQ30502010")="1" then
		strEPQ30502010answer1="checked"
	end if
	if Session("EPQ30502010")="2" then
		strEPQ30502010answer2="checked"
	end if

	if Session("EPQ30502020")="1" then
		strEPQ30502020answer1="checked"
	end if
	if Session("EPQ30502020")="2" then
		strEPQ30502020answer2="checked"
	end if


	if Session("EPQ30503000")="1" then
		strEPQ30503000answer1="checked"
	end if
	if Session("EPQ30503000")="2" then
		strEPQ30503000answer2="checked"
	end if
	if Session("EPQ30503000")="3" then
		strEPQ30503000answer3="checked"
	end if
	if Session("EPQ30503000")="4" then
		strEPQ30503000answer4="checked"
	end if
	if Session("EPQ30503000")="5" then
		strEPQ30503000answer5="checked"
	end if
	if Session("EPQ30503000")="0" then
		strEPQ30503000answer6="checked"
	end if

	if Session("EPQ30503100")="1" then
		strEPQ30503100answer1="checked"
	end if
	if Session("EPQ30503100")="2" then
		strEPQ30503100answer2="checked"
	end if
	if Session("EPQ30503100")="3" then
		strEPQ30503100answer3="checked"
	end if
	if Session("EPQ30503100")="4" then
		strEPQ30503100answer4="checked"
	end if
	if Session("EPQ30503100")="5" then
		strEPQ30503100answer5="checked"
	end if
	if Session("EPQ30503100")="0" then
		strEPQ30503100answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30501000string")= ""
	Session("EPQ30502010string")= ""
	Session("EPQ30502020string")= ""
	Session("EPQ30503000string")= ""

	Session("EPQ30501000") = Request.Form("EPQ30501000")
	Session("EPQ30502010") = Request.Form("EPQ30502010")
	Session("EPQ30502020") = Request.Form("EPQ30502020")

	Session("EPQ30503000") = Request.Form("EPQ30503000")
	Session("EPQ30503100") = Request.Form("EPQ30503100")

	if Session("EPQ30501000") = "1" then 
		Session("EPQ30501000string")= ""
	end if
	if Session("EPQ30501000") = "2" then 
		Session("EPQ30501000string")= ""
	end if
	if Session("EPQ30501000") = "3" then 
		Session("EPQ30501000string")= ""
	end if
	if Session("EPQ30502010") = "1" then 
		Session("EPQ30502010string")= ""
	end if
	if Session("EPQ30502020") = "1" then 
		Session("EPQ30502020string")= ""
	end if
	if Session("EPQ30503000") = "1" then 
		Session("EPQ30503000string")= ""
	end if
	if Session("EPQ30503000") = "2" then 
		Session("EPQ30503000string")= ""
	end if
	if Session("EPQ30503000") = "3" then 
		Session("EPQ30503000string")= ""
	end if
	if Session("EPQ30503000") = "4" then 
		Session("EPQ30503000string")= ""
	end if
	if Session("EPQ30503000") = "5" then 
		Session("EPQ30503000string")= ""
	end if
	if Session("EPQ30503000") = "0" then 
		Session("EPQ30503000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=18
		Session("CurrentSymptomsSectionStatus")=""

		Response.Redirect "pastmedicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30501000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="2"
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

    <form action="currentsymptoms1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
		<legend class="QuestionBox">
		Have you had a significant weight change of 10 pounds or more in the past year?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30501000" value="1" class="qTrigger qTriggerOff2 required" id="EPQ305010001" <%=strEPQ30501000answer1%>>
			<label for="EPQ305010001">Gain of 10 or more pounds</label><br>
			<input type="radio" name="EPQ30501000" value="2" class="qTrigger2 qTriggerOff" id="EPQ305010002" <%=strEPQ30501000answer2%>>
			<label for="EPQ305010002">Loss of 10 or more pounds</label><br>
			<input type="radio" name="EPQ30501000" value="3" class="qTriggerOff qTriggerOff2" id="EPQ305010003" <%=strEPQ30501000answer3%>>
			<label for="EPQ305010003">None (No change)</label><br>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset class="hiddenQ">
		<legend class="QuestionBox">Were you trying to gain weight?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30502020" value="1" id="EPQ30502020yes" class="requiredIfBranchActive" <%=strEPQ30502020answer1%>>
			<label for="EPQ30502020yes">Yes</label>
			<input type="radio" name="EPQ30502020" value="2" id="EPQ30502020no" <%=strEPQ30502020answer2%>>
			<label for="EPQ30502020no">No</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>
	<fieldset class="hiddenQ2">
		<legend class="QuestionBox">Were you trying to lose weight?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30502010" value="1" id="EPQ30502010yes" class="requiredIfBranchActive" <%=strEPQ30502010answer1%>>
			<label for="EPQ30502010yes">Yes</label>
			<input type="radio" name="EPQ30502010" value="2" id="EPQ30502010no" <%=strEPQ30502010answer2%>>
			<label for="EPQ30502010no">No</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

<% if Session("Gender")="M" then %>
	<fieldset>
		<legend class="QuestionBox">
			When was the last time you had more than 5 drinks containing alcohol in one day?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30503000" class="required" value="1" id="EPQ305030001" <%=strEPQ30503000answer1%>>
			<label for="EPQ305030001">Yesterday or today</label><br>
			<input type="radio" name="EPQ30503000" value="2" id="EPQ305030002" <%=strEPQ30503000answer2%>>
			<label for="EPQ305030002">In the past week</label><br>
			<input type="radio" name="EPQ30503000" value="3" id="EPQ305030003" <%=strEPQ30503000answer3%>>
			<label for="EPQ305030003">In the past month</label><br>
			<input type="radio" name="EPQ30503000" value="4" id="EPQ305030004" <%=strEPQ30503000answer4%>>
			<label for="EPQ305030004">In the past year</label><br>
			<input type="radio" name="EPQ30503000" value="5" id="EPQ305030005" <%=strEPQ30503000answer5%>>
			<label for="EPQ305030005">Longer than one year ago</label><br>
			<input type="radio" name="EPQ30503000" value="0" id="EPQ305030006" <%=strEPQ30503000answer6%>>
			<label for="EPQ305030006">Never</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>

<% end if %>

<% if Session("Gender")="F" then %>
	<fieldset>
		<legend class="QuestionBox">
			When was the last time you had more than 4 drinks containing alcohol in one day?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30503100" class="required" value="1" id="EPQ305031001" <%=strEPQ30503100answer1%>>
			<label for="EPQ305031001">Yesterday or today</label><br>
			<input type="radio" name="EPQ30503100" value="2" id="EPQ305031002" <%=strEPQ30503100answer2%>>
			<label for="EPQ305031002">In the past week</label><br>
			<input type="radio" name="EPQ30503100" value="3" id="EPQ305031003" <%=strEPQ30503100answer3%>>
			<label for="EPQ305031003">In the past month</label><br>
			<input type="radio" name="EPQ30503100" value="4" id="EPQ305031004" <%=strEPQ30503100answer4%>>
			<label for="EPQ305031004">In the past year</label><br>
			<input type="radio" name="EPQ30503100" value="5" id="EPQ305031005" <%=strEPQ30503100answer5%>>
			<label for="EPQ305030005">Longer than one year ago</label><br>
			<input type="radio" name="EPQ30503100" value="0" id="EPQ305031006" <%=strEPQ30503100answer6%>>
			<label for="EPQ305031006">Never</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>

<% end if %>

		</legend>


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
