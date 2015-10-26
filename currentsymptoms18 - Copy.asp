
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30523000")="1" then
		strEPQ30523000answer1="checked"
	end if
	if Session("EPQ30523000")="2" then
		strEPQ30523000answer2="checked"
	end if
	if Session("EPQ30523000")="3" then
		strEPQ30523000answer3="checked"
	end if
	if Session("EPQ30523000")="4" then
		strEPQ30523000answer4="checked"
	end if

	if Session("EPQ30524000")="1" then
		strEPQ30524000answer1="checked"
	end if
	if Session("EPQ30524000")="2" then
		strEPQ30524000answer2="checked"
	end if
	if Session("EPQ30524000")="3" then
		strEPQ30524000answer3="checked"
	end if
	if Session("EPQ30524000")="4" then
		strEPQ30524000answer4="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30523000string")= ""
	Session("EPQ30524000string")= ""


	Session("EPQ30523000") = Request.Form("EPQ30523000")
	Session("EPQ30524000") = Request.Form("EPQ30524000")

	if Session("EPQ30523000") = "1" then 
		Session("EPQ30523000string")= ""
	end if
	if Session("EPQ30524000") = "1" then 
		Session("EPQ30524000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		Session("Page")=17
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30522010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30522060") = "1" then 
	Session("Page")="19"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522040") = "1" then 
	Session("Page")="20"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522170") = "1" then 
	Session("Page")="21"
	Response.Redirect "currentsymptomsmaster.asp"
	end if


	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	'if Session("GU10202000")="1" then
	'	Session("Page")="29"
	'	Response.Redirect "currentsymptomsmaster.asp"
	'end if 

	if Session("GU10201000")="1" then
		Session("Page")="29"
		Response.Redirect "currentsymptomsmaster.asp"
	end if 

	end if
	end if


	Session("Page")="22"
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
    <form action="currentsymptoms18.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      How often do you feel nauseated?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30523000" value="1" id="EPQ305230001" class="required" <%=strEPQ30523000answer1%>>
		<label for="EPQ305230001">Rarely</label><br>
		<input type="radio" name="EPQ30523000" value="2" id="EPQ305230002" <%=strEPQ30523000answer2%>>
		<label for="EPQ305230002">Occasionally</label><br>
		<input type="radio" name="EPQ30523000" value="3" id="EPQ305230003" <%=strEPQ30523000answer3%>>
		<label for="EPQ305230003">Frequently</label><br>
		<input type="radio" name="EPQ30523000" value="4" id="EPQ305230004" <%=strEPQ30523000answer4%>>
		<label for="EPQ305230004">Almost constantly</label><br>

	</div><!-- [ /#AnswerBox] -->
  </legend>
	<fieldset>
    <legend class="QuestionBox">
      How severe is your nausea typically?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30524000" value="1" id="EPQ305240001" class="required" <%=strEPQ30524000answer1%>>
		<label for="EPQ305240001">Slight</label><br>
		<input type="radio" name="EPQ30524000" value="2" id="EPQ305240002" <%=strEPQ30524000answer2%>>
		<label for="EPQ305240002">Moderate</label><br>
		<input type="radio" name="EPQ30524000" value="3" id="EPQ305240003" <%=strEPQ30524000answer3%>>
		<label for="EPQ305240003">Severe</label><br>
		<input type="radio" name="EPQ30524000" value="4" id="EPQ305240004" <%=strEPQ30524000answer4%>>
		<label for="EPQ305240004">Very severe</label><br>

	</div><!-- [ /#AnswerBox] -->
  </legend>

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
