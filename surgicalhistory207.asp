
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30758600")="1" then
		strTEMP1EPQ30758600answer1="checked"
	end if
	if Session("TEMP2EPQ30758650")="1" then
		strTEMP2EPQ30758650answer1="checked"
	end if
	if Session("EPQ30758800")="1" then
		strEPQ30758800answer1="checked"
	end if
	if Session("EPQ30758850")="1" then
		strEPQ30758850answer1="checked"
	end if
	if Session("TEMP1EPQ30758800")="1" then
		strTEMP1EPQ30758800answer1="checked"
	end if
	if Session("TEMP1EPQ30758900")="1" then
		strTEMP1EPQ30758900answer1="checked"
	end if
	if Session("EPQ30758750")="1" then
		strEPQ30758750answer1="checked"
	end if
	if Session("EPQ30758700")="1" then
		strEPQ30758700answer1="checked"
	end if
	if Session("EPQ30758950")="1" then
		strEPQ30758950answer1="checked"
	end if
	if Session("EPQ30758900")="1" then
		strEPQ30758900answer1="checked"
	end if

	if Session("EPQ30758990Describe")="1" then
		strEPQ30758990Describe1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("TEMP1EPQ30758600") = Request.Form("TEMP1EPQ30758600")
	Session("TEMP2EPQ30758650") = Request.Form("TEMP2EPQ30758650")
	Session("EPQ30758800") = Request.Form("EPQ30758800")
	Session("EPQ30758850") = Request.Form("EPQ30758850")
	Session("TEMP1EPQ30758800") = Request.Form("TEMP1EPQ30758800")
	Session("EPQ30758750") = Request.Form("EPQ30758750")
	Session("TEMP1EPQ30758900") = Request.Form("TEMP1EPQ30758900")
	Session("EPQ30758700") = Request.Form("EPQ30758700")
	Session("EPQ30758900") = Request.Form("EPQ30758900")
	Session("EPQ30758950") = Request.Form("EPQ30758950")
	Session("EPQ30758990Describe") = Request.Form("EPQ30758990Describe")
end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=206
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714090") <> "1" then 
	Session("Page")="206"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714090") <> "1" then 
	Session("Page")="208"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="208"
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


    <form action="surgicalhistory207.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>male reproductive</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30758600" value="1" <%=strTEMP1EPQ30758600answer1%>>HoLEP surgery (Holmium Laser Enucleation<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  of the prostate)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30758650" value="1" <%=strTEMP2EPQ30758650answer1%>>Laser PUP surgery (vaporization of prostate)<br>
		
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758800" value="1" <%=strEPQ30758800answer1%>>Orchiectomy (removal of the testicle or testes)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758850" value="1" <%=strEPQ30758850answer1%>>Penectomy (removal of the penis)<br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30758800" value="1" <%=strTEMP1EPQ30758800answer1%>>Penile implant<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758750" value="1" <%=strEPQ30758750answer1%>>Radical prostatectomy (removal of all of <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the prostate gland to treat cancer)<br>
			
</span>

<span class="column2">
	<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30758900" value="1" <%=strTEMP1EPQ30758900answer1%>>Testicular descent surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758700" value="1" <%=strEPQ30758700answer1%>>TURP or transurethral resection of the prostate<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (the removal of all or part of the prostate gland,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sometimes called a "roto-rooter job")<br> 
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758900" value="1" <%=strEPQ30758900answer1%>>Vasectomy<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30758950" value="1" <%=strEPQ30758950answer1%>>Other male reproductive surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="EPQ30758990Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30758990Describe" value='<%=Session("EPQ30758990Describe")%>' >
						
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
