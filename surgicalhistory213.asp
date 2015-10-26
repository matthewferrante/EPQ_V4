
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("TEMP1EPQ30758600")="1" then
		strTEMP1EPQ30758600answer1="checked"
	end if

	if Session("TEMP1EPQ30759950")="1" then
		strTEMP1EPQ30759950answer1="checked"
	end if
	if Session("TEMP2EPQ30759950")="1" then
		strTEMP2EPQ30759950answer1="checked"
	end if
	if Session("EPQ30760000")="1" then
		strEPQ30760000answer1="checked"
	end if
	if Session("EPQ30759950")="1" then
		strEPQ30759950answer1="checked"
	end if
	if Session("EPQ30754300b")="1" then
		strEPQ30754300banswer1="checked"
	end if
	if Session("EPQ30760050")="1" then
		strEPQ30760050answer1="checked"
	end if
	if Session("EPQ30760100")="1" then
		strEPQ30760100answer1="checked"
	end if
	if Session("TEMP4EPQ30759950")="1" then
		strTEMP4EPQ30759950answer1="checked"
	end if
	if Session("TEMP5EPQ30759950")="1" then
		strTEMP5EPQ30759950answer1="checked"
	end if
	if Session("EPQ30760150")="1" then
		strEPQ30760150answer1="checked"
	end if
	if Session("EPQ30760200")="1" then
		strEPQ30760200answer1="checked"
	end if
	if Session("TEMP6EPQ30759950")="1" then
		strTEMP6EPQ30759950answer1="checked"
	end if

	if Session("TEMP7EPQ30759950")="1" then
		strTEMP7EPQ30759950answer1="checked"
	end if
	if Session("EPQ30758750b")="1" then
		strEPQ30758750banswer1="checked"
	end if
	if Session("TEMP7EPQ30759950")="1" then
		strTEMP7EPQ30759950answer1="checked"
	end if
	if Session("TEMP8EPQ30759950")="1" then
		strTEMP8EPQ30759950answer1="checked"
	end if
	if Session("EPQ30758700b")="1" then
		strEPQ30758700banswer1="checked"
	end if
	if Session("EPQ30758900b")="1" then
		strEPQ30758900banswer1="checked"
	end if

	if Session("EPQ30760250")="1" then
		strEPQ30760250answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30759950") = Request.Form("TEMP1EPQ30759950")
	Session("TEMP2EPQ30759950") = Request.Form("TEMP2EPQ30759950")
	Session("EPQ30760000") = Request.Form("EPQ30760000")
	Session("EPQ30759950") = Request.Form("EPQ30759950")
	Session("EPQ30754300b") = Request.Form("EPQ30754300b")
	Session("EPQ30760050") = Request.Form("EPQ30760050")
	Session("EPQ30760100") = Request.Form("EPQ30760100")
	Session("TEMP4EPQ30759950") = Request.Form("TEMP4EPQ30759950")
	Session("TEMP5EPQ30759950") = Request.Form("TEMP5EPQ30759950")
	Session("EPQ30760150") = Request.Form("EPQ30760150")
	Session("EPQ30760200") = Request.Form("EPQ30760200")
	Session("TEMP6EPQ30759950") = Request.Form("TEMP6EPQ30759950")
	Session("TEMP7EPQ30759950") = Request.Form("TEMP7EPQ30759950")
	Session("EPQ30758750b") = Request.Form("EPQ30758750b")
	Session("TEMP7EPQ30759950") = Request.Form("TEMP7EPQ30759950")
	Session("TEMP8EPQ30759950") = Request.Form("TEMP8EPQ30759950")
	Session("EPQ30758700b") = Request.Form("EPQ30758700b")
	Session("EPQ30758900b") = Request.Form("EPQ30758900b")
	Session("EPQ30760250") = Request.Form("EPQ30760250")
	Session("EPQ30760290Describe") = Request.Form("EPQ30760290Describe")
	Session("TEMP1EPQ30758600") = Request.Form("TEMP1EPQ30758600")


