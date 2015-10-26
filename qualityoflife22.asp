
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11346000")="0" then
		strGU11346000answer0="checked"
	end if
	if Session("GU11346000")="1" then
		strGU11346000answer1="checked"
	end if
	if Session("GU11346000")="2" then
		strGU11346000answer2="checked"
	end if
	if Session("GU11346000")="3" then
		strGU11346000answer3="checked"
	end if
	if Session("GU11346000")="4" then
		strGU11346000answer4="checked"
	end if


	if Session("GU11347000")="0" then
		strGU11347000answer0="checked"
	end if
	if Session("GU11347000")="1" then
		strGU11347000answer1="checked"
	end if
	if Session("GU11347000")="2" then
		strGU11347000answer2="checked"
	end if
	if Session("GU11347000")="3" then
		strGU11347000answer3="checked"
	end if
	if Session("GU11347000")="4" then
		strGU11347000answer4="checked"
	end if


	if Session("GU11348000")="0" then
		strGU11348000answer0="checked"
	end if
	if Session("GU11348000")="1" then
		strGU11348000answer1="checked"
	end if
	if Session("GU11348000")="2" then
		strGU11348000answer2="checked"
	end if
	if Session("GU11348000")="3" then
		strGU11348000answer3="checked"
	end if
	if Session("GU11348000")="4" then
		strGU11348000answer4="checked"
	end if


	if Session("GU11349000")="0" then
		strGU11349000answer0="checked"
	end if
	if Session("GU11349000")="1" then
		strGU11349000answer1="checked"
	end if
	if Session("GU11349000")="2" then
		strGU11349000answer2="checked"
	end if
	if Session("GU11349000")="3" then
		strGU11349000answer3="checked"
	end if
	if Session("GU11349000")="4" then
		strGU11349000answer4="checked"
	end if

	if Session("GU11350000")="0" then
		strGU11350000answer0="checked"
	end if
	if Session("GU11350000")="1" then
		strGU11350000answer1="checked"
	end if
	if Session("GU11350000")="2" then
		strGU11350000answer2="checked"
	end if
	if Session("GU11350000")="3" then
		strGU11350000answer3="checked"
	end if
	if Session("GU11350000")="4" then
		strGU11350000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11346000string")= ""
	Session("GU11347000string")= ""
	Session("GU11348000string")= ""
	Session("GU11349000string")= ""
	Session("GU11350000string")= ""


	Session("GU11346000") = Request.Form("GU11346000")
	Session("GU11347000") = Request.Form("GU11347000")
	Session("GU11348000") = Request.Form("GU11348000")
	Session("GU11349000") = Request.Form("GU11349000")
	Session("GU11350000") = Request.Form("GU11350000")

	if Session("GU11346000") = "0" then 
		Session("GU11346000string")= "No problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11346000") = "1" then 
		Session("GU11346000string")= "Very small problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11346000") = "2" then 
		Session("GU11346000string")= "Small problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11346000") = "3" then 
		Session("GU11346000string")= "Moderate problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11346000") = "4" then 
		Session("GU11346000string")= "Big problem with urgency to have a bowel movement during the past 4 weeks"
	end if


	if Session("GU11347000") = "0" then 
		Session("GU11347000string")= "No problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11347000") = "1" then 
		Session("GU11347000string")= "Very small problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11347000") = "2" then 
		Session("GU11347000string")= "Small problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11347000") = "3" then 
		Session("GU11347000string")= "Moderate problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11347000") = "4" then 
		Session("GU11347000string")= "Big problem with increased frequency of bowel movements during the past 4 weeks"
	end if


	if Session("GU11348000") = "0" then 
		Session("GU11348000string")= "No problem with losing control of your stools during the past 4 weeks"
	end if
	if Session("GU11348000") = "1" then 
		Session("GU11348000string")= "Very small problem with losing control of your stools during the past 4 weeks"
	end if
	if Session("GU11348000") = "2" then 
		Session("GU11348000string")= "Small problem with losing control of your stools during the past 4 weeks"
	end if
	if Session("GU11348000") = "3" then 
		Session("GU11348000string")= "Moderate problem with losing control of your stools during the past 4 weeks"
	end if
	if Session("GU11348000") = "4" then 
		Session("GU11348000string")= "Big problem with losing control of your stools during the past 4 weeks"
	end if


	if Session("GU11349000") = "0" then 
		Session("GU11349000string")= "No problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11349000") = "1" then 
		Session("GU11349000string")= "Very small problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11349000") = "2" then 
		Session("GU11349000string")= "Small problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11349000") = "3" then 
		Session("GU11349000string")= "Moderate problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11349000") = "4" then 
		Session("GU11349000string")= "Big problem with bloody stools during the past 4 weeks"
	end if

	if Session("GU11350000") = "0" then 
		Session("GU11350000string")= "No problem with Abdominal/Pelvic/Rectal pain during the past 4 weeks"
	end if
	if Session("GU11350000") = "1" then 
		Session("GU11350000string")= "Very small problem with Abdominal/Pelvic/Rectal pain during the past 4 weeks"
	end if
	if Session("GU11350000") = "3" then 
		Session("GU11350000string")= "Small problem with Abdominal/Pelvic/Rectal pain during the past 4 weeks"
	end if
	if Session("GU11350000") = "4" then 
		Session("GU11350000string")= "Moderate problem with Abdominal/Pelvic/Rectal pain during the past 4 weeks"
	end if
	if Session("GU11350000") = "5" then 
		Session("GU11350000string")= "Big problem with Abdominal/Pelvic/Rectal pain during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=21
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11346000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11347000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11348000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11349000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if



