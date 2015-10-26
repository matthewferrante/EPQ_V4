
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ304130010")="1" then
		strEPQ304130010answer1="checked"
	end if
	if Session("EPQ304130020")="1" then
		strEPQ304130020answer1="checked"
	end if
	if Session("EPQ304130040")="1" then
		strEPQ304130040answer1="checked"
	end if
	if Session("EPQ304140000")="1" then
		strEPQ304140000answer1="checked"
	end if
	if Session("EPQ304140000")="2" then
		strEPQ304140000answer2="checked"
	end if
	if Session("EPQ304140000")="3" then
		strEPQ304140000answer3="checked"
	end if
	if Session("EPQ304140000")="88" then
		strEPQ304140000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ304130010string")= ""
	Session("EPQ304130020string")= ""
	Session("EPQ304130030string")= ""
	Session("EPQ304130040string")= ""
	Session("EPQ304140000string")= ""


	Session("EPQ304130000") = Request.Form("EPQ304130000")
	Session("EPQ304130010") = Request.Form("EPQ304130010")
	Session("EPQ304130020") = Request.Form("EPQ304130020")
	Session("EPQ304130040") = Request.Form("EPQ304130040")

	Session("EPQ304140000") = Request.Form("EPQ304140000")

	if Session("EPQ304130010") = "1" then 
		Session("EPQ304130010string")= ""
	end if
	if Session("EPQ304130020") = "1" then 
		Session("EPQ304130020string")= ""
	end if
	if Session("EPQ304130030") = "1" then 
		Session("EPQ304130030string")= ""
	end if
	if Session("EPQ304130040") = "1" then 
		Session("EPQ304130040string")= ""
	end if
	if Session("EPQ304140000") = "1" then 
		Session("EPQ304140000string")= ""
	end if
	if Session("EPQ304140000") = "2" then 
		Session("EPQ304140000string")= ""
	end if
	if Session("EPQ304140000") = "3" then 
		Session("EPQ304140000string")= ""
	end if
	if Session("EPQ304140000") = "88" then 
		Session("EPQ304140000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=15
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402110") <> "1" then 
	Session("Page")="17"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402110") <> "1" then 
	Session("Page")="15"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ304130010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="17"
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


    <form action="pastmedical16.asp" method="post" id="formQuestion" name="formQuestion">
			<!--  ' Values are filled in in the OnAnswerQuestion function above. ] -->
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
      Which of the following <u>prostate problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ304130010" value="1" id="EPQ304130010" class="atLeastOneCheckboxRequired" <%=strEPQ304130010answer1%>>
		<label for="EPQ304130010">Prostatitis (an infection or inflammation of the prostate)</label><br>
		<input type="checkbox" name="EPQ304130020" value="1" id="EPQ304130020" class="atLeastOneCheckboxRequired" <%=strEPQ304130020answer1%>>
		<label for="EPQ304130020">Enlarged prostate or benign prostatic hyperplasia (BPH)</label><br>
		<input type="checkbox" name="EPQ304130040" value="1" id="EPQ304130040" class="atLeastOneCheckboxRequired" <%=strEPQ304130040answer1%>>
		<label for="EPQ304130040">Other, specify:</label>	
	<input id="EPQ304130000" type="text" maxlength="15" size="15" name="EPQ304130000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ304130000")%>' ><br>
</label><br>
</div><!-- [ /#AnswerBox] -->
</fieldset>

  <fieldset>
    <legend class="QuestionBox">
      What was the result of your most recent prostate specific antigen (PSA) blood test?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ304140000" value="1" id="EPQ304140000" class="required" <%=strEPQ304140000answer1%>>
		<label for="EPQ304140000">Normal</label><br>
		<input type="radio" name="EPQ304140000" value="2" id="EPQ304140000" <%=strEPQ304140000answer2%>>
		<label for="EPQ304140000">Abnormal</label><br>
		<input type="radio" name="EPQ304140000" value="3" id="EPQ304140000" <%=strEPQ304140000answer3%>>
		<label for="EPQ304140000">I have never had a PSA test</label><br>
		<input type="radio" name="EPQ304140000" value="88" id="EPQ304140000" <%=strEPQ304140000answer4%>>
		<label for="EPQ304140000">Don't know</label><br>

</label><br>
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
