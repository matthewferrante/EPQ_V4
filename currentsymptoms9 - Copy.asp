
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30514010")="1" then
		strEPQ30514010answer1="checked"
	end if
	if Session("EPQ30514020")="1" then
		strEPQ30514020answer1="checked"
	end if
	if Session("EPQ30514030")="1" then
		strEPQ30514030answer1="checked"
	end if
	if Session("EPQ30514040")="1" then
		strEPQ30514040answer1="checked"
	end if
	if Session("EPQ30514050")="1" then
		strEPQ30514050answer1="checked"
	end if
	if Session("EPQ30514060")="1" then
		strEPQ30514060answer1="checked"
	end if
	if Session("EPQ30514070")="1" then
		strEPQ30514070answer1="checked"
	end if
	if Session("EPQ30514080")="1" then
		strEPQ30514080answer1="checked"
	end if
	if Session("EPQ30514090")="1" then
		strEPQ30514090answer1="checked"
	end if
	if Session("EPQ30514100")="1" then
		strEPQ30514100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30514010string")= ""
	Session("EPQ30514020string")= ""
	Session("EPQ30514030string")= ""
	Session("EPQ30514040string")= ""
	Session("EPQ30514050string")= ""
	Session("EPQ30514060string")= ""
	Session("EPQ30514070string")= ""
	Session("EPQ30514080string")= ""
	Session("EPQ30514090string")= ""
	Session("EPQ30514100string")= ""


	Session("EPQ30514000") = Request.Form("EPQ30514000")
	Session("EPQ30514010") = Request.Form("EPQ30514010")
	Session("EPQ30514020") = Request.Form("EPQ30514020")
	Session("EPQ30514030") = Request.Form("EPQ30514030")
	Session("EPQ30514040") = Request.Form("EPQ30514040")
	Session("EPQ30514050") = Request.Form("EPQ30514050")
	Session("EPQ30514060") = Request.Form("EPQ30514060")
	Session("EPQ30514070") = Request.Form("EPQ30514070")
	Session("EPQ30514080") = Request.Form("EPQ30514080")
	Session("EPQ30514090") = Request.Form("EPQ30514090")
	Session("EPQ30514100") = Request.Form("EPQ30514100")


	if Session("EPQ30514010") = "1" then 
		Session("EPQ30514010string")= ""
	end if
	if Session("EPQ30514020") = "1" then 
		Session("EPQ30514020string")= ""
	end if
	if Session("EPQ30514030") = "1" then 
		Session("EPQ30514030string")= ""
	end if
	if Session("EPQ30514040") = "1" then 
		Session("EPQ30514040string")= ""
	end if
	if Session("EPQ30514050") = "1" then 
		Session("EPQ30514050string")= ""
	end if
	if Session("EPQ30514060") = "1" then 
		Session("EPQ30514060string")= ""
	end if
	if Session("EPQ30514070") = "1" then 
		Session("EPQ30514070string")= ""
	end if
	if Session("EPQ30514080") = "1" then 
		Session("EPQ30514080string")= ""
	end if
	if Session("EPQ30514090") = "1" then 
		Session("EPQ30514090string")= ""
	end if
	if Session("EPQ30514100") = "1" then 
		Session("EPQ30514100string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

	if Session("EPQ30508090")="1" then
	Session("Page")="8"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if
	if Session("EPQ30508080")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if

		Session("Page")=5
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30514010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="10"
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


    <form action="currentsymptoms9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any ear or hearing problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30514050" value="1" id="EPQ30514050" <%=strEPQ30514050answer1%>>
		<label for="EPQ30514050">Buzzing or ringing in ears</label><br>

		<input type="checkbox" name="EPQ30514010" value="1" id="EPQ30514010" <%=strEPQ30514010answer1%>>
		<label for="EPQ30514010">Difficulty hearing / deafness</label><br>
		<input type="checkbox" name="EPQ30514080" value="1" id="EPQ30514080" <%=strEPQ30514080answer1%>>
		<label for="EPQ30514080">Difficulty in maintaining balance</label><br>

		<input type="checkbox" name="EPQ30514020" value="1" id="EPQ30514020" <%=strEPQ30514020answer1%>>
		<label for="EPQ30514020">Discharge from ears</label><br>
		<input type="checkbox" name="EPQ30514040" value="1" id="EPQ30514040" <%=strEPQ30514040answer1%>>
		<label for="EPQ30514040">Earaches</label><br>

<br><br>
		<input type="radio" name="EPQ30514100" value="1" id="EPQ30514100" <%=strEPQ30514100answer1%>>
		<label for="EPQ30514100">None</label><br>

</span>
<span class="column2">
		<input type="checkbox" name="EPQ30514070" value="1" id="EPQ30514070" <%=strEPQ30514070answer1%>>
		<label for="EPQ30514070">Hearing problem requiring use of hearing aid</label><br>

		<input type="checkbox" name="EPQ30514060" value="1" id="EPQ30514060" <%=strEPQ30514060answer1%>>
		<label for="EPQ30514060">Light headedness or dizziness</label><br>
		<input type="checkbox" name="EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
		<label for="EPQ30514030">Sensation of spinning (vertigo)</label><br>

		<input type="checkbox" name="EPQ30514090" value="1" id="EPQ30514090" <%=strEPQ30514090answer1%>>
		<label for="EPQ30514090">Other, specify:</label>		<input id="EPQ30514000" type="text" maxlength="75" size="15" name="EPQ30514000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30514000")%>' ><br>

</span>
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
	
 </body>
</html>
