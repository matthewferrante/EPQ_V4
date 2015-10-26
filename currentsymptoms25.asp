
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("KioskMode")= 1 then
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Session("CurrentSymptomsSectionStatus")="Completed"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("KioskMode")= 2 then
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Session("CurrentSymptomsSectionStatus")="Completed"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30532000portal") = Request.Form("EPQ30532000portal")
	Session("EPQ30532000portal") =Server.HTMLEncode(Session("EPQ30532000portal"))

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=24
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("KioskMode") = 1 then
		Session("Page")=24
		Response.Redirect "currentsymptomsmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30523000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="32"
	 <!--#include file="autosavefunction.asp"-->
	Session("CurrentSymptomsSectionStatus")="Completed"
	Response.Redirect "currentsymptomsmaster.asp"

	If session("gender")="F" then
	Response.Redirect "womensriskmaster.asp"
	else
	Response.Redirect "surgicalhistorymaster.asp"
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

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js">
</script>

<script src="scripts_js/scripts.js" type="text/javascript">
</script>
<script language="javascript" type="text/javascript">
 function limitText(limitField, limitCount, limitNum)
	 { if (limitField.value.length > limitNum) {
	 limitField.value = limitField.value.substring(0, limitNum);
	 } else {
	 limitCount.value = limitNum - limitField.value.length;
	 }
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
	 <!--#include file="headerfile.asp"-->

</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">
    <form action="currentsymptoms25.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      Briefly describe the history of present illness and any treatment you have already received.
	  </legend>
	<div class="QuestionAnswersBox">
	<textarea  
name="EPQ30532000portal" id="EPQ30532000portal" rows="7" cols="80"  style="overflow:hidden;" class="requiredCompleteText" onKeyDown="limitText(this.form.EPQ30532000portal,this.form.countdown,480);" onKeyUp="limitText(this.form.EPQ30532000portal,this.form.countdown,480);">
<%=Session("EPQ30532000portal")%></textarea>

</span>
<br><br> Please limit your response to 500 characters.
<br> Your typing will stop once you pass the maximum response length.

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
