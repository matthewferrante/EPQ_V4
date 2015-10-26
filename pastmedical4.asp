
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30413010")="1" then
		strEPQ30413010answer1="checked"
	end if
	if Session("EPQ30413020")="1" then
		strEPQ30413020answer1="checked"
	end if

	if Session("EPQ30413040")="1" then
		strEPQ30413040answer1="checked"
	end if
	if Session("EPQ30413050")="1" then
		strEPQ30413050answer1="checked"
	end if
	if Session("EPQ30413060")="1" then
		strEPQ30413060answer1="checked"
	end if
	if Session("EPQ30413070")="1" then
		strEPQ30413070answer1="checked"
	end if
	if Session("EPQ30413080")="1" then
		strEPQ30413080answer1="checked"
	end if
	if Session("EPQ30413090")="1" then
		strEPQ30413090answer1="checked"
	end if
	if Session("EPQ30413100")="1" then
		strEPQ30413100answer1="checked"
	end if
	if Session("EPQ30413120")="1" then
		strEPQ30413120answer1="checked"
	end if
	if Session("EPQ30413130")="1" then
		strEPQ30413130answer1="checked"
	end if
	if Session("EPQ30413140")="1" then
		strEPQ30413140answer1="checked"
	end if
	if Session("EPQ30413150")="1" then
		strEPQ30413150answer1="checked"
	end if
	if Session("EPQ30413160")="1" then
		strEPQ30413160answer1="checked"
	end if

	if Session("EPQ30413011")="77" then
		strEPQ30413011answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30413000") = Request.Form("EPQ30413000")
	Session("EPQ30413010") = Request.Form("EPQ30413010")
	Session("EPQ30413020") = Request.Form("EPQ30413020")

	Session("EPQ30413040") = Request.Form("EPQ30413040")
	Session("EPQ30413050") = Request.Form("EPQ30413050")
	Session("EPQ30413060") = Request.Form("EPQ30413060")
	Session("EPQ30413070") = Request.Form("EPQ30413070")
	Session("EPQ30413080") = Request.Form("EPQ30413080")
	Session("EPQ30413090") = Request.Form("EPQ30413090")
	Session("EPQ30413100") = Request.Form("EPQ30413100")
	Session("EPQ30413011") = Request.Form("EPQ30413011")
	Session("EPQ30413120") = Request.Form("EPQ30413120")
	Session("EPQ30413130") = Request.Form("EPQ30413130")
	Session("EPQ30413140") = Request.Form("EPQ30413140")
	Session("EPQ30413150") = Request.Form("EPQ30413150")
	Session("EPQ30413160") = Request.Form("EPQ30413160")

	if Session("EPQ30413010") = "1" then 
		Session("EPQ30413010string")= ""
	end if
	if Session("EPQ30413020") = "1" then 
		Session("EPQ30413020string")= ""
	end if
	if Session("EPQ30413040") = "1" then 
		Session("EPQ30413040string")= ""
	end if
	if Session("EPQ30413050") = "1" then 
		Session("EPQ30413050string")= ""
	end if
	if Session("EPQ30413060") = "1" then 
		Session("EPQ30413060string")= ""
	end if
	if Session("EPQ30413070") = "1" then 
		Session("EPQ30413070string")= ""
	end if
	if Session("EPQ30413080") = "1" then 
		Session("EPQ30413080string")= ""
	end if
	if Session("EPQ30413090") = "1" then 
		Session("EPQ30413090string")= ""
	end if
	if Session("EPQ30413100") = "1" then 
		Session("EPQ30413100string")= ""
	end if
	if Session("EPQ30413011") = "77" then 
		Session("EPQ30413011string")= ""
	end if
	if Session("EPQ30413120") = "1" then 
		Session("EPQ30413120string")= ""
	end if
	if Session("EPQ30413130") = "1" then 
		Session("EPQ30413130string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30422030")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="3b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402040") <> "1" then 
	Session("Page")="5"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402040") <> "1" then 
	if Session("EPQ30422030")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="3b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	Session("Page")="3"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30413010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="5"
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


    <form action="pastmedical4.asp" method="post" id="formQuestion" name="formQuestion">
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
      Which of the following <u>arthritis or autoimmune diseases or joint problems</u> did the doctor say you had?<br>Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30413050" value="1" id="EPQ30413050" class="atLeastOneCheckboxRequired" <%=strEPQ30413050answer1%>>
		<label for="EPQ30413050">Ankylosing spondylitis</label><br>
		<input type="checkbox" name="EPQ30413010" value="1" id="EPQ30413010" class="atLeastOneCheckboxRequired" <%=strEPQ30413010answer1%>>
		<label for="EPQ30413010">Arthritis, osteo</label><br>

		<input type="checkbox" name="EPQ30413090" value="1" id="EPQ30413090" class="atLeastOneCheckboxRequired" <%=strEPQ30413090answer1%>>
		<label for="EPQ30413090">Arthritis, rheumatoid</label><br>

		<input type="checkbox" name="EPQ30413130" value="1" id="EPQ30413130" class="atLeastOneCheckboxRequired" <%=strEPQ30413130answer1%>>
		<label for="EPQ30413130">Arthritis, unknown or other</label><br>

		<input type="checkbox" name="EPQ30413080" value="1" id="EPQ30413080" class="atLeastOneCheckboxRequired" <%=strEPQ30413080answer1%>>
		<label for="EPQ30413080">Fibromyalgia</label><br>

		<input type="checkbox" name="EPQ30413120" value="1" id="EPQ30413120" class="atLeastOneCheckboxRequired" <%=strEPQ30413120answer1%>>
		<label for="EPQ30413120">Gout</label><br>

		<input type="checkbox" name="EPQ30413140" value="1" id="EPQ30413140" class="atLeastOneCheckboxRequired" <%=strEPQ30413140answer1%>>
		<label for="EPQ30413140">Hashimoto’s thyroiditis</label><br>
</span>

<span class="column2">

		<input type="checkbox" name="EPQ30413070" value="1" id="EPQ30413070" class="atLeastOneCheckboxRequired" <%=strEPQ30413070answer1%>>
		<label for="EPQ30413070">Hip or other joint replacement</label><br>
		<input type="checkbox" name="EPQ30413150" value="1" id="EPQ30413150" class="atLeastOneCheckboxRequired" <%=strEPQ30413150answer1%>>
		<label for="EPQ30413150">Myasthenia gravis</label><br>

		<input type="checkbox" name="EPQ30413060" value="1" id="EPQ30413060" class="atLeastOneCheckboxRequired" <%=strEPQ30413060answer1%>>
		<label for="EPQ30413060">Polymyalgia rheumatica</label><br>
		<input type="checkbox" name="EPQ30413020" value="1" id="EPQ30413020" class="atLeastOneCheckboxRequired" <%=strEPQ30413020answer1%>>
		<label for="EPQ30413020">Systemic lupus erythematosus (SLE)</label><br>


		<input type="checkbox" name="EPQ30413160" value="1" id="EPQ30413160" class="atLeastOneCheckboxRequired" <%=strEPQ30413160answer1%>>
		<label for="EPQ30413160">Temporal arteritis or giant-cell arteritis</label><br>

		<input type="checkbox" name="EPQ30413100" value="1" id="EPQ30413100" class="atLeastOneCheckboxRequired" <%=strEPQ30413100answer1%>>
		<label for="EPQ30413100">Other, specify:</label>	
	<input id="EPQ30413000" type="text" maxlength="75" size="15" name="EPQ30413000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30413000")%>' ><br>
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
