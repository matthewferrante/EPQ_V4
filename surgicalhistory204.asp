
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30757450")="1" then
		strTEMP1EPQ30757450answer1="checked"
	end if
	if Session("EPQ30757500")="1" then
		strEPQ30757500answer1="checked"
	end if
	if Session("EPQ30757550")="1" then
		strEPQ30757550answer1="checked"
	end if
	if Session("EPQ30757600")="1" then
		strEPQ30757600answer1="checked"
	end if
	if Session("EPQ30757650")="1" then
		straEPQ30757650nswer1="checked"
	end if
	if Session("EPQ30757700")="1" then
		strEPQ30757700answer1="checked"
	end if
	if Session("EPQ30757800")="1" then
		strEPQ30757800answer1="checked"
	end if
	if Session("EPQ30757850")="1" then
		strEPQ30757850answer1="checked"
	end if
	if Session("EPQ30757900")="1" then
		strEPQ30757900answer1="checked"
	end if
	if Session("EPQ30757950")="1" then
		strEPQ30757950answer1="checked"
	end if
	if Session("EPQ30758100")="1" then
		strEPQ30758100answer1="checked"
	end if
	if Session("TEMP1EPQ30757600")="1" then
		strTEMP1EPQ30757600answer1="checked"
	end if
	if Session("TEMP1EPQ30757750")="1" then
		strTEMP1EPQ30757750answer1="checked"
	end if
	if Session("TEMP2EPQ30757800")="1" then
		strTEMP2EPQ30757800answer1="checked"
	end if
	if Session("EPQ30756800b")="1" then
		strEPQ30756800banswer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("TEMP1EPQ30757450") = Request.Form("TEMP1EPQ30757450")
	Session("EPQ30757500") = Request.Form("EPQ30757500")
	Session("EPQ30757550") = Request.Form("EPQ30757550")
	Session("EPQ30757600") = Request.Form("EPQ30757600")
	Session("TEMP1EPQ30757600") = Request.Form("TEMP1EPQ30757600")
	Session("EPQ30757650") = Request.Form("EPQ30757650")
	Session("EPQ30757700") = Request.Form("EPQ30757700")
	Session("TEMP1EPQ30757750") = Request.Form("TEMP1EPQ30757750")
	Session("EPQ30757800") = Request.Form("EPQ30757800")
	Session("EPQ30757850") = Request.Form("EPQ30757850")
	Session("TEMP2EPQ30757800") = Request.Form("TEMP2EPQ30757800")
	Session("EPQ30757900") = Request.Form("EPQ30757900")
	Session("EPQ30757950") = Request.Form("EPQ30757950")
	Session("EPQ30756800b") = Request.Form("EPQ30756800b")
	Session("EPQ30758100") = Request.Form("EPQ30758100")
	Session("EPQ30758140Describe") = Request.Form("EPQ30758140Describe")
end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=203
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714020") <> "1" then 
	Session("Page")="203"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714020") <> "1" then 
	Session("Page")="205"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="205"
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


    <form action="surgicalhistory204.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>head, neck, eye, ear, nose, mouth or thyroid</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30757450" value="1" <%=strTEMP1EPQ30757450answer1%>>Cleft lip or palate surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757500" value="1" <%=strEPQ30757500answer1%>>Dental or oral surgery (including the removal of your <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wisdom teeth)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757600" value="1" <%=strEPQ30757600answer1%>>Ear surgery (including tubes)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757550" value="1" <%=strEPQ30757550answer1%>>Eye surgery (including the removal of cataracts and<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;laser surgery such as LASIK)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30757600" value="1" <%=strTEMP1EPQ30757600answer1%>>Laryngectomy (removal of larynx or voice box)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757650" value="1" <%=strEPQ30757650answer1%>>Laryngoscopy (a test to see inside the back of the<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throat or vocal cords)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757700" value="1" <%=strEPQ30757700answer1%>>Nasal or sinus surgery (including deviated septum)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30757750" value="1" <%=strTEMP1EPQ30757750answer1%>>Neck (cervical spine) surgery<br>
	
</span>

<span class="column2">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757800" value="1" <%=strEPQ30757800answer1%>>Parathyroid surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757850" value="1" <%=strEPQ30757850answer1%>>Plastic surgery (including facelifts and rhinoplasty)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"
name="TEMP2EPQ30757800" value="1" <%=strTEMP2EPQ30757800answer1%>>Sleep apnea surgery<br>
 <input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757900" value="1" <%=strEPQ30757900answer1%>>Thyroid surgery (including removal of thyroid)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757950" value="1" <%=strEPQ30757950answer1%>>Tonsillectomy or adenoidectomy (removal of<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;your tonsils and/or adenoids)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756800b" value="1" <%=strEPQ30756800banswer1%>>Tracheotomy (surgery to open your windpipe and <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;help you breathe)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758100" value="1" <%=strEPQ30758100answer1%>>Other ENT, oral, or eye surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp
		<input id="EPQ30758140Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="16" name="EPQ30758140Describe" value='<%=Session("EPQ30758140Describe")%>' >
	
					
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
