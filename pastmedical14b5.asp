
<%

Session("PastMedicalHistoryStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("THRC30127000")="1" then
		strTHRC30127000answer1="checked"
	end if
	if Session("THRC30127000")="2" then
		strTHRC30127000answer2="checked"
	end if
	if Session("THRC30127000")="3" then
		strTHRC30127000answer3="checked"
	end if
	if Session("THRC30127000")="4" then
		strTHRC30127000answer4="checked"
	end if
	if Session("THRC30127000")="5" then
		strTHRC30127000answer5="checked"
	end if
	if Session("THRC30127000")="88" then
		strTHRC30127000answer6="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("THRC30125000") = Request.Form("THRC30125000")
	Session("THRC30126000") = Request.Form("THRC30126000")
	Session("THRC30127000") = Request.Form("THRC30127000")
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("EPQ30415070") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415120") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415100") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30415080")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="14b1"
	Response.Redirect "pastmedicalmaster.asp"
	end if
		Session("ReturnID")="1"
		Session("Page")=14
		Response.Redirect "pastmedicalmaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30415010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
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


    <form action="pastmedical14b5.asp" method="post" id="formQuestion" name="formQuestion">
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
<br><br>
  <fieldset>
    <legend class="QuestionBox">
      What age or year were you first diagnosed with pneumonia?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<label for="THRC30125000">at age: </label>
		<input type="text" size="3" maxlength="3" id="THRC30125000" name="THRC30125000" class="yearsExposed requiredIfNotYears" value=<%=Session("THRC30125000")%> > years old 

<br>
<br>
<b> or</b>
<br><br>
		<label for="THRC30126000">in year: </label>
		<input type="text" size="4" maxlength="4" id="THRC30126000" name="THRC30126000" class="yearRange requiredIfNotAge" value=<%=Session("THRC30126000")%> ><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
    <legend class="QuestionBox">
      How many times have you been diagnosed with pneumonia?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30127000" value="1" id="THRC301270001" class="required" <%=strTHRC30127000answer1%>>
		<label for="THRC301270001">1</label><br>
		<input type="radio" name="THRC30127000" value="2" id="THRC301270002" <%=strTHRC30127000answer2%>>
		<label for="THRC301270002">2</label><br>
		<input type="radio" name="THRC30127000" value="3" id="THRC301270003" <%=strTHRC30127000answer3%>>
		<label for="THRC301270003">3</label><br>
		<input type="radio" name="THRC30127000" value="4" id="THRC301270004" <%=strTHRC30127000answer4%>>
		<label for="THRC301270004">4</label><br>
		<input type="radio" name="THRC30127000" value="5" id="THRC301270005" <%=strTHRC30127000answer5%>>
		<label for="THRC301270005">5 or more</label><br>
		<input type="radio" name="THRC30127000" value="88" id="THRC301270006" <%=strTHRC30127000answer6%>>
		<label for="THRC301270006">Don't know</label>

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
