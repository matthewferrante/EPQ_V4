
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM10502000")="1" then
		strHM10502000answer1="checked"
	end if
	if Session("HM10503000")="1" then
		strHM10503000answer1="checked"
	end if
	if Session("HM10504000")="1" then
		strHM10504000answer1="checked"
	end if
	if Session("HM10505000")="1" then
		strHM10505000answer1="checked"
	end if
	if Session("HM10506000")="1" then
		strHM10506000answer1="checked"
	end if

	if Session("HM10516000")="1" then
		strHM10516000answer1="checked"
	end if
	if Session("HM10507000")="1" then
		strHM10507000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("HM10502000string")= ""
	Session("HM10503000string")= ""
	Session("HM10504000string")= ""
	Session("HM10505000string")= ""
	Session("HM10506000string")= ""
	Session("HM10516000string")= ""
	Session("HM10507000string")= ""


	Session("HM10502000") = Request.Form("HM10502000")
	Session("HM10503000") = Request.Form("HM10503000")
	Session("HM10504000") = Request.Form("HM10504000")
	Session("HM10505000") = Request.Form("HM10505000")
	Session("HM10506000") = Request.Form("HM10506000")
	Session("HM10507000") = Request.Form("HM10507000")
	Session("HM10516000") = Request.Form("HM10516000")
	Session("HM10517000") = Request.Form("HM10517000")


	if Session("HM10502000") = "1" then 
		Session("HM10502000string")= ""
	end if
	if Session("HM10503000") = "1" then 
		Session("HM10503000string")= ""
	end if
	if Session("HM10504000") = "1" then 
		Session("HM10504000string")= ""
	end if
	if Session("HM10505000") = "1" then 
		Session("HM10505000string")= ""
	end if
	if Session("HM10506000") = "1" then 
		Session("HM10506000string")= ""
	end if
	if Session("HM10507000") = "1" then 
		Session("HM10507000string")= ""
	end if
	if Session("HM10516000") = "1" then 
		Session("HM10516000string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=10
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30515010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


if Session("HM10204000")="1" OR Session("HM10207000")="1"  then
if Session("EPQ30515040")="1" then

	Session("Page")="10a1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"

end if
end if


	Session("Page")="11"
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


    <form action="currentsymptoms10a.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

<div class="eitherNoneOrChecked">
  <fieldset>
	<legend class="QuestionBox">
      Have you had any memory problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">

		<input type="checkbox" name="HM10502000" value="1" id="HM10502000" <%=strHM10502000answer1%>>
		<label for="HM10502000">Difficulty concentrating</label><br>
		<input type="checkbox" name="HM10503000" value="1" id="HM10503000" <%=strHM10503000answer1%>>
		<label for="HM10503000">Difficulty remembering</label><br>

		<input type="checkbox" name="HM10504000" value="1" id="HM10504000" <%=strHM10504000answer1%>>
		<label for="HM10504000">Difficulty finding words</label><br>

		<input type="checkbox" name="HM10505000" value="1" id="HM10505000" <%=strHM10505000answer1%>>
		<label for="HM10505000">Difficulty in recognizing people</label><br>
		<input type="checkbox" name="HM10506000" value="1" id="HM10506000" <%=strHM10506000answer1%>>
		<label for="HM10506000">Difficulty with sense of direction</label><br>

		<input type="checkbox" name="HM10516000" value="1" id="HM10516000" <%=strHM10516000answer1%>>
		<label for="HM10517000">Other, specify</label>
	<input id="HM10517000" type="text" maxlength="75" size="15" name="HM10517000" class="requiredIfPreviousCheckbox" value='<%=Session("HM10517000")%>'><br>


<br><br>
		<input type="radio" name="HM10507000" value="1" id="HM10507000" <%=strHM10507000answer1%>>
		<label for="HM10507000">None</label><br>
<br>
	</div></fieldset>		
</div>


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
