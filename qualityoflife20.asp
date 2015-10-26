
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11340000")="0" then
		strGU11340000answer0="checked"
	end if
	if Session("GU11340000")="1" then
		strGU11340000answer1="checked"
	end if
	if Session("GU11340000")="2" then
		strGU11340000answer2="checked"
	end if
	if Session("GU11340000")="3" then
		strGU11340000answer3="checked"
	end if
	if Session("GU11340000")="4" then
		strGU11340000answer4="checked"
	end if


	if Session("GU11341000")="0" then
		strGU11341000answer0="checked"
	end if
	if Session("GU11341000")="1" then
		strGU11341000answer1="checked"
	end if
	if Session("GU11341000")="2" then
		strGU11341000answer2="checked"
	end if
	if Session("GU11341000")="3" then
		strGU11341000answer3="checked"
	end if
	if Session("GU11341000")="4" then
		strGU11341000answer4="checked"
	end if


	if Session("GU11342000")="0" then
		strGU11342000answer0="checked"
	end if
	if Session("GU11342000")="1" then
		strGU11342000answer1="checked"
	end if
	if Session("GU11342000")="2" then
		strGU11342000answer2="checked"
	end if
	if Session("GU11342000")="3" then
		strGU11342000answer3="checked"
	end if
	if Session("GU11342000")="4" then
		strGU11342000answer4="checked"
	end if


	if Session("GU11343000")="0" then
		strGU11343000answer0="checked"
	end if
	if Session("GU11343000")="1" then
		strGU11343000answer1="checked"
	end if
	if Session("GU11343000")="2" then
		strGU11343000answer2="checked"
	end if
	if Session("GU11343000")="3" then
		strGU11343000answer3="checked"
	end if
	if Session("GU11343000")="4" then
		strGU11343000answer4="checked"
	end if


	if Session("GU11344000")="0" then
		strGU11344000answer0="checked"
	end if
	if Session("GU11344000")="1" then
		strGU11344000answer1="checked"
	end if
	if Session("GU11344000")="2" then
		strGU11344000answer2="checked"
	end if
	if Session("GU11344000")="3" then
		strGU11344000answer3="checked"
	end if
	if Session("GU11344000")="4" then
		strGU11344000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11340000string")= ""
	Session("GU11341000string")= ""
	Session("GU11342000string")= ""
	Session("GU11343000string")= ""
	Session("GU11344000string")= ""


	Session("GU11340000") = Request.Form("GU11340000")
	Session("GU11341000") = Request.Form("GU11341000")
	Session("GU11342000") = Request.Form("GU11342000")
	Session("GU11343000") = Request.Form("GU11343000")
	Session("GU11344000") = Request.Form("GU11344000")

	if Session("GU11340000") = "0" then 
		Session("GU11340000string")= "No problem with dripping or leaking urine during the past 4 weeks"
	end if
	if Session("GU11340000") = "1" then 
		Session("GU11340000string")= "Very small problem with dripping or leaking urine during the past 4 weeks"
	end if
	if Session("GU11340000") = "2" then 
		Session("GU11340000string")= "Small problem with dripping or leaking urine during the past 4 weeks"
	end if
	if Session("GU11340000") = "3" then 
		Session("GU11340000string")= "Moderate problem with dripping or leaking urine during the past 4 weeks"
	end if
	if Session("GU11340000") = "4" then 
		Session("GU11340000string")= "Big problem with dripping or leaking urine during the past 4 weeks"
	end if


	if Session("GU11341000") = "0" then 
		Session("GU11341000string")= "No problem with pain or burning on urination during the past 4 weeks"
	end if
	if Session("GU11341000") = "1" then 
		Session("GU11341000string")= "Very small problem with pain or burning on urination during the past 4 weeks"
	end if
	if Session("GU11341000") = "2" then 
		Session("GU11341000string")= "Small problem with pain or burning on urination during the past 4 weeks"
	end if
	if Session("GU11341000") = "3" then 
		Session("GU11341000string")= "Moderate problem with pain or burning on urination during the past 4 weeks"
	end if
	if Session("GU11341000") = "4" then 
		Session("GU11341000string")= "Big problem with pain or burning on urination during the past 4 weeks"
	end if


	if Session("GU11342000") = "0" then 
		Session("GU11342000string")= "No problem with bleeding with urination during the past 4 weeks"
	end if
	if Session("GU11342000") = "1" then 
		Session("GU11342000string")= "Very small problem with bleeding with urination during the past 4 weeks"
	end if
	if Session("GU11342000") = "2" then 
		Session("GU11342000string")= "Small problem with bleeding with urination during the past 4 weeks"
	end if
	if Session("GU11342000") = "3" then 
		Session("GU11342000string")= "Moderate problem with bleeding with urination during the past 4 weeks"
	end if
	if Session("GU11342000") = "4" then 
		Session("GU11342000string")= "Big problem with bleeding with urination during the past 4 weeks"
	end if


	if Session("GU11343000") = "0" then 
		Session("GU11343000string")= "No problem with weak urine stream or incomplete emptying during the past 4 weeks"
	end if
	if Session("GU11343000") = "1" then 
		Session("GU11343000string")= "Very small problem with weak urine stream or incomplete emptying during the past 4 weeks"
	end if
	if Session("GU11343000") = "2" then 
		Session("GU11343000string")= "Small problem with weak urine stream or incomplete emptying during the past 4 weeks"
	end if
	if Session("GU11343000") = "3" then 
		Session("GU11343000string")= "Moderate problem with weak urine stream or incomplete emptying during the past 4 weeks"
	end if
	if Session("GU11343000") = "4" then 
		Session("GU11343000string")= "Big problem with weak urine stream or incomplete emptying during the past 4 weeks"
	end if

	if Session("GU11344000") = "0" then 
		Session("GU11344000string")= "No problem with need to urinate frequently during the day during the past 4 weeks"
	end if
	if Session("GU11344000") = "1" then 
		Session("GU11344000string")= "Very small problem with need to urinate frequently during the day during the past 4 weeks"
	end if
	if Session("GU11344000") = "2" then 
		Session("GU11344000string")= "Small problem with need to urinate frequently during the day during the past 4 weeks"
	end if
	if Session("GU11344000") = "3" then 
		Session("GU11344000string")= "Moderate problem with need to urinate frequently during the day during the past 4 weeks"
	end if
	if Session("GU11344000") = "4" then 
		Session("GU11344000string")= "Big problem with need to urinate frequently during the day during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=19
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11340000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11341000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11342000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11343000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	Session("Page")="21"
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

    <form action="qualityoflife20.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2">How big a problem, if any, has each of the following been for you <b>during the last 4 weeks</b>?</th>
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
<td>		Dripping or leaking urine</td>
<td style="text-align: center;"><input type="radio" id="GU11340000" class="required" type="text" value="0" size="1" name="GU11340000" <%=strGU11340000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11340000" type="text" value="1" size="1" name="GU11340000" <%=strGU11340000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11340000" type="text" value="2" size="1" name="GU11340000" <%=strGU11340000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11340000" type="text" value="3" size="1" name="GU11340000" <%=strGU11340000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11340000" type="text" value="4" size="1" name="GU11340000" <%=strGU11340000answer4%>></td>

