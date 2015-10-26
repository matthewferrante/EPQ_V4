
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11341000")="1" then
		strGI11341000answer1="checked"
	end if
	if Session("GI11341000")="2" then
		strGI11341000answer2="checked"
	end if
	if Session("GI11341000")="3" then
		strGI11341000answer3="checked"
	end if
	if Session("GI11341000")="4" then
		strGI11341000answer4="checked"
	end if

	if Session("GI11342000")="1" then
		strGI11342000answer1="checked"
	end if
	if Session("GI11342000")="2" then
		strGI11342000answer2="checked"
	end if
	if Session("GI11342000")="3" then
		strGI11342000answer3="checked"
	end if
	if Session("GI11342000")="4" then
		strGI11342000answer4="checked"
	end if

	if Session("GI11343000")="1" then
		strGI11343000answer1="checked"
	end if
	if Session("GI11343000")="2" then
		strGI11343000answer2="checked"
	end if
	if Session("GI11343000")="3" then
		strGI11343000answer3="checked"
	end if
	if Session("GI11343000")="4" then
		strGI11343000answer4="checked"
	end if

	if Session("GI11344000")="1" then
		strGI11344000answer1="checked"
	end if
	if Session("GI11344000")="2" then
		strGI11344000answer2="checked"
	end if
	if Session("GI11344000")="3" then
		strGI11344000answer3="checked"
	end if
	if Session("GI11344000")="4" then
		strGI11344000answer4="checked"
	end if

	if Session("GI11345000")="1" then
		strGI11345000answer1="checked"
	end if
	if Session("GI11345000")="2" then
		strGI11345000answer2="checked"
	end if
	if Session("GI11345000")="3" then
		strGI11345000answer3="checked"
	end if
	if Session("GI11345000")="4" then
		strGI11345000answer4="checked"
	end if

	if Session("GI11346000")="1" then
		strGI11346000answer1="checked"
	end if
	if Session("GI11346000")="2" then
		strGI11346000answer2="checked"
	end if
	if Session("GI11346000")="3" then
		strGI11346000answer3="checked"
	end if
	if Session("GI11346000")="4" then
		strGI11346000answer4="checked"
	end if

	if Session("GI11347000")="1" then
		strGI11347000answer1="checked"
	end if
	if Session("GI11347000")="2" then
		strGI11347000answer2="checked"
	end if
	if Session("GI11347000")="3" then
		strGI11347000answer3="checked"
	end if
	if Session("GI11347000")="4" then
		strGI11347000answer4="checked"
	end if

	if Session("GI11348000")="1" then
		strGI11348000answer1="checked"
	end if
	if Session("GI11348000")="2" then
		strGI11348000answer2="checked"
	end if
	if Session("GI11348000")="3" then
		strGI11348000answer3="checked"
	end if
	if Session("GI11348000")="4" then
		strGI11348000answer4="checked"
	end if

	if Session("GI11349000")="1" then
		strGI11349000answer1="checked"
	end if
	if Session("GI11349000")="2" then
		strGI11349000answer2="checked"
	end if
	if Session("GI11349000")="3" then
		strGI11349000answer3="checked"
	end if
	if Session("GI11349000")="4" then
		strGI11349000answer4="checked"
	end if

	if Session("GI11350000")="1" then
		strGI11350000answer1="checked"
	end if
	if Session("GI11350000")="2" then
		strGI11350000answer2="checked"
	end if
	if Session("GI11350000")="3" then
		strGI11350000answer3="checked"
	end if
	if Session("GI11350000")="4" then
		strGI11350000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GI11343000string")= ""
	Session("GI11344000string")= ""
	Session("GI11345000string")= ""
	Session("GI11346000string")= ""
	Session("GI11347000string")= ""
	Session("GI11348000string")= ""
	Session("GI11349000string")= ""
	Session("GI11350000string")= ""



	Session("GI11343000") = Request.Form("GI11343000")
	Session("GI11344000") = Request.Form("GI11344000")
	Session("GI11345000") = Request.Form("GI11345000")
	Session("GI11346000") = Request.Form("GI11346000")
	Session("GI11347000") = Request.Form("GI11347000")
	Session("GI11348000") = Request.Form("GI11348000")
	Session("GI11349000") = Request.Form("GI11349000")
	Session("GI11350000") = Request.Form("GI11350000")
	Session("GI11341000string")= ""
	Session("GI11342000string")= ""

	Session("GI11341000") = Request.Form("GI11341000")
	Session("GI11342000") = Request.Form("GI11342000")

	if Session("GI11341000") = "1" then 
		Session("GI11341000string")= "Strongly agree"
	end if
	if Session("GI11341000") = "2" then 
		Session("GI11341000string")= "Somewhat agree"
	end if
	if Session("GI11341000") = "3" then 
		Session("GI11341000string")= "Somewhat disagree"
	end if
	if Session("GI11341000") = "4" then 
		Session("GI11341000string")= "Strongly disagree"
	end if

	if Session("GI11342000") = "1" then 
		Session("GI11342000string")= "Strongly agree"
	end if
	if Session("GI11342000") = "2" then 
		Session("GI11342000string")= "Somewhat agree"
	end if
	if Session("GI11342000") = "3" then 
		Session("GI11342000string")= "Somewhat disagree"
	end if
	if Session("GI11342000") = "4" then 
		Session("GI11342000string")= "Strongly disagree"
	end if

	if Session("GI11343000") = "1" then 
		Session("GI11343000string")= "Strongly agree"
	end if
	if Session("GI11343000") = "2" then 
		Session("GI11343000string")= "Somewhat agree"
	end if
	if Session("GI11343000") = "3" then 
		Session("GI11343000string")= "Somewhat disagree"
	end if
	if Session("GI11343000") = "4" then 
		Session("GI11343000string")= "Strongly disagree"
	end if

	if Session("GI11344000") = "1" then 
		Session("GI11344000string")= "Strongly agree"
	end if
	if Session("GI11344000") = "2" then 
		Session("GI11344000string")= "Somewhat agree"
	end if
	if Session("GI11344000") = "3" then 
		Session("GI11344000string")= "Somewhat disagree"
	end if
	if Session("GI11344000") = "4" then 
		Session("GI11344000string")= "Strongly disagree"
	end if

	if Session("GI11345000") = "1" then 
		Session("GI11345000string")= "Strongly agree"
	end if
	if Session("GI11345000") = "2" then 
		Session("GI11345000string")= "Somewhat agree"
	end if
	if Session("GI11345000") = "3" then 
		Session("GI11345000string")= "Somewhat disagree"
	end if
	if Session("GI11345000") = "4" then 
		Session("GI11345000string")= "Strongly disagree"
	end if

	if Session("GI11346000") = "1" then 
		Session("GI11346000string")= "Strongly agree"
	end if
	if Session("GI11346000") = "2" then 
		Session("GI11346000string")= "Somewhat agree"
	end if
	if Session("GI11346000") = "3" then 
		Session("GI11346000string")= "Somewhat disagree"
	end if
	if Session("GI11346000") = "4" then 
		Session("GI11346000string")= "Strongly disagree"
	end if

	if Session("GI11347000") = "1" then 
		Session("GI11347000string")= "Strongly agree"
	end if
	if Session("GI11347000") = "2" then 
		Session("GI11347000string")= "Somewhat agree"
	end if
	if Session("GI11347000") = "3" then 
		Session("GI11347000string")= "Somewhat disagree"
	end if
	if Session("GI11347000") = "4" then 
		Session("GI11347000string")= "Strongly disagree"
	end if

	if Session("GI11348000") = "1" then 
		Session("GI11348000string")= "Strongly agree"
	end if
	if Session("GI11348000") = "2" then 
		Session("GI11348000string")= "Somewhat agree"
	end if
	if Session("GI11348000") = "3" then 
		Session("GI11348000string")= "Somewhat disagree"
	end if
	if Session("GI11348000") = "4" then 
		Session("GI11348000string")= "Strongly disagree"
	end if

	if Session("GI11349000") = "1" then 
		Session("GI11349000string")= "Strongly agree"
	end if
	if Session("GI11349000") = "2" then 
		Session("GI11349000string")= "Somewhat agree"
	end if
	if Session("GI11349000") = "3" then 
		Session("GI11349000string")= "Somewhat disagree"
	end if
	if Session("GI11349000") = "4" then 
		Session("GI11349000string")= "Strongly disagree"
	end if

	if Session("GI11350000") = "1" then 
		Session("GI11350000string")= "Strongly agree"
	end if
	if Session("GI11350000") = "2" then 
		Session("GI11350000string")= "Somewhat agree"
	end if
	if Session("GI11350000") = "3" then 
		Session("GI11350000string")= "Somewhat disagree"
	end if
	if Session("GI11350000") = "4" then 
		Session("GI11350000string")= "Strongly disagree"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=33
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="35"
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

    <form action="qualityoflife34.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

	<div id="SpecialNote">
	<u>Due to accidental bowel leakage,</u> indicate the extent to which you AGREE or DISAGREE with each of the following items.
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
				<th rowspan="2"><b>Strongly</b> agree</th>
				<th rowspan="2"><b>Somewhat</b> agree</th>
				<th rowspan="2"><b>Somewhat</b> disagree</th>
				<th rowspan="2"><b>Strongly</b> disagree</th>

			</tr>

		   <tbody>
		</div>
		<div class="cell1">

