
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10510000")="1" then
		strCUTA10510000answer1="checked"
	end if
	if Session("CUTA10510000")="2" then
		strCUTA10510000answer2="checked"
	end if
	if Session("CUTA10510000")="3" then
		strCUTA10510000answer3="checked"
	end if
	if Session("CUTA10511000")="1" then
		strCUTA10511000answer1="checked"
	end if
	if Session("CUTA10511000")="2" then
		strCUTA10511000answer2="checked"
	end if
	if Session("CUTA10511000")="3" then
		strCUTA10511000answer3="checked"
	end if

	if Session("CUTA10512000")="1" then
		strCUTA10512000answer1="checked"
	end if
	if Session("CUTA10512000")="2" then
		strCUTA10512000answer2="checked"
	end if
	if Session("CUTA10512000")="3" then
		strCUTA10512000answer3="checked"
	end if
	if Session("CUTA10513000")="1" then
		strCUTA10513000answer1="checked"
	end if
	if Session("CUTA10513000")="2" then
		strCUTA10513000answer2="checked"
	end if
	if Session("CUTA10513000")="3" then
		strCUTA10513000answer3="checked"
	end if
	if Session("CUTA10514000")="1" then
		strCUTA10514000answer1="checked"
	end if
	if Session("CUTA10514000")="2" then
		strCUTA10514000answer2="checked"
	end if
	if Session("CUTA10514000")="3" then
		strCUTA10514000answer3="checked"
	end if
	if Session("CUTA10515000")="1" then
		strCUTA10515000answer1="checked"
	end if
	if Session("CUTA10515000")="2" then
		strCUTA10515000answer2="checked"
	end if
	if Session("CUTA10515000")="3" then
		strCUTA10515000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA10510000string")= ""
	Session("CUTA10511000string")= ""
	Session("CUTA10512000string")= ""
	Session("CUTA10513000string")= ""
	Session("CUTA10514000string")= ""
	Session("CUTA10515000string")= ""

	Session("CUTA10510000") = Request.Form("CUTA10510000")
	Session("CUTA10511000") = Request.Form("CUTA10511000")
	Session("CUTA10512000") = Request.Form("CUTA10512000")
	Session("CUTA10513000") = Request.Form("CUTA10513000")
	Session("CUTA10514000") = Request.Form("CUTA10514000")
	Session("CUTA10515000") = Request.Form("CUTA10515000")

	if Session("CUTA10510000") = "1" then 
		Session("CUTA10510000string")= ""
	end if
	if Session("CUTA10510000") = "2" then 
		Session("CUTA10510000string")= ""
	end if
	if Session("CUTA10510000") = "3" then 
		Session("CUTA10510000string")= ""
	end if

	if Session("CUTA10511000") = "1" then 
		Session("CUTA10511000string")= ""
	end if
	if Session("CUTA10511000") = "2" then 
		Session("CUTA10511000string")= ""
	end if
	if Session("CUTA10511000") = "3" then 
		Session("CUTA10511000string")= ""
	end if
	if Session("CUTA10512000") = "1" then 
		Session("CUTA10512000string")= ""
	end if
	if Session("CUTA10512000") = "2" then 
		Session("CUTA10512000string")= ""
	end if
	if Session("CUTA10512000") = "3" then 
		Session("CUTA10512000string")= ""
	end if
	if Session("CUTA10513000") = "1" then 
		Session("CUTA10513000string")= ""
	end if
	if Session("CUTA10513000") = "2" then 
		Session("CUTA10513000string")= ""
	end if
	if Session("CUTA10513000") = "3" then 
		Session("CUTA10513000string")= ""
	end if
	if Session("CUTA10514000") = "1" then 
		Session("CUTA10514000string")= ""
	end if
	if Session("CUTA10514000") = "2" then 
		Session("CUTA10514000string")= ""
	end if
	if Session("CUTA10514000") = "3" then 
		Session("CUTA10514000string")= ""
	end if
	if Session("CUTA10515000") = "1" then 
		Session("CUTA10515000string")= ""
	end if
	if Session("CUTA10515000") = "2" then 
		Session("CUTA10515000string")= ""
	end if
	if Session("CUTA10515000") = "3" then 
		Session("CUTA10515000string")= ""
	end if


end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="4b1"
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

	Session("Page")="5"

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
    <form action="currentsymptoms4b2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
		<legend class="QuestionBox">
Did your lesion change in shape?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10510000" value="1" class="required" id="CUTA10508001" <%=strCUTA10510000answer1%>>
			<label for="CUTA10508001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10510000" value="2" class="" id="CUTA10508002" <%=strCUTA10510000answer2%>>
			<label for="CUTA10508002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10510000" value="3" class="" id="CUTA10508003" <%=strCUTA10510000answer3%>>
			<label for="CUTA10508003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset>
		<legend class="QuestionBox">
Did your lesion change in elevation above the skin?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10511000" value="1" class="required" id="CUTA10509001" <%=strCUTA10511000answer1%>>
			<label for="CUTA10509001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10511000" value="2" class="" id="CUTA10509002" <%=strCUTA10511000answer2%>>
			<label for="CUTA10509002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10511000" value="3" class="" id="CUTA10509003" <%=strCUTA10511000answer3%>>
			<label for="CUTA10509003">Unknown</label><br>
		</div><!-- [ /#AnswerBox] -->

	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Did your lesion ever become scaly or crusty?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10512000" value="1" class="required" id="CUTA10510001" <%=strCUTA10512000answer1%>>
			<label for="CUTA10505001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10512000" value="2" class="" id="CUTA10510002" <%=strCUTA10512000answer2%>>
			<label for="CUTA10501002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10512000" value="3" class="" id="CUTA10510003" <%=strCUTA10512000answer3%>>
			<label for="CUTA10505003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Did your lesion ever open or bleed?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10513000" value="1" class="required" id="CUTA10511001" <%=strCUTA10513000answer1%>>
			<label for="CUTA10511001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10513000" value="2" class="" id="CUTA10511002" <%=strCUTA10513000answer2%>>
			<label for="CUTA10511002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10513000" value="3" class="" id="CUTA10511003" <%=strCUTA10513000answer3%>>
			<label for="CUTA10511003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
Did your lesion ever become tender or painful?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10514000" value="1" class="required" id="CUTA10512001" <%=strCUTA10514000answer1%>>
			<label for="CUTA10512001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10514000" value="2" class="" id="CUTA10512002" <%=strCUTA10514000answer2%>>
			<label for="CUTA10512002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10514000" value="3" class="" id="CUTA10512003" <%=strCUTA10514000answer3%>>
			<label for="CUTA10512003">Unknown</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

<fieldset>
		<legend class="QuestionBox">
Did you ever traumatize the lesion?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="CUTA10515000" value="1" class="required" id="CUTA10513001" <%=strCUTA10515000answer1%>>
			<label for="CUTA10507001">Yes</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10515000" value="2" class="" id="CUTA10513002" <%=strCUTA10515000answer2%>>
			<label for="CUTA10513002">No</label>&nbsp;&nbsp;&nbsp;
			<input type="radio" name="CUTA10515000" value="3" class="" id="CUTA10513003" <%=strCUTA10515000answer3%>>
			<label for="CUTA10513003">Unknown</label>
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