end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=212
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714106") <> "1" then 
	Session("Page")="212"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714106") <> "1" then 
	Session("Page")="215"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="215"
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


    <form action="surgicalhistory213.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>urinary or kidney</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">




	<% if session("Gender")="F" then %>
<span class="column1">
	<input type="checkbox" name="TEMP1EPQ30759950" value="1" <%=strTEMP1EPQ30759950answer1%>>Adrenal surgery (adrenalectomy)<br>
		<input type="checkbox" name="TEMP2EPQ30759950" value="1" <%=strTEMP2EPQ30759950answer1%>>AV fistula or graft for hemodialysis<br>
		<input type="checkbox" name="EPQ30760000" value="1" <%=strEPQ30760000answer1%>>Bladder surgery (cystectomy, removal of<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;all or part of the bladder)<br>
		<input type="checkbox" name="EPQ30759950" value="1" <%=strEPQ30759950answer1%>>Cystoscopy (placement of a tube into the bladder)<br>
		<input type="checkbox" name="EPQ30754300b" value="1" <%=strEPQ30754300banswer1%>>Dialysis catheter placement<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30758600" value="1" <%=strTEMP1EPQ30758600answer1%>>HoLEP surgery (Holmium Laser Enucleation<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  of the prostate)<br>

	<% end if %>

		<input type="checkbox" name="EPQ30760050" value="1" <%=strEPQ30760050answer1%>>Ileostomy or urostomy (creation of an opening in your <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; abdomen that allows waste to leave your body)<br>
		<input type="checkbox" name="TEMP4EPQ30759950" value="1" <%=strTEMP4EPQ30759950answer1%>>Kidney drainage tube placement (nephrostomy)<br>


			</span>

<span class="column2">
		<input type="checkbox" name="EPQ30760100" value="1" <%=strEPQ30760100answer1%>>Kidney removal surgery (nephrectomy <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or partial nephrectomy)<br>

		<input type="checkbox" name="EPQ30760200" value="1" <%=strEPQ30760200answer1%>>Kidney stent<br>

		<input type="checkbox" name="EPQ30760150" value="1" <%=strEPQ30760150answer1%>>Kidney stone surgery<br>
		<input type="checkbox" name="TEMP5EPQ30759950" value="1" <%=strTEMP5EPQ30759950answer1%>>Kidney transplant<br>

<% if session("Gender")="M" then %>
		<input type="checkbox" name="TEMP6EPQ30759950" value="1" <%=strTEMP6EPQ30759950answer1%>>Laser PUP surgery (vaporization of prostate)<br>
	<% end if %>
		<input type="checkbox" name="TEMP7EPQ30759950" value="1" <%=strTEMP7EPQ30759950answer1%>>Prolapse surgery or urinary leakage<br>&nbsp;&nbsp;&nbsp;&nbsp
 surgery (including sling or suspension)<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" name="EPQ30758750b" value="1" <%=strEPQ30758750banswer1%>>Radical prostatectomy (removal of all of the <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;prostate gland to treat cancer)<br>
	<% end if %>
		<input type="checkbox" name="TEMP7EPQ30759950" value="1" <%=strTEMP7EPQ30759950answer1%>>Renal reconstruction (pyeloplasty)<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" name="TEMP8EPQ30759950" value="1" <%=strTEMP8EPQ30759950answer1%>>Testicular descent surgery<br>
		<input type="checkbox" name="EPQ30758700b" value="1" <%=strEPQ30758700banswer1%>>TURP or transurethral sesection of the prostate<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (the removal of all or part of the prostate gland,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  sometimes called a "roto-rooter job")<br> 
		<input type="checkbox" name="EPQ30758900b" value="1" <%=strEPQ30758900banswer1%>>Vasectomy<br>
	<% end if %>
		<input type="checkbox" name="EPQ30760250" value="1" <%=strEPQ30760250answer1%>>Other urinary surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30760290Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30760290Describe" value='<%=Session("EPQ30760290Describe")%>' ><br>
		</span>
