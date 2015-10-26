
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30409010")="1" then
		strEPQ30409010answer1="checked"
	end if
	if Session("EPQ30409020")="1" then
		strEPQ30409020answer1="checked"
	end if
	if Session("EPQ30409030")="1" then
		strEPQ30409030answer1="checked"
	end if
	if Session("EPQ30409040")="1" then
		strEPQ30409040answer1="checked"
	end if
	if Session("EPQ30409050")="1" then
		strEPQ30409050answer1="checked"
	end if
	if Session("EPQ30409060")="1" then
		strEPQ30409060answer1="checked"
	end if
	if Session("EPQ30409070")="77" then
		strEPQ30409070answer1="checked"
	end if
	if Session("EPQ30409080")="1" then
		strEPQ30409080answer1="checked"
	end if
	if Session("EPQ30409090")="1" then
		strEPQ30409090answer1="checked"
	end if
	if Session("EPQ30409100")="1" then
		strEPQ30409100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then



	Session("EPQ30409000") = Request.Form("EPQ30409000")
	Session("EPQ30409010") = Request.Form("EPQ30409010")
	Session("EPQ30409020") = Request.Form("EPQ30409020")
	Session("EPQ30409030") = Request.Form("EPQ30409030")
	Session("EPQ30409040") = Request.Form("EPQ30409040")
	Session("EPQ30409050") = Request.Form("EPQ30409050")
	Session("EPQ30409060") = Request.Form("EPQ30409060")
	Session("EPQ30409070") = Request.Form("EPQ30409070")
	Session("EPQ30409080") = Request.Form("EPQ30409080")
	Session("EPQ30409090") = Request.Form("EPQ30409090")
	Session("EPQ30409100") = Request.Form("EPQ30409100")


end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=12
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402090") <> "1" then 
	Session("Page")="14"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402090") <> "1" then 
	Session("Page")="12"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30409010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="14"
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


    <form action="pastmedical13.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">

Please list medical problems, diseases, or conditions that you may have been diagnosed with other than cancer.
</div>
<br>
  <fieldset>
    <legend class="QuestionBox">
      Which of the following <u>kidney, bladder, or urinary problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="TEMP1EPQ30409010" value="1" id="EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP1EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Adrenal tumor</label><br>
		<input type="checkbox" name="TEMP2EPQ30409010" value="1" id="EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP2EPQ30409010answer1%>>
		<label for="TEMP2EPQ30409010">Bladder outlet obstruction (blockage<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;at the base of the bladder that reduces the flow of urine)</label><br>
		<input type="checkbox" name="TEMP3EPQ30409010" value="1" id="TEMP3EPQ30409010" class="atLeastOneCheckboxRequired" <%=strEPQ30409010answer1%>>
		<label for="TEMP3EPQ30409010">Bladder stones</label><br>
		<input type="checkbox" name="EPQ30409040" value="1" id="EPQ30409040" class="atLeastOneCheckboxRequired" <%=strEPQ30409040answer1%>>
		<label for="EPQ30409040">Blood in your urine</label><br>

		<input type="checkbox" name="TEMP4EPQ30409010" value="1" id="TEMP4EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP4EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Chronic kidney disease (high creatinine levels)</label><br>
		<input type="checkbox" name="TEMP5EPQ30409010" value="1" id="TEMP5PQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP5EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Chronic kidney disease requiring dialysis</label><br>

		<input type="checkbox" name="TEMP6EPQ30409010" value="1" id="TEMP6EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP6EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">IgA nephropathy</label><br>



</span>

<span class="column2">
		<input type="checkbox" name="EPQ30409100" value="1" id="EPQ30409100" class="atLeastOneCheckboxRequired" <%=strEPQ30409100answer1%>>
		<label for="EPQ30409100">Kidney infection (includes pyelonephritis)</label><br>

		<input type="checkbox" name="TEMP7EPQ30409010" value="1" id="EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP7EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Kidney stones</label><br>

		<input type="checkbox" name="TEMP8EPQ30409010" value="1" id="EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP8EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Kidney transplant</label><br>

		<input type="checkbox" name="TEMP9EPQ30409010" value="1" id="EPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP9EPQ30409010answer1%>>
		<label for="TEMP1EPQ30409010">Polycystic kidney</label><br>


		<input type="checkbox" name="EPQ30409090" value="1" id="EPQ30409090" class="atLeastOneCheckboxRequired" <%=strEPQ30409090answer1%>>
		<label for="EPQ30409090">Urinary incontinence</label><br>

		<input type="checkbox" name="EPQ30409080" value="1" id="EPQ30409080" class="atLeastOneCheckboxRequired" <%=strEPQ30409080answer1%>>
		<label for="EPQ30409080">Urinary tract infection (includes bladder infection)</label><br>

		<input type="checkbox" name="EPQ30409050" value="1" id="EPQ30409050" class="atLeastOneCheckboxRequired" <%=strEPQ30409050answer1%>>
		<label for="EPQ30409050">Other, specify:</label>	
	<input id="EPQ30409000" type="text" maxlength="75" size="15" name="EPQ30409000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30409000")%>' ><br>

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
