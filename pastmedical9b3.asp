
<%

Session("PastMedicalHistoryStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30407250")="1" then
		strEPQ30407250answer1="checked"
	end if
	if Session("EPQ30407250")="0" then
		strEPQ30407250answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30407240") = Request.Form("EPQ30407240")
	Session("EPQ30407250") = Request.Form("EPQ30407250")
	Session("EPQ30407260") = Request.Form("EPQ30407260")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("EPQ30407150")="1" then
		Session("Page")="9b2"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30407140")="1" then
		Session("Page")="9b1"
		Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="9b"
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="10"
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


    <form action="pastmedical9b3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
      At what age did you begin taking 
<%
=Session("EPQ30407170")
%>?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<label for="EPQ30407240">Age: </label>
		<input type="text" size="3" maxlength="3" id="EPQ30407240" name="EPQ30407240" class="required yearsExposed" value=<%=Session("EPQ30407240")%> > years old
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
    <legend class="QuestionBox">
Are you currently taking
<%
=Session("EPQ30407170")
%>? <br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30407250" value="1" id="EPQ304072501" class="required" <%=strEPQ30407250answer1%>>
		<label for="EPQ304072501">Yes</label><br>
		<input type="radio" name="EPQ30407250" value="0" id="EPQ304072502" <%=strEPQ30407250answer2%>>
		<label for="EPQ304072502">No</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
		<!-- label for="EPQ30407260">How many years in total did you take -->
    <legend class="QuestionBox">
		  How many years in total did you take <%
=Session("EPQ30407170")
%>?</label>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="text" size="3" maxlength="3" id="EPQ30407260" name="EPQ30407260" class="required yearsExposed" value=<%=Session("EPQ30407260")%> > years 
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
