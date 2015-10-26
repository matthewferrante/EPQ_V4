
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30528010")="1" then
		strEPQ30528010answer1="checked"
	end if
	if Session("EPQ30528020")="1" then
		strEPQ30528020answer1="checked"
	end if
	if Session("EPQ30528030")="1" then
		strEPQ30528030answer1="checked"
	end if
	if Session("EPQ30528040")="1" then
		strEPQ30528040answer1="checked"
	end if
	if Session("EPQ30528050")="1" then
		strEPQ30528050answer1="checked"
	end if
	if Session("EPQ30528060")="1" then
		strEPQ30528060answer1="checked"
	end if

	if Session("EPQ30529010")="1" then
		strEPQ30529010answer1="checked"
	end if
	if Session("EPQ30529020")="1" then
		strEPQ30529020answer1="checked"
	end if
	if Session("EPQ30529030")="1" then
		strEPQ30529030answer1="checked"
	end if
	if Session("EPQ30529040")="1" then
		strEPQ30529040answer1="checked"
	end if
	if Session("EPQ30529050")="1" then
		strEPQ30529050answer1="checked"
	end if
	if Session("EPQ30529060")="1" then
		strEPQ30529060answer1="checked"
	end if
	if Session("EPQ30529070")="1" then
		strEPQ30529070answer1="checked"
	end if
	if Session("EPQ30529080")="1" then
		strEPQ30529080answer1="checked"
	end if
	if Session("EPQ30529090")="1" then
		strEPQ30529090answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30528010string")= ""
	Session("EPQ30528020string")= ""
	Session("EPQ30528030string")= ""
	Session("EPQ30528040string")= ""
	Session("EPQ30528050string")= ""
	Session("EPQ30528060string")= ""

	Session("EPQ30529010string")= ""
	Session("EPQ30529020string")= ""
	Session("EPQ30529030string")= ""
	Session("EPQ30529040string")= ""
	Session("EPQ30529050string")= ""
	Session("EPQ30529060string")= ""
	Session("EPQ30529070string")= ""
	Session("EPQ30529080string")= ""



	Session("EPQ30528000") = Request.Form("EPQ30528000")
	Session("EPQ30528010") = Request.Form("EPQ30528010")
	Session("EPQ30528020") = Request.Form("EPQ30528020")
	Session("EPQ30528030") = Request.Form("EPQ30528030")
	Session("EPQ30528040") = Request.Form("EPQ30528040")
	Session("EPQ30528050") = Request.Form("EPQ30528050")
	Session("EPQ30528060") = Request.Form("EPQ30528060")


	Session("EPQ30529000") = Request.Form("EPQ30529000")
	Session("EPQ30529010") = Request.Form("EPQ30529010")
	Session("EPQ30529020") = Request.Form("EPQ30529020")
	Session("EPQ30529030") = Request.Form("EPQ30529030")
	Session("EPQ30529040") = Request.Form("EPQ30529040")
	Session("EPQ30529050") = Request.Form("EPQ30529050")
	Session("EPQ30529060") = Request.Form("EPQ30529060")
	Session("EPQ30529070") = Request.Form("EPQ30529070")
	Session("EPQ30529080") = Request.Form("EPQ30529080")
	Session("EPQ30529090") = Request.Form("EPQ30529090")

	if Session("EPQ30528010") = "1" then 
		Session("EPQ30528010string")= ""
	end if
	if Session("EPQ30528020") = "1" then 
		Session("EPQ30528020string")= ""
	end if
	if Session("EPQ30528030") = "1" then 
		Session("EPQ30528030string")= ""
	end if
	if Session("EPQ30528040") = "1" then 
		Session("EPQ30528040string")= ""
	end if
	if Session("EPQ30528050") = "1" then 
		Session("EPQ30528050string")= ""
	end if
	if Session("EPQ30528060") = "1" then 
		Session("EPQ30528060string")= ""
	end if

	if Session("EPQ30529010") = "1" then 
		Session("EPQ30529010string")= ""
	end if
	if Session("EPQ30529020") = "1" then 
		Session("EPQ30529020string")= ""
	end if
	if Session("EPQ30529030") = "1" then 
		Session("EPQ30529030string")= ""
	end if
	if Session("EPQ30529040") = "1" then 
		Session("EPQ30529040string")= ""
	end if
	if Session("EPQ30529050") = "1" then 
		Session("EPQ30529050string")= ""
	end if
	if Session("EPQ30529060") = "1" then 
		Session("EPQ30529060string")= ""
	end if
	if Session("EPQ30529070") = "1" then 
		Session("EPQ30529070string")= ""
	end if
	if Session("EPQ30529080") = "1" then 
		Session("EPQ30529080string")= ""
	end if
	if Session("EPQ30529090") = "1" then 
		Session("EPQ30529090string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	if Session("GU10201000")="1" then
		Session("Page")="29"
		Response.Redirect "currentsymptomsmaster.asp"

	end if

	'if Session("GU10202000")="1" then
	'	Session("Page")="29"
	'	Response.Redirect "currentsymptomsmaster.asp"
	'end if

	end if
	end if


		Session("ReturnID")="1"
	if Session("EPQ30522170") = "1" then 
	Session("Page")="21"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522040") = "1" then 
	Session("Page")="20"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522060") = "1" OR Session("EPQ30518040") = "1" then 
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
	if len(Session("EPQ30528010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("Gender")="F" then 
	Session("Page")="23"
	else
	Session("Page")="24"
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

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->
</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">


    <form action="currentsymptoms22.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any endocrine symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30528030" value="1" id="EPQ30528030" <%=strEPQ30528030answer1%>>
		<label for="EPQ30528030">Dry skin and hair</label><br>
		<input type="checkbox" name="EPQ30528010" value="1" id="EPQ30528010" <%=strEPQ30528010answer1%>>
		<label for="EPQ30528010">Enlarged thyroid (goiter)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><br>
		<input type="checkbox" name="EPQ30528020" value="1" id="EPQ30528020" <%=strEPQ30528020answer1%>>
		<label for="EPQ30528020">Hot or cold intolerance</label><br>
<br><Br>
		<input type="radio" name="EPQ30528060" value="1" id="EPQ30528060" <%=strEPQ30528060answer1%>>
		<label for="EPQ30528060">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30528040" value="1" id="EPQ30528040" <%=strEPQ30528040answer1%>>
		<label for="EPQ30528040">Increased thirst</label><br>
		<input type="checkbox" name="EPQ30528050" value="1" id="EPQ30528050" <%=strEPQ30528050answer1%>>
		<label for="EPQ30528050">Other, specify:</label>	
	<input id="EPQ30528000" type="text" maxlength="75" size="15" name="EPQ30528000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30528000")%>'><br>
</span>

	</div><!-- [ /#AnswerBox] -->
  </fieldset>
&nbsp;<br>&nbsp;<br>&nbsp;<br>
	<div class="ResetBox">
	</div>

	<fieldset class="eitherNoneOrChecked2">
	<legend class="QuestionBox">
    Have you had any blood or lymphatic symptoms in the past 3 months? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30529050" value="1" id="EPQ30529050" <%=strEPQ30529050answer1%>>
		<label for="EPQ30529050">Blood transfusions</label><br>
		<input type="checkbox" name="EPQ30529040" value="1" id="EPQ30529040" <%=strEPQ30529040answer1%>>
		<label for="EPQ30529040">Easy bruising or bleeding</label><br>
		<input type="checkbox" name="EPQ30529030" value="1" id="EPQ30529030" <%=strEPQ30529030answer1%>>
		<label for="EPQ30529030">Frequent bleeding gums</label><br>
		<input type="checkbox" name="EPQ30529020" value="1" id="EPQ30529020" <%=strEPQ30529020answer1%>>
		<label for="EPQ30529020">Frequent nose bleeds&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><br>

<br><br>
		<input type="radio" name="EPQ30529090" value="1" id="EPQ30529090" <%=strEPQ30529090answer1%>>
		<label for="EPQ30529090">None</label><br>
</span>

<span class="column2">
		<input type="checkbox" name="EPQ30529060" value="1" id="EPQ30529060" <%=strEPQ30529060answer1%>>
		<label for="EPQ30529060">Lymphedema (swelling in your arms or legs)</label><br>
		<input type="checkbox" name="EPQ30529010" value="1" id="EPQ30529010" <%=strEPQ30529010answer1%>>
		<label for="EPQ30529010">Prominent leg veins</label><br>

		<input type="checkbox" name="EPQ30529070" value="1" id="EPQ30529070" <%=strEPQ30529070answer1%>>
		<label for="EPQ30529070">Swollen glands</label><br>

		<input type="checkbox" name="EPQ30529080" value="1" id="EPQ30529080" <%=strEPQ30529080answer1%>>
		<label for="EPQ30529080">Other, specify:</label>	
	<input id="EPQ30529000" type="text" maxlength="75" size="15" name="EPQ30529000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30529000")%>'><br>
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
