
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30507010")="1" then
		strEPQ30507010answer1="checked"
	end if
	if Session("EPQ30507020")="1" then
		strEPQ30507020answer1="checked"
	end if
	if Session("EPQ30507030")="1" then
		strEPQ30507030answer1="checked"
	end if
	if Session("EPQ30507040")="1" then
		strEPQ30507040answer1="checked"
	end if
	if Session("EPQ30507050")="1" then
		strEPQ30507050answer1="checked"
	end if
	if Session("EPQ30507060")="1" then
		strEPQ30507060answer1="checked"
	end if
	if Session("EPQ30507070")="1" then
		strEPQ30507070answer1="checked"
	end if
	if Session("EPQ30507080")="1" then
		strEPQ30507080answer1="checked"
	end if
	if Session("EPQ30507090")="1" then
		strEPQ30507090answer1="checked"
	end if
	if Session("EPQ30507100")="1" then
		strEPQ30507100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30507010string")= ""
	Session("EPQ30507020string")= ""
	Session("EPQ30507030string")= ""
	Session("EPQ30507040string")= ""
	Session("EPQ30507050string")= ""
	Session("EPQ30507060string")= ""
	Session("EPQ30507070string")= ""
	Session("EPQ30507080string")= ""
	Session("EPQ30507090string")= ""
	Session("EPQ30507100string")= ""


	Session("EPQ30507000") = Request.Form("EPQ30507000")
	Session("EPQ30507010") = Request.Form("EPQ30507010")
	Session("EPQ30507020") = Request.Form("EPQ30507020")
	Session("EPQ30507030") = Request.Form("EPQ30507030")
	Session("EPQ30507040") = Request.Form("EPQ30507040")
	Session("EPQ30507050") = Request.Form("EPQ30507050")
	Session("EPQ30507060") = Request.Form("EPQ30507060")
	Session("EPQ30507070") = Request.Form("EPQ30507070")
	Session("EPQ30507080") = Request.Form("EPQ30507080")
	Session("EPQ30507090") = Request.Form("EPQ30507090")
	Session("EPQ30507100") = Request.Form("EPQ30507100")


	if Session("EPQ30507010") = "1" then 
		Session("EPQ30507010string")= ""
	end if
	if Session("EPQ30507020") = "1" then 
		Session("EPQ30507020string")= ""
	end if
	if Session("EPQ30507030") = "1" then 
		Session("EPQ30507030string")= ""
	end if
	if Session("EPQ30507040") = "1" then 
		Session("EPQ30507040string")= ""
	end if
	if Session("EPQ30507050") = "1" then 
		Session("EPQ30507050string")= ""
	end if
	if Session("EPQ30507060") = "1" then 
		Session("EPQ30507060string")= ""
	end if
	if Session("EPQ30507070") = "1" then 
		Session("EPQ30507070string")= ""
	end if
	if Session("EPQ30507080") = "1" then 
		Session("EPQ30507080string")= ""
	end if
	if Session("EPQ30507090") = "1" then 
		Session("EPQ30507090string")= ""
	end if
	if Session("EPQ30507100") = "1" then 
		Session("EPQ30507100string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30506090")="1" then
	Session("Page")="31"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if


if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30507010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


Session("Page")="5"

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="4a"
else

end if
end if



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


<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">


    <form action="currentsymptoms4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any of the following skin problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30507040" value="1" id="EPQ30507040" <%=strEPQ30507040answer1%>>
		<label for="EPQ30507040">A new mole after age 40</label><br>

		<input type="checkbox" name="EPQ30507020" value="1" id="EPQ30507020" <%=strEPQ30507020answer1%>>
		<label for="EPQ30507020">A sore that does not heal</label><br>
		<input type="checkbox" name="EPQ30507060" value="1" id="EPQ30507060" <%=strEPQ30507060answer1%>>
		<label for="EPQ30507060">Change in mole or freckle</label><br>

		<input type="checkbox" name="EPQ30507010" value="1" id="EPQ30507010" <%=strEPQ30507010answer1%>>
		<label for="EPQ30507010">Change in skin color</label><br>

		<input type="checkbox" name="EPQ30507080" value="1" id="EPQ30507080" <%=strEPQ30507080answer1%>>
		<label for="EPQ30507080">Easy bruising</label><br>
<br><br>
		<input type="radio" name="EPQ30507100" value="1" id="EPQ30507100" <%=strEPQ30507100answer1%>>
		<label for="EPQ30507100">None</label><br>

<br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30507070" value="1" id="EPQ30507070" <%=strEPQ30507070answer1%>>
		<label for="EPQ30507070">Lump or growth on skin</label><br>
		<input type="checkbox" name="EPQ30507030" value="1" id="EPQ30507030" <%=strEPQ30507030answer1%>>
		<label for="EPQ30507030">Mole that looks different than others</label><br>
		<input type="checkbox" name="EPQ30507050" value="1" id="EPQ30507050" <%=strEPQ30507050answer1%>>
		<label for="EPQ30507050">Mole or freckle that burns or itches</label><br>
		<input type="checkbox" name="EPQ30507090" value="1" id="EPQ30507090" <%=strEPQ30507090answer1%>>
		<label for="EPQ30507090">Other, specify:</label>		<input id="EPQ30507000" type="text" maxlength="75" size="15" name="EPQ30507000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30507000")%>' ><br>

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