<tr>
<td>		I feel ashamed</td>
<td style="text-align: center;"><input type="radio" id="GI11341000" class="required" type="text" value="1" size="1" name="GI11341000" <%=strGI11341000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11341000" type="text" value="2" size="1" name="GI11341000" <%=strGI11341000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11341000" type="text" value="3" size="1" name="GI11341000" <%=strGI11341000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11341000" type="text" value="4" size="1" name="GI11341000" <%=strGI11341000answer4%>></td>
</tr>
<tr>
<td>		I can not do many of things I want to do</td>
<td style="text-align: center;"><input type="radio" id="GI11342000" class="required" type="text" value="1" size="1" name="GI11342000" <%=strGI11342000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11342000" type="text" value="2" size="1" name="GI11342000" <%=strGI11342000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11342000" type="text" value="3" size="1" name="GI11342000" <%=strGI11342000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11342000" type="text" value="4" size="1" name="GI11342000" <%=strGI11342000answer4%>></td>
</tr>


<tr>
<td>		I worry about bowel accidents</td>
<td style="text-align: center;"><input type="radio" id="GI11343000" class="required" type="text" value="1" size="1" name="GI11343000" <%=strGI11343000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11343000" type="text" value="2" size="1" name="GI11343000" <%=strGI11343000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11343000" type="text" value="3" size="1" name="GI11343000" <%=strGI11343000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11343000" type="text" value="4" size="1" name="GI11343000" <%=strGI11343000answer4%>></td>

