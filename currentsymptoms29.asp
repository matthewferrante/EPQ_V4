
<%
Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU10508000")="0" then
		strGU10508000answer0="checked"
	end if
	if Session("GU10508000")="1" then
		strGU10508000answer1="checked"
	end if
	if Session("GU10508000")="2" then
		strGU10508000answer2="checked"
	end if
	if Session("GU10508000")="3" then
		strGU10508000answer3="checked"
	end if


	if Session("GU10509000")="0" then
		strGU10509000answer0="checked"
	end if
	if Session("GU10509000")="1" then
		strGU10509000answer1="checked"
	end if
	if Session("GU10509000")="2" then
		strGU10509000answer2="checked"
	end if
	if Session("GU10509000")="3" then
		strGU10509000answer3="checked"
	end if


	if Session("GU10510000")="0" then
		strGU10510000answer0="checked"
	end if
	if Session("GU10510000")="1" then
		strGU10510000answer1="checked"
	end if
	if Session("GU10510000")="2" then
		strGU10510000answer2="checked"
	end if
	if Session("GU10510000")="3" then
		strGU10510000answer3="checked"
	end if

	if Session("GU10511000")="0" then
		strGU10511000answer0="checked"
	end if
	if Session("GU10511000")="1" then
		strGU10511000answer1="checked"
	end if
	if Session("GU10511000")="2" then
		strGU10511000answer2="checked"
	end if
	if Session("GU10511000")="3" then
		strGU10511000answer3="checked"
	end if


	if Session("GU10512000")="0" then
		strGU10512000answer0="checked"
	end if
	if Session("GU10512000")="1" then
		strGU10512000answer1="checked"
	end if
	if Session("GU10512000")="2" then
		strGU10512000answer2="checked"
	end if
	if Session("GU10512000")="3" then
		strGU10512000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU10508000string")= ""
	Session("GU10509000string")= ""
	Session("GU10510000string")= ""
	Session("GU10511000string")= ""
	Session("GU10512000string")= ""


	Session("GU10508000") = Request.Form("GU10508000")
	Session("GU10509000") = Request.Form("GU10509000")
	Session("GU10510000") = Request.Form("GU10510000")
	Session("GU10511000") = Request.Form("GU10511000")
	Session("GU10512000") = Request.Form("GU10512000")


	if Session("GU10508000") = "0" then 
		Session("GU10508000string")= "Frequency of stools, 0-1 stools per day"
	end if
	if Session("GU10508000") = "1" then 
		Session("GU10508000string")= "Frequency of stools, 2 stools per day"
	end if
	if Session("GU10508000") = "2" then 
		Session("GU10508000string")= "Frequency of stools, 3 stools per day"
	end if
	if Session("GU10508000") = "3" then 
		Session("GU10508000string")= "Frequency of stools, 4 or more stools per day"
	end if


	if Session("GU10509000") = "0" then 
		Session("GU10509000string")= "Consistency of stools per day, all stools formed"
	end if
	if Session("GU10509000") = "1" then 
		Session("GU10509000string")= "Consistency of stools per day, stools formed and loose"
	end if
	if Session("GU10509000") = "2" then 
		Session("GU10509000string")= "Consistency of stools per day, stools loose"
	end if
	if Session("GU10509000") = "3" then 
		Session("GU10509000string")= "Consistency of stools per day, watery stools"
	end if


	if Session("GU10510000") = "0" then 
		Session("GU10510000string")= "Urgency of stools, no urgency"
	end if
	if Session("GU10510000") = "1" then 
		Session("GU10510000string")= "Urgency of stools, somewhat urgency"
	end if
	if Session("GU10510000") = "2" then 
		Session("GU10510000string")= "Urgency of stools, urgent"
	end if
	if Session("GU10510000") = "3" then 
		Session("GU10510000string")= "Urgency of stools, very urgent"
	end if


	if Session("GU10511000") = "0" then 
		Session("GU10511000string")= "No abdominal discomfort"
	end if
	if Session("GU10511000") = "1" then 
		Session("GU10511000string")= "Mild-moderate abdominal discomfort"
	end if
	if Session("GU10511000") = "2" then 
		Session("GU10511000string")= "Somewhat severe abdominal discomfort"
	end if
	if Session("GU10511000") = "3" then 
		Session("GU10511000string")= "Very severe abdominal discomfort"
	end if


	if Session("GU10512000") = "0" then 
		Session("GU10512000string")= "No hemorrhoid discomfort"
	end if
	if Session("GU10512000") = "1" then 
		Session("GU10512000string")= "Hemorrhoid discomfort requires mild treatment"
	end if
	if Session("GU10512000") = "2" then 
		Session("GU10512000string")= "Hemorrhoid discomfort requires topical medication"
	end if
	if Session("GU10512000") = "3" then 
		Session("GU10512000string")= "Hemorrhoid discomfort requires oral analgesics or narcotics for pain relief"
	end if


