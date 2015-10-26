
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30418010")="1" then
		strEPQ30418010answer1="checked"
	end if
	if Session("EPQ30418020")="1" then
		strEPQ30418020answer1="checked"
	end if
	if Session("EPQ30418030")="1" then
		strEPQ30418030answer1="checked"
	end if
	if Session("EPQ30418040")="1" then
		strEPQ30418040answer1="checked"
	end if
	if Session("EPQ30418050")="1" then
		strEPQ30418050answer1="checked"
	end if
	if Session("EPQ30418060")="1" then
		strEPQ30418060answer1="checked"
	end if
	if Session("EPQ30418070")="77" then
		strEPQ30418070answer1="checked"
	end if

	if Session("EPQ30418080")="1" then
		strEPQ30418080answer1="checked"
	end if
	if Session("EPQ30418090")="1" then
		strEPQ30418090answer1="checked"
	end if
	if Session("EPQ30418100")="1" then
		strEPQ30418100answer1="checked"
	end if
	if Session("TEMP1EPQ30418100")="1" then
		strTEMP1EPQ30418100answer1="checked"
	end if
	if Session("TEMP2EPQ30418100")="1" then
		strTEMP2EPQ30418100answer1="checked"
	end if
	if Session("EPQ30418110")="1" then
		strEPQ30418110answer1="checked"
	end if

	if Session("EPQ30419000")="1" then
		strEPQ30419000answer1="checked"
	end if
	if Session("EPQ30419000")="0" then
		strEPQ30419000answer2="checked"
	end if

	if Session("EPQ30420000")="1" then
		strEPQ30420000answer1="checked"
	end if
	if Session("EPQ30420000")="0" then
		strEPQ30420000answer2="checked"
	end if
	if Session("EPQ30420000")="88" then
		strEPQ30420000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30420000") = Request.Form("EPQ30420000")
	Session("EPQ30419000") = Request.Form("EPQ30419000")
	Session("EPQ30418000") = Request.Form("EPQ30418000")
	Session("EPQ30418010") = Request.Form("EPQ30418010")
	Session("EPQ30418020") = Request.Form("EPQ30418020")
	Session("EPQ30418030") = Request.Form("EPQ30418030")
	Session("EPQ30418040") = Request.Form("EPQ30418040")
	Session("EPQ30418050") = Request.Form("EPQ30418050")
	Session("EPQ30418060") = Request.Form("EPQ30418060")
	Session("EPQ30418070") = Request.Form("EPQ30418070")
	Session("EPQ30418080") = Request.Form("EPQ30418080")
	Session("EPQ30418090") = Request.Form("EPQ30418090")
	Session("EPQ30418100") = Request.Form("EPQ30418100")
	Session("TEMP1EPQ30418100") = Request.Form("TEMP1EPQ30418100")
	Session("TEMP2EPQ30418100") = Request.Form("TEMP2EPQ30418100")
	Session("EPQ30418110") = Request.Form("EPQ30418110")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=16
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402080") <> "1" then 
	Session("Page")="1"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402080") <> "1" then 
	Session("Page")="16"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30418010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30418050")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="17b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"

	end if 

	if Session("EPQ30418050")<>"1" then

		Session.Contents.Remove("THRC30128000")
		Session.Contents.Remove("THRC30129000")

	end if

	Session("Page")="1"
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
<br>
  <fieldset>
    <legend class="QuestionBox">
      Which of the following <u>skin problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30418110" value="1" id="EPQ30418110" class="atLeastOneCheckboxRequired"  <%=strEPQ30418110answer1%>>
		<label for="EPQ30418110">Acne or rosacea</label><br>
		<input type="checkbox" name="EPQ30418090" value="1" id="EPQ30418090" class="atLeastOneCheckboxRequired"  <%=strEPQ30418090answer1%>>
		<label for="EPQ30418090">Actinic keratosis (AK)</label><br>
		<input type="checkbox" name="TEMP1EPQ30418100" value="1" id="TEMP1EPQ30418100" class="atLeastOneCheckboxRequired"  <%=strTEMP1EPQ30418100answer1%>>
		<label for="TEMP1EPQ30418100">Basal cell skin cancer (BCC)</label><br>
		<input type="checkbox" name="EPQ30418040" value="1" id="EPQ30418040" class="atLeastOneCheckboxRequired"  <%=strEPQ30418040answer1%>>
		<label for="EPQ30418040">Chronic or recurring skin condition</label><br>
		<input type="checkbox" name="EPQ30418020" value="1" id="EPQ30418020" class="atLeastOneCheckboxRequired"  <%=strEPQ30418020answer1%>>
		<label for="EPQ30418020">Dysplastic nevus syndrome (many atypical moles)</label><br>
</label><br>
</span>

<span class="column2">
		<input type="checkbox" name="EPQ30418050" value="1" id="EPQ30418050" class="atLeastOneCheckboxRequired"  <%=strEPQ30418050answer1%>>
		<label for="EPQ30418050">Eczema</label><br>
		<input type="checkbox" name="EPQ30418080" value="1" id="EPQ30418080" class="atLeastOneCheckboxRequired"  <%=strEPQ30418080answer1%>>
		<label for="EPQ30418080">Precancerous mole</label><br>
		<input type="checkbox" name="EPQ30418030" value="1" id="EPQ30418030" class="atLeastOneCheckboxRequired"  <%=strEPQ30418030answer1%>>
		<label for="EPQ30418030">Psoriasis</label><br>
		<input type="checkbox" name="TEMP2EPQ30418100" value="1" id="TEMP2EPQ30418100" class="atLeastOneCheckboxRequired"  <%=strTEMP2EPQ30418100answer1%>>
		<label for="TEMP2EPQ30418100">Squamous cell skin cancer (SCC)</label><br>
		<input type="checkbox" name="EPQ30418010" value="1" id="EPQ30418010" class="atLeastOneCheckboxRequired" <%=strEPQ30418010answer1%>>
		<label for="EPQ30418010">Vitiligo (skin depigmentation)</label><br>
		<input type="checkbox" name="EPQ30418060" value="1" id="EPQ30418060" class="atLeastOneCheckboxRequired" <%=strEPQ30418060answer1%>>
			<label for="EPQ30418060">Other, specify:</label>	
	<input id="EPQ30418000" type="text" maxlength="75" size="15" name="EPQ30418000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30418000")%>' ><br>
</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
&nbsp;<br>&nbsp;<br>
&nbsp;<br>&nbsp;<br>

<div></div>
	<div class="ResetBox">
	</div>
  <fieldset>
    <legend class="QuestionBox">
      Have you ever had a mole or freckle removed?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30419000" value="1" id="EPQ304190001" class="required" <%=strEPQ30419000answer1%>>
		<label for="EPQ304190001">Yes</label><br>
		<input type="radio" name="EPQ30419000" value="0" id="EPQ304190002" <%=strEPQ30419000answer2%>>
		<label for="EPQ304190002">No</label><br>

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
