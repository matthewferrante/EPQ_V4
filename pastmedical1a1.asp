
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("TEMP1EPQ30515070")="1" then
		strTEMP1EPQ30515070answer1="checked"
	end if
	if Session("TEMP1EPQ30515110")="1" then
		strTEMP1EPQ30515110answer1="checked"
	end if
	if Session("TEMP2EPQ30515090")="1" then
		strTEMP2EPQ30515090answer1="checked"
	end if
	if Session("TEMP3EPQ30515020")="1" then
		strTEMP3EPQ30515020answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("TEMP1EPQ30515070") = Request.Form("TEMP1EPQ30515070")
	Session("TEMP2EPQ30515090") = Request.Form("TEMP2EPQ30515090")
	Session("TEMP3EPQ30515020") = Request.Form("TEMP3EPQ30515020")
	Session("TEMP1EPQ30515110") = Request.Form("TEMP1EPQ30515110")
end if


if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30418050")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("ReturnID")="1"
	Session("Page")="17b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
	end if

	If Session("EPQ30401003") = "1" then
	Session("ReturnID")="1"
	Session("Page")="1a"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="1"
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="18"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "pastmedicalhistorymaster.asp"
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
    <form action="pastmedical1a1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div>	

<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
Have you ever received any of the following vaccines or medications to prevent an infection? Check all that apply.<br>
	  </legend>

	<div class="QuestionAnswersBox">
		<input type="checkbox" name="TEMP1EPQ30515070" value="1" id="TEMP1EPQ30515070" <%=strTEMP1EPQ30515070answer1%>>
		<label for="EPQ30515070">Human papillomavirus (HPV) vaccine</label><br>
		<input type="checkbox" name="TEMP2EPQ30515090" value="1" id="TEMP2EPQ30515090" <%=strTEMP2EPQ30515090answer1%>>
		<label for="EPQ30515090">Hepatitis B vaccine</label>	<br>
		<input type="checkbox" name="TEMP3EPQ30515020" value="1" id="TEMP3EPQ30515020" <%=strTEMP3EPQ30515020answer1%>>
		<label for="EPQ30515020">Human immunodeficiency virus (HIV) prophylaxis (PrEP) daily pills</label><br>

<br><br>

		<input type="radio" name="TEMP1EPQ30515110" value="1" id="EPQ30515110" <%=strTEMP1EPQ30515110answer1%>>
		<label for="EPQ30515110">None</label><br>
	</div><!-- [ /#AnswerBox] -->

  </fieldset>
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
