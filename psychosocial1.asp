
<%

Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31201000")="1" then
		strEPQ31201000yes="checked"
	end if
	if Session("EPQ31201000")="0" then
		strEPQ31201000no="checked"
	end if

	if Session("EPQ31202000")="1" then
		strEPQ31202000yes="checked"
	end if
	if Session("EPQ31202000")="0" then
		strEPQ31202000no="checked"
	end if

	if Session("EPQ31203000")="1" then
		strEPQ31203000yes="checked"
	end if
	if Session("EPQ31203000")="0" then
		strEPQ31203000no="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31201000string")= ""
	Session("EPQ31202000string")= ""
	Session("EPQ31203000string")= ""

	Session("EPQ31201000") = Request.Form("EPQ31201000")
	Session("EPQ31202000") = Request.Form("EPQ31202000")
	Session("EPQ31203000") = Request.Form("EPQ31203000")

	if Session("EPQ31201000") = "1" then 
		Session("EPQ31201000string")= "PT has a family member or friend who can help"
	else
		Session("EPQ31201000string")= "PT does not a family member or friend who can help"
	end if

	if Session("EPQ31202000") = "1" then 
		Session("EPQ31202000string")= "PT lives alone"
	else
		Session("EPQ31202000string")= "PT does not live alone"
	end if

	if Session("EPQ31203000") = "1" then 
		Session("EPQ31203000string")= "PT has children in household"
	else
		Session("EPQ31203000string")= "PT does not have children in household"
	end if

end if

if Request.Form("StopID")="1" then
		Session("PsychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
Session("CancerRiskSectionStatus")="Incomplete"

if Session("SurveyVersion")="HEME" then
if Session("HM10204000")="1" OR Session("HM10207000")="1" then
	Session("Page")="30"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("HM11102000")="1" or Session("THRC31101300")="1" or Session("THRC31101400")="1" or Session("THRC31101500")="1" or Session("THRC31101700")="1" or Session ("THRC31101900")="1" or Session("THRC31102000")="1" then
Session("Page")="26"
Response.Redirect "cancerriskmaster.asp"
else
Session("Page")="25a"
Response.Redirect "cancerriskmaster.asp"
end if

end if

if Session("SurveyVersion")="Thoracic" then
	if Session("THRC31102100")="1" then
	Session("Page")="25"
	else
	Session("Page")="26"
	end if 
else
	Session("Page")="22"
end if


if Session("SurveyVersion")="GI" then
	if Session("GI10201000")="1" then
		if Session("EPQ31010000")="1" then
		Session("Page")="29"
		Response.Redirect "cancerriskmaster.asp"
		else
		Session("Page")="28"
		Response.Redirect "cancerriskmaster.asp"
		end if 
	end if



	if Session("GI10201000")<>"1" and Session("THRC31102100")="1" then
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	else
		Session("Page")="26"
		Response.Redirect "cancerriskmaster.asp"
	end if 
end if

	if Session("TEMP2EPQ31169000") = "1" then 
	Session("Page")="53"
	Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("TEMP2EPQ31168000") = "1" then 
	Session("Page")="50"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMP2EPQ31167000") = "1" then 
	Session("Page")="49"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31167000") = "1" then 
	Session("Page")="47"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31166000") = "1" then 
	Session("Page")="45"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31165000") = "1" then 
	Session("Page")="43"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31164000") = "1" then 
	Session("Page")="41"
	Response.Redirect "cancerriskmaster.asp"
	end if


Session("Page")="40"
Response.Redirect "cancerriskmaster.asp"

end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30101000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30102000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30103000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "psychosocialmaster.asp"
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


    <form action="psychosocial1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
  <legend class="QuestionBox">
    Do you have a family member or friend who can help you during your illness and treatment?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31201000" value="1" id="EPQ312010001" class="required" <%=strEPQ31201000yes%>>
		<label for="EPQ312010001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ31201000" value="0" id="EPQ312010002" <%=strEPQ31201000no%>>
		<label for="EPQ312010002">No</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset>
  <legend class="QuestionBox">
    Do you live alone?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31202000" value="1" id="EPQ312020001" class="required" <%=strEPQ31202000yes%>>
		<label for="EPQ312020001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ31202000" value="0" id="EPQ312020002" <%=strEPQ31202000no%>>
		<label for="EPQ312020002">No</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset>
  <legend class="QuestionBox">
    Do you have children under 18 years old in your household?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31203000" value="1" id="EPQ312030001" class="required" <%=strEPQ31203000yes%>>
		<label for="EPQ312030001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ31203000" value="0" id="EPQ312030002" <%=strEPQ31203000no%>>
		<label for="EPQ312030002">No</label><br>
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
