
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30756500")="1" then
		strEPQ30756500answer1="checked"
	end if
	if Session("TEMP1EPQ30756550")="1" then
		strTEMP1EPQ30756550answer1="checked"
	end if
	if Session("TEMP2EPQ30756550")="1" then
		strTEMP2EPQ30756550answer1="checked"
	end if
	if Session("TEMP3EPQ30756550")="1" then
		strTEMP3EPQ30756550answer1="checked"
	end if
	if Session("EPQ30756600")="1" then
		strEPQ30756600answer1="checked"
	end if
	if Session("EPQ30756650")="1" then
		strEPQ30756650answer1="checked"
	end if
	if Session("EPQ30756700")="1" then
		strEPQ30756700answer1="checked"
	end if
	if Session("TEMP1EPQ30756750")="1" then
		strTEMP1EPQ30756750answer1="checked"
	end if
	if Session("TEMP2EPQ30756750")="1" then
		strTEMP2EPQ30756750answer1="checked"
	end if
	if Session("TEMP3EPQ30756750")="1" then
		strTEMP3EPQ30756750answer1="checked"
	end if
	if Session("TEMP4EPQ30756750")="1" then
		strTEMP4EPQ30756750answer1="checked"
	end if

	if Session("TEMP1EPQ30756800")="1" then
		strTEMP1EPQ30756800answer1="checked"
	end if
	if Session("TEMP2EPQ30756800")="1" then
		strTEMP2EPQ30756800answer1="checked"
	end if
	if Session("TEMP3EPQ30756800")="1" then
		strTEMP3EPQ30756800answer1="checked"
	end if

	if Session("EPQ30756800")="1" then
		strEPQ30756800answer1="checked"
	end if
	if Session("EPQ30756850")="1" then
		strEPQ30756850answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30756500") = Request.Form("EPQ30756500")
	Session("TEMP1EPQ30756550") = Request.Form("TEMP1EPQ30756550")
	Session("TEMP2EPQ30756550") = Request.Form("TEMP2EPQ30756550")
	Session("TEMP3EPQ30756550") = Request.Form("TEMP3EPQ30756550")
	Session("EPQ30756600") = Request.Form("EPQ30756600")
	Session("EPQ30756650") = Request.Form("EPQ30756650")
	Session("EPQ30756700") = Request.Form("EPQ30756700")
	Session("TEMP1EPQ30756750") = Request.Form("TEMP1EPQ30756750")
	Session("TEMP2EPQ30756750") = Request.Form("TEMP2EPQ30756750")
	Session("TEMP3EPQ30756750") = Request.Form("TEMP3EPQ30756750")
	Session("TEMP4EPQ30756750") = Request.Form("TEMP4EPQ30756750")
	Session("TEMP1EPQ30756800") = Request.Form("TEMP1EPQ30756800")
	Session("TEMP2EPQ30756800") = Request.Form("TEMP2EPQ30756800")
	Session("TEMP3EPQ30756800") = Request.Form("TEMP3EPQ30756800")
	Session("EPQ30756800") = Request.Form("EPQ30756800")
	Session("EPQ30756850") = Request.Form("EPQ30756850")
	Session("EPQ30756890Describe") = Request.Form("EPQ30756890Describe")
end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=205
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714100") <> "1" then 
	Session("Page")="205"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714100") <> "1" then 
	Session("Page")="207"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="207"
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


    <form action="surgicalhistory206.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>lung, thoracic or esophagus</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
			<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756500" value="1" <%=strEPQ30756500answer1%>>Bronchoscopy (a tube with a camera is used to view<br>&nbsp;&nbsp;&nbsp;&nbsp
 the airways with or without biopsy) <br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30756550" value="1" <%=strTEMP1EPQ30756550answer1%>>Esophageal dilation (stretching to open<br>&nbsp;&nbsp;&nbsp;&nbsp
 the esophagus)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30756550" value="1" <%=strTEMP2EPQ30756550answer1%>>Laparoscopic esophageal surgery (Nissen<br>&nbsp;&nbsp;&nbsp;&nbsp
 fundoplication, Heller myotomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP3EPQ30756550" value="1" <%=strTEMP3EPQ30756550answer1%>>Lung transplant<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756600" value="1" <%=strEPQ30756600answer1%>>Mediastinoscopy (usually done to obtain a biopsy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756700" value="1" <%=strEPQ30756700answer1%>>Pericardial window (to drain fluid around the heart)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30756750" value="1" <%=strTEMP1EPQ30756750answer1%>>Pleurodesis (removal of fluid and sealing of space<br>&nbsp;&nbsp;&nbsp;&nbsp
between chest and lung)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP3EPQ30756750" value="1" <%=strTEMP3EPQ30756750answer1%>>Removal of a portion of the esophagus<br>&nbsp;&nbsp;&nbsp;&nbsp
 containing cancer (esophagogastrectomy)<br>
</span>

<span class="column2">
		
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP4EPQ30756750" value="1" <%=strTEMP4EPQ30756750answer1%>>Removal of lung or portions of the lung<br>&nbsp;&nbsp;&nbsp;&nbsp
 (lobectomy, pneumonectomy, <br>&nbsp;&nbsp;&nbsp;&nbsp
wedge resection or segmentectomy)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30756800" value="1" <%=strTEMP1EPQ30756800answer1%>>Robotic-assisted chest surgery (da Vinci surgery)<br>
	<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30756750" value="1" <%=strTEMP2EPQ30756750answer1%>>Thoracentesis (removal of fluid<br>&nbsp;&nbsp;&nbsp;&nbsp
 from space between chest and lung)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30756800" value="1" <%=strTEMP2EPQ30756800answer1%>>Thoracoscopic sympathectomy (ETS)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP3EPQ30756800" value="1" <%=strTEMP3EPQ30756800answer1%>>Thoracoscopy or VATS (a tube with a camera is used<br>&nbsp;&nbsp;&nbsp;&nbsp
 to view the lungs and a procedure is performed)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756800" value="1" <%=strEPQ30756800answer1%>>Tracheotomy (surgery to open your windpipe<br>&nbsp;&nbsp;&nbsp;&nbsp and help you breathe)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756850" value="1" <%=strEPQ30756850answer1%>>Other surgery on the chest, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30756890Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30756890Describe" value='<%=Session("EPQ30756890Describe")%>' >
							
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
