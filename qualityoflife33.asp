
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11334000")="1" then
		strGI11334000answer1="checked"
	end if
	if Session("GI11334000")="2" then
		strGI11334000answer2="checked"
	end if
	if Session("GI11334000")="3" then
		strGI11334000answer3="checked"
	end if
	if Session("GI11334000")="4" then
		strGI11334000answer4="checked"
	end if

	if Session("GI11335000")="1" then
		strGI11335000answer1="checked"
	end if
	if Session("GI11335000")="2" then
		strGI11335000answer2="checked"
	end if
	if Session("GI11335000")="3" then
		strGI11335000answer3="checked"
	end if
	if Session("GI11335000")="4" then
		strGI11335000answer4="checked"
	end if

	if Session("GI11336000")="1" then
		strGI11336000answer1="checked"
	end if
	if Session("GI11336000")="2" then
		strGI11336000answer2="checked"
	end if
	if Session("GI11336000")="3" then
		strGI11336000answer3="checked"
	end if
	if Session("GI11336000")="4" then
		strGI11336000answer4="checked"
	end if

	if Session("GI11337000")="1" then
		strGI11337000answer1="checked"
	end if
	if Session("GI11337000")="2" then
		strGI11337000answer2="checked"
	end if
	if Session("GI11337000")="3" then
		strGI11337000answer3="checked"
	end if
	if Session("GI11337000")="4" then
		strGI11337000answer4="checked"
	end if

	if Session("GI11338000")="1" then
		strGI11338000answer1="checked"
	end if
	if Session("GI11338000")="2" then
		strGI11338000answer2="checked"
	end if
	if Session("GI11338000")="3" then
		strGI11338000answer3="checked"
	end if
	if Session("GI11338000")="4" then
		strGI11338000answer4="checked"
	end if

	if Session("GI11339000")="1" then
		strGI11339000answer1="checked"
	end if
	if Session("GI11339000")="2" then
		strGI11339000answer2="checked"
	end if
	if Session("GI11339000")="3" then
		strGI11339000answer3="checked"
	end if
	if Session("GI11339000")="4" then
		strGI11339000answer4="checked"
	end if

	if Session("GI11340000")="1" then
		strGI11340000answer1="checked"
	end if
	if Session("GI11340000")="2" then
		strGI11340000answer2="checked"
	end if
	if Session("GI11340000")="3" then
		strGI11340000answer3="checked"
	end if
	if Session("GI11340000")="4" then
		strGI11340000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GI11334000string")= ""
	Session("GI11335000string")= ""
	Session("GI11336000string")= ""
	Session("GI11337000string")= ""
	Session("GI11338000string")= ""
	Session("GI11339000string")= ""
	Session("GI11340000string")= ""


	Session("GI11334000") = Request.Form("GI11334000")
	Session("GI11335000") = Request.Form("GI11335000")
	Session("GI11336000") = Request.Form("GI11336000")
	Session("GI11337000") = Request.Form("GI11337000")
	Session("GI11338000") = Request.Form("GI11338000")
	Session("GI11339000") = Request.Form("GI11339000")
	Session("GI11340000") = Request.Form("GI11340000")

	if Session("GI11334000") = "1" then 
		Session("GI11334000string")= "Most of the time"
	end if
	if Session("GI11334000") = "2" then 
		Session("GI11334000string")= "Some of the time"
	end if
	if Session("GI11334000") = "3" then 
		Session("GI11334000string")= "A little of the time"
	end if
	if Session("GI11334000") = "4" then 
		Session("GI11334000string")= "None of the time"
	end if

	if Session("GI11335000") = "1" then 
		Session("GI11335000string")= "Most of the time"
	end if
	if Session("GI11335000") = "2" then 
		Session("GI11335000string")= "Some of the time"
	end if
	if Session("GI11335000") = "3" then 
		Session("GI11335000string")= "A little of the time"
	end if
	if Session("GI11335000") = "4" then 
		Session("GI11335000string")= "None of the time"
	end if

	if Session("GI11336000") = "1" then 
		Session("GI11336000string")= "Most of the time"
	end if
	if Session("GI11336000") = "2" then 
		Session("GI11336000string")= "Some of the time"
	end if
	if Session("GI11336000") = "3" then 
		Session("GI11336000string")= "A little of the time"
	end if
	if Session("GI11336000") = "4" then 
		Session("GI11336000string")= "None of the time"
	end if

	if Session("GI11337000") = "1" then 
		Session("GI11337000string")= "Most of the time"
	end if
	if Session("GI11337000") = "2" then 
		Session("GI11337000string")= "Some of the time"
	end if
	if Session("GI11337000") = "3" then 
		Session("GI11337000string")= "A little of the time"
	end if
	if Session("GI11337000") = "4" then 
		Session("GI11337000string")= "None of the time"
	end if

	if Session("GI11338000") = "1" then 
		Session("GI11338000string")= "Most of the time"
	end if
	if Session("GI11338000") = "2" then 
		Session("GI11338000string")= "Some of the time"
	end if
	if Session("GI11338000") = "3" then 
		Session("GI11338000string")= "A little of the time"
	end if
	if Session("GI11338000") = "4" then 
		Session("GI11338000string")= "None of the time"
	end if

	if Session("GI11339000") = "1" then 
		Session("GI11339000string")= "Most of the time"
	end if
	if Session("GI11339000") = "2" then 
		Session("GI11339000string")= "Some of the time"
	end if
	if Session("GI11339000") = "3" then 
		Session("GI11339000string")= "A little of the time"
	end if
	if Session("GI11339000") = "4" then 
		Session("GI11339000string")= "None of the time"
	end if

	if Session("GI11340000") = "1" then 
		Session("GI11340000string")= "Most of the time"
	end if
	if Session("GI11340000") = "2" then 
		Session("GI11340000string")= "Some of the time"
	end if
	if Session("GI11340000") = "3" then 
		Session("GI11340000string")= "A little of the time"
	end if
	if Session("GI11340000") = "4" then 
		Session("GI11340000string")= "None of the time"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=32
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="34"
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

