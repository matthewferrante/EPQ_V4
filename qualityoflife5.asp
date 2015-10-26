
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31310000")="1" then
		strEPQ31310000answer1="checked"
	end if
	if Session("EPQ31310000")="2" then
		strEPQ31310000answer2="checked"
	end if
	if Session("EPQ31310000")="3" then
		strEPQ31310000answer3="checked"
	end if
	if Session("EPQ31310000")="4" then
		strEPQ31310000answer4="checked"
	end if
	if Session("EPQ31310000")="5" then
		strEPQ31310000answer5="checked"
	end if
	if Session("EPQ31310000")="6" then
		strEPQ31310000answer6="checked"
	end if

	if Session("EPQ31311000")="1" then
		strEPQ31311000answer1="checked"
	end if
	if Session("EPQ31311000")="2" then
		strEPQ31311000answer2="checked"
	end if
	if Session("EPQ31311000")="3" then
		strEPQ31311000answer3="checked"
	end if
	if Session("EPQ31311000")="4" then
		strEPQ31311000answer4="checked"
	end if
	if Session("EPQ31311000")="5" then
		strEPQ31311000answer5="checked"
	end if
	if Session("EPQ31311000")="6" then
		strEPQ31311000answer6="checked"
	end if

	if Session("EPQ31312000")="1" then
		strEPQ31312000answer1="checked"
	end if
	if Session("EPQ31312000")="2" then
		strEPQ31312000answer2="checked"
	end if
	if Session("EPQ31312000")="3" then
		strEPQ31312000answer3="checked"
	end if
	if Session("EPQ31312000")="4" then
		strEPQ31312000answer4="checked"
	end if
	if Session("EPQ31312000")="5" then
		strEPQ31312000answer5="checked"
	end if
	if Session("EPQ31312000")="6" then
		strEPQ31312000answer6="checked"
	end if

	if Session("EPQ31313000")="1" then
		strEPQ31313000answer1="checked"
	end if
	if Session("EPQ31313000")="2" then
		strEPQ31313000answer2="checked"
	end if
	if Session("EPQ31313000")="3" then
		strEPQ31313000answer3="checked"
	end if
	if Session("EPQ31313000")="4" then
		strEPQ31313000answer4="checked"
	end if
	if Session("EPQ31313000")="5" then
		strEPQ31313000answer5="checked"
	end if
	if Session("EPQ31313000")="6" then
		strEPQ31313000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31310000string")= ""
	Session("EPQ31311000string")= ""
	Session("EPQ31312000string")= ""
	Session("EPQ31313000string")= ""


	Session("EPQ31310000") = Request.Form("EPQ31310000")
	Session("EPQ31311000") = Request.Form("EPQ31311000")
	Session("EPQ31312000") = Request.Form("EPQ31312000")
	Session("EPQ31313000") = Request.Form("EPQ31313000")

	if Session("EPQ31310000") = "1" then 
		Session("EPQ31310000string")= "All calm"
	end if
	if Session("EPQ31310000") = "2" then 
		Session("EPQ31310000string")= "Mostly calm"
	end if
	if Session("EPQ31310000") = "3" then 
		Session("EPQ31310000string")= "Good bit calm"
	end if
	if Session("EPQ31310000") = "4" then 
		Session("EPQ31310000string")= "Some calm"
	end if
	if Session("EPQ31310000") = "5" then 
		Session("EPQ31310000string")= "Little calm"
	end if
	if Session("EPQ31310000") = "6" then 
		Session("EPQ31310000string")= "No calm"
	end if

	if Session("EPQ31311000") = "1" then 
		Session("EPQ31311000string")= "All energy"
	end if
	if Session("EPQ31311000") = "2" then 
		Session("EPQ31311000string")= "Mostly energy"
	end if
	if Session("EPQ31311000") = "3" then 
		Session("EPQ31311000string")= "Good bit energy"
	end if
	if Session("EPQ31311000") = "4" then 
		Session("EPQ31311000string")= "Some energy"
	end if
	if Session("EPQ31311000") = "5" then 
		Session("EPQ31311000string")= "Little energy"
	end if
	if Session("EPQ31311000") = "6" then 
		Session("EPQ31311000string")= "No energy"
	end if

	if Session("EPQ31312000") = "1" then 
		Session("EPQ31312000string")= "All blue"
	end if
	if Session("EPQ31312000") = "2" then 
		Session("EPQ31312000string")= "Mostly blue"
	end if
	if Session("EPQ31312000") = "3" then 
		Session("EPQ31312000string")= "Good bit blue"
	end if
	if Session("EPQ31312000") = "4" then 
		Session("EPQ31312000string")= "Some blue"
	end if
	if Session("EPQ31312000") = "5" then 
		Session("EPQ31312000string")= "Little blue"
	end if
	if Session("EPQ31312000") = "6" then 
		Session("EPQ31312000string")= "No blue"
	end if

	if Session("EPQ31313000") = "1" then 
		Session("EPQ31313000string")= "All interfered"
	end if
	if Session("EPQ31313000") = "2" then 
		Session("EPQ31313000string")= "Mostly interfered"
	end if
	if Session("EPQ31313000") = "3" then 
		Session("EPQ31313000string")= "Good bit interfered"
	end if
	if Session("EPQ31313000") = "4" then 
		Session("EPQ31313000string")= "Some interfered"
	end if
	if Session("EPQ31313000") = "5" then 
		Session("EPQ31313000string")= "Little interfered"
	end if
	if Session("EPQ31313000") = "6" then 
		Session("EPQ31313000string")= "No interference"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=4
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31310000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31311000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31312000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31313000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("GI10202000")="1" then
	Session("Page")="28"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10201000")="1" then
	Session("Page")="28"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10203000")="1" then
	Session("Page")="0"
	Session("SurveyStatus")="Completed"
	Response.Redirect "qualityoflifemaster.asp"
	 <!--#include file="autosavefunction.asp"-->
