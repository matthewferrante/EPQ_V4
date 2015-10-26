
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30759700")="1" then
		strTEMP1EPQ30759700answer1="checked"
	end if
	if Session("TEMP2EPQ30759700")="1" then
		strTEMP2EPQ30759700answer1="checked"
	end if
	if Session("EPQ30759700")="1" then
		strEPQ30759700answer1="checked"
	end if
	if Session("EPQ30759800")="1" then
		strEPQ30759800answer1="checked"
	end if
	if Session("TEMP3EPQ30759700")="1" then
		strTEMP3EPQ30759700answer1="checked"
	end if
	if Session("EPQ30759750")="1" then
		strEPQ30759750answer1="checked"
	end if
	if Session("TEMP4EPQ30755300")="1" then
		strTEMP4EPQ30755300answer1="checked"
	end if
	if Session("TEMP5EPQ30755300")="1" then
		strTEMP5EPQ30755300answer1="checked"
	end if
	if Session("TEMP6EPQ30755300")="1" then
		strTEMP6EPQ30755300answer1="checked"
	end if
	if Session("EPQ30759900")="1" then
		strEPQ30759900answer1="checked"
	end if
	if Session("EPQ30759940Describe")="1" then
		strEPQ30759940Describeanswer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30759700") = Request.Form("TEMP1EPQ30759700")
	Session("TEMP2EPQ30759700") = Request.Form("TEMP2EPQ30759700")
	Session("EPQ30759700") = Request.Form("EPQ30759700")
	Session("EPQ30759800") = Request.Form("EPQ30759800")
	Session("TEMP3EPQ30759700") = Request.Form("TEMP3EPQ30759700")
	Session("EPQ30759750") = Request.Form("EPQ30759750")
	Session("TEMP4EPQ30755300") = Request.Form("TEMP4EPQ30755300")
	Session("TEMP5EPQ30755300") = Request.Form("TEMP5EPQ30755300")
	Session("TEMP6EPQ30755300") = Request.Form("TEMP6EPQ30755300")
	Session("EPQ30759900") = Request.Form("EPQ30759900")
	Session("EPQ30759940Describe") = Request.Form("EPQ30759940Describe")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=210
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714104") <> "1" then 
	Session("Page")="210"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714104") <> "1" then 
	Session("Page")="212"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="212"
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


    <form action="surgicalhistory211.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>skin</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
	<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP1EPQ30759700" value="1" <%=strTEMP1EPQ30759700answer1%>>Burning of skin lesion (electrosurgery)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP2EPQ30759700" value="1" <%=strTEMP2EPQ30759700answer1%>>Chemotherapy creams (Aldara, Carac,<br>&nbsp;&nbsp;&nbsp;&nbsp
Efudex, Fluoroplex, Picato, Solaraze, Zyclara, etc.)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759800" value="1" <%=strEPQ30759800answer1%>>Excision of a skin cancer (removal of a skin cancer)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP3EPQ30759700" value="1" <%=strTEMP3EPQ30759700answer1%>>Freezing of skin lesion (cryotherapy)<br>
 <input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759750" value="1" <%=strEPQ30759750answer1%>>Mohs surgery (removal of a skin cancer <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; using a special technique)<br>
	</span>

<span class="column2">
		
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP4EPQ30755300" value="1" <%=strTEMP4EPQ30755300answer1%>>Mole removal<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759700" value="1" <%=strEPQ30759700answer1%>>Skin cyst removal<br>
	<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP5EPQ30755300" value="1" <%=strTEMP5EPQ30755300answer1%>>Skin flap surgery (skin repositioned to the wound)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP6EPQ30755300" value="1" <%=strTEMP6EPQ30755300answer1%>>Skin graft (skin relocated to the wound)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30759900" value="1" <%=strEPQ30759900answer1%>>Other skin surgery or procedure, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30759940Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30759940Describe" value='<%=Session("EPQ30759940Describe")%>' >
						
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
