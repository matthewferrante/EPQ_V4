
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30505000")="1" then
		strEPQ30505000answer1="checked"
	end if
	if Session("EPQ30505000")="0" then
		strEPQ30505000answer2="checked"
	end if


	if Session("EPQ30506010")="1" then
		strEPQ30506010answer1="checked"
	end if
	if Session("EPQ30506020")="1" then
		strEPQ30506020answer1="checked"
	end if
	if Session("EPQ30506030")="1" then
		strEPQ30506030answer1="checked"
	end if
	if Session("EPQ30506040")="1" then
		strEPQ30506040answer1="checked"
	end if
	if Session("EPQ30506050")="1" then
		strEPQ30506050answer1="checked"
	end if
	if Session("EPQ30506060")="1" then
		strEPQ30506060answer1="checked"
	end if
	if Session("EPQ30506070")="1" then
		strEPQ30506070answer1="checked"
	end if
	if Session("EPQ30506080")="1" then
		strEPQ30506080answer1="checked"
	end if
	if Session("EPQ30506090")="1" then
		strEPQ30506090answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30505000string")= ""
	Session("EPQ30506010string")= ""
	Session("EPQ30506020string")= ""
	Session("EPQ30506030string")= ""
	Session("EPQ30506040string")= ""
	Session("EPQ30506050string")= ""
	Session("EPQ30506060string")= ""
	Session("EPQ30506070string")= ""
	Session("EPQ30506080string")= ""


	Session("EPQ30505000") = Request.Form("EPQ30505000")
	Session("EPQ30506010") = Request.Form("EPQ30506010")
	Session("EPQ30506020") = Request.Form("EPQ30506020")
	Session("EPQ30506030") = Request.Form("EPQ30506030")
	Session("EPQ30506040") = Request.Form("EPQ30506040")
	Session("EPQ30506050") = Request.Form("EPQ30506050")
	Session("EPQ30506060") = Request.Form("EPQ30506060")
	Session("EPQ30506070") = Request.Form("EPQ30506070")
	Session("EPQ30506080") = Request.Form("EPQ30506080")
	Session("EPQ30506090") = Request.Form("EPQ30506090")



end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30505000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30506090")="1" then
	Session("Page")="31"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30506090")<>"1" then
		Session.Contents.Remove("EPQ30506510")
		Session.Contents.Remove("EPQ30506520")
		Session.Contents.Remove("EPQ30506530")
	end if

	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      Do you wear glasses or contact lens?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30505000" value="1" id="EPQ305050001" class="required" <%=strEPQ30505000answer1%>>
		<label for="EPQ305050001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30505000" value="0" id="EPQ305050002" <%=strEPQ30505000answer2%>>
		<label for="EPQ305050002">No</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>


	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any health problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30506070" value="1" id="EPQ30506070" <%=strEPQ30506070answer1%>>
		<label for="EPQ30506070">Chills</label><br>

		<input type="checkbox" name="EPQ30506050" value="1" id="EPQ30506050" <%=strEPQ30506050answer1%>>
		<label for="EPQ30506050">Excessive night sweats</label><br>		
		
		<input type="checkbox" name="EPQ30506010" value="1" id="EPQ30506010" <%=strEPQ30506010answer1%>>
		<label for="EPQ30506010">Fever</label><br>
		
		<input type="checkbox" name="EPQ30506030" value="1" id="EPQ30506030" <%=strEPQ30506030answer1%>>
		<label for="EPQ30506030">Increased appetite</label><br>

		<input type="checkbox" name="EPQ30506090" value="1" id="EPQ30506090" <%=strEPQ30506090answer1%>>
		<label for="EPQ30506090">Pain</label><br>

		<input type="checkbox" name="EPQ30506020" value="1" id="EPQ30506020" <%=strEPQ30506020answer1%>>
		<label for="EPQ30506020">Poor appetite</label><br>
		
		<input type="checkbox" name="EPQ30506040" value="1" id="EPQ30506040" <%=strEPQ30506040answer1%>>
		<label for="EPQ30506040">Sleep poorly</label><br>
		
		<input type="checkbox" name="EPQ30506060" value="1" id="EPQ30506060" <%=strEPQ30506060answer1%>>
		<label for="EPQ30506060">Unusual fatigue</label><br>

<br><br>
		<input type="radio" name="EPQ30506080" value="1" id="EPQ30506080" <%=strEPQ30506080answer1%>>
		<label for="EPQ30506080">None</label><br>
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
