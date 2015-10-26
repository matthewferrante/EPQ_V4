
<%
 
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	

if Request.Form("ispostback")="1" then
end if

if Request.Form("StopID")="1" then

end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Session("QOLSectionStatus")=""

		Response.Redirect "qualityoflifemaster.asp"
end if


if Request.Form("ContinueID")="1" then

	if Session("KioskMode")="2" then 
		Session("ReturnURL")="../v4/wysewelcome.asp?LC="&Session("PatientLocation")
		Response.redirect Session("ReturnURL")
	end if

	if Session("KioskMode")="1" then 
		Session("ReturnURL")="../v4/kioskwelcome.asp?LC="&Session("PatientLocation")
		Response.redirect Session("ReturnURL")
	end if

	
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

<script src="scripts_js/jquery-1.3.2.js" type="text/javascript"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		function closeAndForward(strReturnURL)
		{
			var strUserAgent = "";
			strUserAgent = navigator.userAgent.toLowerCase();
			if (strUserAgent.indexOf("firefox") != -1)
			{
				alert ("Your browser may not allow the window to be closed with this button. If you click OK and the browser window is still open, then click the X in the top right corner to close the browser.");
			}

			if (strReturnURL.length > 0)
			{
				window.open (strReturnURL);
			}
			window.opener = self;
			//window.close();
			self.close();
			return false;
		}
		</script>

		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
		 <!--#include file="functionbox.asp"-->

		-->
		</script>


</head>
<body>

<div id="header" style="display: block">
</div>

<div id="wrapper">


<div id="formWrapper">

<div id="formBlock">
<%
if session("KioskMode")=1 OR session("KioskMode")=2 then
%>

<%
if Session("SurveyStatus")= "Completed" then 
%>
<div id="SpecialNote">
You have completed the clinical history questionnaire and your responses have been saved.  Moffitt’s clinical team will now be able to review your responses in the Electronic Health Record.
<br>

Please select the END button to reset the questionnaire for the next patient.

<br>
</div>
<%
else
%>
<div id="SpecialNote">
You have successfully saved your responses to the patient questionnaire. Please log back into your tablet or Patient Portal account, prior to your appointment, to complete this questionnaire. Thank you for your time.
</div>
<%
end if
%>


<%
end if
%>

<%
if session("KioskMode")<>1 AND session("KioskMode")<>2 then
%>

<%
if Session("SurveyStatus")= "Completed" then 
%>
<div id="SpecialNote">
You have completed the clinical history questionnaire and your responses have been saved.  Moffitt’s clinical team will now be able to review your responses in the Electronic Health Record.
<br>
Thank you for your time.
</div>
<%
else
%>
<div id="SpecialNote">
You have successfully saved your responses to the patient questionnaire. Please log back into your Patient Portal account, prior to your appointment, to complete this questionnaire. Thank you for your time.
</div>
<%
end if
%>

<%
end if
%>
    <form action="questionnairecomplete.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
</div> <!-- [ /#formBlock ] -->

	<div id="buttonBox">
	 <!--#include file="buttonboxclose.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu3.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>