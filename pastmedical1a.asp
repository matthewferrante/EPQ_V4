
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("GI10401020")="1" then
		strGI10401020answer1="checked"
	end if
	if Session("GI10401010")="1" then
		strGI10401010answer1="checked"
	end if
	if Session("GI10401030")="1" then
		strGI10401030answer1="checked"
	end if
	if Session("TEMP1GI10401030")="1" then
		strTEMP1GI10401030answer1="checked"
	end if
	if Session("GI10401040")="1" then
		strGI10401040answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("GI10401020") = Request.Form("GI10401020")
	Session("GI10401010") = Request.Form("GI10401010")
	Session("GI10401030") = Request.Form("GI10401030")
	Session("TEMP1GI10401030") = Request.Form("TEMP1GI10401030")
	Session("GI10401040") = Request.Form("GI10401040")
	Session("GI10401060_TXT") = Request.Form("GI10401060_TXT")
 
end if


if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30401001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="1a1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
	end if
	end if


	Session("Page")="1a1"
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
    <form action="pastmedical1a.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div>	

  <fieldset>
    <legend class="QuestionBox">
	Please indicate the types of hepatitis that you had. Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" class="atLeastOneChecked" name="GI10401010" value="1" 
id="GI10401010" <%=strGI10401010answer1%>>
		<label for="GI10401010">Hepatitis A</label><br>
		<input type="checkbox" class="atLeastOneChecked" name="GI10401020" value="1" id="GI10401020"  <%=strGI10401020answer1%>>
		<label for="GI10401020">Hepatitis B</label><br>
		<input type="checkbox" class="atLeastOneChecked" name="GI10401030" value="1" id="GI10401030" <%=strGI10401030answer1%>>
		<label for="GI10401030">Hepatitis C</label><br>
		<input type="checkbox" class="atLeastOneChecked" name="GI10401040" value="1" id="GI10401040" <%=strGI10401040answer1%>>
		<label for="GI10401040">Hepatitis other, specify:</label>
		<input id="GI10401060_TXT" type="text" maxlength="74" size="30" name="GI10401060_TXT" 		class="requiredIfPreviousCheckbox" value='<%=Session("GI10401060_TXT")%>' ><br>
		<input type="checkbox" class="atLeastOneChecked" name="TEMP1GI10401030" value="1" id="TEMP1GI10401030" <%=strTEMP1GI10401030answer1%>>
		<label for="TEMP1GI10401030">Hepatitis unknown</label><br>

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
