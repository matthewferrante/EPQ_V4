
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30756950")="1" then
		strTEMP1EPQ30756950answer1="checked"
	end if

	if Session("EPQ30756950")="1" then
		strEPQ30756950answer1="checked"
	end if

	if Session("EPQ30757000")="1" then
		strEPQ30757000answer1="checked"
	end if
	if Session("EPQ30757050")="1" then
		strEPQ30757050answer1="checked"
	end if
	if Session("EPQ30757100")="1" then
		strEPQ30757100answer1="checked"
	end if
	if Session("EPQ30757150")="1" then
		strEPQ30757150answer1="checked"
	end if
	if Session("EPQ30757200")="1" then
		strEPQ30757200answer1="checked"
	end if
	if Session("EPQ30757300")="1" then
		strEPQ30757300answer1="checked"
	end if
	if Session("EPQ30757400")="1" then
		strEPQ30757400answer1="checked"
	end if


	if Session("TEMP2EPQ30757250")="1" then
		strTEMP2EPQ30757250answer1="checked"
	end if
	if Session("TEMP3EPQ30757250")="1" then
		strTEMP3EPQ30757250answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("TEMP1EPQ30756950") = Request.Form("TEMP1EPQ30756950")
	Session("EPQ30756950") = Request.Form("EPQ30756950")
	Session("EPQ30757000") = Request.Form("EPQ30757000")
	Session("EPQ30757050") = Request.Form("EPQ30757050")
	Session("EPQ30757100") = Request.Form("EPQ30757100")
	Session("EPQ30757150") = Request.Form("EPQ30757150")
	Session("EPQ30757200") = Request.Form("EPQ30757200")
	Session("EPQ30757300") = Request.Form("EPQ30757300")
	Session("EPQ30757400") = Request.Form("EPQ30757400")
	Session("EPQ30757440Describe") = Request.Form("EPQ30757440Describe")
	Session("TEMP2EPQ30757250") = Request.Form("TEMP2EPQ30757250")
	Session("TEMP3EPQ30757250") = Request.Form("TEMP3EPQ30757250")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=202
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714010") <> "1" then 
	Session("Page")="202"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714010") <> "1" then 
	Session("Page")="204"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="204"
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


    <form action="surgicalhistory203.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>female reproductive system (Gyn)</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30756950" value="1" <%=strEPQ30756950answer1%>>Ablation<br> <!-- mca FIXME empty label -->
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30756950" value="1" <%=strEPQ30756950answer1%>>Cesarean section ("C-section")<br> <!-- mca FIXME empty label -->
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757000" value="1" <%=strEPQ30757000answer1%>>D&amp;C (“scraping”<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 or “cleaning out of your womb”)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757050" value="1" <%=strEPQ30757050answer1%>>Exploratory surgery (usually done <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
laparoscopically through small incisions)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30757250" value="1" <%=strTEMP2EPQ30757250answer1%>>Pelvic lymph node removal<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP3EPQ30757250" value="1" <%=strTEMP3EPQ30757250answer1%>>Prolapse surgery or urinary<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; leakage surgery (including sling or suspension)<br>
	
</span>

<span class="column2">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757100" value="1" <%=strEPQ30757100answer1%>>Removal of ovary <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(oophorectomy) <br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757150" value="1" <%=strEPQ30757150answer1%>>Removal of ovary and fallopian<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
tube (salpingo-oophorectomy)<br>
	<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757200" value="1" <%=strEPQ30757200answer1%>>Removal of the womb with<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 or without the cervix (hysterectomy<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or partial hysterectomy) <br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757300" value="1" <%=strEPQ30757300answer1%>>Tubal ligation (tying<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 the tubes to prevent pregnancy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30757400" value="1" <%=strEPQ30757400answer1%>>Other Gyn surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input id="EPQ30757440Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30757440Describe" value='<%=Session("EPQ30757440Describe")%>' >
		
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
