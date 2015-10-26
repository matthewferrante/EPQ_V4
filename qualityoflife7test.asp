
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11307000")="0" then
		strGU11307000answer0="checked"
	end if
	if Session("GU11307000")="1" then
		strGU11307000answer1="checked"
	end if
	if Session("GU11307000")="2" then
		strGU11307000answer2="checked"
	end if
	if Session("GU11307000")="3" then
		strGU11307000answer3="checked"
	end if
	if Session("GU11307000")="4" then
		strGU11307000answer4="checked"
	end if


	if Session("GU11308000")="0" then
		strGU11308000answer0="checked"
	end if
	if Session("GU11308000")="1" then
		strGU11308000answer1="checked"
	end if
	if Session("GU11308000")="2" then
		strGU11308000answer2="checked"
	end if
	if Session("GU11308000")="3" then
		strGU11308000answer3="checked"
	end if
	if Session("GU11308000")="4" then
		strGU11308000answer4="checked"
	end if


	if Session("GU11309000")="0" then
		strGU11309000answer0="checked"
	end if
	if Session("GU11309000")="1" then
		strGU11309000answer1="checked"
	end if
	if Session("GU11309000")="2" then
		strGU11309000answer2="checked"
	end if
	if Session("GU11309000")="3" then
		strGU11309000answer3="checked"
	end if
	if Session("GU11309000")="4" then
		strGU11309000answer4="checked"
	end if


	if Session("GU11310000")="0" then
		strGU11310000answer0="checked"
	end if
	if Session("GU11310000")="1" then
		strGU11310000answer1="checked"
	end if
	if Session("GU11310000")="2" then
		strGU11310000answer2="checked"
	end if
	if Session("GU11310000")="3" then
		strGU11310000answer3="checked"
	end if
	if Session("GU11310000")="4" then
		strGU11310000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11307000string")= ""
	Session("GU11308000string")= ""
	Session("GU11309000string")= ""
	Session("GU11310000string")= ""


	Session("GU11307000") = Request.Form("GU11307000")
	Session("GU11308000") = Request.Form("GU11308000")
	Session("GU11309000") = Request.Form("GU11309000")
	Session("GU11310000") = Request.Form("GU11310000")

	if Session("GU11307000") = "0" then 
		Session("GU11307000string")= "No problem with urine leakage causing skin irritation during the past 4 weeks"
	end if
	if Session("GU11307000") = "1" then 
		Session("GU11307000string")= "Very small problem with urine leakage causing skin irritation during the past 4 weeks"
	end if
	if Session("GU11307000") = "2" then 
		Session("GU11307000string")= "Small problem with urine leakage causing skin irritation during the past 4 weeks"
	end if
	if Session("GU11307000") = "3" then 
		Session("GU11307000string")= "Moderate problem with urine leakage causing skin irritation during the past 4 weeks"
	end if
	if Session("GU11307000") = "4" then 
		Session("GU11307000string")= "Big problem with urine leakage causing skin irritation during the past 4 weeks"
	end if


	if Session("GU11308000") = "0" then 
		Session("GU11308000string")= "No problem with urine leakage causing body odor during the past 4 weeks"
	end if
	if Session("GU11308000") = "1" then 
		Session("GU11308000string")= "Very small problem with urine leakage causing body odor during the past 4 weeks"
	end if
	if Session("GU11308000") = "2" then 
		Session("GU11308000string")= "Small problem with urine leakage causing body odor during the past 4 weeks"
	end if
	if Session("GU11308000") = "3" then 
		Session("GU11308000string")= "Moderate problem with urine leakage causing body odor during the past 4 weeks"
	end if
	if Session("GU11308000") = "4" then 
		Session("GU11308000string")= "Big problem with urine leakage causing body odor during the past 4 weeks"
	end if


	if Session("GU11309000") = "0" then 
		Session("GU11309000string")= "No problem with blood in urine during the past 4 weeks"
	end if
	if Session("GU11309000") = "1" then 
		Session("GU11309000string")= "Very small problem with blood in urine during the past 4 weeks"
	end if
	if Session("GU11309000") = "2" then 
		Session("GU11309000string")= "Small problem with blood in urine during the past 4 weeks"
	end if
	if Session("GU11309000") = "3" then 
		Session("GU11309000string")= "Moderate problem with blood in urine during the past 4 weeks"
	end if
	if Session("GU11309000") = "4" then 
		Session("GU11309000string")= "Big problem with blood in urine during the past 4 weeks"
	end if


	if Session("GU11310000") = "0" then 
		Session("GU11310000string")= "No problem with pain related to urination, stoma or catheterization during the past 4 weeks"
	end if
	if Session("GU11310000") = "1" then 
		Session("GU11310000string")= "Very small problem with pain related to urination, stoma or catheterization during the past 4 weeks"
	end if
	if Session("GU11310000") = "2" then 
		Session("GU11310000string")= "Small problem with pain related to urination, stoma or catheterization during the past 4 weeks"
	end if
	if Session("GU11310000") = "3" then 
		Session("GU11310000string")= "Moderate problem with pain related to urination, stoma or catheterization during the past 4 weeks"
	end if
	if Session("GU11310000") = "4" then 
		Session("GU11310000string")= "Big problem with pain related to urination, stoma or catheterization during the past 4 weeks"
	end if



