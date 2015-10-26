
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11358000")="0" then
		strGU11358000answer0="checked"
	end if
	if Session("GU11358000")="1" then
		strGU11358000answer1="checked"
	end if
	if Session("GU11358000")="2" then
		strGU11358000answer2="checked"
	end if
	if Session("GU11358000")="3" then
		strGU11358000answer3="checked"
	end if
	if Session("GU11358000")="4" then
		strGU11358000answer4="checked"
	end if


	if Session("GU11359000")="0" then
		strGU11359000answer0="checked"
	end if
	if Session("GU11359000")="1" then
		strGU11359000answer1="checked"
	end if
	if Session("GU11359000")="2" then
		strGU11359000answer2="checked"
	end if
	if Session("GU11359000")="3" then
		strGU11359000answer3="checked"
	end if
	if Session("GU11359000")="4" then
		strGU11359000answer4="checked"
	end if


	if Session("GU11360000")="0" then
		strGU11360000answer0="checked"
	end if
	if Session("GU11360000")="1" then
		strGU11360000answer1="checked"
	end if
	if Session("GU11360000")="2" then
		strGU11360000answer2="checked"
	end if
	if Session("GU11360000")="3" then
		strGU11360000answer3="checked"
	end if
	if Session("GU11360000")="4" then
		strGU11360000answer4="checked"
	end if


	if Session("GU11361000")="0" then
		strGU11361000answer0="checked"
	end if
	if Session("GU11361000")="1" then
		strGU11361000answer1="checked"
	end if
	if Session("GU11361000")="2" then
		strGU11361000answer2="checked"
	end if
	if Session("GU11361000")="3" then
		strGU11361000answer3="checked"
	end if
	if Session("GU11361000")="4" then
		strGU11361000answer4="checked"
	end if


	if Session("GU11362000")="0" then
		strGU11362000answer0="checked"
	end if
	if Session("GU11362000")="1" then
		strGU11362000answer1="checked"
	end if
	if Session("GU11362000")="2" then
		strGU11362000answer2="checked"
	end if
	if Session("GU11362000")="3" then
		strGU11362000answer3="checked"
	end if
	if Session("GU11362000")="4" then
		strGU11362000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11358000string")= ""
	Session("GU11359000string")= ""
	Session("GU11360000string")= ""
	Session("GU11361000string")= ""
	Session("GU11362000string")= ""


	Session("GU11358000") = Request.Form("GU11358000")
	Session("GU11359000") = Request.Form("GU11359000")
	Session("GU11360000") = Request.Form("GU11360000")
	Session("GU11361000") = Request.Form("GU11361000")
	Session("GU11362000") = Request.Form("GU11362000")


	if Session("GU11358000") = "0" then 
		Session("GU11358000string")= "No problem with hot flashes during the past 4 weeks"
	end if
	if Session("GU11358000") = "1" then 
		Session("GU11358000string")= "Very small problem with hot flashes during the past 4 weeks"
	end if
	if Session("GU11358000") = "2" then 
		Session("GU11358000string")= "Small problem with hot flashes during the past 4 weeks"
	end if
	if Session("GU11358000") = "3" then 
		Session("GU11358000string")= "Moderate problem with hot flashes during the past 4 weeks"
	end if
	if Session("GU11358000") = "4" then 
		Session("GU11358000string")= "Big problem with hot flashes during the past 4 weeks"
	end if


	if Session("GU11359000") = "0" then 
		Session("GU11359000string")= "No problem with breast tenderness/enlargement during the past 4 weeks"
	end if
	if Session("GU11359000") = "1" then 
		Session("GU11359000string")= "Very small problem with breast tenderness/enlargement during the past 4 weeks"
	end if
	if Session("GU11359000") = "2" then 
		Session("GU11359000string")= "Small problem with breast tenderness/enlargement during the past 4 weeks"
	end if
	if Session("GU11359000") = "3" then 
		Session("GU11359000string")= "Moderate problem with breast tenderness/enlargement during the past 4 weeks"
	end if
	if Session("GU11359000") = "4" then 
		Session("GU11359000string")= "Big problem with breast tenderness/enlargement during the past 4 weeks"
	end if


	if Session("GU11360000") = "0" then 
		Session("GU11360000string")= "No problem with feeling depressed during the past 4 weeks"
	end if
	if Session("GU11360000") = "1" then 
		Session("GU11360000string")= "Very small problem with feeling depressed during the past 4 weeks"
	end if
	if Session("GU11360000") = "2" then 
		Session("GU11360000string")= "Small problem with feeling depressed during the past 4 weeks"
	end if
	if Session("GU11360000") = "3" then 
		Session("GU11360000string")= "Moderate problem with feeling depressed during the past 4 weeks"
	end if
	if Session("GU11360000") = "4" then 
		Session("GU11360000string")= "Big problem with feeling depressed during the past 4 weeks"
	end if


	if Session("GU11361000") = "0" then 
		Session("GU11361000string")= "No problem with lack of energy during the past 4 weeks"
	end if
	if Session("GU11361000") = "1" then 
		Session("GU11361000string")= "Very small problem with lack of energy during the past 4 weeks"
	end if
	if Session("GU11361000") = "2" then 
		Session("GU11361000string")= "Small problem with lack of energy during the past 4 weeks"
	end if
	if Session("GU11361000") = "3" then 
		Session("GU11361000string")= "Moderate problem with lack of energy during the past 4 weeks"
	end if
	if Session("GU11361000") = "4" then 
		Session("GU11361000string")= "Big problem with lack of energy during the past 4 weeks"
	end if

	if Session("GU11362000") = "0" then 
		Session("GU11362000string")= "No problem with change in body weight during the past 4 weeks"
	end if
	if Session("GU11362000") = "1" then 
		Session("GU11362000string")= "Very small problem with change in body weight during the past 4 weeks"
	end if
	if Session("GU11362000") = "2" then 
		Session("GU11362000string")= "Small problem with change in body weight during the past 4 weeks"
	end if
	if Session("GU11362000") = "3" then 
		Session("GU11362000string")= "Moderate problem with change in body weight during the past 4 weeks"
	end if
	if Session("GU11362000") = "4" then 
		Session("GU11362000string")= "Big problem with change in body weight during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10202000")="1" then
		Session("Page")="25"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if
