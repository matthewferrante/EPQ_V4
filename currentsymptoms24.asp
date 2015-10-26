
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30531010")="1" then
		strEPQ30531010answer1="checked"
	end if
	if Session("EPQ30531020")="1" then
		strEPQ30531020answer1="checked"
	end if
	if Session("EPQ30531030")="1" then
		strEPQ30531030answer1="checked"
	end if
	if Session("EPQ30531040")="1" then
		strEPQ30531040answer1="checked"
	end if
	if Session("EPQ30531050")="1" then
		strEPQ30531050answer1="checked"
	end if
	if Session("EPQ30531060")="1" then
		strEPQ30531060answer1="checked"
	end if
	if Session("EPQ30531070")="1" then
		strEPQ30531070answer1="checked"
	end if
	if Session("EPQ30531080")="1" then
		strEPQ30531080answer1="checked"
	end if
	if Session("EPQ30531090")="1" then
		strEPQ30531090answer1="checked"
	end if
	if Session("EPQ30531100")="1" then
		strEPQ30531100answer1="checked"
	end if

	if Session("EPQ30532000")="1" then
		strEPQ30532000answer1="checked"
	end if
	if Session("EPQ30532000")="0" then
		strEPQ30532000answer2="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30531010string")= ""
	Session("EPQ30531020string")= ""
	Session("EPQ30531030string")= ""
	Session("EPQ30531040string")= ""
	Session("EPQ30531050string")= ""
	Session("EPQ30531060string")= ""
	Session("EPQ30531070string")= ""
	Session("EPQ30531080string")= ""
	Session("EPQ30531090string")= ""
	Session("EPQ30531100string")= ""
	Session("EPQ30532000string")= ""

	Session("EPQ30531000") = Request.Form("EPQ30531000")
	Session("EPQ30531010") = Request.Form("EPQ30531010")
	Session("EPQ30531020") = Request.Form("EPQ30531020")
	Session("EPQ30531030") = Request.Form("EPQ30531030")
	Session("EPQ30531040") = Request.Form("EPQ30531040")
	Session("EPQ30531050") = Request.Form("EPQ30531050")
	Session("EPQ30531060") = Request.Form("EPQ30531060")
	Session("EPQ30531070") = Request.Form("EPQ30531070")
	Session("EPQ30531080") = Request.Form("EPQ30531080")
	Session("EPQ30531090") = Request.Form("EPQ30531090")
	Session("EPQ30531100") = Request.Form("EPQ30531100")
	Session("EPQ30532000") = Request.Form("EPQ30532000")
	Session("EPQ30532000specify") = Request.Form("EPQ30532000specify")

	if Session("EPQ30531010") = "1" then 
		Session("EPQ30531010string")= ""
	end if
	if Session("EPQ30531020") = "1" then 
		Session("EPQ30531020string")= ""
	end if
	if Session("EPQ30531030") = "1" then 
		Session("EPQ30531030string")= ""
	end if
	if Session("EPQ30531040") = "1" then 
		Session("EPQ30531040string")= ""
	end if
	if Session("EPQ30531050") = "1" then 
		Session("EPQ30531050string")= ""
	end if
	if Session("EPQ30531060") = "1" then 
		Session("EPQ30531060string")= ""
	end if
	if Session("EPQ30531070") = "1" then 
		Session("EPQ30531070string")= ""
	end if
	if Session("EPQ30531080") = "1" then 
		Session("EPQ30531080string")= ""
	end if
	if Session("EPQ30531090") = "1" then 
		Session("EPQ30531090string")= ""
	end if
	if Session("EPQ30531100") = "1" then 
		Session("EPQ30531100string")= ""
	end if
	if Session("EPQ30532000") = "1" then 
		Session("EPQ30532000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"
	if Session("Gender")="F" then 
	Session("Page")="23"
	else
	Session("Page")="22"
	end if
	Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30531010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("KioskMode")= 1 then
	Session("Page")="32"
	 <!--#include file="autosavefunction.asp"-->
	Session("CurrentSymptomsSectionStatus")="Completed"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("KioskMode")= 2 then
	Session("Page")="32"
	 <!--#include file="autosavefunction.asp"-->
	Session("CurrentSymptomsSectionStatus")="Completed"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	Session("Page")="25"
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
    <form action="currentsymptoms24.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any muscle or joint symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30531030" value="1" id="EPQ30531030" <%=strEPQ30531030answer1%>>
		<label for="EPQ30531030">Back pain</label><br>
		<input type="checkbox" name="TEMPEPQ30531030" value="1" id="TEMPEPQ30531030" <%=strEPQ30531030answer1%>>
		<label for="EPQ30531030">Bone fractures</label><br>

		<input type="checkbox" name="EPQ30531060" value="1" id="EPQ30531060" <%=strEPQ30531060answer1%>>
		<label for="EPQ30531060">Muscle weakness</label><br>
		<input type="checkbox" name="EPQ30531070" value="1" id="EPQ30531070" <%=strEPQ30531070answer1%>>
		<label for="EPQ30531070">Neck pain</label><br>



<br><br>
		<input type="radio" name="EPQ30531100" value="1" id="EPQ30531100" <%=strEPQ30531100answer1%>>
		<label for="EPQ30531100">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30531040" value="1" id="EPQ30531040" <%=strEPQ30531040answer1%>>
		<label for="EPQ30531040">Osteoporosis or osteopenia</label><br>

		<input type="checkbox" name="EPQ30531010" value="1" id="EPQ30531010" <%=strEPQ30531010answer1%>>
		<label for="EPQ30531010">Painful joints (such as knees, hips, shoulder)</label><br>

		<input type="checkbox" name="EPQ30531020" value="1" id="EPQ30531020" <%=strEPQ30531020answer1%>>
		<label for="EPQ30531020">Sore muscles</label><br>

		<input type="checkbox" name="EPQ30531090" value="1" id="EPQ30531090" <%=strEPQ30531090answer1%>>
		<label for="EPQ30531090">Other, specify:</label>	
	  <input id="EPQ30531000" type="text" maxlength="75" size="15" name="EPQ30531000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30531000")%>'><br>

</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
&nbsp;<br>&nbsp;<br>&nbsp;<br>
&nbsp;<br>&nbsp;<br>
<div></div>
<br>
	<div class="ResetBox">
	</div>
	<fieldset>
    <legend class="QuestionBox">
Have you had any other symptoms in the past 3 months? <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30532000" value="1" id="EPQ305320001" class="required" <%=strEPQ30532000answer1%>>
		<label for="EPQ305320001">Yes</label>
&nbsp;&nbsp;&nbsp;		<label for="EPQ30532000specify">Specify:</label>	
	  <input id="EPQ30532000specify" type="text" maxlength="75" size="75" name="EPQ30532000specify" class="requiredIfPreviousRadio" value='<%=Session("EPQ30532000specify")%>' ><br>

		<input type="radio" name="EPQ30532000" value="0" id="EPQ305320002" <%=strEPQ30532000answer2%>>
		<label for="EPQ305320002">No</label><br>
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
	$('#EPQ30532000specify').keyup(function(event) {
		if (event.target.value) {
			$('#EPQ30532000specify').prevAll(':radio').first().attr('checked', 'checked');
			console.log('full');
		} else {
			$('#EPQ30532000specify').prevAll(':radio').first().removeAttr('checked');
			console.log('empty');
		}
	});
</script>
	
 </body>
</html>