</tr>
<tr>
<td>		I feel depressed</td>
<td style="text-align: center;"><input type="radio" id="GI11344000" class="required" type="text" value="1" size="1" name="GI11344000" <%=strGI11344000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11344000" type="text" value="2" size="1" name="GI11344000" <%=strGI11344000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11344000" type="text" value="3" size="1" name="GI11344000" <%=strGI11344000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11344000" type="text" value="4" size="1" name="GI11344000" <%=strGI11344000answer4%>></td>
</tr>

<tr>
<td>		I worry about others smelling stool on me</td>
<td style="text-align: center;"><input type="radio" id="GI11345000" class="required" type="text" value="1" size="1" name="GI11345000" <%=strGI11345000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11345000" type="text" value="2" size="1" name="GI11345000" <%=strGI11345000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11345000" type="text" value="3" size="1" name="GI11345000" <%=strGI11345000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11345000" type="text" value="4" size="1" name="GI11345000" <%=strGI11345000answer4%>></td>
</tr>

<tr>
<td>		I feel like I am not a healthy person</td>
<td style="text-align: center;"><input type="radio" id="GI11346000" class="required" type="text" value="1" size="1" name="GI11346000" <%=strGI11346000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11346000" type="text" value="2" size="1" name="GI11346000" <%=strGI11346000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11346000" type="text" value="3" size="1" name="GI11346000" <%=strGI11346000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11346000" type="text" value="4" size="1" name="GI11346000" <%=strGI11346000answer4%>></td>
</tr>
<tr>
<td>		I enjoy life less</td>
<td style="text-align: center;"><input type="radio" id="GI11347000" class="required" type="text" value="1" size="1" name="GI11347000" <%=strGI11347000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11347000" type="text" value="2" size="1" name="GI11347000" <%=strGI11347000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11347000" type="text" value="3" size="1" name="GI11347000" <%=strGI11347000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11347000" type="text" value="4" size="1" name="GI11347000" <%=strGI11347000answer4%>></td>
</tr>
<tr>
<td>		I have sex less often than I would like to</td>
<td style="text-align: center;"><input type="radio" id="GI11348000" class="required" type="text" value="1" size="1" name="GI11348000" <%=strGI11348000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11348000" type="text" value="2" size="1" name="GI11348000" <%=strGI11348000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11348000" type="text" value="3" size="1" name="GI11348000" <%=strGI11348000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11348000" type="text" value="4" size="1" name="GI11348000" <%=strGI11348000answer4%>></td>
</tr>
<tr>
<td>		I feel different from other people</td>
<td style="text-align: center;"><input type="radio" id="GI11349000" class="required" type="text" value="1" size="1" name="GI11349000" <%=strGI11349000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11349000" type="text" value="2" size="1" name="GI11349000" <%=strGI11349000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11349000" type="text" value="3" size="1" name="GI11349000" <%=strGI11349000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11349000" type="text" value="4" size="1" name="GI11349000" <%=strGI11349000answer4%>></td>
</tr>
<tr>
<td>		The possibility of bowel accidents is always on my mind</td>
<td style="text-align: center;"><input type="radio" id="GI11350000" class="required" type="text" value="1" size="1" name="GI11350000" <%=strGI11350000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11350000" type="text" value="2" size="1" name="GI11350000" <%=strGI11350000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11350000" type="text" value="3" size="1" name="GI11350000" <%=strGI11350000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11350000" type="text" value="4" size="1" name="GI11350000" <%=strGI11350000answer4%>></td>
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
