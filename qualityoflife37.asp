
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11310000")="0" then
		strHM11310000answer1="checked"
	end if
	if Session("HM11310000")="1" then
		strHM11310000answer2="checked"
	end if
	if Session("HM11310000")="2" then
		strHM11310000answer3="checked"
	end if
	if Session("HM11310000")="3" then
		strHM11310000answer4="checked"
	end if
	if Session("HM11310000")="4" then
		strHM11310000answer5="checked"
	end if

	if Session("HM11311000")="0" then
		strHM11311000answer1="checked"
	end if
	if Session("HM11311000")="1" then
		strHM11311000answer2="checked"
	end if
	if Session("HM11311000")="2" then
		strHM11311000answer3="checked"
	end if
	if Session("HM11311000")="3" then
		strHM11311000answer4="checked"
	end if
	if Session("HM11311000")="4" then
		strHM11311000answer5="checked"
	end if

	if Session("HM11312000")="0" then
		strHM11312000answer1="checked"
	end if
	if Session("HM11312000")="1" then
		strHM11312000answer2="checked"
	end if
	if Session("HM11312000")="2" then
		strHM11312000answer3="checked"
	end if
	if Session("HM11312000")="3" then
		strHM11312000answer4="checked"
	end if
	if Session("HM11312000")="4" then
		strHM11312000answer5="checked"
	end if

	if Session("HM11313000")="0" then
		strHM11313000answer1="checked"
	end if
	if Session("HM11313000")="1" then
		strHM11313000answer2="checked"
	end if
	if Session("HM11313000")="2" then
		strHM11313000answer3="checked"
	end if
	if Session("HM11313000")="3" then
		strHM11313000answer4="checked"
	end if
	if Session("HM11313000")="4" then
		strHM11313000answer5="checked"
	end if

	if Session("HM11314000")="0" then
		strHM11314000answer1="checked"
	end if
	if Session("HM11314000")="1" then
		strHM11314000answer2="checked"
	end if
	if Session("HM11314000")="2" then
		strHM11314000answer3="checked"
	end if
	if Session("HM11314000")="3" then
		strHM11314000answer4="checked"
	end if
	if Session("HM11314000")="4" then
		strHM11314000answer5="checked"
	end if

	if Session("HM11315000")="0" then
		strHM11315000answer1="checked"
	end if
	if Session("HM11315000")="1" then
		strHM11315000answer2="checked"
	end if
	if Session("HM11315000")="2" then
		strHM11315000answer3="checked"
	end if
	if Session("HM11315000")="3" then
		strHM11315000answer4="checked"
	end if
	if Session("HM11315000")="4" then
		strHM11315000answer5="checked"
	end if

	if Session("HM11316000")="0" then
		strHM11316000answer1="checked"
	end if
	if Session("HM11316000")="1" then
		strHM11316000answer2="checked"
	end if
	if Session("HM11316000")="2" then
		strHM11316000answer3="checked"
	end if
	if Session("HM11316000")="3" then
		strHM11316000answer4="checked"
	end if
	if Session("HM11316000")="4" then
		strHM11316000answer5="checked"
	end if

	if Session("HM11317000")="0" then
		strHM11317000answer1="checked"
	end if
	if Session("HM11317000")="1" then
		strHM11317000answer2="checked"
	end if
	if Session("HM11317000")="2" then
		strHM11317000answer3="checked"
	end if
	if Session("HM11317000")="3" then
		strHM11317000answer4="checked"
	end if
	if Session("HM11317000")="4" then
		strHM11317000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("HM11310000string")= ""
	Session("HM11311000string")= ""
	Session("HM11312000string")= ""
	Session("HM11313000string")= ""
	Session("HM11314000string")= ""
	Session("HM11315000string")= ""
	Session("HM11316000string")= ""
	Session("HM11317000string")= ""



	Session("HM11310000") = Request.Form("HM11310000")
	Session("HM11311000") = Request.Form("HM11311000")
	Session("HM11312000") = Request.Form("HM11312000")
	Session("HM11313000") = Request.Form("HM11313000")
	Session("HM11314000") = Request.Form("HM11314000")
	Session("HM11315000") = Request.Form("HM11315000")
	Session("HM11316000") = Request.Form("HM11316000")
	Session("HM11317000") = Request.Form("HM11317000")


	if Session("HM11310000") = "0" then 
		Session("HM11310000string")= "Not at all"
	end if
	if Session("HM11310000") = "1" then 
		Session("HM11310000string")= "A little bit"
	end if
	if Session("HM11310000") = "2" then 
		Session("HM11310000string")= "Some what"
	end if
	if Session("HM11310000") = "3" then 
		Session("HM11310000string")= "Quite a bit"
	end if
	if Session("HM11310000") = "4" then 
		Session("HM11310000string")= "Very much"
	end if

	if Session("HM11311000") = "0" then 
		Session("HM11311000string")= "Not at all"
	end if
	if Session("HM11311000") = "1" then 
		Session("HM11311000string")= "A little bit"
	end if
	if Session("HM11311000") = "2" then 
		Session("HM11311000string")= "Some what"
	end if
	if Session("HM11311000") = "3" then 
		Session("HM11311000string")= "Quite a bit"
	end if
	if Session("HM11311000") = "4" then 
		Session("HM11311000string")= "Very much"
	end if

	if Session("HM11312000") = "0" then 
		Session("HM11312000string")= "Not at all"
	end if
	if Session("HM11312000") = "1" then 
		Session("HM11312000string")= "A little bit"
	end if
	if Session("HM11312000") = "2" then 
		Session("HM11312000string")= "Some what"
	end if
	if Session("HM11312000") = "3" then 
		Session("HM11312000string")= "Quite a bit"
	end if
	if Session("HM11312000") = "4" then 
		Session("HM11312000string")= "Very much"
	end if

	if Session("HM11313000") = "0" then 
		Session("HM11313000string")= "Not at all"
	end if
	if Session("HM11313000") = "1" then 
		Session("HM11313000string")= "A little bit"
	end if
	if Session("HM11313000") = "2" then 
		Session("HM11313000string")= "Some what"
	end if
	if Session("HM11313000") = "3" then 
		Session("HM11313000string")= "Quite a bit"
	end if
	if Session("HM11313000") = "4" then 
		Session("HM11313000string")= "Very much"
	end if

	if Session("HM11314000") = "0" then 
		Session("HM11314000string")= "Not at all"
	end if
	if Session("HM11314000") = "1" then 
		Session("HM11314000string")= "A little bit"
	end if
	if Session("HM11314000") = "2" then 
		Session("HM11314000string")= "Some what"
	end if
	if Session("HM11314000") = "3" then 
		Session("HM11314000string")= "Quite a bit"
	end if
	if Session("HM11314000") = "4" then 
		Session("HM11314000string")= "Very much"
	end if

	if Session("HM11315000") = "0" then 
		Session("HM11315000string")= "Not at all"
	end if
	if Session("HM11315000") = "1" then 
		Session("HM11315000string")= "A little bit"
	end if
	if Session("HM11315000") = "2" then 
		Session("HM11315000string")= "Some what"
	end if
	if Session("HM11315000") = "3" then 
		Session("HM11315000string")= "Quite a bit"
	end if
	if Session("HM11315000") = "4" then 
		Session("HM11315000string")= "Very much"
	end if

	if Session("HM11316000") = "0" then 
		Session("HM11316000string")= "Not at all"
	end if
	if Session("HM11316000") = "1" then 
		Session("HM11316000string")= "A little bit"
	end if
	if Session("HM11316000") = "2" then 
		Session("HM11316000string")= "Some what"
	end if
	if Session("HM11316000") = "3" then 
		Session("HM11316000string")= "Quite a bit"
	end if
	if Session("HM11316000") = "4" then 
		Session("HM11316000string")= "Very much"
	end if

	if Session("HM11317000") = "0" then 
		Session("HM11317000string")= "Not at all"
	end if
	if Session("HM11317000") = "1" then 
		Session("HM11317000string")= "A little bit"
	end if
	if Session("HM11317000") = "2" then 
		Session("HM11317000string")= "Some what"
	end if
	if Session("HM11317000") = "3" then 
		Session("HM11317000string")= "Quite a bit"
	end if
	if Session("HM11317000") = "4" then 
		Session("HM11317000string")= "Very much"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=36
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10202000")="1" OR Session("HM10206000")="1" then
		Session("Page")="38"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10204000")="1" then
		Session("Page")="42"
		Response.Redirect "qualityoflifemaster.asp"
	else
		Session("Page")="0"
		Session("QOLSectionStatus")="Completed"
		Response.Redirect "qualityoflifemaster.asp"
	end if


