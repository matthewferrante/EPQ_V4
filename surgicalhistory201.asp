

<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30755800")="1" then
		strTEMP1EPQ30755800answer1="checked"
	end if

	if Session("TEMP3EPQ30755800")="1" then
		strTEMP3EPQ30755800answer1="checked"
	end if
	if Session("TEMP4EPQ30755800")="1" then
		strTEMP4EPQ30755800answer1="checked"
	end if
	if Session("TEMP5EPQ30755800")="1" then
		strTEMP5EPQ30755800answer1="checked"
	end if
	if Session("TEMP6EPQ30755800")="1" then
		strTEMP6EPQ30755800answer1="checked"
	end if
	if Session("TEMP7EPQ30755800")="1" then
		strTEMP7EPQ30755800answer1="checked"
	end if
	if Session("TEMP8EPQ30755800")="1" then
		strTEMP8EPQ30755800answer1="checked"
	end if

	if Session("EPQ30755850")="1" then
		strEPQ30755850answer1="checked"
	end if
	if Session("EPQ30755900")="1" then
		strEPQ30755900answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30755800") = Request.Form("TEMP1EPQ30755800")
	Session("TEMP3EPQ30755800") = Request.Form("TEMP3EPQ30755800")
	Session("TEMP4EPQ30755800") = Request.Form("TEMP4EPQ30755800")
	Session("TEMP5EPQ30755800") = Request.Form("TEMP5EPQ30755800")
	Session("TEMP6EPQ30755800") = Request.Form("TEMP6EPQ30755800")
	Session("TEMP7EPQ30755800") = Request.Form("TEMP7EPQ30755800")
	Session("TEMP8EPQ30755800") = Request.Form("TEMP8EPQ30755800")

	Session("EPQ30755850") = Request.Form("EPQ30755850")
	Session("EPQ30755900") = Request.Form("EPQ30755900")
	Session("EPQ30755940Describe") = Request.Form("EPQ30755940Describe")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=200
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714070") <> "1" then 
	Session("Page")="200"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714070") <> "1" then 
	Session("Page")="202"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="202"
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


    <form action="surgicalhistory201.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>brain and pituitary</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30755800" value="1" <%=strTEMP1EPQ30755800answer1%>>Benign brain tumor surgery (meningioma surgery)<br>
		
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP4EPQ30755800" value="1" <%=strTEMP4EPQ30755800answer1%>>Brain aneurysm surgery (neurological clipping or endovascular coiling through your groin) <br>
<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP3EPQ30755800" value="1" <%=strTEMP3EPQ30755800answer1%>>Brain tumor surgery (removal or reduction of brain tumor)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP5EPQ30755800" value="1" <%=strTEMP5EPQ30755800answer1%>>Cerebral shunt (shunting of fluid in the brain to treat hydrocephalus)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP6EPQ30755800" value="1" <%=strTEMP6EPQ30755800answer1%>>Pituitary gland surgery (transsphenoidal surgery)<br>
		

<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP7EPQ30755800" value="1" <%=strTEMP7EPQ30755800answer1%>>Removal of blood (hematoma)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30755850" value="1" <%=strEPQ30755850answer1%>>Skull surgery (including craniotomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30755900" value="1" <%=strEPQ30755900answer1%>>Other brain surgery, specify:
		<input id="EPQ30755940Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30755940Describe" value='<%=Session("EPQ30755940Describe")%>' >
		
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
