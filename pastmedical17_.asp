
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30422010")="1" then
		strEPQ30422010answer1="checked"
	end if
	if Session("EPQ30422020")="1" then
		strEPQ30422020answer1="checked"
	end if
	if Session("EPQ30422030")="1" then
		strEPQ30422030answer1="checked"
	end if
	if Session("EPQ30422040")="1" then
		strEPQ30422040answer1="checked"
	end if
	if Session("EPQ30422050")="1" then
		strEPQ30422050answer1="checked"
	end if
	if Session("EPQ30422060")="1" then
		strEPQ30422060answer1="checked"
	end if
	if Session("EPQ30422070")="1" then
		strEPQ30422070answer1="checked"
	end if
	if Session("EPQ30422080")="1" then
		strEPQ30422080answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30422010") = Request.Form("EPQ30422010")
	Session("EPQ30422020") = Request.Form("EPQ30422020")
	Session("EPQ30422030") = Request.Form("EPQ30422030")
	Session("EPQ30422040") = Request.Form("EPQ30422040")
	Session("EPQ30422050") = Request.Form("EPQ30422050")
	Session("EPQ30422060") = Request.Form("EPQ30422060")
	Session("EPQ30422070") = Request.Form("EPQ30422070")
	Session("EPQ30422080") = Request.Form("EPQ30422080")
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"

	if Session("EPQ30418050")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="16b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("Page")=16
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402180") <> "1" then 
	Session("Page")="18"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402180") <> "1" then 
	Session("Page")="16"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("EPQ30422030")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="17b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30422030")<>"1" then

		Session.Contents.Remove("THRC30130000")
		Session.Contents.Remove("THRC30131000")

	end if

	Session("Page")="18"
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


    <form action="pastmedical17.asp" method="post" id="formQuestion" name="formQuestion">
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

  <fieldset>
    <legend class="QuestionBox">
      Which of the following <u>allergy, sinus or hay fever problems</u> did the doctor say you had? Do not include allergies to medications or latex. Check all that apply.<br>
	  </legend>

<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30422010" value="1" id="EPQ30422010" class="atLeastOneCheckboxRequired" <%=strEPQ30422010answer1%>>
		<label for="EPQ30422010">Chronic or recurring sinusitis (longer than 8 weeks or more than 4 times per year)</label><br>

		<input type="checkbox" name="EPQ30422080" value="1" id="EPQ30422080" class="atLeastOneCheckboxRequired" <%=strEPQ30422080answer1%>>
		<label for="EPQ30422080">Deviated septum</label><br>

		<input type="checkbox" name="EPQ30422020" value="1" id="EPQ30422020" class="atLeastOneCheckboxRequired" <%=strEPQ30422020answer1%>>
		<label for="EPQ30422020">Environmental allergies (such as to pollen, mold or animals)</label><br>

		<input type="checkbox" name="EPQ30422070" value="1" id="EPQ30422070" class="atLeastOneCheckboxRequired" <%=strEPQ30422070answer1%>>
		<label for="EPQ30422070">Food allergies</label><br>

		<input type="checkbox" name="EPQ30422030" value="1" id="EPQ30422030" class="atLeastOneCheckboxRequired" <%=strEPQ30422030answer1%>>
		<label for="EPQ30422030">Hay fever or allergic rhinitis</label><br>

		<input type="checkbox" name="EPQ30422040" value="1" id="EPQ30422040" class="atLeastOneCheckboxRequired" <%=strEPQ30422040answer1%>>
		<label for="EPQ30422040">Nasal polyps</label><br>
		<input type="checkbox" name="EPQ30422050" value="1" id="EPQ30422050" class="atLeastOneCheckboxRequired" <%=strEPQ30422050answer1%>>
		<label for="EPQ30422050">Other, specify:</label>	
		<input id="EPQ30422060" type="text" maxlength="75" size="15" name="EPQ30422060" class="requiredIfPreviousCheckbox" value= '<%=Session("EPQ30422060")%>' ><br>
</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
&nbsp;<br>&nbsp;<br>


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
