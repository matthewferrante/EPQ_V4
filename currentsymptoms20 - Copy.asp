
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30526010")="1" then
		strEPQ30526010answer1="checked"
	end if
	if Session("EPQ30526020")="1" then
		strEPQ30526020answer1="checked"
	end if
	if Session("EPQ30526030")="1" then
		strEPQ30526030answer1="checked"
	end if
	if Session("EPQ30526040")="1" then
		strEPQ30526040answer1="checked"
	end if
	if Session("EPQ30526050")="1" then
		strEPQ30526050answer1="checked"
	end if
	if Session("EPQ30526060")="1" then
		strEPQ30526060answer1="checked"
	end if
	if Session("EPQ30526070")="1" then
		strEPQ30526070answer1="checked"
	end if
	if Session("EPQ30526080")="1" then
		strEPQ30526080answer1="checked"
	end if
	if Session("EPQ30526090")="1" then
		strEPQ30526090answer1="checked"
	end if
	if Session("EPQ30526100")="1" then
		strEPQ30526100answer1="checked"
	end if
	if Session("EPQ30526110")="1" then
		strEPQ30526110answer1="checked"
	end if
	if Session("EPQ30526120")="1" then
		strEPQ30526120answer1="checked"
	end if
	if Session("EPQ30526130")="1" then
		strEPQ30526130answer1="checked"
	end if
	if Session("EPQ30526140")="1" then
		strEPQ30526140answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30526010string")= ""
	Session("EPQ30526020string")= ""
	Session("EPQ30526030string")= ""
	Session("EPQ30526040string")= ""
	Session("EPQ30526050string")= ""
	Session("EPQ30526060string")= ""
	Session("EPQ30526070string")= ""
	Session("EPQ30526080string")= ""
	Session("EPQ30526090string")= ""
	Session("EPQ30526100string")= ""
	Session("EPQ30526110string")= ""
	Session("EPQ30526120string")= ""
	Session("EPQ30526130string")= ""
	Session("EPQ30526140string")= ""


	Session("EPQ30526000") = Request.Form("EPQ30526000")
	Session("EPQ30526010") = Request.Form("EPQ30526010")
	Session("EPQ30526020") = Request.Form("EPQ30526020")
	Session("EPQ30526030") = Request.Form("EPQ30526030")
	Session("EPQ30526040") = Request.Form("EPQ30526040")
	Session("EPQ30526050") = Request.Form("EPQ30526050")
	Session("EPQ30526060") = Request.Form("EPQ30526060")
	Session("EPQ30526070") = Request.Form("EPQ30526070")
	Session("EPQ30526080") = Request.Form("EPQ30526080")
	Session("EPQ30526090") = Request.Form("EPQ30526090")
	Session("EPQ30526100") = Request.Form("EPQ30526100")
	Session("EPQ30526110") = Request.Form("EPQ30526110")
	Session("EPQ30526120") = Request.Form("EPQ30526120")
	Session("EPQ30526130") = Request.Form("EPQ30526130")
	Session("EPQ30526140") = Request.Form("EPQ30526140")


	if Session("EPQ30526010") = "1" then 
		Session("EPQ30526010string")= ""
	end if
	if Session("EPQ30526020") = "1" then 
		Session("EPQ30526020string")= ""
	end if
	if Session("EPQ30526030") = "1" then 
		Session("EPQ30526030string")= ""
	end if
	if Session("EPQ30526040") = "1" then 
		Session("EPQ30526040string")= ""
	end if
	if Session("EPQ30526050") = "1" then 
		Session("EPQ30526050string")= ""
	end if
	if Session("EPQ30526060") = "1" then 
		Session("EPQ30526060string")= ""
	end if
	if Session("EPQ30526070") = "1" then 
		Session("EPQ30526070string")= ""
	end if
	if Session("EPQ30526080") = "1" then 
		Session("EPQ30526080string")= ""
	end if
	if Session("EPQ30526090") = "1" then 
		Session("EPQ30526090string")= ""
	end if
	if Session("EPQ30526100") = "1" then 
		Session("EPQ30526100string")= ""
	end if
	if Session("EPQ30526110") = "1" then 
		Session("EPQ30526110string")= ""
	end if
	if Session("EPQ30526120") = "1" then 
		Session("EPQ30526120string")= ""
	end if
	if Session("EPQ30526130") = "1" then 
		Session("EPQ30526130string")= ""
	end if
	if Session("EPQ30526140") = "1" then 
		Session("EPQ30526140string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

	if Session("EPQ30522060") = "1" then 
	Session("Page")="19"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522010") = "1" then 
	Session("Page")="18"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	Session("Page")="17"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30526010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30522170") = "1" then 
	Session("Page")="21"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	'if Session("GU10202000")="1" then
	'	Session("Page")="29"
	'	Response.Redirect "currentsymptomsmaster.asp"
	'end if 

	if Session("GU10201000")="1" then
		Session("Page")="29"
		Response.Redirect "currentsymptomsmaster.asp"
	end if 

	end if
	end if


	Session("Page")="22"
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


    <form action="currentsymptoms20.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      What type of changes in stools / bowel habits have you had in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30526040" value="1" id="EPQ30526040" class="atLeastOneCheckboxRequired" <%=strEPQ30526040answer1%>>
		<label for="EPQ30526040">Black or tarry stools</label><br>
		<input type="checkbox" name="EPQ30526110" value="1" id="EPQ30526110" class="atLeastOneCheckboxRequired" <%=strEPQ30526110answer1%>>
		<label for="EPQ30526110">Blood in stool</label><br>

		<input type="checkbox" name="EPQ30526130" value="1" id="EPQ30526130" class="atLeastOneCheckboxRequired" <%=strEPQ30526130answer1%>>
		<label for="EPQ30526130">Blood on toilet tissue</label><br>
		<input type="checkbox" name="EPQ30526070" value="1" id="EPQ30526070" class="atLeastOneCheckboxRequired" <%=strEPQ30526070answer1%>>
		<label for="EPQ30526070">Constipation</label><br>
		<input type="checkbox" name="EPQ30526010" value="1" id="EPQ30526010" class="atLeastOneCheckboxRequired" <%=strEPQ30526010answer1%>>
		<label for="EPQ30526010">Diarrhea (Loose/Runny Stools)</label><br>
		<input type="checkbox" name="EPQ30526090" value="1" id="EPQ30526090" class="atLeastOneCheckboxRequired" <%=strEPQ30526090answer1%>>
		<label for="EPQ30526090">Feeling of incomplete emptying of bowel</label><br>
		<input type="checkbox" name="EPQ30526030" value="1" id="EPQ30526030" class="atLeastOneCheckboxRequired" <%=strEPQ30526030answer1%>>
		<label for="EPQ30526030">Increased frequency of bowel movements</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30526060" value="1" id="EPQ30526060" class="atLeastOneCheckboxRequired" <%=strEPQ30526060answer1%>>
		<label for="EPQ30526060">Light colored stools</label><br>
		<input type="checkbox" name="EPQ30526020" value="1" id="EPQ30526020" class="atLeastOneCheckboxRequired" <%=strEPQ30526020answer1%>>
		<label for="EPQ30526020">Mucus or pus in stool</label><br>
		<input type="checkbox" name="EPQ30526100" value="1" id="EPQ30526100" class="atLeastOneCheckboxRequired" <%=strEPQ30526100answer1%>>
		<label for="EPQ30526100">Narrow stools (thin and pencil like)</label><br>
		<input type="checkbox" name="EPQ30526080" value="1" id="EPQ30526080" class="atLeastOneCheckboxRequired" <%=strEPQ30526080answer1%>>
		<label for="EPQ30526080">Stools having offensive odor</label><br>
		<input type="checkbox" name="EPQ30526120" value="1" id="EPQ30526120" class="atLeastOneCheckboxRequired" <%=strEPQ30526120answer1%>>
		<label for="EPQ30526120">Stools that float</label><br>
		<input type="checkbox" name="EPQ30526050" value="1" id="EPQ30526050" class="atLeastOneCheckboxRequired" <%=strEPQ30526050answer1%>>
		<label for="EPQ30526050">Trouble holding your stools</label><br>

		<input type="checkbox" name="EPQ30526140" value="1" id="EPQ30526140" class="atLeastOneCheckboxRequired" <%=strEPQ30526140answer1%>>
		<label for="EPQ30526140">Other, specify:</label>	
	<input id="EPQ30526000" type="text" maxlength="75" size="15" name="EPQ30526000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30526000")%>' ><br>

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
