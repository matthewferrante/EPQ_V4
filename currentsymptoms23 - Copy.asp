
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30530010")="1" then
		strEPQ30530010answer1="checked"
	end if
	if Session("EPQ30530020")="1" then
		strEPQ30530020answer1="checked"
	end if
	if Session("EPQ30530030")="1" then
		strEPQ30530030answer1="checked"
	end if
	if Session("EPQ30530040")="1" then
		strEPQ30530040answer1="checked"
	end if
	if Session("EPQ30530050")="1" then
		strEPQ30530050answer1="checked"
	end if
	if Session("EPQ30530060")="1" then
		strEPQ30530060answer1="checked"
	end if
	if Session("EPQ30530070")="1" then
		strEPQ30530070answer1="checked"
	end if
	if Session("EPQ30530080")="1" then
		strEPQ30530080answer1="checked"
	end if
	if Session("EPQ30530090")="1" then
		strEPQ30530090answer1="checked"
	end if
	if Session("EPQ30530100")="1" then
		strEPQ30530100answer1="checked"
	end if
	if Session("EPQ30530110")="1" then
		strEPQ30530110answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30530010string")= ""
	Session("EPQ30530020string")= ""
	Session("EPQ30530030string")= ""
	Session("EPQ30530040string")= ""
	Session("EPQ30530050string")= ""
	Session("EPQ30530060string")= ""
	Session("EPQ30530070string")= ""
	Session("EPQ30530080string")= ""
	Session("EPQ30530090string")= ""
	Session("EPQ30530100string")= ""
	Session("EPQ30530110string")= ""

	Session("EPQ30530000") = Request.Form("EPQ30530000")
	Session("EPQ30530010") = Request.Form("EPQ30530010")
	Session("EPQ30530020") = Request.Form("EPQ30530020")
	Session("EPQ30530030") = Request.Form("EPQ30530030")
	Session("EPQ30530040") = Request.Form("EPQ30530040")
	Session("EPQ30530050") = Request.Form("EPQ30530050")
	Session("EPQ30530060") = Request.Form("EPQ30530060")
	Session("EPQ30530070") = Request.Form("EPQ30530070")
	Session("EPQ30530080") = Request.Form("EPQ30530080")
	Session("EPQ30530090") = Request.Form("EPQ30530090")
	Session("EPQ30530100") = Request.Form("EPQ30530100")
	Session("EPQ30530110") = Request.Form("EPQ30530110")

	if Session("EPQ30530010") = "1" then 
		Session("EPQ30530010string")= ""
	end if
	if Session("EPQ30530020") = "1" then 
		Session("EPQ30530020string")= ""
	end if
	if Session("EPQ30530030") = "1" then 
		Session("EPQ30530030string")= ""
	end if
	if Session("EPQ30530040") = "1" then 
		Session("EPQ30530040string")= ""
	end if
	if Session("EPQ30530050") = "1" then 
		Session("EPQ30530050string")= ""
	end if
	if Session("EPQ30530060") = "1" then 
		Session("EPQ30530060string")= ""
	end if
	if Session("EPQ30530070") = "1" then 
		Session("EPQ30530070string")= ""
	end if
	if Session("EPQ30530080") = "1" then 
		Session("EPQ30530080string")= ""
	end if
	if Session("EPQ30530090") = "1" then 
		Session("EPQ30530090string")= ""
	end if
	if Session("EPQ30530100") = "1" then 
		Session("EPQ30530100string")= ""
	end if
	if Session("EPQ30530110") = "1" then 
		Session("EPQ30530110string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=22
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30530010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="24"
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
    <form action="currentsymptoms23.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any gynecological problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30530080" value="1" id="EPQ30530080" <%=strEPQ30530080answer1%>>
		<label for="EPQ30530080">Decreased libido (having little or no sexual desire)</label><br>
		<input type="checkbox" name="EPQ30530070" value="1" id="EPQ30530070" <%=strEPQ30530070answer1%>>
		<label for="EPQ30530070">Hot flashes</label><br>

		<input type="checkbox" name="EPQ30530040" value="1" id="EPQ30530040" <%=strEPQ30530040answer1%>>
		<label for="EPQ30530040">Painful intercourse</label><br>

		<input type="checkbox" name="EPQ30530050" value="1" id="EPQ30530050" <%=strEPQ30530050answer1%>>
		<label for="EPQ30530050">Painful periods</label><br>
		<input type="checkbox" name="EPQ30530030" value="1" id="EPQ30530030" <%=strEPQ30530030answer1%>>
		<label for="EPQ30530030">Unusual vaginal discharge</label><br>

<BR><BR>
		<input type="radio" name="EPQ30530110" value="1" id="EPQ30530110" <%=strEPQ30530110answer1%>>
		<label for="EPQ30530110">None</label><br>


</span>

<span class="column2">

		<input type="checkbox" name="EPQ30530020" value="1" id="EPQ30530020" <%=strEPQ30530020answer1%>>
		<label for="EPQ30530020">Vaginal bleeding after menopause</label><br>

		<input type="checkbox" name="EPQ30530010" value="1" id="EPQ30530010" <%=strEPQ30530010answer1%>>
		<label for="EPQ30530010">Vaginal bleeding / spotting between periods</label><br>
		<input type="checkbox" name="EPQ30530090" value="1" id="EPQ30530090" <%=strEPQ30530090answer1%>>
		<label for="EPQ30530090">Vaginal dryness</label><br>

		<input type="checkbox" name="EPQ30530060" value="1" id="EPQ30530060" <%=strEPQ30530060answer1%>>
		<label for="EPQ30530060">Vaginal itching / discomfort</label><br>
		<input type="checkbox" name="EPQ30530100" value="1" id="EPQ30530100" <%=strEPQ30530100answer1%>>
		<label for="EPQ30530100">Other, specify:</label>	
	  <input id="EPQ30530000" type="text" maxlength="75" size="15" name="EPQ30530000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30530000")%>'><br>
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
