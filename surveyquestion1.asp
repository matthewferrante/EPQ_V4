
<%
Session("PageHolder")="Survey Question"


if Request.Form("ispostback") <> "1" then
	if Session("SurveyQuestion2012_01N") ="1" then
		strSurveyQuestion2012_01N="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("SurveyQuestion2012_01") = Request.Form("SurveyQuestion2012_01")
	Session("SurveyQuestion2012_01") =Server.HTMLEncode(Session("SurveyQuestion2012_01"))

end if

if Request.Form("StopID")="1" then
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

if Session("GI10201000")="1" then
	Session("Page")="35"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10202000")="1" then
	Session("Page")="29"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10203000")="1" then
	Session("Page")="5"
	Response.Redirect "qualityoflifemaster.asp"
	 <!--#include file="autosavefunction.asp"-->
end if

if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10204000")="1" then
		Session("Page")="52"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10202000")="1" OR Session("HM10206000")="1" then
		Session("Page")="41"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10201000")="1" or Session("HM10203000")="1" then
		Session("Page")="37"
		Response.Redirect "qualityoflifemaster.asp"
	else
			Session("Page")="5"
		Response.Redirect "qualityoflifemaster.asp"
	end if

end if
end if


if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10201000")="1" then
		Session("Page")="27"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("GU10202000")="1" then
		Session("Page")="17"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if


end if
end if


		Session("Page")=5
		Session("QOLSectionStatus")=""
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("KioskMode") = 1 then
		Session("Page")=0
		Response.Redirect "qualityoflife.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
		Session("Page")=0
		Response.Redirect "moffittreport.asp"

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
    <form action="surveyquestion1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

    <div id="SpecialNote">
      We would appreciate your feedback about the questionnaire you just completed. In the space below, please share any comments you have, including those about the system, instructions and the questions themselves. 
<br><br>
Once you have provided your feedback, please press “Save & Continue”; if you do not wish to provide feedback, please press “Save & Continue” when ready.
</div>
	<fieldset><legend>
	  </legend>

	<div class="QuestionAnswersBox">
	<textarea  
name="SurveyQuestion2012_01" id="SurveyQuestion2012_01" rows="5" cols="80"  style="overflow:hidden;" onKeyDown="limitText(this.form.SurveyQuestion2012_01,this.form.countdown,480);" onKeyUp="limitText(this.form.SurveyQuestion2012_01,this.form.countdown,480);">
<%=Session("SurveyQuestion2012_01")%></textarea>
<br>

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
