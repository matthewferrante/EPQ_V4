
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ30401003")="1" then
		strEPQ30401003answer1="checked"
	end if
	if Session("EPQ30403010")="1" then
		strEPQ30403010answer1="checked"
	end if
	if Session("EPQ30403020")="1" then
		strEPQ30403020answer1="checked"
	end if
	if Session("EPQ30403030")="1" then
		strEPQ30403030answer1="checked"
	end if
	if Session("EPQ30403040")="1" then
		strEPQ30403040answer1="checked"
	end if
	if Session("EPQ30403050")="1" then
		strEPQ30403050answer1="checked"
	end if
	if Session("EPQ30403060")="1" then
		strEPQ30403060answer1="checked"
	end if
	if Session("EPQ30403070")="1" then
		strEPQ30403070answer1="checked"
	end if
	if Session("EPQ30403080")="1" then
		strEPQ30403080answer1="checked"
	end if
	if Session("TEMPEPQ30403080")="1" then
		strTEMPEPQ30403080answer1="checked"
	end if
	if Session("EPQ30403090")="1" then
		strEPQ30403090answer1="checked"
	end if
	if Session("EPQ30403100")="1" then
		strEPQ30403100answer1="checked"
	end if
	if Session("EPQ30403110")="1" then
		strEPQ30403110answer1="checked"
	end if
	if Session("EPQ30403120")="1" then
		strEPQ30403120answer1="checked"
	end if
	if Session("EPQ30403130")="1" then
		strEPQ30403130answer1="checked"
	end if
	if Session("EPQ30403140")="1" then
		strEPQ30403140answer1="checked"
	end if
	if Session("EPQ30403150")="77" then
		strEPQ30403150answer1="checked"
	end if
	if Session("EPQ30403160")="1" then
		strEPQ30403160answer1="checked"
	end if
	if Session("EPQ30403170")="1" then
		strEPQ30403170answer1="checked"
	end if
	if Session("EPQ30403180")="1" then
		strEPQ30403180answer1="checked"
	end if


	if Session("TEMPEPQ30419000")="1" then
		strTEMPEPQ30419000answer1="checked"
	end if
	if Session("TEMPEPQ30419000")="0" then
		strTEMPEPQ30419000answer2="checked"
	end if
	if Session("TEMPEPQ30419000")="77" then
		strTEMPEPQ30419000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30403010string")= ""
	Session("EPQ30403020string")= ""
	Session("EPQ30403030string")= ""
	Session("EPQ30403040string")= ""
	Session("EPQ30403050string")= ""
	Session("EPQ30403060string")= ""
	Session("EPQ30403070string")= ""
	Session("EPQ30403080string")= ""
	Session("EPQ30403090string")= ""
	Session("EPQ30403100string")= ""
	Session("EPQ30403110string")= ""
	Session("EPQ30403120string")= ""
	Session("EPQ30403130string")= ""
	Session("EPQ30403140string")= ""
	Session("EPQ30403150string")= ""


	Session("EPQ30403000") = Request.Form("EPQ30403000")
	Session("EPQ30403010") = Request.Form("EPQ30403010")
	Session("EPQ30403020") = Request.Form("EPQ30403020")
	Session("EPQ30403030") = Request.Form("EPQ30403030")
	Session("EPQ30403040") = Request.Form("EPQ30403040")
	Session("EPQ30403050") = Request.Form("EPQ30403050")
	Session("EPQ30403060") = Request.Form("EPQ30403060")
	Session("EPQ30403070") = Request.Form("EPQ30403070")
	Session("EPQ30403080") = Request.Form("EPQ30403080")
	Session("TEMPEPQ30403080") = Request.Form("TEMPEPQ30403080")
	Session("EPQ30403090") = Request.Form("EPQ30403090")
	Session("EPQ30403100") = Request.Form("EPQ30403100")
	Session("EPQ30403110") = Request.Form("EPQ30403110")
	Session("EPQ30403120") = Request.Form("EPQ30403120")
	Session("EPQ30403130") = Request.Form("EPQ30403130")
	Session("EPQ30403140") = Request.Form("EPQ30403140")
	Session("EPQ30403150") = Request.Form("EPQ30403150")
	Session("EPQ30403160") = Request.Form("EPQ30403160")
	Session("EPQ30403170") = Request.Form("EPQ30403170")
	Session("EPQ30403180") = Request.Form("EPQ30403180")

	Session("EPQ30404000") = Request.Form("EPQ30404000")
	Session("EPQ30405000") = Request.Form("EPQ30405000")
	Session("EPQ30406000") = Request.Form("EPQ30406000")
	Session("EPQ30401003")=Request.Form("EPQ30401003")
	Session("TEMPEPQ30419000") = Request.Form("TEMPEPQ30419000")


	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Request.Form("GoBackID")="1" then


	if Session("EPQ30407160")="1" then
		Session("Page")="9b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" then
		Session("Page")="9b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" then
		Session("Page")="9b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" then
		Session("Page")="9b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "pastmedicalmaster.asp"
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402010") <> "1" then 

	if Session("EPQ30407160")="1" then
		Session("Page")="9b3"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407150")="1" then
		Session("Page")="9b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" then
		Session("Page")="9b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407100")="1" then
		Session("Page")="9b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	Session("Page")="9"
	Response.Redirect "pastmedicalmaster.asp"
	end if
