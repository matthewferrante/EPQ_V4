
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30754000")="1" then
		strEPQ30754000answer1="checked"
	end if
	if Session("EPQ30754050")="1" then
		strEPQ30754050answer1="checked"
	end if
	if Session("EPQ30754100")="1" then
		strEPQ30754100answer1="checked"
	end if
	if Session("EPQ30754150")="1" then
		strEPQ30754150answer1="checked"
	end if
	if Session("EPQ30754200")="1" then
		strEPQ30754200answer1="checked"
	end if
	if Session("EPQ30754250")="1" then
		strEPQ30754250answer1="checked"
	end if
	if Session("EPQ30754300")="1" then
		strEPQ30754300answer1="checked"
	end if
	if Session("TEMPEPQ30754300")="1" then
		strTEMPEPQ30754300answer1="checked"
	end if
	if Session("EPQ30754350")="1" then
		strEPQ30754350answer1="checked"
	end if
	if Session("EPQ30754400")="1" then
		strEPQ30754400answer1="checked"
	end if
	if Session("EPQ30754500")="1" then
		strEPQ30754500answer1="checked"
	end if
	if Session("TEMP1EPQ30754550")="1" then
		strTEMP1EPQ30754550answer1="checked"
	end if
	if Session("TEMP2EPQ30754550")="1" then
		strTEMP2EPQ30754550answer1="checked"
	end if

	if Session("EPQ30754600")="1" then
		strEPQ30754600answer1="checked"
	end if
	if Session("TEMPEPQ30754600")="1" then
		strTEMPEPQ30754600answer1="checked"
	end if
	if Session("EPQ30754650")="1" then
		strEPQ30754650answer1="checked"
	end if
	if Session("EPQ30754700")="1" then
		strEPQ30754700answer1="checked"
	end if
	if Session("TEMPEPQ30754700")="1" then
		strTEMPEPQ30754700answer1="checked"
	end if
	if Session("EPQ30754750")="1" then
		strEPQ30754750answer1="checked"
	end if
	if Session("EPQ30754800")="1" then
		strEPQ30754800answer1="checked"
	end if
	if Session("EPQ30754850")="1" then
		strEPQ30754850answer1="checked"
	end if
	if Session("EPQ30754900")="1" then
		strEPQ30754900answer1="checked"
	end if
	if Session("TEMPEPQ30754900")="1" then
		strTEMPEPQ30754900answer1="checked"
	end if
	if Session("EPQ30754950")="1" then
		strEPQ30754950answer1="checked"
	end if
	if Session("EPQ30754990")="1" then
		strEPQ30754990answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30754000") = Request.Form("EPQ30754000")
	Session("EPQ30754050") = Request.Form("EPQ30754050")
	Session("EPQ30754100") = Request.Form("EPQ30754100")
	Session("EPQ30754150") = Request.Form("EPQ30754150")
	Session("EPQ30754200") = Request.Form("EPQ30754200")
	Session("EPQ30754250") = Request.Form("EPQ30754250")
	Session("EPQ30754300") = Request.Form("EPQ30754300")
	Session("TEMPEPQ30754300") = Request.Form("TEMPEPQ30754300")
	Session("EPQ30754350") = Request.Form("EPQ30754350")
	Session("EPQ30754400") = Request.Form("EPQ30754400")
	Session("EPQ30754500") = Request.Form("EPQ30754500")
	Session("TEMP1EPQ30754550") = Request.Form("TEMP1EPQ30754550")
	Session("TEMP2EPQ30754550") = Request.Form("TEMP2EPQ30754550")
	Session("EPQ30754600") = Request.Form("EPQ30754600")
	Session("TEMPEPQ30754600") = Request.Form("TEMPEPQ30754600")
	Session("EPQ30754650") = Request.Form("EPQ30754650")
	Session("EPQ30754700") = Request.Form("EPQ30754700")
	Session("TEMPEPQ30754700") = Request.Form("TEMPEPQ30754700")
	Session("EPQ30754750") = Request.Form("EPQ30754750")
	Session("EPQ30754800") = Request.Form("EPQ30754800")
	Session("EPQ30754850") = Request.Form("EPQ30754850")
	Session("EPQ30754900") = Request.Form("EPQ30754900")
	Session("TEMPEPQ30754900") = Request.Form("TEMPEPQ30754900")
	Session("EPQ30754950") = Request.Form("EPQ30754950")
	Session("EPQ30754990") = Request.Form("EPQ30754990")
	Session("EPQ30754990Describe") = Request.Form("EPQ30754990Describe")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=21
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714030") <> "1" then 
	Session("Page")="21"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714030") <> "1" then 
	Session("Page")="201"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="201"
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
Which of the following <u>belly, abdomen, colon, or bowel</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>

	<div class="QuestionAnswersBox">
