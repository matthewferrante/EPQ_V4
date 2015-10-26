
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11121000")="1" then
		strCUTA11121000answer1="checked"
	end if
	if Session("CUTA11121000")="2" then
		strCUTA11121000answer2="checked"
	end if
	if Session("CUTA11121000")="3" then
		strCUTA11121000answer3="checked"
	end if
	if Session("CUTA11122000")="1" then
		strCUTA11122000answer1="checked"
	end if
	if Session("CUTA11122000")="2" then
		strCUTA11122000answer2="checked"
	end if
	if Session("CUTA11122000")="3" then
		strCUTA11122000answer3="checked"
	end if

	if Session("CUTA11123000")="1" then
		strCUTA11123000answer1="checked"
	end if
	if Session("CUTA11123000")="2" then
		strCUTA11123000answer2="checked"
	end if
	if Session("CUTA11123000")="3" then
		strCUTA11123000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA11121000string")= ""
	Session("CUTA11122000string")= ""
	Session("CUTA11123000string")= ""

	Session("CUTA11121000") = Request.Form("CUTA11121000")
	Session("CUTA11122000") = Request.Form("CUTA11122000")
	Session("CUTA11123000") = Request.Form("CUTA11123000")

 		 
	  					
 

	if Session("CUTA11121000") = "1" then 
		Session("CUTA11121000string")= "Taking asthma medication"
	end if
	if Session("CUTA11121000") = "2" then 
		Session("CUTA11121000string")= "Denies taking asthma medication"
	end if
	if Session("CUTA11121000") = "3" then 
		Session("CUTA11121000string")= ""
	end if

	if Session("CUTA11122000") = "1" then 
		Session("CUTA11122000string")= "Taking thyroid medication"
	end if
	if Session("CUTA11122000") = "2" then 
		Session("CUTA11122000string")= "Denies taking thyroid medication"
	end if
	if Session("CUTA11122000") = "3" then 
		Session("CUTA11122000string")= ""
	end if
	if Session("CUTA11123000") = "1" then 
		Session("CUTA11123000string")= "Taking steroids or other immune suppressant medication"
	end if
	if Session("CUTA11123000") = "2" then 
		Session("CUTA11123000string")= "Denies taking steroids or other immune suppressant medication"
	end if
	if Session("CUTA11123000") = "3" then 
		Session("CUTA11123000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="21c"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="22"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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
<div id="SpecialNote">
In some cases medications can affect your treatment, and possibly even increase or decrease your overall risk of cancer. The following questions ask about medications you have taken recently.
</div>
<br>
    <form action="cancerrisk21d.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

<fieldset>
		<legend class="QuestionBox">
Over the past 12 months did you ever take any of the following medications for four or more weeks in a row?<br> (Check "yes" or "no" for each type of medication)		</legend>
</fieldset>
<br>

	<fieldset>
		<legend class="QuestionBox">
		Asthma medication?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA11121000" value="1" class="required" id="CUTA11124001" <%=strCUTA11121000answer1%>>
			<label for="CUTA11124001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11121000" value="2" class="" id="CUTA11124002" <%=strCUTA11121000answer2%>>
			<label for="CUTA11124002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11121000" value="3" class="" id="CUTA11124003" <%=strCUTA11121000answer3%>>
			<label for="CUTA11124003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset>
		<legend class="QuestionBox">
		Thyroid medication?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA11122000" value="1" class="required" id="CUTA11125001" <%=strCUTA11122000answer1%>>
			<label for="CUTA11125001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11122000" value="2" class="" id="CUTA11125002" <%=strCUTA11122000answer2%>>
			<label for="CUTA11125002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11122000" value="3" class="" id="CUTA11125003" <%=strCUTA11122000answer3%>>
			<label for="CUTA11125003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->

	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
		 Steroids or other immune suppressant medication?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA11123000" value="1" class="required" id="CUTA11126001" <%=strCUTA11123000answer1%>>
			<label for="CUTA11126001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11123000" value="2" class="" id="CUTA11126002" <%=strCUTA11123000answer2%>>
			<label for="CUTA11126002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA11123000" value="3" class="" id="CUTA11126003" <%=strCUTA11123000answer3%>>
			<label for="CUTA11126003">Unknown</label>
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
