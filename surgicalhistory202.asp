
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30756000")="1" then
		strEPQ30756000answer1="checked"
	end if
if Session("EPQ30755950")="1" then
strEPQ30755950answer1="checked"
end if
if Session("EPQ30756200b")="1" then
strEPQ30756200banswer1="checked"
end if
if Session("EPQ30756250")="1" then
strEPQ30756250answer1="checked"
end if
if Session("TEMP1EPQ30756250")="1" then
strTEMP1EPQ30756250answer1="checked"
end if

if Session("EPQ30756300")="1" then
strEPQ30756300answer1="checked"
end if
if Session("EPQ30756350")="1" then
strEPQ30756350answer1="checked"
end if
if Session("EPQ30756450")="1" then
strEPQ30756450answer1="checked"
end if


if Session("TEMP1EPQ30756000b")="1" then
strTEMP1EPQ30756000banswer1="checked"
end if
if Session("TEMP1EPQ30756100b")="1" then
strTEMP1EPQ30756100banswer1="checked"
end if
if Session("TEMP2EPQ30756100b")="1" then
strTEMP2EPQ30756100banswer1="checked"
end if
if Session("TEMP3EPQ30756100b")="1" then
strTEMP3EPQ30756100banswer1="checked"
end if
if Session("TEMP4EPQ30756100b")="1" then
strTEMP4EPQ30756100banswer1="checked"
end if
if Session("TEMP5EPQ30756100b")="1" then
strTEMP5EPQ30756100banswer1="checked"
end if
if Session("TEMP6EPQ30756100b")="1" then
strTEMP6EPQ30756100banswer1="checked"
end if
if Session("TEMP7EPQ30756100b")="1" then
strTEMP7EPQ30756100banswer1="checked"
end if
if Session("TEMP8EPQ30756100b")="1" then
strTEMP8EPQ30756100banswer1="checked"
end if

if Session("TEMP1EPQ30756050bB")="1" then
strTEMP1EPQ30756050bBanswer1="checked"
end if



end if
	


if Request.Form("ispostback")="1" then


Session("TEMP1EPQ30756050bB")=Request.Form("TEMP1EPQ30756050bB")
Session("TEMP1EPQ30756000b")=Request.Form("TEMP1EPQ30756000b")
Session("TEMP1EPQ30756100b")=Request.Form("TEMP1EPQ30756100b")
Session("TEMP2EPQ30756100b")=Request.Form("TEMP2EPQ30756100b")
Session("TEMP3EPQ30756100b")=Request.Form("TEMP3EPQ30756100b")
Session("TEMP4EPQ30756100b")=Request.Form("TEMP4EPQ30756100b")
Session("TEMP5EPQ30756100b")=Request.Form("TEMP5EPQ30756100b")
Session("TEMP6EPQ30756100b")=Request.Form("TEMP6EPQ30756100b")
Session("TEMP7EPQ30756100b")=Request.Form("TEMP7EPQ30756100b")
Session("TEMP8EPQ30756100b")=Request.Form("TEMP8EPQ30756100b")

Session("EPQ30755950")=Request.Form("EPQ307555950")
Session("EPQ30756200b")=Request.Form("EPQ30756200b")
Session("EPQ30756250")=Request.Form("EPQ30756250")
Session("TEMP1EPQ30756250")=Request.Form("TEMP1EPQ30756250")
Session("EPQ30756300")=Request.Form("EPQ30756300")
Session("EPQ30756350")=Request.Form("EPQ30756350")
Session("EPQ30756450")=Request.Form("EPQ30756450")
Session("EPQ30756490Describe")=Request.Form("EPQ30756490Describe")


end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=201
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714050") <> "1" then 
	Session("Page")="201"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714050") <> "1" then 
	Session("Page")="203"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="203"
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


    <form action="surgicalhistory202.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>breast</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755950" value="1" <%=strEPQ30755950answer1%>>Axillary node dissection (or lymph node removal)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP1EPQ30756000b" value="1" <%=strEPQ30756000banswer1%>>Breast augmentation (implants)<br>
		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="TEMP1EPQ30756250" value="1" <%=strTEMP1EPQ30756250answer1%>>Breast cyst removal<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP1EPQ30756050b" value="1" <%=strTEMP1EPQ30756050banswer1%>>Breast lift (mastopexy)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired qTrigger" name="TEMP1EPQ30756050bB" value="1" <%=strTEMP1EPQ30756050Bbanswer1%>>Breast reconstruction<br>


<div class="hiddenQ">
<fieldset2>
<legend></legend>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="atLeastOneIfBranchActive"name="TEMP1EPQ30756100b" value="1" <%=strTEMP1EPQ30756100banswer1%>>With abdominal flap<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(DIEP, Pedicle TRAM, Free TRAM) <br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="atLeastOneIfBranchActive"name="TEMP2EPQ30756100b" value="1" <%=strTEMP2EPQ30756100banswer1%>>With back flap only<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="atLeastOneIfBranchActive"name="TEMP3EPQ30756100b" value="1" <%=strTEMP3EPQ30756100banswer1%>>With expanders, then implants<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="atLeastOneIfBranchActive"name="TEMP4EPQ30756100b" value="1" <%=strTEMP4EPQ30756100banswer1%>>With implants (no expanders)<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" class="atLeastOneIfBranchActive"name="TEMP5EPQ30756100b" value="1" <%=strTEMP5EPQ30756100banswer1%>>With fat grafting<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"  class="atLeastOneIfBranchActive"name="TEMP6EPQ30756100b" value="1" <%=strTEMP6EPQ30756100banswer1%>>With SGAP/IGAP (gluteal flaps)<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"  class="atLeastOneIfBranchActive"name="TEMP7EPQ30756100b" value="1" <%=strTEMP7EPQ30756100banswer1%>>With TUG or PAP (thigh flaps)<br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"  class="atLeastOneIfBranchActive"name="TEMP8EPQ30756100b" value="1" <%=strTEMP8EPQ30756100banswer1%>>Other<br>
			
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"  class="atLeastOneIfBranchActive"name="TEMP8EPQ30756100b" value="1" <%=strTEMP8EPQ30756100banswer1%>>Unknown<br>
</fieldset2>
</div>

</span>

<span class="column2">
		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="EPQ30756200b" value="1" <%=strEPQ30756200banswer1%>>Breast reduction (reduction mammoplasty)<br>
		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="EPQ30756250" value="1" <%=strEPQ30756250answer1%>>Lumpectomy (also called  a<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;partial mastectomy)<br>
		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="EPQ30756300" value="1" <%=strEPQ30756300answer1%>>Mastectomy<br>


		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="EPQ30756350" value="1" <%=strEPQ30756350answer1%>>Removal of a breast implant<br>
		<input type="checkbox"  class="atLeastOneCheckboxRequired"name="EPQ30756450" value="1" <%=strEPQ30756450answer1%>>Other breast surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="EPQ30756490Describe" type="text"  class="requiredIfPreviousCheckbox" maxlength="75" size="25"  name="EPQ30756490Describe" value='<%=Session("EPQ30756490Describe")%>' >
				
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