<br>

    <form action="qualityoflife33.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

	<div id="SpecialNote">
	For each of the items, please indicate how much of the time the issue is a concern for you <u>due to accidental bowel leakage.</u>
	</div>

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
				<th rowspan="2">Due to accidental bowel leakage:</th>
				<th rowspan="2"><b>Most</b> of the time</th>
				<th rowspan="2"><b>Some</b> of the time</th>
				<th rowspan="2"><b>A little</b> of the time</th>
				<th rowspan="2"><b>None</b> of the time</th>
			</tr>

		   <tbody>
		</div>
		<div class="cell1">



<tr>
<td>		It is important to plan my schedule (daily activities) around my bowel pattern</td>
<td style="text-align: center;"><input type="radio" id="GI11334000" class="required" type="text" value="1" size="1" name="GI11334000" <%=strGI11334000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11334000" type="text" value="2" size="1" name="GI11334000" <%=strGI11334000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11334000" type="text" value="3" size="1" name="GI11334000" <%=strGI11334000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11334000" type="text" value="4" size="1" name="GI11334000" <%=strGI11334000answer4%>></td>

</tr>
<tr>
<td>		I avoid traveling</td>
<td style="text-align: center;"><input type="radio" id="GI11335000" class="required" type="text" value="1" size="1" name="GI11335000" <%=strGI11335000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11335000" type="text" value="2" size="1" name="GI11335000" <%=strGI11335000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11335000" type="text" value="3" size="1" name="GI11335000" <%=strGI11335000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11335000" type="text" value="4" size="1" name="GI11335000" <%=strGI11335000answer4%>></td>
</tr>

<tr>
<td>		I worry about not being able to get to the toilet in time</td>
<td style="text-align: center;"><input type="radio" id="GI11336000" class="required" type="text" value="1" size="1" name="GI11336000" <%=strGI11336000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11336000" type="text" value="2" size="1" name="GI11336000" <%=strGI11336000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11336000" type="text" value="3" size="1" name="GI11336000" <%=strGI11336000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11336000" type="text" value="4" size="1" name="GI11336000" <%=strGI11336000answer4%>></td>
</tr>

<tr>
<td>		I feel I have no control over my bowels</td>
<td style="text-align: center;"><input type="radio" id="GI11337000" class="required" type="text" value="1" size="1" name="GI11337000" <%=strGI11337000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11337000" type="text" value="2" size="1" name="GI11337000" <%=strGI11337000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11337000" type="text" value="3" size="1" name="GI11337000" <%=strGI11337000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11337000" type="text" value="4" size="1" name="GI11337000" <%=strGI11337000answer4%>></td>
</tr>
<tr>
<td>		I can't hold my bowel movement long enough to get to the bathroom</td>
<td style="text-align: center;"><input type="radio" id="GI11338000" class="required" type="text" value="1" size="1" name="GI11338000" <%=strGI11338000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11338000" type="text" value="2" size="1" name="GI11338000" <%=strGI11338000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11338000" type="text" value="3" size="1" name="GI11338000" <%=strGI11338000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11338000" type="text" value="4" size="1" name="GI11338000" <%=strGI11338000answer4%>></td>
</tr>
<tr>
<td>		I leak stool without even knowing it</td>
<td style="text-align: center;"><input type="radio" id="GI11339000" class="required" type="text" value="1" size="1" name="GI11339000" <%=strGI11339000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11339000" type="text" value="2" size="1" name="GI11339000" <%=strGI11339000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11339000" type="text" value="3" size="1" name="GI11339000" <%=strGI11339000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11339000" type="text" value="4" size="1" name="GI11339000" <%=strGI11339000answer4%>></td>
</tr>
<tr>
<td>		I try to prevent bowel accidents by staying very near a bathroom</td>
<td style="text-align: center;"><input type="radio" id="GI11340000" class="required" type="text" value="1" size="1" name="GI11340000" <%=strGI11340000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11340000" type="text" value="2" size="1" name="GI11340000" <%=strGI11340000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11340000" type="text" value="3" size="1" name="GI11340000" <%=strGI11340000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11340000" type="text" value="4" size="1" name="GI11340000" <%=strGI11340000answer4%>></td>
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
