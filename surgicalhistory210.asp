
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30759550")="1" then
		strEPQ30759550answer1="checked"
	end if
	if Session("TEMPEPQ30759600")="1" then
		strTEMPEPQ30759600answer1="checked"
	end if
	if Session("EPQ30759600")="1" then
		strEPQ30759600answer1="checked"
	end if
	if Session("EPQ30759650")="1" then
		strEPQ30759650answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30759550") = Request.Form("EPQ30759550")
	Session("TEMPEPQ30759600") = Request.Form("TEMPEPQ30759600")
	Session("EPQ30759600") = Request.Form("EPQ30759600")
	Session("EPQ30759650") = Request.Form("EPQ30759650")
	Session("EPQ30759690Describe") = Request.Form("EPQ30759690Describe")
end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=209
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714103") <> "1" then 
	Session("Page")="209"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714103") <> "1" then 
	Session("Page")="211"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="211"
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


    <form action="surgicalhistory210.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>ports placement or removal</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMPEPQ30759600" value="1" <%=strTEMPEPQ30759600answer1%>>PIC line<br>

<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759550" value="1" <%=strEPQ30759550answer1%>>Placement of port<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759600" value="1" <%=strEPQ30759600answer1%>>Removal of port<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759650" value="1" <%=strEPQ30759650answer1%>>Other port, specify:
		<input id="EPQ30759690Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="35" name="EPQ30759690Describe" value='<%=Session("EPQ30759690Describe")%>' >
				
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
