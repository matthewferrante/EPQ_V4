
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11319000")="0" then
		strGU11319000answer0="checked"
	end if
	if Session("GU11319000")="1" then
		strGU11319000answer1="checked"
	end if
	if Session("GU11319000")="2" then
		strGU11319000answer2="checked"
	end if
	if Session("GU11319000")="3" then
		strGU11319000answer3="checked"
	end if
	if Session("GU11319000")="4" then
		strGU11319000answer4="checked"
	end if


	if Session("GU11320000")="0" then
		strGU11320000answer0="checked"
	end if
	if Session("GU11320000")="1" then
		strGU11320000answer1="checked"
	end if
	if Session("GU11320000")="2" then
		strGU11320000answer2="checked"
	end if
	if Session("GU11320000")="3" then
		strGU11320000answer3="checked"
	end if
	if Session("GU11320000")="4" then
		strGU11320000answer4="checked"
	end if


	if Session("GU11321000")="0" then
		strGU11321000answer0="checked"
	end if
	if Session("GU11321000")="1" then
		strGU11321000answer1="checked"
	end if
	if Session("GU11321000")="2" then
		strGU11321000answer2="checked"
	end if
	if Session("GU11321000")="3" then
		strGU11321000answer3="checked"
	end if
	if Session("GU11321000")="4" then
		strGU11321000answer4="checked"
	end if

	if Session("GU11322000")="0" then
		strGU11322000answer0="checked"
	end if
	if Session("GU11322000")="1" then
		strGU11322000answer1="checked"
	end if
	if Session("GU11322000")="2" then
		strGU11322000answer2="checked"
	end if
	if Session("GU11322000")="3" then
		strGU11322000answer3="checked"
	end if
	if Session("GU11322000")="4" then
		strGU11322000answer4="checked"
	end if


	if Session("GU11323000")="0" then
		strGU11323000answer0="checked"
	end if
	if Session("GU11323000")="1" then
		strGU11323000answer1="checked"
	end if
	if Session("GU11323000")="2" then
		strGU11323000answer2="checked"
	end if
	if Session("GU11323000")="3" then
		strGU11323000answer3="checked"
	end if
	if Session("GU11323000")="4" then
		strGU11323000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11319000string")= ""
	Session("GU11320000string")= ""
	Session("GU11321000string")= ""
	Session("GU11322000string")= ""
	Session("GU11323000string")= ""


	Session("GU11319000") = Request.Form("GU11319000")
	Session("GU11320000") = Request.Form("GU11320000")
	Session("GU11321000") = Request.Form("GU11321000")
	Session("GU11322000") = Request.Form("GU11322000")
	Session("GU11323000") = Request.Form("GU11323000")

	if Session("GU11319000") = "0" then 
		Session("GU11319000string")= "No problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11319000") = "1" then 
		Session("GU11319000string")= "Very small problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11319000") = "2" then 
		Session("GU11319000string")= "Small problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11319000") = "3" then 
		Session("GU11319000string")= "Moderate problem with urgency to have a bowel movement during the past 4 weeks"
	end if
	if Session("GU11319000") = "4" then 
		Session("GU11319000string")= "Big problem with urgency to have a bowel movement during the past 4 weeks"
	end if


	if Session("GU11320000") = "0" then 
		Session("GU11320000string")= "No problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11320000") = "1" then 
		Session("GU11320000string")= "Very small problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11320000") = "2" then 
		Session("GU11320000string")= "Small problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11320000") = "3" then 
		Session("GU11320000string")= "Moderate problem with increased frequency of bowel movements during the past 4 weeks"
	end if
	if Session("GU11320000") = "4" then 
		Session("GU11320000string")= "Big problem with increased frequency of bowel movements during the past 4 weeks"
	end if


	if Session("GU11321000") = "0" then 
		Session("GU11321000string")= "No problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11321000") = "1" then 
		Session("GU11321000string")= "Very small problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11321000") = "2" then 
		Session("GU11321000string")= "Small problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11321000") = "3" then 
		Session("GU11321000string")= "Moderate problem with bloody stools during the past 4 weeks"
	end if
	if Session("GU11321000") = "4" then 
		Session("GU11321000string")= "Big problem with bloody stools during the past 4 weeks"
	end if


	if Session("GU11322000") = "0" then 
		Session("GU11322000string")= "No problem with rectal/abdominal/pelvic pain during the past 4 weeks"
	end if
	if Session("GU11322000") = "1" then 
		Session("GU11322000string")= "Very small problem with rectal/abdominal/pelvic pain during the past 4 weeks"
	end if
	if Session("GU11322000") = "2" then 
		Session("GU11322000string")= "Small problem with rectal/abdominal/pelvic pain during the past 4 weeks"
	end if
	if Session("GU11322000") = "3" then 
		Session("GU11322000string")= "Moderate problem with rectal/abdominal/pelvic pain during the past 4 weeks"
	end if
	if Session("GU11322000") = "4" then 
		Session("GU11322000string")= "Big problem with rectal/abdominal/pelvic pain during the past 4 weeks"
	end if

	if Session("GU11323000") = "0" then 
		Session("GU11323000string")= "No problem with constipation during the past 4 weeks"
	end if
	if Session("GU11323000") = "1" then 
		Session("GU11323000string")= "Very small problem with constipation during the past 4 weeks"
	end if
	if Session("GU11323000") = "2" then 
		Session("GU11323000string")= "Small problem with constipation during the past 4 weeks"
	end if
	if Session("GU11323000") = "3" then 
		Session("GU11323000string")= "Moderate problem with constipation during the past 4 weeks"
	end if
	if Session("GU11323000") = "4" then 
		Session("GU11323000string")= "Big problem with constipation during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11319000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11320000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11321000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11322000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	Session("Page")="13"
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

    <form action="qualityoflife12.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2">How big a problem, if any, has each of the following been for you <b>during the past 4 weeks</b>?</th>
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
<td style="text-align: center;"><input type="radio" id="GU11319000" class="required" type="text" value="0" size="1" name="GU11319000" <%=strGU11319000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11319000" type="text" value="1" size="1" name="GU11319000" <%=strGU11319000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11319000" type="text" value="2" size="1" name="GU11319000" <%=strGU11319000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11319000" type="text" value="3" size="1" name="GU11319000" <%=strGU11319000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11319000" type="text" value="4" size="1" name="GU11319000" <%=strGU11319000answer4%>></td>

