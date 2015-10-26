
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30518010")="1" then
		strEPQ30518010answer1="checked"
	end if

	if Session("EPQ30518020")="1" then
		strEPQ30518020answer1="checked"
	end if

	if Session("EPQ30518030")="1" then
		strEPQ30518030answer1="checked"
	end if

	if Session("EPQ30518040")="1" then
		strEPQ30518040answer1="checked"
	end if

	if Session("EPQ30518050")="1" then
		strEPQ30518050answer1="checked"
	end if

	if Session("EPQ30518060")="1" then
		strEPQ30518060answer1="checked"
	end if

	if Session("EPQ30518070")="1" then
		strEPQ30518070answer1="checked"
	end if


	if Session("TEMPEPQ30518070")="1" then
		strTEMPEPQ30518070answer1="checked"
	end if

	if Session("EPQ30518080")="1" then
		strEPQ30518080answer1="checked"
	end if

	if Session("EPQ30518090")="1" then
		strEPQ30518090answer1="checked"
	end if

	if Session("EPQ30518100")="1" then
		strEPQ30518100answer1="checked"
	end if

	if Session("EPQ30518110")="1" then
		strEPQ30518110answer1="checked"
	end if

	if Session("EPQ30518120")="1" then
		strEPQ30518120answer1="checked"
	end if

	if Session("EPQ30518130")="1" then
		strEPQ30518130answer1="checked"
	end if

	if Session("EPQ30518140")="1" then
		strEPQ30518140answer1="checked"
	end if


end if


if Request.Form("ispostback")="1" then

	Session("EPQ30518000") = Request.Form("EPQ30518000")
	Session("EPQ30518010") = Request.Form("EPQ30518010")
	Session("EPQ30518020") = Request.Form("EPQ30518020")
	Session("EPQ30518030") = Request.Form("EPQ30518030")
	Session("EPQ30518040") = Request.Form("EPQ30518040")
	Session("EPQ30518050") = Request.Form("EPQ30518050")
	Session("EPQ30518060") = Request.Form("EPQ30518060")
	Session("EPQ30518070") = Request.Form("EPQ30518070")
	Session("TEMPEPQ30518070") = Request.Form("TEMPEPQ30518070")
	Session("EPQ30518080") = Request.Form("EPQ30518080")
	Session("EPQ30518090") = Request.Form("EPQ30518090")
	Session("EPQ30518100") = Request.Form("EPQ30518100")
	Session("EPQ30518110") = Request.Form("EPQ30518110")
	Session("EPQ30518120") = Request.Form("EPQ30518120")
	Session("EPQ30518130") = Request.Form("EPQ30518130")
	Session("EPQ30518140") = Request.Form("EPQ30518140")

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=12
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30518010")) = 0 then
		 <!--#include file="questionscomplete.asp"-->
	else
	end if

	Session("Page")="14"
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


    <form action="currentsymptoms13.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
       Have you had any mouth, nose, and/or throat symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30518110" value="1" id="EPQ30518110" <%=strEPQ30518110answer1%>>
		<label for="EPQ30518110">Cold sores</label><br>

		<input type="checkbox" name="EPQ30518090" value="1" id="EPQ30518090" <%=strEPQ30518090answer1%>>
		<label for="EPQ30518090">Dental problems</label><br>

		<input type="checkbox" name="EPQ30518040" value="1" id="EPQ30518040" <%=strEPQ30518040answer1%>>
		<label for="EPQ30518040">Difficulty in swallowing</label><br>

		<input type="checkbox" name="EPQ30518140" value="1" id="EPQ30518140" <%=strEPQ30518140answer1%>>
		<label for="EPQ30518140">Dry mouth</label><br>

		<input type="checkbox" name="EPQ30518050" value="1" id="EPQ30518050" <%=strEPQ30518050answer1%>>
		<label for="EPQ30518050">Frequent sneezing</label><br>
		<input type="checkbox" name="EPQ30518060" value="1" id="EPQ30518060" <%=strEPQ30518060answer1%>>
		<label for="EPQ30518060">Frequent sore throats</label><br>
		<input type="checkbox" name="EPQ30518020" value="1" id="EPQ30518020" <%=strEPQ30518020answer1%>>
		<label for="EPQ30518020">Lump or thickening in the mouth</label><br>


<br><br>
		<input type="radio" name="EPQ30518130" value="1" id="EPQ30518130" <%=strEPQ30518130answer1%>>
		<label for="EPQ30518130">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30518010" value="1" id="EPQ30518010" <%=strEPQ30518010answer1%>>
		<label for="EPQ30518010">Mouth sore that doesn't heal</label><br>
		<input type="checkbox" name="EPQ30518100" value="1" id="EPQ30518100" <%=strEPQ30518100answer1%>>
		<label for="EPQ30518100">Nose continually stuffy or runny</label><br>

		<input type="checkbox" name="TEMPEPQ30518070" value="1" id="TEMPEPQ30518070" <%=strTEMPEPQ30518070answer1%>>
		<label for="EPQ30518070">Persistent cough</label><br>

		<input type="checkbox" name="EPQ30518070" value="1" id="EPQ30518070" <%=strEPQ30518070answer1%>>
		<label for="EPQ30518070">Persistent hoarseness</label><br>

		<input type="checkbox" name="EPQ30518030" value="1" id="EPQ30518030" <%=strEPQ30518030answer1%>>
		<label for="EPQ30518030">Red or white patch in mouth</label><br>

		<input type="checkbox" name="EPQ30518080" value="1" id="EPQ30518080" <%=strEPQ30518080answer1%>>
		<label for="EPQ30518080">Sinus problems</label><br>
		<input type="checkbox" name="EPQ30518120" value="1" id="EPQ30518120" <%=strEPQ30518120answer1%>>
		<label for="EPQ30518120">Other, specify:</label>
	<input id="EPQ30518000" type="text" maxlength="75" size="15" name="EPQ30518000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30518000")%>' ><br>

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
