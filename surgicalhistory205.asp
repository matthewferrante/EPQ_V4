
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30758150")="1" then
		strTEMP1EPQ30758150answer1="checked"
	end if
	if Session("EPQ30758150")="1" then
		strEPQ30758150answer1="checked"
	end if
	if Session("EPQ30758200")="1" then
		strEPQ30758200answer1="checked"
	end if
	if Session("EPQ30758250")="1" then
		strEPQ30758250answer1="checked"
	end if
	if Session("EPQ30758300")="1" then
		strEPQ30758300answer1="checked"
	end if
	if Session("EPQ30758350")="1" then
		strEPQ30758350answer1="checked"
	end if
	if Session("TEMPEPQ30758150")="1" then
		strTEMPEPQ30758150answer1="checked"
	end if
	if Session("EPQ30758400")="1" then
		strEPQ30758400answer1="checked"
	end if
	if Session("EPQ30756700")="1" then
		strEPQ30756700answer1="checked"
	end if
	if Session("EPQ30758450")="1" then
		strEPQ30758450answer1="checked"
	end if
	if Session("EPQ30758500")="1" then
		strEPQ30758500answer1="checked"
	end if
	if Session("EPQ30758550")="1" then
		strEPQ30758550answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30758150") = Request.Form("TEMP1EPQ30758150")
	Session("EPQ30758150") = Request.Form("EPQ30758150")
	Session("EPQ30758200") = Request.Form("EPQ30758200")
	Session("EPQ30758250") = Request.Form("EPQ30758250")
	Session("EPQ30758300") = Request.Form("EPQ30758300")
	Session("EPQ30758350") = Request.Form("EPQ30758350")
	Session("TEMPEPQ30758150") = Request.Form("TEMPEPQ30758150")
	Session("EPQ30758400") = Request.Form("EPQ30758400")
	Session("EPQ30756700") = Request.Form("EPQ30756700")
	Session("EPQ30758450") = Request.Form("EPQ30758450")
	Session("EPQ30758500") = Request.Form("EPQ30758500")
	Session("EPQ30758550") = Request.Form("EPQ30758550")
	Session("EPQ30758590Describe") = Request.Form("EPQ30758590Describe")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=204
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714040") <> "1" then 
	Session("Page")="204"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714040") <> "1" then 
	Session("Page")="206"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="206"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
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


    <form action="surgicalhistory205.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>heart, artery, vein or cardiac</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
			<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30758150" value="1" <%=strTEMP1EPQ30758150answer1%>>AV fistula or graft for hemodialysis<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758150" value="1" <%=strEPQ30758150answer1%>>Aneurysm repair<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758200" value="1" <%=strEPQ30758200answer1%>>Angioplasty (placement of a stent in your artery)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758250" value="1" <%=strEPQ30758250answer1%>>Cardiac catheterization (passing a small tube from<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your leg or arm into your heart)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758300" value="1" <%=strEPQ30758300answer1%>>Carotid endarterectomy (removal of plaque from<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your neck arteries)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758350" value="1" <%=strEPQ30758350answer1%>>Heart bypass surgery (also called coronary <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;artery bypass surgery or CABG)<br>
		
</span>

<span class="column2">
<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMPEPQ30758150" value="1" <%=strTEMPEPQ30758150answer1%>>Heart transplant<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758400" value="1" <%=strEPQ30758400answer1%>>Pacemaker or ICD (placement of a life saving<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;device into your heart)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756700" value="1" <%=strEPQ30756700answer1%>>Pericardial window (to drain fluid<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; around the heart)<br>
		
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758450" value="1" <%=strEPQ30758450answer1%>>Valve replacement<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758500" value="1" <%=strEPQ30758500answer1%>>Varicose veins<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758550" value="1" <%=strEPQ30758550answer1%>>Other cardiac surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30758590Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30758590Describe" value='<%=Session("EPQ30758590Describe")%>' >
						
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