<span class="column1">
<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754000" value="1" <%=strEPQ30754000answer1%>>Adrenal surgery (adrenalectomy)<br>
  	<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754050" value="1" <%=strEPQ30754050answer1%>>Appendix removal or surgery<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for appendicitis (appendectomy)<br>
	<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754100" value="1" <%=strEPQ30754100answer1%>>Colon or bowel surgery<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or resection (colectomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754150" value="1" <%=strEPQ30754150answer1%>>Colonoscopy<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754200" value="1" <%=strEPQ30754200answer1%>>Colostomy<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754250" value="1" <%=strEPQ30754250answer1%>>Colostomy reversal<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754300" value="1" <%=strEPQ30754300answer1%>>Dialysis catheter placement<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMPEPQ30754300" value="1" <%=strTEMPEPQ30754300answer1%>>Esophageal dilation (stretching<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to open the esophagus)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754350" value="1" <%=strEPQ30754350answer1%>>Exploratory surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754400" value="1" <%=strEPQ30754400answer1%>>Gallbladder surgery (cholecystectomy)<br>
 	<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754500" value="1" <%=strEPQ30754500answer1%>>Hemorrhoid surgery<br>
	<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMP1EPQ30754550" value="1" <%=strTEMP1EPQ30754550answer1%>>Hernia repair (including abdominal,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; belly button, groin) with mesh<br>
<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMP2EPQ30754550" value="1" <%=strTEMP2EPQ30754550answer1%>>Hernia repair (including abdominal,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; belly button, groin) without mesh<br>

</span>

<span class="column2">
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754600" value="1" <%=strEPQ30754600answer1%>>Liver surgery or resection<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (removal of part of the liver)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMPEPQ30754600" value="1" <%=strEPQ30754600answer1%>>Liver transplant<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754900" value="1" <%=strEPQ30754900answer1%>>Pancreas surgery (Whipple)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754650" <%=strEPQ30754650answer1%> value="1"> Plastic surgery <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (including tummy  tucks and liposuction)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754700" value="1" <%=strEPQ30754700answer1%>>Rectal surgery <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  (including fistula repair)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMPEPQ30754700" value="1" <%=strEPQ30754700answer1%>>Reflux surgery (fundoplication) <br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754750" value="1" <%=strEPQ30754750answer1%>>Spleen surgery (splenectomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754800" value="1" <%=strEPQ30754800answer1%>>Stomach surgery  (gastrectomy<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or ulcer surgery)<br>
<input type="checkbox" class="atLeastOneCheckboxRequired"  name="TEMPEPQ30754900" value="1" <%=strEPQ30754900answer1%>>Upper endoscopy or EGD (a  test<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to see inside the esophagus, stomach or  duodenum)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754850" value="1" <%=strEPQ30754850answer1%>>Weight loss surgery (bariatric   surgery<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; including gastric  bypass or lap-band) <br>

		
		<input type="checkbox" class="atLeastOneCheckboxRequired"  name="EPQ30754950" value="1" <%=strEPQ30754950answer1%>>Other abdominal surgery, specify:
		<input id="EPQ30754990Describe" type="text"  class="requiredIfPreviousCheckbox" maxlength="75" size="15"  name="EPQ30754990Describe" value='<%=Session("EPQ30754990Describe")%>' >

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