<% end if%>
	<% if session("Gender")="M" then %>
<span class="column1">
	<input type="checkbox" name="TEMP1EPQ30759950" value="1" <%=strTEMP1EPQ30759950answer1%>>Adrenal surgery (adrenalectomy)<br>
		<input type="checkbox" name="TEMP2EPQ30759950" value="1" <%=strTEMP2EPQ30759950answer1%>>AV fistula or graft for hemodialysis<br>
		<input type="checkbox" name="EPQ30760000" value="1" <%=strEPQ30760000answer1%>>Bladder surgery (cystectomy, removal of<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;all or part of the bladder)<br>
		<input type="checkbox" name="EPQ30759950" value="1" <%=strEPQ30759950answer1%>>Cystoscopy (placement of a tube into the bladder)<br>
		<input type="checkbox" name="EPQ30754300b" value="1" <%=strEPQ30754300banswer1%>>Dialysis catheter placement<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" name="TEMP3EPQ30759950" value="1" <%=strTEMP3EPQ30759950answer1%>>HoLEP surgery (enucleation of prostate)<br>
	<% end if %>

		<input type="checkbox" name="EPQ30760050" value="1" <%=strEPQ30760050answer1%>>Ileostomy or urostomy (creation of an opening in your <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; abdomen that allows waste to leave your body)<br>
		<input type="checkbox" name="TEMP4EPQ30759950" value="1" <%=strTEMP4EPQ30759950answer1%>>Kidney drainage tube placement (nephrostomy)<br>

		<input type="checkbox" name="EPQ30760100" value="1" <%=strEPQ30760100answer1%>>Kidney removal surgery (nephrectomy <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or partial nephrectomy)<br>

		<input type="checkbox" name="EPQ30760200" value="1" <%=strEPQ30760200answer1%>>Kidney stent<br>

			</span>

<span class="column2">
		<input type="checkbox" name="EPQ30760150" value="1" <%=strEPQ30760150answer1%>>Kidney stone surgery<br>
		<input type="checkbox" name="TEMP5EPQ30759950" value="1" <%=strTEMP5EPQ30759950answer1%>>Kidney transplant<br>

<% if session("Gender")="M" then %>
		<input type="checkbox" name="TEMP6EPQ30759950" value="1" <%=strTEMP6EPQ30759950answer1%>>Laser PUP surgery (vaporization of prostate)<br>
	<% end if %>
		<input type="checkbox" name="TEMP7EPQ30759950" value="1" <%=strTEMP7EPQ30759950answer1%>>Prolapse surgery or urinary leakage<br>&nbsp;&nbsp;&nbsp;&nbsp
 surgery (including sling or suspension)<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" name="EPQ30758750b" value="1" <%=strEPQ30758750banswer1%>>Radical prostatectomy (removal of all of the <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;prostate gland to treat cancer)<br>
	<% end if %>
		<input type="checkbox" name="TEMP7EPQ30759950" value="1" <%=strTEMP7EPQ30759950answer1%>>Renal reconstruction (pyeloplasty)<br>
	<% if session("Gender")="M" then %>
		<input type="checkbox" name="TEMP8EPQ30759950" value="1" <%=strTEMP8EPQ30759950answer1%>>Testicular descent surgery<br>
		<input type="checkbox" name="EPQ30758700b" value="1" <%=strEPQ30758700banswer1%>>TURP or transurethral sesection of the prostate<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (the removal of all or part of the prostate gland,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  sometimes called a "roto-rooter job")<br> 
		<input type="checkbox" name="EPQ30758900b" value="1" <%=strEPQ30758900banswer1%>>Vasectomy<br>
	<% end if %>
		<input type="checkbox" name="EPQ30760250" value="1" <%=strEPQ30760250answer1%>>Other urinary surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30760290Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30760290Describe" value='<%=Session("EPQ30760290Describe")%>' ><br>
		</span>
<% end if %>

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