Session("ReturnID")="0"
end if


if Session("ReturnID")<> "1" then
	if Session("EPQ30402010") <> "1" then 
	Session("Page")="11"
	if Session("GI10202000")="1" then
		Session("Page")="10a"
		Response.Redirect "pastmedicalmaster.asp"
	end if

	Response.Redirect "pastmedicalmaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	if Session("GI10202000")="1" then
		Session("Page")="10a"
		Response.Redirect "pastmedicalmaster.asp"
	end if

	Session("Page")="11"
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


    <form action="pastmedical10.asp" method="post" id="formQuestion" name="formQuestion">
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
Which of the following <u>digestive tract problems</u> did the doctor say you had?  Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">

		<input type="checkbox" name="EPQ30403080" value="1" id="EPQ30403080" class="atLeastOneCheckboxRequired" <%=strEPQ30403080answer1%>>
		<label for="EPQ30403080">Barrett's esophagus</label><br>

		<input type="checkbox" name="EPQ30403120" value="1" id="EPQ30403120" class="atLeastOneCheckboxRequired" <%=strEPQ30403120answer1%>>
		<label for="EPQ30403120">Cirrhosis of the liver</label><br>

		<input type="checkbox" name="EPQ30403130" value="1" id="EPQ30403130" class="atLeastOneCheckboxRequired qTrigger" <%=strEPQ30403130answer1%>>
		<label for="EPQ30403130">Colon or rectal polyps</label><br>

		<input type="checkbox" name="TEMPEPQ30403080" value="1" id="TEMPEPQ30403080" class="atLeastOneCheckboxRequired" <%=strTEMPEPQ30403080answer1%>>
		<label for="EPQ30403080">Crohn's disease</label><br>

		<input type="checkbox" name="EPQ30403100" value="1" id="EPQ30403100" class="atLeastOneCheckboxRequired" <%=strEPQ30403100answer1%>>
		<label for="EPQ30403100">Diverticulitis or diverticulosis</label><br>

		<input type="checkbox" name="EPQ30403090" value="1" id="EPQ30403090" class="atLeastOneCheckboxRequired" <%=strEPQ30403090answer1%>>
		<label for="EPQ30403090">Familial adenomatous polyposis (FAP)</label><br>

		<input type="checkbox" name="EPQ30403180" value="1" id="EPQ304031180" class="atLeastOneCheckboxRequired" <%=strEPQ30403180answer1%>>
		<label for="EPQ304031180">Fatty liver</label><br>

		<input type="checkbox" name="EPQ30403060" value="1" id="EPQ30403060" class="atLeastOneCheckboxRequired" <%=strEPQ30403060answer1%>>
		<label for="EPQ30403060">Gallbladder disease or gallstones</label><br>


