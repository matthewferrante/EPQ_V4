
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30415010")="1" then
		strEPQ30415010answer1="checked"
	end if
	if Session("EPQ30415020")="1" then
		strEPQ30415020answer1="checked"
	end if
	if Session("EPQ30415030")="1" then
		strEPQ30415030answer1="checked"
	end if
	if Session("EPQ30415040")="1" then
		strEPQ30415040answer1="checked"
	end if
	if Session("EPQ30415050")="1" then
		strEPQ30415050answer1="checked"
	end if
	if Session("EPQ30415060")="1" then
		strEPQ30415060answer1="checked"
	end if
	if Session("EPQ30415070")="1" then
		strEPQ30415070answer1="checked"
	end if
	if Session("EPQ30415080")="1" then
		strEPQ30415080answer1="checked"
	end if
	if Session("EPQ30415090")="1" then
		strEPQ30415090answer1="checked"
	end if
	if Session("EPQ30415100")="1" then
		strEPQ30415100answer1="checked"
	end if
	if Session("EPQ30415110")="77" then
		strEPQ30415110answer1="checked"
	end if
	if Session("EPQ30415120")="1" then
		strEPQ30415120answer1="checked"
	end if
	if Session("EPQ30415130")="1" then
		strEPQ30415130answer1="checked"
	end if
	if Session("EPQ30415140")="1" then
		strEPQ30415140answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30415000") = Request.Form("EPQ30415000")
	Session("EPQ30415010") = Request.Form("EPQ30415010")
	Session("EPQ30415020") = Request.Form("EPQ30415020")
	Session("EPQ30415030") = Request.Form("EPQ30415030")
	Session("EPQ30415040") = Request.Form("EPQ30415040")
	Session("EPQ30415050") = Request.Form("EPQ30415050")
	Session("EPQ30415060") = Request.Form("EPQ30415060")
	Session("EPQ30415070") = Request.Form("EPQ30415070")
	Session("EPQ30415080") = Request.Form("EPQ30415080")
	Session("EPQ30415090") = Request.Form("EPQ30415090")
	Session("EPQ30415100") = Request.Form("EPQ30415100")
	Session("EPQ30415110") = Request.Form("EPQ30415110")
	Session("EPQ30415120") = Request.Form("EPQ30415120")
	Session("EPQ30415130") = Request.Form("EPQ30415130")
	Session("EPQ30415140") = Request.Form("EPQ30415140")


end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=13
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402130") <> "1" then 
	Session("Page")="15"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	if Session("EPQ30402130") <> "1" then 
	Session("Page")="13"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30415010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30415080")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="14b1"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415080")<>"1" then

		Session.Contents.Remove("THRC30117000")
		Session.Contents.Remove("THRC30118000")
	end if

	if Session("EPQ30415100") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415100")<>"1" then

		Session.Contents.Remove("THRC30123000")
		Session.Contents.Remove("THRC30124000")
	end if

	if Session("EPQ30415120") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415120")<>"1" then

		Session.Contents.Remove("THRC30119000")
		Session.Contents.Remove("THRC30120000")
	end if

	if Session("EPQ30415070") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415070")<>"1" then

		Session.Contents.Remove("THRC30121000")
		Session.Contents.Remove("THRC30122000")
	end if

	if Session("EPQ30415040") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415040")<>"1" then

		Session.Contents.Remove("THRC30125000")
		Session.Contents.Remove("THRC30126000")
		Session.Contents.Remove("THRC30127000")
	end if

	Session("Page")="15"
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


    <form action="pastmedical14.asp" method="post" id="formQuestion" name="formQuestion">
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
      Which of the following <u>lung or other breathing problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30415130" value="1" id="EPQ30415130" class="atLeastOneCheckboxRequired" <%=strEPQ30415130answer1%>>
		<label for="EPQ30415130">Asbestosis</label><br>
		<input type="checkbox" name="EPQ30415080" value="1" id="EPQ30415080" class="atLeastOneCheckboxRequired" <%=strEPQ30415080answer1%>>
		<label for="EPQ30415080">Asthma</label><br>

		<input type="checkbox" name="EPQ30415010" value="1" id="EPQ30415010" class="atLeastOneCheckboxRequired" <%=strEPQ30415010answer1%>>
		<label for="EPQ30415010">Blood clot in your lungs (pulmonary embolism)</label><br>

		<input type="checkbox" name="EPQ30415100" value="1" id="EPQ30415100" class="atLeastOneCheckboxRequired" <%=strEPQ30415100answer1%>>
		<label for="EPQ30415100">Chronic bronchitis</label><br>

		<input type="checkbox" name="EPQ30415120" value="1" id="EPQ30415120" class="atLeastOneCheckboxRequired" <%=strEPQ30415120answer1%>>
		<label for="EPQ30415120">Chronic obstructive pulmonary disease (COPD)</label><br>

		<input type="checkbox" name="EPQ30415070" value="1" id="EPQ30415070" class="atLeastOneCheckboxRequired" <%=strEPQ30415070answer1%>>
		<label for="EPQ30415070">Emphysema</label><br>

		<input type="checkbox" name="EPQ30415140" value="1" id="EPQ30415140" class="atLeastOneCheckboxRequired" <%=strEPQ30415140answer1%>>
		<label for="EPQ30415140">Pleural effusion (fluid on the lung)</label><br>


</span>

<span class="column2">
	<input type="checkbox" name="EPQ30415030" value="1" id="EPQ30415030" class="atLeastOneCheckboxRequired" <%=strEPQ30415030answer1%>>
		<label for="EPQ30415030">Pleurisy (pleuritis or inflammation<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of membrane surrounding lungs)</label><br>

		
		<input type="checkbox" name="EPQ30415040" value="1" id="EPQ30415040" class="atLeastOneCheckboxRequired" <%=strEPQ30415040answer1%>>
		<label for="EPQ30415040">Pneumonia</label><br>

		<input type="checkbox" name="EPQ30415060" value="1" id="EPQ30415060" class="atLeastOneCheckboxRequired" <%=strEPQ30415060answer1%>>
		<label for="EPQ30415060">Sarcoidosis</label><br>
		<input type="checkbox" name="EPQ30415050" value="1" id="EPQ30415050" class="atLeastOneCheckboxRequired" <%=strEPQ30415050answer1%>>
		<label for="EPQ30415050">Sleep apnea</label><br>

		<input type="checkbox" name="EPQ30415020" value="1" id="EPQ30415020" class="atLeastOneCheckboxRequired" <%=strEPQ30415020answer1%>>
		<label for="EPQ30415020">Tuberculosis (TB)</label><br>
		<input type="checkbox" name="EPQ30415090" value="1" id="EPQ30415090" class="atLeastOneCheckboxRequired" <%=strEPQ30415090answer1%>>
		<label for="EPQ30415090">Other, specify:</label>	
	<input id="EPQ30415000" type="text" maxlength="75" size="15" name="EPQ30415000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30415000")%>' ><br>

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