</tr>
<tr>
<td>		Increased frequency of bowel movements</td>
<td style="text-align: center;"><input type="radio" id="GU11320000" class="required" type="text" value="0" size="1" name="GU11320000" <%=strGU11320000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11320000" type="text" value="1" size="1" name="GU11320000" <%=strGU11320000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11320000" type="text" value="2" size="1" name="GU11320000" <%=strGU11320000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11320000" type="text" value="3" size="1" name="GU11320000" <%=strGU11320000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11320000" type="text" value="4" size="1" name="GU11320000" <%=strGU11320000answer4%>></td>
</tr>
<tr>
<td>Bloody stools</td>
<td style="text-align: center;"><input type="radio" id="GU11321000" class="required" type="text" value="0" size="1" name="GU11321000" <%=strGU11321000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11321000" type="text" value="1" size="1" name="GU11321000" <%=strGU11321000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11321000" type="text" value="2" size="1" name="GU11321000" <%=strGU11321000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11321000" type="text" value="3" size="1" name="GU11321000" <%=strGU11321000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11321000" type="text" value="4" size="1" name="GU11321000" <%=strGU11321000answer4%>></td>
</tr>
<tr>
<td>Rectal, abdominal, or pelvic pain</td>
<td style="text-align: center;"><input type="radio" id="GU11322000" class="required" type="text" value="0" size="1" name="GU11322000" <%=strGU11322000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11322000" type="text" value="1" size="1" name="GU11322000" <%=strGU11322000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11322000" type="text" value="2" size="1" name="GU11322000" <%=strGU11322000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11322000" type="text" value="3" size="1" name="GU11322000" <%=strGU11322000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11322000" type="text" value="4" size="1" name="GU11322000" <%=strGU11322000answer4%>></td>
</tr>

<tr>
<td>Constipation</td>
<td style="text-align: center;"><input type="radio" id="GU11323000" class="required" type="text" value="0" size="1" name="GU11323000" <%=strGU11323000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11323000" type="text" value="1" size="1" name="GU11323000" <%=strGU11323000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11323000" type="text" value="2" size="1" name="GU11323000" <%=strGU11323000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11323000" type="text" value="3" size="1" name="GU11323000" <%=strGU11323000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11323000" type="text" value="4" size="1" name="GU11323000" <%=strGU11323000answer4%>></td>
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
