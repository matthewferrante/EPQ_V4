
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30517010")="1" then
		strEPQ30517010answer1="checked"
	end if
	if Session("EPQ30517020")="1" then
		strEPQ30517020answer1="checked"
	end if
	if Session("EPQ30517030")="1" then
		strEPQ30517030answer1="checked"
	end if
	if Session("EPQ30517040")="1" then
		strEPQ30517040answer1="checked"
	end if
	if Session("EPQ30517050")="1" then
		strEPQ30517050answer1="checked"
	end if
	if Session("EPQ30517060")="1" then
		strEPQ30517060answer1="checked"
	end if
	if Session("EPQ30517070")="1" then
		strEPQ30517070answer1="checked"
	end if
	if Session("EPQ30517080")="1" then
		strEPQ30517080answer1="checked"
	end if
	if Session("EPQ30517090")="1" then
		strEPQ30517090answer1="checked"
	end if
	if Session("EPQ30517100")="1" then
		strEPQ30517100answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30517010string")= ""
	Session("EPQ30517020string")= ""
	Session("EPQ30517030string")= ""
	Session("EPQ30517040string")= ""
	Session("EPQ30517050string")= ""
	Session("EPQ30517060string")= ""
	Session("EPQ30517070string")= ""
	Session("EPQ30517080string")= ""
	Session("EPQ30517090string")= ""
	Session("EPQ30517100string")= ""


	Session("EPQ30517000") = Request.Form("EPQ30517000")
	Session("EPQ30517010") = Request.Form("EPQ30517010")
	Session("EPQ30517020") = Request.Form("EPQ30517020")
	Session("EPQ30517030") = Request.Form("EPQ30517030")
	Session("EPQ30517040") = Request.Form("EPQ30517040")
	Session("EPQ30517050") = Request.Form("EPQ30517050")
	Session("EPQ30517060") = Request.Form("EPQ30517060")
	Session("EPQ30517070") = Request.Form("EPQ30517070")
	Session("EPQ30517080") = Request.Form("EPQ30517080")
	Session("EPQ30517090") = Request.Form("EPQ30517090")
	Session("EPQ30517100") = Request.Form("EPQ30517100")


	if Session("EPQ30517010") = "1" then 
		Session("EPQ30517010string")= ""
	end if
	if Session("EPQ30517020") = "1" then 
		Session("EPQ30517020string")= ""
	end if
	if Session("EPQ30517030") = "1" then 
		Session("EPQ30517030string")= ""
	end if
	if Session("EPQ30517040") = "1" then 
		Session("EPQ30517040string")= ""
	end if
	if Session("EPQ30517050") = "1" then 
		Session("EPQ30517050string")= ""
	end if
	if Session("EPQ30517060") = "1" then 
		Session("EPQ30517060string")= ""
	end if
	if Session("EPQ30517070") = "1" then 
		Session("EPQ30517070string")= ""
	end if
	if Session("EPQ30517080") = "1" then 
		Session("EPQ30517080string")= ""
	end if
	if Session("EPQ30517090") = "1" then 
		Session("EPQ30517090string")= ""
	end if
	if Session("EPQ30517100") = "1" then 
		Session("EPQ30517100string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30517010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="13"
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


    <form action="currentsymptoms12.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any eye symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30517050" value="1" id="EPQ30517050" <%=strEPQ30517050answer1%>>
		<label for="EPQ30517050">Blurred vision</label><br>
		<input type="checkbox" name="TEMPEPQ30517010" value="1" id="TEMPEPQ30517010" <%=strEPQ30517010answer1%>>
		<label for="EPQ30517010">Cataract</label><br>

		<input type="checkbox" name="EPQ30517010" value="1" id="EPQ30517010" <%=strEPQ30517010answer1%>>
		<label for="EPQ30517010">Change in vision</label><br>
		<input type="checkbox" name="EPQ30517040" value="1" id="EPQ30517040" <%=strEPQ30517040answer1%>>
		<label for="EPQ30517040">Double vision</label><br>
		<input type="checkbox" name="EPQ30517080" value="1" id="EPQ30517080" <%=strEPQ30517080answer1%>>
		<label for="EPQ30517080">Dry eyes</label><br>


<br><br>
		<input type="radio" name="EPQ30517100" value="1" id="EPQ30517100" <%=strEPQ30517100answer1%>>
		<label for="EPQ30517100">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30517070" value="1" id="EPQ30517070" <%=strEPQ30517070answer1%>>
		<label for="EPQ30517070">Excessive tearing or watery eyes</label><br>

		<input type="checkbox" name="EPQ30517030" value="1" id="EPQ30517030" <%=strEPQ30517030answer1%>>
		<label for="EPQ30517030">Eye injury</label><br>

		<input type="checkbox" name="EPQ30517020" value="1" id="EPQ30517020" <%=strEPQ30517020answer1%>>
		<label for="EPQ30517020">Pain in eyes</label><br>
		<input type="checkbox" name="EPQ30517060" value="1" id="EPQ30517060" <%=strEPQ30517060answer1%>>
		<label for="EPQ30517060">Redness</label><br>
		<input type="checkbox" name="EPQ30517090" value="1" id="EPQ30517090" <%=strEPQ30517090answer1%>>
		<label for="EPQ30517090">Other, specify:</label>	
	<input id="EPQ30517000" type="text" maxlength="75"  size="15" name="EPQ30517000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30517000")%>'><br>

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
