
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11332000")="0" then
		strGU11332000answer0="checked"
	end if
	if Session("GU11332000")="1" then
		strGU11332000answer1="checked"
	end if
	if Session("GU11332000")="2" then
		strGU11332000answer2="checked"
	end if
	if Session("GU11332000")="3" then
		strGU11332000answer3="checked"
	end if
	if Session("GU11332000")="4" then
		strGU11332000answer4="checked"
	end if

	if Session("GU11332000")="99" then
		strGU11332000answer99="checked"
	end if


	if Session("GU11333000")="0" then
		strGU11333000answer0="checked"
	end if
	if Session("GU11333000")="1" then
		strGU11333000answer1="checked"
	end if
	if Session("GU11333000")="2" then
		strGU11333000answer2="checked"
	end if
	if Session("GU11333000")="3" then
		strGU11333000answer3="checked"
	end if
	if Session("GU11333000")="4" then
		strGU11333000answer4="checked"
	end if

	if Session("GU11333000")="99" then
		strGU11333000answer99="checked"
	end if

	if Session("GU11334000")="0" then
		strGU11334000answer0="checked"
	end if
	if Session("GU11334000")="1" then
		strGU11334000answer1="checked"
	end if
	if Session("GU11334000")="2" then
		strGU11334000answer2="checked"
	end if
	if Session("GU11334000")="3" then
		strGU11334000answer3="checked"
	end if
	if Session("GU11334000")="4" then
		strGU11334000answer4="checked"
	end if

	if Session("GU11334000")="99" then
		strGU11334000answer99="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11332000string")= ""
	Session("GU11333000string")= ""
	Session("GU11334000string")= ""


	Session("GU11332000") = Request.Form("GU11332000")
	Session("GU11333000") = Request.Form("GU11333000")
	Session("GU11334000") = Request.Form("GU11334000")




	if Session("GU11332000") = "0" then 
		Session("GU11332000string")= "No problem with level of sexual desire during the past 4 weeks"
	end if
	if Session("GU11332000") = "1" then 
		Session("GU11332000string")= "Very small problem with level of sexual desire during the past 4 weeks"
	end if
	if Session("GU11332000") = "2" then 
		Session("GU11332000string")= "Small problem with level of sexual desire during the past 4 weeks"
	end if
	if Session("GU11332000") = "3" then 
		Session("GU11332000string")= "Moderate problem with level of sexual desire during the past 4 weeks"
	end if
	if Session("GU11332000") = "4" then 
		Session("GU11332000string")= "Big problem with level of sexual desire during the past 4 weeks"
	end if
	if Session("GU11332000") = "99" then 
		Session("GU11332000string")= "Prefer not to answer level of sexual desire during the past 4 weeks"
	end if


	if Session("GU11333000") = "0" then 
		Session("GU11333000string")= "No problem with ability to have intercourse during the past 4 weeks"
	end if
	if Session("GU11333000") = "1" then 
		Session("GU11333000string")= "Very small problem with ability to have intercourse during the past 4 weeks"
	end if
	if Session("GU11333000") = "2" then 
		Session("GU11333000string")= "Small problem with ability to have intercourse during the past 4 weeks"
	end if
	if Session("GU11333000") = "3" then 
		Session("GU11333000string")= "Moderate problem with ability to have intercourse during the past 4 weeks"
	end if
	if Session("GU11333000") = "4" then 
		Session("GU11333000string")= "Big problem with ability to have intercourse during the past 4 weeks"
	end if
	if Session("GU11333000") = "99" then 
		Session("GU11333000string")= "Prefer not to answer ability to have intercourse during the past 4 weeks"
	end if



	if Session("GU11334000") = "0" then 
		Session("GU11334000string")= "No problem with ability to reach orgasm during the past 4 weeks"
	end if
	if Session("GU11334000") = "1" then 
		Session("GU11334000string")= "Very small problem with ability to reach orgasm during the past 4 weeks"
	end if
	if Session("GU11334000") = "2" then 
		Session("GU11334000string")= "Small problem with ability to reach orgasm during the past 4 weeks"
	end if
	if Session("GU11334000") = "3" then 
		Session("GU11334000string")= "Moderate problem with ability to reach orgasm during the past 4 weeks"
	end if
	if Session("GU11334000") = "4" then 
		Session("GU11334000string")= "Big problem with ability to reach orgasm during the past 4 weeks"
	end if
	if Session("GU11334000") = "99" then 
		Session("GU11334000string")= "Prefer not to answer ability to reach orgasm during the past 4 weeks"
	end if



end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=15
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11332000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11333000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11334000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11333000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	Session("Page")="17"

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

    <form action="qualityoflife16.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th rowspan="2">Prefer not to answer</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		Your level of sexual desire</td>
<td style="text-align: center;"><input type="radio" id="GU11332000" class="required" type="text" value="0" size="1" name="GU11332000" <%=strGU11332000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11332000" type="text" value="1" size="1" name="GU11332000" <%=strGU11332000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11332000" type="text" value="2" size="1" name="GU11332000" <%=strGU11332000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11332000" type="text" value="3" size="1" name="GU11332000" <%=strGU11332000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11332000" type="text" value="4" size="1" name="GU11332000" <%=strGU11332000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11332000" type="text" value="99" size="1" name="GU11332000" <%=strGU11332000answer99%>></td>
</tr>
<tr>
<td>		Your ability to have intercourse</td>
<td style="text-align: center;"><input type="radio" id="GU11333000" class="required" type="text" value="0" size="1" name="GU11333000" <%=strGU11333000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11333000" type="text" value="1" size="1" name="GU11333000" <%=strGU11333000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11333000" type="text" value="2" size="1" name="GU11333000" <%=strGU11333000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11333000" type="text" value="3" size="1" name="GU11333000" <%=strGU11333000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11333000" type="text" value="4" size="1" name="GU11333000" <%=strGU11333000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11333000" type="text" value="99" size="1" name="GU11333000" <%=strGU11333000answer99%>></td>
</tr>
<tr>
<td>Your ability to reach orgasm</td>
<td style="text-align: center;"><input type="radio" id="GU11334000" class="required" type="text" value="0" size="1" name="GU11334000" <%=strGU11334000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11334000" type="text" value="1" size="1" name="GU11334000" <%=strGU11334000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11334000" type="text" value="2" size="1" name="GU11334000" <%=strGU11334000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11334000" type="text" value="3" size="1" name="GU11334000" <%=strGU11334000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11334000" type="text" value="4" size="1" name="GU11334000" <%=strGU11334000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU11334000" type="text" value="99" size="1" name="GU11334000" <%=strGU11334000answer99%>></td>
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