end if
end if



		Session("ReturnID")="1"
		Session("Page")=26
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11358000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11359000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11360000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11361000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if



	Session("Page")="0"
	Session("QOLSectionStatus")="Completed"


	if Session("DemographicsSectionStatus")="Completed" AND Session("VisitBackgroundSectionStatus")="Completed" AND 	Session("PersonalHistoryCancerSectionStatus")=	"Completed" AND	Session("PastMedicalHistorySectionStatus")="Completed" AND Session("PastSurgicalHistorySectionStatus")="Completed" AND Session("CancerHistoryFamilySectionStatus")="Completed" AND Session("FamilyHistoryCancerSectionStatus")="Completed" AND Session("FamilyHistorySectionStatus")="Completed" AND Session("CancerScreeningSectionStatus")="Completed" AND Session("CurrentSymptomsSectionStatus")="Completed" AND Session("CancerRiskSectionStatus")="Completed" AND Session("PsychosocialSectionStatus")="Completed" AND Session("QOLSectionStatus")="Completed" then
	Session("SurveyStatus")="Completed"
end if

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
	<b>HORMONAL FUNCTION</b><br>The next section is about your hormonal function. Please consider <b>ONLY THE LAST 4 WEEKS</b>.
	</div>

    <form action="qualityoflife27.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2">How big a problem <b>during the last 4 weeks</b>, if any, has each of the following been for you? </th>
				<th rowspan="2">No problem</th>
				<th rowspan="2">Very small problem</th>
				<th rowspan="2">Small problem</th>
				<th rowspan="2">Moderate problem</th>
				<th rowspan="2">Big problem</th>

			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		Hot flashes</td>
<td style="text-align: center;"><input type="radio" id="GU11358000" class="required" type="text" value="0" size="1" name="GU11358000" <%=strGU11358000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11358000" type="text" value="1" size="1" name="GU11358000" <%=strGU11358000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11358000" type="text" value="2" size="1" name="GU11358000" <%=strGU11358000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11358000" type="text" value="3" size="1" name="GU11358000" <%=strGU11358000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11358000" type="text" value="4" size="1" name="GU11358000" <%=strGU11358000answer4%>></td>

</tr>
<tr>
<td>		Breast tenderness or enlargement</td>
<td style="text-align: center;"><input type="radio" id="GU11359000" class="required" type="text" value="0" size="1" name="GU11359000" <%=strGU11359000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11359000" type="text" value="1" size="1" name="GU11359000" <%=strGU11359000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11359000" type="text" value="2" size="1" name="GU11359000" <%=strGU11359000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11359000" type="text" value="3" size="1" name="GU11359000" <%=strGU11359000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11359000" type="text" value="4" size="1" name="GU11359000" <%=strGU11359000answer4%>></td>
</tr>
<tr>
<td>Feeling depressed</td>
<td style="text-align: center;"><input type="radio" id="GU11360000" class="required" type="text" value="0" size="1" name="GU11360000" <%=strGU11360000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11360000" type="text" value="1" size="1" name="GU11360000" <%=strGU11360000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11360000" type="text" value="2" size="1" name="GU11360000" <%=strGU11360000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11360000" type="text" value="3" size="1" name="GU11360000" <%=strGU11360000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11360000" type="text" value="4" size="1" name="GU11360000" <%=strGU11360000answer4%>></td>
</tr>
<tr>
<td>Lack of energy</td>
<td style="text-align: center;"><input type="radio" id="GU11361000" class="required" type="text" value="0" size="1" name="GU11361000" <%=strGU11361000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11361000" type="text" value="1" size="1" name="GU11361000" <%=strGU11361000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11361000" type="text" value="2" size="1" name="GU11361000" <%=strGU11361000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11361000" type="text" value="3" size="1" name="GU11361000" <%=strGU11361000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11361000" type="text" value="4" size="1" name="GU11361000" <%=strGU11361000answer4%>></td>
</tr>

<tr>
<td>Change in body weight</td>
<td style="text-align: center;"><input type="radio" id="GU11362000" class="required" type="text" value="0" size="1" name="GU11362000" <%=strGU11362000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11362000" type="text" value="1" size="1" name="GU11362000" <%=strGU11362000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11362000" type="text" value="2" size="1" name="GU11362000" <%=strGU11362000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11362000" type="text" value="3" size="1" name="GU11362000" <%=strGU11362000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11362000" type="text" value="4" size="1" name="GU11362000" <%=strGU11362000answer4%>></td>
</tr>

</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
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
