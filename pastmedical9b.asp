
<%

Session("PastMedicalHistoryStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30407140")="1" then
		strEPQ30407140answer1="checked"
	end if
	if Session("EPQ30407150")="1" then
		strEPQ30407150answer1="checked"
	end if
	if Session("EPQ30407160")="1" then
		strEPQ30407160answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30407120") = Request.Form("EPQ30407120")
	Session("EPQ30407130") = Request.Form("EPQ30407130")
	Session("EPQ30407140") = Request.Form("EPQ30407140")
	Session("EPQ30407150") = Request.Form("EPQ30407150")
	Session("EPQ30407160") = Request.Form("EPQ30407160")
	Session("EPQ30407170") = Request.Form("EPQ30407170")
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then


	if Session("EPQ30407140")="1" then
		Session("Page")="9b1"
if Session("EPQ30407150")<>"1" then
	Session.Contents.Remove("EPQ30407270")
	Session.Contents.Remove("EPQ30407220")
	Session.Contents.Remove("EPQ30407230")
end if
if Session("EPQ30407160")<>"1" then
	Session.Contents.Remove("EPQ30407240")
	Session.Contents.Remove("EPQ30407250")
	Session.Contents.Remove("EPQ30407260")
end if
		Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("SurveyVersion")<>"TestingThoracic" then 
	if Session("EPQ30407150")="1" then
		Session("Page")="9b2"
if Session("EPQ30407140")<>"1" then
	Session.Contents.Remove("EPQ30407280")
	Session.Contents.Remove("EPQ30407190")
	Session.Contents.Remove("EPQ30407200")
end if
if Session("EPQ30407160")<>"1" then
	Session.Contents.Remove("EPQ30407240")
	Session.Contents.Remove("EPQ30407250")
	Session.Contents.Remove("EPQ30407260")
end if
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407160")="1" then
		Session("Page")="9b3"
if Session("EPQ30407140")<>"1" then
	Session.Contents.Remove("EPQ30407280")
	Session.Contents.Remove("EPQ30407190")
	Session.Contents.Remove("EPQ30407200")
end if
if Session("EPQ30407150")<>"1" then
	Session.Contents.Remove("EPQ30407270")
	Session.Contents.Remove("EPQ30407220")
	Session.Contents.Remove("EPQ30407230")
end if
		Response.Redirect "pastmedicalmaster.asp"
	end if
	end if

	if Session("GI10201000")="1" OR Session("GI10202000")="1" then
	if Session("EPQ30407150")="1" then
		Session("Page")="9b2"
if Session("EPQ30407140")<>"1" then
	Session.Contents.Remove("EPQ30407280")
	Session.Contents.Remove("EPQ30407190")
	Session.Contents.Remove("EPQ30407200")
end if
if Session("EPQ30407160")<>"1" then
	Session.Contents.Remove("EPQ30407240")
	Session.Contents.Remove("EPQ30407250")
	Session.Contents.Remove("EPQ30407260")
end if
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407160")="1" then
		Session("Page")="9b3"
if Session("EPQ30407140")<>"1" then
	Session.Contents.Remove("EPQ30407280")
	Session.Contents.Remove("EPQ30407190")
	Session.Contents.Remove("EPQ30407200")
end if
if Session("EPQ30407150")<>"1" then
	Session.Contents.Remove("EPQ30407270")
	Session.Contents.Remove("EPQ30407220")
	Session.Contents.Remove("EPQ30407230")
end if
		Response.Redirect "pastmedicalmaster.asp"
	end if
	end if


	Session("Page")="10"
	 <!--#include file="autosavefunction.asp"-->
if Session("EPQ30407140")<>"1" then
	Session.Contents.Remove("EPQ30407280")
	Session.Contents.Remove("EPQ30407190")
	Session.Contents.Remove("EPQ30407200")
end if
if Session("EPQ30407150")<>"1" then
	Session.Contents.Remove("EPQ30407270")
	Session.Contents.Remove("EPQ30407220")
	Session.Contents.Remove("EPQ30407230")
end if
if Session("EPQ30407160")<>"1" then
	Session.Contents.Remove("EPQ30407240")
	Session.Contents.Remove("EPQ30407250")
	Session.Contents.Remove("EPQ30407260")
end if
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


    <form action="pastmedical9b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
 
  <fieldset>
    <legend class="QuestionBox">
      At what age or in which year were you first diagnosed with diabetes?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<label for="EPQ30407120">Age: </label>
		<input type="text" size="2" maxlength="3" id="EPQ30407120" name="EPQ30407120" class="yearsExposed requiredIfNotYears" value=<%=Session("EPQ30407120")%> > years old
<br><br>
<b> or</b>
<br><br>
		<label for="EPQ30407130">Year: </label>
		<input type="text" size="3" maxlength="4" id="EPQ30407130" name="EPQ30407130" class="yearRange requiredIfNotAge" value=<%=Session("EPQ30407130")%> > <br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

    <fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
Which medication(s) for your diabetes have you ever taken on a regular basis (at least once per<br> week for six months or more)?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30407140" value="1" id="EPQ30407140" class="atLeastOneCheckboxRequired" <%=strEPQ30407140answer1%>>
		<label for="EPQ30407140">Metformin or Glucophage</label><br>
		<input type="checkbox" name="EPQ30407150" value="1" id="EPQ30407150" class="atLeastOneCheckboxRequired" <%=strEPQ30407150answer1%>>
		<label for="EPQ30407150">Insulin</label><br>
		<input type="checkbox" name="EPQ30407160" value="1" id="EPQ30407160" class="atLeastOneCheckboxRequired" <%=strEPQ30407160answer1%>>
		<label for="EPQ30407160">Other, specify: </label>
		<input type="text" maxlength="45" size="15" id="EPQ30407170" name="EPQ30407170" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30407170")%>' > <br>
		<input type="radio" name="EPQ30517100" value="1" id="EPQ30517100" <%=strEPQ30517100answer1%>>
		<label for="EPQ30517100">None</label><br>

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