</span>

<span class="column2">
		<input type="checkbox" name="EPQ30403160" value="1" id="EPQ304031160" class="atLeastOneCheckboxRequired" <%=strEPQ30403160answer1%>>
		<label for="EPQ304031160">Hemorrhoids</label><br>

		<input type="checkbox" name="EPQ30401003" value="1" id="EPQ30401003" class="atLeastOneCheckboxRequired" <%=strEPQ30401003answer1%>>
		<label for="EPQ30401004">Hepatitis</label><br>

		<input type="checkbox" name="EPQ30403170" value="1" id="EPQ304031170" class="atLeastOneCheckboxRequired" <%=strEPQ30403170answer1%>>
		<label for="EPQ304031170">Hiatal hernia</label><br>

		<input type="checkbox" name="EPQ30403070" value="1" id="EPQ30403070" class="atLeastOneCheckboxRequired" <%=strEPQ30403070answer1%>>
		<label for="EPQ30403070">Irritable bowel syndrome (IBS)</label><br>

		<input type="checkbox" name="EPQ30403030" value="1" id="EPQ30403030" class="atLeastOneCheckboxRequired" <%=strEPQ30403030answer1%>>
		<label for="EPQ30403030">Reflux disorder (GERD)</label><br>

		<input type="checkbox" name="EPQ30403020" value="1" id="EPQ30403020" class="atLeastOneCheckboxRequired qTrigger2" <%=strEPQ30403020answer1%>>
		<label for="EPQ30403020">Stomach or duodenal ulcer</label><br>

		<input type="checkbox" name="EPQ30403010" value="1" id="EPQ30403010" class="atLeastOneCheckboxRequired" <%=strEPQ30403010answer1%>>
		<label for="EPQ30403010">Ulcerative colitis</label><br>

		<input type="checkbox" name="EPQ30403140" value="1" id="EPQ30403140" class="atLeastOneCheckboxRequired" <%=strEPQ30403140answer1%>>
		<label for="EPQ30403140">Other, specify:</label>	

		<input id="EPQ30406000" type="text" maxlength="75" size="15" name="EPQ30406000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30406000")%>' ><br>

</span>
	</div><!-- [ /#AnswerBox] -->
</fieldset>

<div class="hiddenQ">
  <fieldset>
    <legend class="QuestionBox">
		<label for="EPQ30404000">What was your age when polyps were first found?</label>	</legend>
	<input id="EPQ30404000" type="text" maxlength="2" size="2" name="EPQ30404000" class="yearsExposed requiredIfBranchActive" value=<%=Session("EPQ30404000")%>>
    <legend class="QuestionBox">
		<label for="EPQ30405000">How many polyps in total have been found?</label>	</legend>
	<input id="EPQ30405000" type="text" maxlength="2" size="2" name="EPQ30405000" class="requiredIfBranchActive howMany" value=<%=Session("EPQ30405000")%>>
 </fieldset>
</div>

<div class="hiddenQ2">
  <fieldset>
    <legend class="QuestionBox">
Is/was your stomach or duodenal ulcer related to Helicobacter pylori infection?
    </legend>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPQ30419000" value="1" id="TEMPEPQ30419000" class="requiredIfBranchActive" <%=strTEMPEPQ30419000answer1%>>
		<label for="EPQ304190001">Yes</label><br>
		<input type="radio" name="TEMPEPQ30419000" value="0" id="TEMPEPQ30419000" class="requiredIfBranchActive" <%=strTEMPEPQ30419000answer2%>>
		<label for="EPQ304190002">No</label><br>
		<input type="radio" name="TEMPEPQ30419000" value="77" id="TEMPEPQ30419000" class="requiredIfBranchActive" <%=strTEMPEPQ30419000answer3%>>
		<label for="EPQ304190002">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
</div>

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
