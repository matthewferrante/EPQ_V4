
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11351000")="1" then
		strGI11351000answer1="checked"
	end if
	if Session("GI11351000")="2" then
		strGI11351000answer2="checked"
	end if
	if Session("GI11351000")="3" then
		strGI11351000answer3="checked"
	end if
	if Session("GI11351000")="4" then
		strGI11351000answer4="checked"
	end if


	if Session("GI11352000")="1" then
		strGI11352000answer1="checked"
	end if
	if Session("GI11352000")="2" then
		strGI11352000answer2="checked"
	end if
	if Session("GI11352000")="3" then
		strGI11352000answer3="checked"
	end if
	if Session("GI11352000")="4" then
		strGI11352000answer4="checked"
	end if

	if Session("GI11353000")="1" then
		strGI11353000answer1="checked"
	end if
	if Session("GI11353000")="2" then
		strGI11353000answer2="checked"
	end if
	if Session("GI11353000")="3" then
		strGI11353000answer3="checked"
	end if
	if Session("GI11353000")="4" then
		strGI11353000answer4="checked"
	end if

	if Session("GI11354000")="1" then
		strGI11354000answer1="checked"
	end if
	if Session("GI11354000")="2" then
		strGI11354000answer2="checked"
	end if
	if Session("GI11354000")="3" then
		strGI11354000answer3="checked"
	end if
	if Session("GI11354000")="4" then
		strGI11354000answer4="checked"
	end if

	if Session("GI11355000")="1" then
		strGI11355000answer1="checked"
	end if
	if Session("GI11355000")="2" then
		strGI11355000answer2="checked"
	end if
	if Session("GI11355000")="3" then
		strGI11355000answer3="checked"
	end if
	if Session("GI11355000")="4" then
		strGI11355000answer4="checked"
	end if
	if Session("GI11355000")="5" then
		strGI11355000answer5="checked"
	end if
	if Session("GI11355000")="6" then
		strGI11355000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GI11351000string")= ""
	Session("GI11351000") = Request.Form("GI11351000")
	if Session("GI11351000") = "1" then 
		Session("GI11351000string")= "Strongly agree"
	end if
	if Session("GI11351000") = "2" then 
		Session("GI11351000string")= "Somewhat agree"
	end if
	if Session("GI11351000") = "3" then 
		Session("GI11351000string")= "Somewhat disagree"
	end if
	if Session("GI11351000") = "4" then 
		Session("GI11351000string")= "Strongly disagree"
	end if


	Session("GI11352000string")= ""
	Session("GI11353000string")= ""
	Session("GI11354000string")= ""
	Session("GI11355000string")= ""

	Session("GI11352000") = Request.Form("GI11352000")
	Session("GI11353000") = Request.Form("GI11353000")
	Session("GI11354000") = Request.Form("GI11354000")
	Session("GI11355000") = Request.Form("GI11355000")


	if Session("GI11352000") = "1" then 
		Session("GI11352000string")= "Strongly agree"
	end if
	if Session("GI11352000") = "2" then 
		Session("GI11352000string")= "Somewhat agree"
	end if
	if Session("GI11352000") = "3" then 
		Session("GI11352000string")= "Somewhat disagree"
	end if
	if Session("GI11352000") = "4" then 
		Session("GI11352000string")= "Strongly disagree"
	end if

	if Session("GI11353000") = "1" then 
		Session("GI11353000string")= "Strongly agree"
	end if
	if Session("GI11353000") = "2" then 
		Session("GI11353000string")= "Somewhat agree"
	end if
	if Session("GI11353000") = "3" then 
		Session("GI11353000string")= "Somewhat disagree"
	end if
	if Session("GI11353000") = "4" then 
		Session("GI11353000string")= "Strongly disagree"
	end if

	if Session("GI11354000") = "1" then 
		Session("GI11354000string")= "Strongly agree"
	end if
	if Session("GI11354000") = "2" then 
		Session("GI11354000string")= "Somewhat agree"
	end if
	if Session("GI11354000") = "3" then 
		Session("GI11354000string")= "Somewhat disagree"
	end if
	if Session("GI11354000") = "4" then 
		Session("GI11354000string")= "Strongly disagree"
	end if

	if Session("GI11355000") = "1" then 
		Session("GI11355000string")= ""
	end if
	if Session("GI11355000") = "2" then 
		Session("GI11355000string")= ""
	end if
	if Session("GI11355000") = "3" then 
		Session("GI11355000string")= ""
	end if
	if Session("GI11355000") = "4" then 
		Session("GI11355000string")= ""
	end if
	if Session("GI11355000") = "5" then 
		Session("GI11355000string")= ""
	end if
	if Session("GI11355000") = "6" then 
		Session("GI11355000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("GI11327000")="1" then
		Session("Page")="34"
		Response.Redirect "qualityoflifemaster.asp"
	else
		Session("Page")="32"
		Response.Redirect "qualityoflifemaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="0"
	Session("SurveyStatus")="Completed"
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

    <form action="qualityoflife35.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
<% if Session("GI11327000")="1"  then  %>
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
<td>		I am afraid to have sex</td>
<td style="text-align: center;"><input type="radio" id="GI11351000" class="required" type="text" value="1" size="1" name="GI11351000" <%=strGI11351000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11351000" type="text" value="2" size="1" name="GI11351000" <%=strGI11351000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11351000" type="text" value="3" size="1" name="GI11351000" <%=strGI11351000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11351000" type="text" value="4" size="1" name="GI11351000" <%=strGI11351000answer4%>></td>
</tr>

<tr>
<td>		I avoid traveling by plane or train</td>
<td style="text-align: center;"><input type="radio" id="GI11352000" class="required" type="text" value="1" size="1" name="GI11352000" <%=strGI11352000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11352000" type="text" value="2" size="1" name="GI11352000" <%=strGI11352000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11352000" type="text" value="3" size="1" name="GI11352000" <%=strGI11352000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11352000" type="text" value="4" size="1" name="GI11352000" <%=strGI11352000answer4%>></td>

</tr>
<tr>
<td>		I avoid going out to eat</td>
<td style="text-align: center;"><input type="radio" id="GI11353000" class="required" type="text" value="1" size="1" name="GI11353000" <%=strGI11353000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11353000" type="text" value="2" size="1" name="GI11353000" <%=strGI11353000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11353000" type="text" value="3" size="1" name="GI11353000" <%=strGI11353000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11353000" type="text" value="4" size="1" name="GI11353000" <%=strGI11353000answer4%>></td>
</tr>

<tr>
<td>		Whenever I go someplace new, I specifically locate where the bathrooms are</td>
<td style="text-align: center;"><input type="radio" id="GI11354000" class="required" type="text" value="1" size="1" name="GI11354000" <%=strGI11354000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11354000" type="text" value="2" size="1" name="GI11354000" <%=strGI11354000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11354000" type="text" value="3" size="1" name="GI11354000" <%=strGI11354000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11354000" type="text" value="4" size="1" name="GI11354000" <%=strGI11354000answer4%>></td>
</tr>

</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
</fieldset>

<br>
<% end if%>
	<fieldset>
		<legend class="QuestionBox">
			During the past month, have you felt so sad, discouraged, hopeless, or had so many problems that you
wondered if anything was worthwhile?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="GI11355000" class="required" value="1" id="GI113550001" <%=strGI11355000answer1%>>
			<label for="GI113550001">Extremely So - To the point that I have just about given up</label><br>
			<input type="radio" name="GI11355000" value="2" id="GI113550002" <%=strGI11355000answer2%>>
			<label for="GI113550002">Very Much So</label><br>
			<input type="radio" name="GI11355000" value="3" id="GI113550003" <%=strGI11355000answer3%>>
			<label for="GI113550003">Quite a Bit</label><br>
			<input type="radio" name="GI11355000" value="4" id="GI113550004" <%=strGI11355000answer4%>>
			<label for="GI113550004">Some - Enough to bother me</label><br>
			<input type="radio" name="GI11355000" value="5" id="GI113550005" <%=strGI11355000answer5%>>
			<label for="GI113550005">A Little Bit</label><br>
			<input type="radio" name="GI11355000" value="6" id="GI113550006" <%=strGI11355000answer6%>>
			<label for="GI113550006">Not At All</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>


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