if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10202000")="1" then
		Session("Page")="24"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if
end if
end if


	Session("Page")="23"
	Session("QOLSectionStatus")="Completed"
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
	<b>BOWEL HABITS</b><br>The next section is about your bowel habits and abdominal pain.
<br>
Please consider <b>ONLY THE LAST 4 WEEKS</b>.
	</div>

    <form action="qualityoflife22.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2">How big a problem, if any, has each of the following been for you?</th>
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
<td>		Urgency to have a bowel movement</td>
<td style="text-align: center;"><input type="radio" id="GU11346000" class="required" type="text" value="0" size="1" name="GU11346000" <%=strGU11346000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11346000" type="text" value="1" size="1" name="GU11346000" <%=strGU11346000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11346000" type="text" value="2" size="1" name="GU11346000" <%=strGU11346000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11346000" type="text" value="3" size="1" name="GU11346000" <%=strGU11346000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11346000" type="text" value="4" size="1" name="GU11346000" <%=strGU11346000answer4%>></td>

</tr>
<tr>
<td>		Increased frequency of bowel movements</td>
<td style="text-align: center;"><input type="radio" id="GU11347000" class="required" type="text" value="0" size="1" name="GU11347000" <%=strGU11347000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11347000" type="text" value="1" size="1" name="GU11347000" <%=strGU11347000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11347000" type="text" value="2" size="1" name="GU11347000" <%=strGU11347000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11347000" type="text" value="3" size="1" name="GU11347000" <%=strGU11347000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11347000" type="text" value="4" size="1" name="GU11347000" <%=strGU11347000answer4%>></td>
</tr>
<tr>
<td>Losing control of your stools</td>
<td style="text-align: center;"><input type="radio" id="GU11348000" class="required" type="text" value="0" size="1" name="GU11348000" <%=strGU11348000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11348000" type="text" value="1" size="1" name="GU11348000" <%=strGU11348000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11348000" type="text" value="2" size="1" name="GU11348000" <%=strGU11348000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11348000" type="text" value="3" size="1" name="GU11348000" <%=strGU11348000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11348000" type="text" value="4" size="1" name="GU11348000" <%=strGU11348000answer4%>></td>
</tr>
<tr>
<td>Bloody stools</td>
<td style="text-align: center;"><input type="radio" id="GU11349000" class="required" type="text" value="0" size="1" name="GU11349000" <%=strGU11349000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11349000" type="text" value="1" size="1" name="GU11349000" <%=strGU11349000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11349000" type="text" value="2" size="1" name="GU11349000" <%=strGU11349000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11349000" type="text" value="3" size="1" name="GU11349000" <%=strGU11349000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11349000" type="text" value="4" size="1" name="GU11349000" <%=strGU11349000answer4%>></td>
</tr>

<tr>
<td>Abdominal, pelvic, or rectal pain</td>
<td style="text-align: center;"><input type="radio" id="GU11350000" class="required" type="text" value="0" size="1" name="GU11350000" <%=strGU11350000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11350000" type="text" value="1" size="1" name="GU11350000" <%=strGU11350000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11350000" type="text" value="2" size="1" name="GU11350000" <%=strGU11350000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11350000" type="text" value="3" size="1" name="GU11350000" <%=strGU11350000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11350000" type="text" value="4" size="1" name="GU11350000" <%=strGU11350000answer4%>></td>
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