end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	if Session("EPQ30522170") = "1" then 
	Session("Page")="21"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522040") = "1" then 
	Session("Page")="20"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522060") = "1" then 
	Session("Page")="19"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522010") = "1" then 
	Session("Page")="18"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	Session("Page")="17"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"



end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU10508000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10509000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10510000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10511000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	if Session("GU10503000")="1" then
		Session("Page")="22"
		Response.Redirect "currentsymptomsmaster.asp"
	else
		Session("Page")="22"
		Response.Redirect "currentsymptomsmaster.asp"
	end if

	end if
	end if

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


    <form action="currentsymptoms29.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<div id="SpecialNote">
Select the statement that best describes your situation during the past 7 days.
</div>
<br>

	<fieldset>
   <legend class="QuestionBox">
  Frequency of stools per day:
  </legend>
	<div class="QuestionAnswersBox">
		<span class="column1">
<input type="radio" id="GU10508000" class="required" type="text" value="0" size="1" name="GU10508000" <%=strGU10508000answer0%>>0-1 Stools per day<br>
<input type="radio" id="GU10508000" type="text" value="1" size="1" name="GU10508000" <%=strGU10508000answer1%>>2 Stools per day<br>
</span>
		<span class="column2">
<input type="radio" id="GU10508000" type="text" value="2" size="1" name="GU10508000" <%=strGU10508000answer2%>>3 Stools per day<br>
<input type="radio" id="GU10508000" type="text" value="3" size="1" name="GU10508000" <%=strGU10508000answer3%>>4 or more stools per day<br>
</span>
	</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset>
    <legend class="QuestionBox">
      Consistency of stools per day:
	  </legend>
	<div class="QuestionAnswersBox">

		<span class="column1">
<input type="radio" id="GU10509000" class="required" type="text" value="0" size="1" name="GU10509000" <%=strGU10509000answer0%>>All stools formed<br>
<input type="radio" id="GU10509000" type="text" value="1" size="1" name="GU10509000" <%=strGU10509000answer1%>>Stools formed and loose<br>
</span>
<span class="column2">
<input type="radio" id="GU10509000" type="text" value="2" size="1" name="GU10509000" <%=strGU10509000answer2%>>Stools loose<br>
<input type="radio" id="GU10509000" type="text" value="3" size="1" name="GU10509000" <%=strGU10509000answer3%>>Watery stools<br>
</span>
	</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset>
    <legend class="QuestionBox">
      Urgency of stools:
	  </legend>
	<div class="QuestionAnswersBox">

<span class="column1">
<input type="radio" id="GU10510000" class="required" type="text" value="0" size="1" name="GU10510000" <%=strGU10510000answer0%>>No urgency<br>
<input type="radio" id="GU10510000" type="text" value="1" size="1" name="GU10510000" <%=strGU10510000answer1%>>Somewhat urgent<br>
</span>
<span class="column2">
<input type="radio" id="GU10510000" type="text" value="2" size="1" name="GU10510000" <%=strGU10510000answer2%>>Urgent<br>
<input type="radio" id="GU10510000" type="text" value="3" size="1" name="GU10510000" <%=strGU10510000answer3%>>Very urgent<br>
</span>
	</div><!-- [ /#AnswerBox] -->
	</fieldset>



	<fieldset>
    <legend class="QuestionBox">
      Abdominal discomfort:
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
<input type="radio" id="GU10511000" class="required" type="text" value="0" size="1" name="GU10511000" <%=strGU10511000answer0%>>No discomfort<br>
<input type="radio" id="GU10511000" type="text" value="1" size="1" name="GU10511000" <%=strGU10511000answer1%>>Mild-moderate discomfort<br>
</span>
<span class="column2">
<input type="radio" id="GU10511000" type="text" value="2" size="1" name="GU10511000" <%=strGU10511000answer2%>>Somewhat severe discomfort<br>
<input type="radio" id="GU10511000" type="text" value="3" size="1" name="GU10511000" <%=strGU10511000answer3%>>Very severe discomfort<br>
</span>
	</div><!-- [ /#AnswerBox] -->
	</fieldset>


	<fieldset>
    <legend class="QuestionBox">
      Hemorrhoid discomfort:
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
<input type="radio" id="GU10512000" class="required" type="text" value="0" size="1" name="GU10512000" <%=strGU10512000answer0%>>No discomfort<br>
<input type="radio" id="GU10512000" type="text" value="1" size="1" name="GU10512000" <%=strGU10512000answer1%>>Requires mild treatment (i.e., tucks, sitzbaths)<br>
</span>
<span class="column2">
<input type="radio" id="GU10512000" type="text" value="2" size="1" name="GU10512000" <%=strGU10512000answer2%>>Requires topical medication (i.e., Preparation H, etc.)<br>
<input type="radio" id="GU10512000" type="text" value="3" size="1" name="GU10512000" <%=strGU10512000answer3%>>Requires oral analgesics or narcotics for pain relief<br>
</span>
	</div><!-- [ /#AnswerBox] -->
	</fieldset>






</div><!-- [ /#formBlock ] -->
	
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
