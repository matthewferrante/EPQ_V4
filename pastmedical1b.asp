
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10401000")="1" then
		strCUTA10401000answer1="checked"
	end if
	if Session("CUTA10401000")="2" then
		strCUTA10401000answer2="checked"
	end if
	if Session("CUTA10401000")="3" then
		strCUTA10401000answer3="checked"
	end if
	if Session("CUTA10402000")="1" then
		strCUTA10402000answer1="checked"
	end if
	if Session("CUTA10402000")="2" then
		strCUTA10402000answer2="checked"
	end if
	if Session("CUTA10402000")="3" then
		strCUTA10402000answer3="checked"
	end if

	if Session("CUTA10403000")="1" then
		strCUTA10403000answer1="checked"
	end if
	if Session("CUTA10403000")="2" then
		strCUTA10403000answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA10401000string")= ""
	Session("CUTA10402000string")= ""
	Session("CUTA10403000string")= ""

	Session("CUTA10401000") = Request.Form("CUTA10401000")
	Session("CUTA10402000") = Request.Form("CUTA10402000")
	Session("CUTA10403000") = Request.Form("CUTA10403000")

	if Session("CUTA10401000") = "1" then 
		Session("CUTA10401000string")= ""
	end if
	if Session("CUTA10401000") = "2" then 
		Session("CUTA10401000string")= ""
	end if
	if Session("CUTA10401000") = "3" then 
		Session("CUTA10401000string")= ""
	end if

	if Session("CUTA10402000") = "1" then 
		Session("CUTA10402000string")= ""
	end if
	if Session("CUTA10402000") = "2" then 
		Session("CUTA10402000string")= ""
	end if
	if Session("CUTA10402000") = "3" then 
		Session("CUTA10402000string")= ""
	end if
	if Session("CUTA10403000") = "1" then 
		Session("CUTA10403000string")= ""
	end if
	if Session("CUTA10403000") = "2" then 
		Session("CUTA10403000string")= ""
	end if
	if Session("CUTA10403000") = "3" then 
		Session("CUTA10403000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		if Session("EPQ30310000")<>"1" then
		Session("Page")=1
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		else
		Session("Page")=5
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		end if

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="2"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
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
    <form action="pastmedical1b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">
In this module, we will ask you about any past or current medical problems that a doctor has ever said you have. We will ask first about general areas of the body and then about specific conditions.
</div>
<br>	<fieldset>
		<legend class="QuestionBox">
Have you ever been diagnosed with Xeroderma Pigmentosa?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10401000" value="1" class="required" id="CUTA10401001" <%=strCUTA10401000answer1%>>
			<label for="CUTA10401001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10401000" value="2" class="" id="CUTA10401002" <%=strCUTA10401000answer2%>>
			<label for="CUTA10401002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10401000" value="3" class="" id="CUTA10401003" <%=strCUTA10401000answer3%>>
			<label for="CUTA10401003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset>
		<legend class="QuestionBox">
Do you have a history of photosensitivity (excessive sensitivity to sun)?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10402000" value="1" class="required" id="CUTA10402001" <%=strCUTA10402000answer1%>>
			<label for="CUTA10402001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10402000" value="2" class="" id="CUTA10402002" <%=strCUTA10402000answer2%>>
			<label for="CUTA10402002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10402000" value="3" class="" id="CUTA10402003" <%=strCUTA10402000answer3%>>
			<label for="10416003">Unknown</label><br>
		</div><!-- [ /#AnswerBox] -->

	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Have you ever had an organ transplant?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10403000" value="1" class="required" id="CUTA10403001" <%=strCUTA10403000answer1%>>
			<label for="CUTA10505001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10403000" value="2" class="" id="CUTA10403002" <%=strCUTA10403000answer2%>>
			<label for="CUTA10403002">No</label>&nbsp;&nbsp;&nbsp;
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
