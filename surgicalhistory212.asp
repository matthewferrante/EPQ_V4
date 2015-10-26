
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30759950")="1" then
		strTEMP1EPQ30759950answer1="checked"
	end if
	if Session("TEMP2EPQ30759950")="1" then
		strTEMP2EPQ30759950answer1="checked"
	end if
	if Session("TEMP3EPQ30759950")="1" then
		strTEMP3EPQ30759950answer1="checked"
	end if
	if Session("TEMP4EPQ30759950")="1" then
		strTEMP4EPQ30759950answer1="checked"
	end if
	if Session("TEMP5EPQ30759950")="1" then
		strTEMP5EPQ30759950answer1="checked"
	end if
	if Session("TEMPEPQ30760250")="1" then
		strTEMPEPQ30760250answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30759950") = Request.Form("TEMP1EPQ30759950")
	Session("TEMP2EPQ30759950") = Request.Form("TEMP2EPQ30759950")
	Session("TEMP3EPQ30759950") = Request.Form("TEMP3EPQ30759950")
	Session("TEMP4EPQ30759950") = Request.Form("TEMP4EPQ30759950")
	Session("TEMP5EPQ30759950") = Request.Form("TEMP5EPQ30759950")
	Session("TEMPEPQ30760250") = Request.Form("TEMPEPQ30760250")
	Session("TEMPEPQ30760290Describe") = Request.Form("TEMPEPQ30760290Describe")
end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=211
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714105") <> "1" then 
	Session("Page")="211"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714105") <> "1" then 
	Session("Page")="213"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="213"
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


    <form action="surgicalhistory212.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>spine (neck and back)</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
	<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP1EPQ30759950" value="1" <%=strTEMP1EPQ30759950answer1%>>Back joint injections or nerve blocks<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP2EPQ30759950" value="1" <%=strTEMP2EPQ30759950answer1%>>Pain pump or spinal cord stimulator<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP3EPQ30759950" value="1" <%=strTEMP3EPQ30759950answer1%>>Spinal fusion (kyphoplasty,<br>&nbsp;&nbsp;&nbsp;&nbsp
where bone cement is injected for fractures)<br>
		</span>

<span class="column2">
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP4EPQ30759950" value="1" <%=strTEMP4EPQ30759950answer1%>>Spine or back surgery (including discectomy or laminectomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP5EPQ30759950" value="1" <%=strTEMP5EPQ30759950answer1%>>Steroid injections to back<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMPEPQ30760250" value="1" <%=strTEMPEPQ30760250answer1%>>Other spine surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="TEMPEPQ30760290Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="TEMPEPQ30760290Describe" value='<%=Session("TEMPEPQ30760290Describe")%>' ><br>						
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