</tr>
<tr>
<td>		Pain or burning on urination</td>
<td style="text-align: center;"><input type="radio" id="GU11341000" class="required" type="text" value="0" size="1" name="GU11341000" <%=strGU11341000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11341000" type="text" value="1" size="1" name="GU11341000" <%=strGU11341000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11341000" type="text" value="2" size="1" name="GU11341000" <%=strGU11341000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11341000" type="text" value="3" size="1" name="GU11341000" <%=strGU11341000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11341000" type="text" value="4" size="1" name="GU11341000" <%=strGU11341000answer4%>></td>
</tr>
<tr>
<td>Bleeding with urination</td>
<td style="text-align: center;"><input type="radio" id="GU11342000" class="required" type="text" value="0" size="1" name="GU11342000" <%=strGU11342000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11342000" type="text" value="1" size="1" name="GU11342000" <%=strGU11342000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11342000" type="text" value="2" size="1" name="GU11342000" <%=strGU11342000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11342000" type="text" value="3" size="1" name="GU11342000" <%=strGU11342000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11342000" type="text" value="4" size="1" name="GU11342000" <%=strGU11342000answer4%>></td>
</tr>
<tr>
<td>Weak urine stream or incomplete emptying</td>
<td style="text-align: center;"><input type="radio" id="GU11343000" class="required" type="text" value="0" size="1" name="GU11343000" <%=strGU11343000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11343000" type="text" value="1" size="1" name="GU11343000" <%=strGU11343000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11343000" type="text" value="2" size="1" name="GU11343000" <%=strGU11343000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11343000" type="text" value="3" size="1" name="GU11343000" <%=strGU11343000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11343000" type="text" value="4" size="1" name="GU11343000" <%=strGU11343000answer4%>></td>
</tr>

<tr>
<td>Need to urinate frequently during the day</td>
<td style="text-align: center;"><input type="radio" id="GU11344000" class="required" type="text" value="0" size="1" name="GU11344000" <%=strGU11344000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11344000" type="text" value="1" size="1" name="GU11344000" <%=strGU11344000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11344000" type="text" value="2" size="1" name="GU11344000" <%=strGU11344000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11344000" type="text" value="3" size="1" name="GU11344000" <%=strGU11344000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11344000" type="text" value="4" size="1" name="GU11344000" <%=strGU11344000answer4%>></td>
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
