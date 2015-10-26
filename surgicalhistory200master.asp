
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEPQ30408010")="1" then
		strTEPQ30408010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("TEPQ30408000") = Request.Form("TEPQ30408000")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=21
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714030") <> "1" then 
	Session("Page")="21"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714030") <> "1" then 
	Session("Page")="201"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="201"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
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


    <form action="surgicalhistory200.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>Belly surgeries</u> have you had? Check all that apply.<br>
	  </legend>
<span column="1">
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30408090" value="1" id="EPQ30408090" class="atLeastOneCheckboxRequired" <%=strEPQ30408090answer1%>>
		<label for="EPQ30408090">Abnormal pap smear (including dysplasia or pre-cancerous cells)</label><br>
</span>

<span column="2">
		<input type="checkbox" name="EPQ30408100" value="1" id="EPQ30408100" class="atLeastOneCheckboxRequired" <%=strEPQ30408100answer1%>>
		<label for="EPQ30408100">Other, specify:</label>	
	<input id="EPQ30408000" type="text" maxlength="75" size="15" name="EPQ30408000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30408000")%>'><br>
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
