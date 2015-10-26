
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("GU10507000")="0" then
		strGU10507000answer0="checked"
	end if
	if Session("GU10507000")="1" then
		strGU10507000answer1="checked"
	end if
	if Session("GU10507000")="2" then
		strGU10507000answer2="checked"
	end if
	if Session("GU10507000")="3" then
		strGU10507000answer3="checked"
	end if
	if Session("GU10507000")="4" then
		strGU10507000answer4="checked"
	end if
	if Session("GU10507000")="5" then
		strGU10507000answer5="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("GU10507000string")= ""

	Session("GU10507000") = Request.Form("GU10507000")
	

	if Session("GU10507000") = "0" then 
		Session("GU10507000string")= ""
	end if
	if Session("GU10507000") = "1" then 
		Session("GU10507000string")= ""
	end if
	if Session("GU10507000") = "2" then 
		Session("GU10507000string")= ""
	end if
	if Session("GU10507000") = "3" then 
		Session("GU10507000string")= ""
	end if
	if Session("GU10507000") = "4" then 
		Session("GU10507000string")= ""
	end if
	if Session("GU10507000") = "5" then 
		Session("GU10507000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=27
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30501000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="17"
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

    <form action="currentsymptoms28.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset>
		<legend class="QuestionBox">
			Over the past month, how many times did you most typically get up to urinate from the time you went to bed at night until the time you got up in the morning?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="GU10507000" class="required" value="0" id="GU10507010" <%=strGU10507000answer0%>>
			<label for="GU10507010">None</label><br>
			<input type="radio" name="GU10507000" value="1" id="GU10507020" <%=strGU10507000answer1%>>
			<label for="GU10507020">1 time</label><br>
			<input type="radio" name="GU10507000" value="2" id="GU10507030" <%=strGU10507000answer2%>>
			<label for="GU10507030">2 times</label><br>
			<input type="radio" name="GU10507000" value="3" id="GU10507040" <%=strGU10507000answer3%>>
			<label for="GU10507040">3 times</label><br>
			<input type="radio" name="GU10507000" value="4" id="GU10507050" <%=strGU10507000answer4%>>
			<label for="GU10507050">4 times</label><br>
			<input type="radio" name="GU10507000" value="5" id="GU10507060" <%=strGU10507000answer5%>>
			<label for="GU10507060">5 or more times</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>


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
