
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30416010")="1" then
		strEPQ30416010answer1="checked"
	end if
	if Session("TEMP1EPQ30416010")="1" then
		strTEMP1EPQ30416010answer1="checked"
	end if

	if Session("EPQ30416020")="1" then
		strEPQ30416020answer1="checked"
	end if
	if Session("EPQ30416030")="1" then
		strEPQ30416030answer1="checked"
	end if
	if Session("EPQ30416040")="1" then
		strEPQ30416040answer1="checked"
	end if
	if Session("EPQ30416050")="1" then
		strEPQ30416050answer1="checked"
	end if
	if Session("EPQ30416060")="1" then
		strEPQ30416060answer1="checked"
	end if
	if Session("TEMP2EPQ30416060")="1" then
		strTEMP2EPQ30416060answer1="checked"
	end if
	if Session("EPQ30416070")="1" then
		strEPQ30416070answer1="checked"
	end if
	if Session("EPQ30416080")="1" then
		strEPQ30416080answer1="checked"
	end if
	if Session("EPQ30416090")="1" then
		strEPQ30416090answer1="checked"
	end if
	if Session("EPQ30416100")="1" then
		strEPQ30416100answer1="checked"
	end if
	if Session("EPQ30416110")="1" then
		strEPQ30416110answer1="checked"
	end if
	if Session("EPQ30416120")="77" then
		strEPQ30416120answer1="checked"
	end if
	if Session("EPQ30416130")="1" then
		strEPQ30416130answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30416000") = Request.Form("EPQ30416000")
	Session("EPQ30416010") = Request.Form("EPQ30416010")
	Session("TEMP1EPQ30416010") = Request.Form("TEMP1EPQ30416010")
	Session("EPQ30416020") = Request.Form("EPQ30416020")
	Session("EPQ30416030") = Request.Form("EPQ30416030")
	Session("EPQ30416040") = Request.Form("EPQ30416040")
	Session("EPQ30416050") = Request.Form("EPQ30416050")
	Session("EPQ30416060") = Request.Form("EPQ30416060")
	Session("TEMP2EPQ30416060") = Request.Form("TEMP2EPQ30416060")
	Session("EPQ30416070") = Request.Form("EPQ30416070")
	Session("EPQ30416080") = Request.Form("EPQ30416080")
	Session("EPQ30416090") = Request.Form("EPQ30416090")
	Session("EPQ30416100") = Request.Form("EPQ30416100")
	Session("EPQ30416110") = Request.Form("EPQ30416110")
	Session("EPQ30416130") = Request.Form("EPQ30416130")

	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402120") <> "1" then 
	Session("Page")="13"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	if Session("EPQ30402120") <> "1" then 
	Session("Page")="11"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30416010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="13"
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

    <form action="pastmedical12.asp" method="post" id="formQuestion" name="formQuestion">
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
      Which of the following <u>heart or blood vessel problems</u> did the doctor say you had? Check all<br> that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30416070" value="1" id="EPQ30416070"  class="atLeastOneCheckboxRequired" <%=strEPQ30416070answer1%>>
		<label for="EPQ30416070">Atrial fibrillation</label><br>
		<input type="checkbox" name="EPQ30416040" value="1" id="EPQ30416040"  class="atLeastOneCheckboxRequired" <%=strEPQ30416040answer1%>>
		<label for="EPQ30416040">Blood clot in your legs</label><br>
		<input type="checkbox" name="EPQ30416010" value="1" id="EPQ30416010"  class="atLeastOneCheckboxRequired" <%=strEPQ30416010answer1%>>
		<label for="EPQ30416010">Chest pain or angina (pain due to your heart)</label><br>
		<input type="checkbox" name="TEMP1EPQ30416010" value="1" id="TEMP1EPQ30416010"  class="atLeastOneCheckboxRequired" <%=strTEMP1EPQ30416010answer1%>>
		<label for="TEMP1EPQ30416010">Congestive heart failure (CHF)</label><br>

		<input type="checkbox" name="EPQ30416130" value="1" id="EPQ30416130"  class="atLeastOneCheckboxRequired" <%=strEPQ30416130answer1%>>
		<label for="EPQ30416130">Coronary artery disease or <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;atherosclerosis (includes stents or bypass)</label><br>
		<input type="checkbox" name="EPQ30416020" value="1" id="EPQ30416020"  class="atLeastOneCheckboxRequired" <%=strEPQ30416020answer1%>>
		<label for="EPQ30416020">Elevated cholesterol or triglycerides</label><br>
		<input type="checkbox" name="EPQ30416090" value="1" id="EPQ30416090"  class="atLeastOneCheckboxRequired" <%=strEPQ30416090answer1%>>
		<label for="EPQ30416090">Heart murmur</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30416030" value="1" id="EPQ30416030" class="atLeastOneCheckboxRequired" <%=strEPQ30416030answer1%>>
		<label for="EPQ30416030">High blood pressure</label><br>
		<input type="checkbox" name="EPQ30416050" value="1" id="EPQ30416050" class="atLeastOneCheckboxRequired" <%=strEPQ30416050answer1%>>
		<label for="EPQ30416050">Irregular heart beat<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(includes pacemakers)</label><br>
		<input type="checkbox" name="EPQ30416110" value="1" id="EPQ30416110" class="atLeastOneCheckboxRequired" <%=strEPQ30416110answer1%>>
		<label for="EPQ30416110">Low blood pressure</label><br>

		<input type="checkbox" name="EPQ30416080" value="1" id="EPQ30416080" class="atLeastOneCheckboxRequired" <%=strEPQ30416080answer1%>>
		<label for="EPQ30416080">Mitral valve prolapse (MVP)</label><br>

		<input type="checkbox" name="EPQ30416060" value="1" id="EPQ30416060" class="atLeastOneCheckboxRequired" <%=strEPQ30416060answer1%>>
		<label for="EPQ30416060">Myocardial infarction (heart attack)</label><br>
		<input type="checkbox" name="TEMP2EPQ30416060" value="1" id="TEMP2EPQ30416060" class="atLeastOneCheckboxRequired" <%=strTEMP2EPQ30416060answer1%>>
		<label for="TEMP2EPQ30416060">Varicose veins</label><br>

		<input type="checkbox" name="EPQ30416100" value="1" id="EPQ30416100" class="atLeastOneCheckboxRequired" <%=strEPQ30416100answer1%>>
		<label for="EPQ30416100">Other, specify:</label>	
	<input id="EPQ30416000" type="text" maxlength="75" size="15" name="EPQ30416000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30416000")%>'><br>

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