end if
end if
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
	Please mark one per line to indicate your response as it applies to the past 7 days.
	</div>
<br>

    <form action="qualityoflife37.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th rowspan="2">Additional Concerns</th>
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
<td>		I am losing weight</td>
<td style="text-align: center;"><input type="radio" id="HM11310000" class="required" type="text" value="0" size="1" name="HM11310000" <%=strHM11310000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11310000" type="text" value="1" size="1" name="HM11310000" <%=strHM11310000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11310000" type="text" value="2" size="1" name="HM11310000" <%=strHM11310000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11310000" type="text" value="3" size="1" name="HM11310000" <%=strHM11310000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11310000" type="text" value="4" size="1" name="HM11310000" <%=strHM11310000answer5%>></td>
</tr>
<tr>
<td>		I have a good appetite</td>
<td style="text-align: center;"><input type="radio" id="HM11311000" class="required" type="text" value="0" size="1" name="HM11311000" <%=strHM11311000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11311000" type="text" value="1" size="1" name="HM11311000" <%=strHM11311000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11311000" type="text" value="2" size="1" name="HM11311000" <%=strHM11311000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11311000" type="text" value="3" size="1" name="HM11311000" <%=strHM11311000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11311000" type="text" value="4" size="1" name="HM11311000" <%=strHM11311000answer5%>></td>
</tr>

