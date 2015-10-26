
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11323000")="0" then
		strGI11323000answer1="checked"
	end if
	if Session("GI11323000")="1" then
		strGI11323000answer2="checked"
	end if
	if Session("GI11323000")="2" then
		strGI11323000answer3="checked"
	end if
	if Session("GI11323000")="3" then
		strGI11323000answer4="checked"
	end if
	if Session("GI11323000")="4" then
		strGI11323000answer5="checked"
	end if

	if Session("GI11324000")="0" then
		strGI11324000answer1="checked"
	end if
	if Session("GI11324000")="1" then
		strGI11324000answer2="checked"
	end if
	if Session("GI11324000")="2" then
		strGI11324000answer3="checked"
	end if
	if Session("GI11324000")="3" then
		strGI11324000answer4="checked"
	end if
	if Session("GI11324000")="4" then
		strGI11324000answer5="checked"
	end if

	if Session("GI11325000")="0" then
		strGI11325000answer1="checked"
	end if
	if Session("GI11325000")="1" then
		strGI11325000answer2="checked"
	end if
	if Session("GI11325000")="2" then
		strGI11325000answer3="checked"
	end if
	if Session("GI11325000")="3" then
		strGI11325000answer4="checked"
	end if
	if Session("GI11325000")="4" then
		strGI11325000answer5="checked"
	end if

	if Session("GI11326000")="0" then
		strGI11326000answer1="checked"
	end if
	if Session("GI11326000")="1" then
		strGI11326000answer2="checked"
	end if
	if Session("GI11326000")="2" then
		strGI11326000answer3="checked"
	end if
	if Session("GI11326000")="3" then
		strGI11326000answer4="checked"
	end if
	if Session("GI11326000")="4" then
		strGI11326000answer5="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GI11323000string")= ""
	Session("GI11324000string")= ""
	Session("GI11325000string")= ""
	Session("GI11326000string")= ""
	
	Session("GI11323000") = Request.Form("GI11323000")
	Session("GI11324000") = Request.Form("GI11324000")
	Session("GI11325000") = Request.Form("GI11325000")
	Session("GI11326000") = Request.Form("GI11326000")
	

	if Session("GI11323000") = "0" then 
		Session("GI11323000string")= "Not at all"
	end if
	if Session("GI11323000") = "1" then 
		Session("GI11323000string")= "A little bit"
	end if
	if Session("GI11323000") = "2" then 
		Session("GI11323000string")= "Some what"
	end if
	if Session("GI11323000") = "3" then 
		Session("GI11323000string")= "Quite a bit"
	end if
	if Session("GI11323000") = "4" then 
		Session("GI11323000string")= "Very much"
	end if

	if Session("GI11324000") = "0" then 
		Session("GI11324000string")= "Not at all"
	end if
	if Session("GI11324000") = "1" then 
		Session("GI11324000string")= "A little bit"
	end if
	if Session("GI11324000") = "2" then 
		Session("GI11324000string")= "Some what"
	end if
	if Session("GI11324000") = "3" then 
		Session("GI11324000string")= "Quite a bit"
	end if
	if Session("GI11324000") = "4" then 
		Session("GI11324000string")= "Very much"
	end if

	if Session("GI11325000") = "0" then 
		Session("GI11325000string")= "Not at all"
	end if
	if Session("GI11325000") = "1" then 
		Session("GI11325000string")= "A little bit"
	end if
	if Session("GI11325000") = "2" then 
		Session("GI11325000string")= "Some what"
	end if
	if Session("GI11325000") = "3" then 
		Session("GI11325000string")= "Quite a bit"
	end if
	if Session("GI11325000") = "4" then 
		Session("GI11325000string")= "Very much"
	end if

	if Session("GI11326000") = "0" then 
		Session("GI11326000string")= "Not at all"
	end if
	if Session("GI11326000") = "1" then 
		Session("GI11326000string")= "A little bit"
	end if
	if Session("GI11326000") = "2" then 
		Session("GI11326000string")= "Some what"
	end if
	if Session("GI11326000") = "3" then 
		Session("GI11326000string")= "Quite a bit"
	end if
	if Session("GI11326000") = "4" then 
		Session("GI11326000string")= "Very much"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=30
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="32"
	Response.Redirect "qualityoflifemaster.asp"

	 <!--#include file="autosavefunction.asp"-->
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
	Below is a list of statements that other people with your illness have said are important.
	</div>
<br>

    <form action="qualityoflife31.asp" method="post" id="formQuestion" name="formQuestion">
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
			<tr>
				<th rowspan="2">Additional Concerns<br> Please mark
one per line to indicate your response<br> as it applies to the past 7 days.</th>
				<th rowspan="2">Not at all</th>
				<th rowspan="2">A little bit</th>
				<th rowspan="2">Some what</th>
				<th rowspan="2">Quite a bit</th>
				<th rowspan="2">Very much</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>		I have numbness or tingling in my hands</td>
<td style="text-align: center;"><input type="radio" id="GI11323000" class="required" type="text" value="0" size="1" name="GI11323000" <%=strGI11323000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11323000" type="text" value="1" size="1" name="GI11323000" <%=strGI11323000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11323000" type="text" value="2" size="1" name="GI11323000" <%=strGI11323000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11323000" type="text" value="3" size="1" name="GI11323000" <%=strGI11323000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11323000" type="text" value="4" size="1" name="GI11323000" <%=strGI11323000answer5%>></td>
</tr>
<tr>
<td>		I have numbness or tingling in my feet</td>
<td style="text-align: center;"><input type="radio" id="GI11324000" class="required" type="text" value="0" size="1" name="GI11324000" <%=strGI11324000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11324000" type="text" value="1" size="1" name="GI11324000" <%=strGI11324000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11324000" type="text" value="2" size="1" name="GI11324000" <%=strGI11324000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11324000" type="text" value="3" size="1" name="GI11324000" <%=strGI11324000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11324000" type="text" value="4" size="1" name="GI11324000" <%=strGI11324000answer5%>></td>
</tr>

<tr>
<td>		I feel discomfort in my hands</td>
<td style="text-align: center;"><input type="radio" id="GI11325000" class="required" type="text" value="0" size="1" name="GI11325000" <%=strGI11325000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11325000" type="text" value="1" size="1" name="GI11325000" <%=strGI11325000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11325000" type="text" value="2" size="1" name="GI11325000" <%=strGI11325000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11325000" type="text" value="3" size="1" name="GI11325000" <%=strGI11325000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11325000" type="text" value="4" size="1" name="GI11325000" <%=strGI11325000answer5%>></td>
</tr>

<tr>
<td>		I feel discomfort in my feet</td>
<td style="text-align: center;"><input type="radio" id="GI11326000" class="required" type="text" value="0" size="1" name="GI11326000" <%=strGI11326000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11326000" type="text" value="1" size="1" name="GI11326000" <%=strGI11326000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11326000" type="text" value="2" size="1" name="GI11326000" <%=strGI11326000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11326000" type="text" value="3" size="1" name="GI11326000" <%=strGI11326000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11326000" type="text" value="4" size="1" name="GI11326000" <%=strGI11326000answer5%>></td>
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