end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="6b"
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11307000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11308000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11309000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11310000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="8"
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
<br>

    <form action="qualityoflife7.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th rowspan="2">How big a problem, if any, has each of the following been for you <b>during the past 4 weeks?</b></th>
				<th rowspan="2">No Problem</th>
				<th rowspan="2">Very Small Problem</th>
				<th rowspan="2">Small Problem</th>
				<th rowspan="2">Moderate Problem</th>
				<th rowspan="2">Big Problem</th>

			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		Urine leakage causing skin irritation</td>
<td style="text-align: center;"><input type="radio" id="GU11307000" class="required" type="text" value="0" size="1" name="GU11307000" <%=strGU11307000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11307000" type="text" value="1" size="1" name="GU11307000" <%=strGU11307000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11307000" type="text" value="2" size="1" name="GU11307000" <%=strGU11307000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11307000" type="text" value="3" size="1" name="GU11307000" <%=strGU11307000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11307000" type="text" value="4" size="1" name="GU11307000" <%=strGU11307000answer4%>></td>

</tr>
<tr>
<td>		Urine leakage causing body odor</td>
<td style="text-align: center;"><input type="radio" id="GU11308000" class="required" type="text" value="0" size="1" name="GU11308000" <%=strGU11308000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11308000" type="text" value="1" size="1" name="GU11308000" <%=strGU11308000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11308000" type="text" value="2" size="1" name="GU11308000" <%=strGU11308000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11308000" type="text" value="3" size="1" name="GU11308000" <%=strGU11308000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11308000" type="text" value="4" size="1" name="GU11308000" <%=strGU11308000answer4%>></td>

<tr>
<td>Blood in the urine</td>
<td style="text-align: center;"><input type="radio" id="GU11309000" class="required" type="text" value="0" size="1" name="GU11309000" <%=strGU11309000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11309000" type="text" value="1" size="1" name="GU11309000" <%=strGU11309000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11309000" type="text" value="2" size="1" name="GU11309000" <%=strGU11309000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11309000" type="text" value="3" size="1" name="GU11309000" <%=strGU11309000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11309000" type="text" value="4" size="1" name="GU11309000" <%=strGU11309000answer4%>></td>

<tr>
<td>Pain related to urination, stoma or catheterization
</td>
<td style="text-align: center;"><input type="radio" id="GU11310000" class="required" type="text" value="0" size="1" name="GU11310000" <%=strGU11310000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11310000" type="text" value="1" size="1" name="GU11310000" <%=strGU11310000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11310000" type="text" value="2" size="1" name="GU11310000" <%=strGU11310000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11310000" type="text" value="3" size="1" name="GU11310000" <%=strGU11310000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11310000" type="text" value="4" size="1" name="GU11310000" <%=strGU11310000answer4%>></td>

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
