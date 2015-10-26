
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30408010")="1" then
		strEPQ30408010answer1="checked"
	end if
	if Session("EPQ30408020")="1" then
		strEPQ30408020answer1="checked"
	end if
	if Session("EPQ30408030")="1" then
		strEPQ30408030answer1="checked"
	end if
	if Session("EPQ30408040")="1" then
		strEPQ30408040answer1="checked"
	end if
	if Session("EPQ30408050")="1" then
		strEPQ30408050answer1="checked"
	end if
	if Session("EPQ30408060")="1" then
		strEPQ30408060answer1="checked"
	end if
	if Session("EPQ30408070")="1" then
		strEPQ30408070answer1="checked"
	end if
	if Session("EPQ30408080")="1" then
		strEPQ30408080answer1="checked"
	end if
	if Session("EPQ30408090")="1" then
		strEPQ30408090answer1="checked"
	end if
	if Session("EPQ30408100")="1" then
		strEPQ30408100answer1="checked"
	end if
	if Session("EPQ30408110")="1" then
		strEPQ30408110answer1="checked"
	end if
	if Session("EPQ30408120")="77" then
		strEPQ30408120answer1="checked"
	end if
	if Session("EPQ30408130")="1" then
		strEPQ30408130answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30408000") = Request.Form("EPQ30408000")
	Session("EPQ30408010") = Request.Form("EPQ30408010")
	Session("EPQ30408020") = Request.Form("EPQ30408020")
	Session("EPQ30408030") = Request.Form("EPQ30408030")
	Session("EPQ30408040") = Request.Form("EPQ30408040")
	Session("EPQ30408050") = Request.Form("EPQ30408050")
	Session("EPQ30408060") = Request.Form("EPQ30408060")
	Session("EPQ30408070") = Request.Form("EPQ30408070")
	Session("EPQ30408080") = Request.Form("EPQ30408080")
	Session("EPQ30408090") = Request.Form("EPQ30408090")
	Session("EPQ30408100") = Request.Form("EPQ30408100")
	Session("EPQ30408110") = Request.Form("EPQ30408110")
	Session("EPQ30408120") = Request.Form("EPQ30408120")
	Session("EPQ30408130") = Request.Form("EPQ30408130")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


	if Session("EPQ30407160")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30407160")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if



	if Session("EPQ30407160")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if


	if Session("EPQ30407160")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if


		Session("ReturnID")="1"
		Session("Page")=4
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402030") <> "1" then 
	Session("Page")="6"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402030") <> "1" then 

if Session("ProductionModeSpoke")="C" then 
	if Session("EPQ30407140")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

	if Session("EPQ30407160")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30407160")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("GI10201000")="1" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if


	if Session("EPQ30407160")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" AND Session("GI10202000")="1" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if



	Session("Page")="4"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30408010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="6"
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


    <form action="pastmedical5.asp" method="post" id="formQuestion" name="formQuestion">
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
Which of the following <u>Gyn (gynecological) problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30408090" value="1" id="EPQ30408090" class="atLeastOneCheckboxRequired" <%=strEPQ30408090answer1%>>
		<label for="EPQ30408090">Abnormal pap smear (including dysplasia or pre-cancerous cells)</label><br>

		<input type="checkbox" name="EPQ30408030" value="1" id="EPQ30408030" class="atLeastOneCheckboxRequired" <%=strEPQ30408030answer1%>>
		<label for="EPQ30408030">Endometriosis</label><br>

		<input type="checkbox" name="EPQ30408110" value="1" id="EPQ304081100" class="atLeastOneCheckboxRequired" <%=strEPQ30408110answer1%>>
		<label for="EPQ304081100">Human Papillomavirus (HPV)</label><br>

		<input type="checkbox" name="EPQ30408040" value="1" id="EPQ30408040" class="atLeastOneCheckboxRequired" <%=strEPQ30408040answer1%>>
		<label for="EPQ30408040">Infertility or problems getting or staying pregnant</label><br>

		<input type="checkbox" name="EPQ30408050" value="1" id="EPQ30408050" class="atLeastOneCheckboxRequired" <%=strEPQ30408050answer1%>>
		<label for="EPQ30408050">Irregular periods or menstrual bleeding</label><br>
		<input type="checkbox" name="EPQ30408020" value="1" id="EPQ30408020" class="atLeastOneCheckboxRequired" <%=strEPQ30408020answer1%>>
		<label for="EPQ30408020">Ovarian cysts or tumors that were not cancer</label><br>

		<input type="checkbox" name="EPQ30408070" value="1" id="EPQ30408070" class="atLeastOneCheckboxRequired" <%=strEPQ30408070answer1%>>
		<label for="EPQ30408070">Pelvic inflammatory disease (PID)</label><br>
		<input type="checkbox" name="EPQ30408010" value="1" id="EPQ30408010" class="atLeastOneCheckboxRequired" <%=strEPQ30408010answer1%>>
		<label for="EPQ30408010">Polycystic ovaries or Stein-Leventhal syndrome</label><br>
		<input type="checkbox" name="TEMPEPQ30408020" value="1" id="TEMPEPQ30408020" class="atLeastOneCheckboxRequired" <%=strEPQ30408020answer1%>>
		<label for="EPQ30408020">Sexual dysfunction</label><br>

		<input type="checkbox" name="TEMPEPQ30408060" value="1" id="TEMPEPQ30408060" class="atLeastOneCheckboxRequired" <%=strTEMPEPQ30408060answer1%>>
		<label for="EPQ30408060">Uterine or womb tumors that were not cancer including uterine fibroids</label><br>

		<input type="checkbox" name="EPQ30408130" value="1" id="EPQ30408130" class="atLeastOneCheckboxRequired" <%=strEPQ30408130answer1%>>
		<label for="EPQ30408130">Uterine prolapse</label><br>
		<input type="checkbox" name="EPQ30408100" value="1" id="EPQ30408100" class="atLeastOneCheckboxRequired" <%=strEPQ30408100answer1%>>
		<label for="EPQ30408100">Other, specify:</label>	
	<input id="EPQ30408000" type="text" maxlength="75" size="15" name="EPQ30408000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30408000")%>'><br>
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
