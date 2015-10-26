
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMPEPQ30531010")="1" then
		strTEMPEPQ30531010answer1="checked"
	end if
	if Session("TEMPEPQ30531020")="1" then
		strTEMPEPQ30531020answer1="checked"
	end if
	if Session("TEMPEPQ30531030")="1" then
		strTEMPEPQ30531030answer1="checked"
	end if
	if Session("TEMPEPQ30531040")="1" then
		strTEMPEPQ30531040answer1="checked"
	end if
	if Session("TEMPEPQ30531050")="1" then
		strTEMPEPQ30531050answer1="checked"
	end if
	if Session("TEMPEPQ30531060")="1" then
		strTEMPEPQ30531060answer1="checked"
	end if
	if Session("TEMPEPQ30531070")="1" then
		strTEMPEPQ30531070answer1="checked"
	end if
	if Session("TEMPEPQ30531080")="1" then
		strTEMPEPQ30531080answer1="checked"
	end if
	if Session("TEMPEPQ30531090")="1" then
		strTEMPEPQ30531090answer1="checked"
	end if
	if Session("TEMPEPQ30531100")="1" then
		strTEMPEPQ30531100answer1="checked"
	end if

	if Session("TEMPEPQ30532000")="1" then
		strTEMPEPQ30532000answer1="checked"
	end if
	if Session("TEMPEPQ30532000")="0" then
		strTEMPEPQ30532000answer2="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("TEMPEPQ30531010string")= ""
	Session("TEMPEPQ30531020string")= ""
	Session("TEMPEPQ30531030string")= ""
	Session("TEMPEPQ30531040string")= ""
	Session("TEMPEPQ30531050string")= ""
	Session("TEMPEPQ30531060string")= ""
	Session("TEMPEPQ30531070string")= ""
	Session("TEMPEPQ30531080string")= ""
	Session("TEMPEPQ30531090string")= ""
	Session("TEMPEPQ30531100string")= ""
	Session("TEMPEPQ30532000string")= ""

	Session("TEMPEPQ30531000") = Request.Form("TEMPEPQ30531000")
	Session("TEMPEPQ30531010") = Request.Form("TEMPEPQ30531010")
	Session("TEMPEPQ30531020") = Request.Form("TEMPEPQ30531020")
	Session("TEMPEPQ30531030") = Request.Form("TEMPEPQ30531030")
	Session("TEMPEPQ30531040") = Request.Form("TEMPEPQ30531040")
	Session("TEMPEPQ30531050") = Request.Form("TEMPEPQ30531050")
	Session("TEMPEPQ30531060") = Request.Form("TEMPEPQ30531060")
	Session("TEMPEPQ30531070") = Request.Form("TEMPEPQ30531070")
	Session("TEMPEPQ30531080") = Request.Form("TEMPEPQ30531080")
	Session("TEMPEPQ30531090") = Request.Form("TEMPEPQ30531090")
	Session("TEMPEPQ30531100") = Request.Form("TEMPEPQ30531100")
	Session("TEMPEPQ30532000") = Request.Form("TEMPEPQ30532000")
	Session("TEMPEPQ30532000specify") = Request.Form("TEMPEPQ30532000specify")

	if Session("TEMPEPQ30531010") = "1" then 
		Session("TEMPEPQ30531010string")= ""
	end if
	if Session("TEMPEPQ30531020") = "1" then 
		Session("TEMPEPQ30531020string")= ""
	end if
	if Session("TEMPEPQ30531030") = "1" then 
		Session("TEMPEPQ30531030string")= ""
	end if
	if Session("TEMPEPQ30531040") = "1" then 
		Session("TEMPEPQ30531040string")= ""
	end if
	if Session("TEMPEPQ30531050") = "1" then 
		Session("TEMPEPQ30531050string")= ""
	end if
	if Session("TEMPEPQ30531060") = "1" then 
		Session("TEMPEPQ30531060string")= ""
	end if
	if Session("TEMPEPQ30531070") = "1" then 
		Session("TEMPEPQ30531070string")= ""
	end if
	if Session("TEMPEPQ30531080") = "1" then 
		Session("TEMPEPQ30531080string")= ""
	end if
	if Session("TEMPEPQ30531090") = "1" then 
		Session("TEMPEPQ30531090string")= ""
	end if
	if Session("TEMPEPQ30531100") = "1" then 
		Session("TEMPEPQ30531100string")= ""
	end if
	if Session("TEMPEPQ30532000") = "1" then 
		Session("TEMPEPQ30532000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"
	if Session("Gender")="F" then 
	Session("Page")="24"
	else
	Session("Page")="24"
	end if
	Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("TEMPEPQ30531010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="33"
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
    <form action="currentsymptoms32.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
Do you use any of the following? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">

 

		<input type="checkbox" name="TEMPEPQ30531030" value="1" id="TEMPEPQ30531030" <%=strTEMPEPQ30531030answer1%>>
		<label for="TEMPEPQ30531030">Breast prosthesis</label><br>
		<input type="checkbox" name="TEMPTEMPEPQ30531030" value="1" id="TEMPTEMPEPQ30531030" <%=strTEMPEPQ30531030answer1%>>
		<label for="TEMPEPQ30531030">Cane or crutches</label><br>

		<input type="checkbox" name="TEMPEPQ30531060" value="1" id="TEMPEPQ30531060" <%=strTEMPEPQ30531060answer1%>>
		<label for="TEMPEPQ30531060">Eyeglasses or contact lens</label><br>
		<input type="checkbox" name="TEMPEPQ30531070" value="1" id="TEMPEPQ30531070" <%=strTEMPEPQ30531070answer1%>>
		<label for="TEMPEPQ30531070">Hearing aid</label><br>


<br><br><br>
		<input type="radio" name="TEMPEPQ30531100" value="1" id="TEMPEPQ30531100" <%=strTEMPEPQ30531100answer1%>>
		<label for="TEMPEPQ30531100">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="TEMPEPQ30531040" value="1" id="TEMPEPQ30531040" <%=strTEMPEPQ30531040answer1%>>
		<label for="TEMPEPQ30531040">Prosthesis of a limb</label><br>

		<input type="checkbox" name="TEMP2EPQ30531040" value="1" id="TEMP2EPQ30531040" <%=strTEMPEPQ30531040answer1%>>
		<label for="TEMPEPQ30531040">Prosthesis of another type</label><br>

		<input type="checkbox" name="TEMPEPQ30531020" value="1" id="TEMPEPQ30531020" <%=strTEMPEPQ30531020answer1%>>
		<label for="TEMPEPQ30531020">Walkers</label><br>

		<input type="checkbox" name="TEMPEPQ30531010" value="1" id="TEMPEPQ30531010" <%=strTEMPEPQ30531010answer1%>>
		<label for="TEMPEPQ30531010">Wheelchair or mobility scooter</label><br>


</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<div></div>
<br>

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