<tr>
<td>		I am able to do my usual activities</td>
<td style="text-align: center;"><input type="radio" id="HM11312000" class="required" type="text" value="0" size="1" name="HM11312000" <%=strHM11312000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11312000" type="text" value="1" size="1" name="HM11312000" <%=strHM11312000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11312000" type="text" value="2" size="1" name="HM11312000" <%=strHM11312000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11312000" type="text" value="3" size="1" name="HM11312000" <%=strHM11312000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11312000" type="text" value="4" size="1" name="HM11312000" <%=strHM11312000answer5%>></td>
</tr>

<tr>
<td>		I worry about getting infections</td>
<td style="text-align: center;"><input type="radio" id="HM11313000" class="required" type="text" value="0" size="1" name="HM11313000" <%=strHM11313000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11313000" type="text" value="1" size="1" name="HM11313000" <%=strHM11313000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11313000" type="text" value="2" size="1" name="HM11313000" <%=strHM11313000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11313000" type="text" value="3" size="1" name="HM11313000" <%=strHM11313000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11313000" type="text" value="4" size="1" name="HM11313000" <%=strHM11313000answer5%>></td>
</tr>
<tr>
<td>		I feel uncertain about my future health</td>
<td style="text-align: center;"><input type="radio" id="HM11314000" class="required" type="text" value="0" size="1" name="HM11314000" <%=strHM11314000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11314000" type="text" value="1" size="1" name="HM11314000" <%=strHM11314000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11314000" type="text" value="2" size="1" name="HM11314000" <%=strHM11314000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11314000" type="text" value="3" size="1" name="HM11314000" <%=strHM11314000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11314000" type="text" value="4" size="1" name="HM11314000" <%=strHM11314000answer5%>></td>
</tr>
<tr>
<td>		I worry that I might get new symptoms of my illness</td>
<td style="text-align: center;"><input type="radio" id="HM11315000" class="required" type="text" value="0" size="1" name="HM11315000" <%=strHM11315000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11315000" type="text" value="1" size="1" name="HM11315000" <%=strHM11315000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11315000" type="text" value="2" size="1" name="HM11315000" <%=strHM11315000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11315000" type="text" value="3" size="1" name="HM11315000" <%=strHM11315000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11315000" type="text" value="4" size="1" name="HM11315000" <%=strHM11315000answer5%>></td>
</tr>



<tr>
<td>		I have emotional ups and downs</td>
<td style="text-align: center;"><input type="radio" id="HM11316000" class="required" type="text" value="0" size="1" name="HM11316000" <%=strHM11316000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11316000" type="text" value="1" size="1" name="HM11316000" <%=strHM11316000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11316000" type="text" value="2" size="1" name="HM11316000" <%=strHM11316000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11316000" type="text" value="3" size="1" name="HM11316000" <%=strHM11316000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11316000" type="text" value="4" size="1" name="HM11316000" <%=strHM11316000answer5%>></td>
</tr>
<tr>
<td>		I feel isolated from others because of my illness or treatment</td>
<td style="text-align: center;"><input type="radio" id="HM11317000" class="required" type="text" value="0" size="1" name="HM11317000" <%=strHM11317000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="HM11317000" type="text" value="1" size="1" name="HM11317000" <%=strHM11317000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="HM11317000" type="text" value="2" size="1" name="HM11317000" <%=strHM11317000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="HM11317000" type="text" value="3" size="1" name="HM11317000" <%=strHM11317000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="HM11317000" type="text" value="4" size="1" name="HM11317000" <%=strHM11317000answer5%>></td>
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