end if


if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10202000")="1" then
		Session("Page")="6"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if
	if Session("GU10201000")="1" then
		Session("Page")="18"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if


end if
end if

if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10201000")="1" then
		Session("Page")="36"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10203000")="1" then
		Session("Page")="36"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10202000")="1" OR Session("HM10206000")="1" then
		Session("Page")="38"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10204000")="1" OR Session("HM10207000")="1" then
		Session("Page")="42"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

end if
end if


	Session("Page")="0"
	Session("QOLSectionStatus")="Completed"


'HERE

	if Session("DemographicsSectionStatus")="Completed" AND Session("VisitBackgroundSectionStatus")="Completed" AND 	Session("PersonalHistoryCancerSectionStatus")=	"Completed" AND	Session("PastMedicalHistorySectionStatus")="Completed" AND Session("PastSurgicalHistorySectionStatus")="Completed" AND Session("CancerHistoryFamilySectionStatus")="Completed" AND Session("FamilyHistoryCancerSectionStatus")="Completed" AND Session("FamilyHistorySectionStatus")="Completed" AND Session("CancerScreeningSectionStatus")="Completed" AND Session("CurrentSymptomsSectionStatus")="Completed" AND Session("CancerRiskSectionStatus")="Completed" AND Session("PsychosocialSectionStatus")="Completed" AND Session("QOLSectionStatus")="Completed" then
	Session("SurveyStatus")="Completed"
end if

	Session("SurveyStatus")="Completed"
	Session("SurveyStatus")="Completed"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "qualityoflifemaster.asp"
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
	<div id="SpecialNote">
	These questions are about how you feel and how things have been with you during the past 4 weeks.  For each question, please give the one answer that comes closest to the way you have been feeling.
	</div>
<br>

    <form action="qualityoflife5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">How much of the time during the past 4 weeks ...</th>
				<th rowspan="2">All of the time</th>
				<th rowspan="2">Most of the time</th>
				<th rowspan="2">A good bit of the time</th>
				<th rowspan="2">Some of the time</th>
				<th rowspan="2">A little of the time</th>
				<th rowspan="2">None of the time</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		Have you felt calm and peaceful?</td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" class="required" type="text" value="1" size="1" name="EPQ31310000" <%=strEPQ31310000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" type="text" value="2" size="1" name="EPQ31310000" <%=strEPQ31310000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" type="text" value="3" size="1" name="EPQ31310000" <%=strEPQ31310000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" type="text" value="4" size="1" name="EPQ31310000" <%=strEPQ31310000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" type="text" value="5" size="1" name="EPQ31310000" <%=strEPQ31310000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31310000" type="text" value="6" size="1" name="EPQ31310000" <%=strEPQ31310000answer6%>></td>
</tr>
<tr>
<td>		Did you have a lot of energy?</td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" class="required" type="text" value="1" size="1" name="EPQ31311000" <%=strEPQ31311000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" type="text" value="2" size="1" name="EPQ31311000" <%=strEPQ31311000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" type="text" value="3" size="1" name="EPQ31311000" <%=strEPQ31311000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" type="text" value="4" size="1" name="EPQ31311000" <%=strEPQ31311000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" type="text" value="5" size="1" name="EPQ31311000" <%=strEPQ31311000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31311000" type="text" value="6" size="1" name="EPQ31311000" <%=strEPQ31311000answer6%>></td>
</tr>

<tr>
<td>Have you felt downhearted and blue?</td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" class="required" type="text" value="1" size="1" name="EPQ31312000" <%=strEPQ31312000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" type="text" value="2" size="1" name="EPQ31312000" <%=strEPQ31312000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" type="text" value="3" size="1" name="EPQ31312000" <%=strEPQ31312000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" type="text" value="4" size="1" name="EPQ31312000" <%=strEPQ31312000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" type="text" value="5" size="1" name="EPQ31312000" <%=strEPQ31312000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31312000" type="text" value="6" size="1" name="EPQ31312000" <%=strEPQ31312000answer6%>></td>
</tr>

</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
</fieldset>



	<fieldset>
  <legend class='QuestionBox'>
	  During the past 4 weeks, how much of the time has your physical health or emotional problems interfered with your social activities (like visiting friends, relatives, etc.)?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31313000" value="1" id="EPQ313130001" class="required" <%=strEPQ31313000answer1%>>
		<label for="EPQ313130001">All of the time</label><br>
		<input type="radio" name="EPQ31313000" value="2" id="EPQ313130002" <%=strEPQ31313000answer2%>>
		<label for="EPQ313130002">Most of the time</label><br>
		<input type="radio" name="EPQ31313000" value="4" id="EPQ313130003" <%=strEPQ31313000answer4%>>
		<label for="EPQ313130003">Some of the time</label><br>
		<input type="radio" name="EPQ31313000" value="5" id="EPQ313130004" <%=strEPQ31313000answer5%>>
		<label for="EPQ313130004">A little of the time</label><br>

		<input type="radio" name="EPQ31313000" value="6" id="EPQ313130005" <%=strEPQ31313000answer6%>>
		<label for="EPQ313130005">None of the time</label><br>
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
