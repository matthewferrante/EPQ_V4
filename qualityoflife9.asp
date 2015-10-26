
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11312000")="0" then
		strGU11312000answer0="checked"
	end if
	if Session("GU11312000")="1" then
		strGU11312000answer1="checked"
	end if
	if Session("GU11312000")="2" then
		strGU11312000answer2="checked"
	end if
	if Session("GU11312000")="3" then
		strGU11312000answer3="checked"
	end if
	if Session("GU11312000")="4" then
		strGU11312000answer4="checked"
	end if


	if Session("GU11313000")="0" then
		strGU11313000answer0="checked"
	end if
	if Session("GU11313000")="1" then
		strGU11313000answer1="checked"
	end if
	if Session("GU11313000")="2" then
		strGU11313000answer2="checked"
	end if
	if Session("GU11313000")="3" then
		strGU11313000answer3="checked"
	end if
	if Session("GU11313000")="4" then
		strGU11313000answer4="checked"
	end if


	if Session("GU11314000")="0" then
		strGU11314000answer0="checked"
	end if
	if Session("GU11314000")="1" then
		strGU11314000answer1="checked"
	end if
	if Session("GU11314000")="2" then
		strGU11314000answer2="checked"
	end if
	if Session("GU11314000")="3" then
		strGU11314000answer3="checked"
	end if
	if Session("GU11314000")="4" then
		strGU11314000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GU11312000string")= ""
	Session("GU11313000string")= ""
	Session("GU11314000string")= ""
	

	Session("GU11312000") = Request.Form("GU11312000")
	Session("GU11313000") = Request.Form("GU11313000")
	Session("GU11314000") = Request.Form("GU11314000")

	if Session("GU11312000") = "0" then 
		Session("GU11312000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have not limited social activities with friends during the past 4 weeks"
	end if
	if Session("GU11312000") = "1" then 
		Session("GU11312000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited social activities with friends a little bit during the past 4 weeks"
	end if
	if Session("GU11312000") = "2" then 
		Session("GU11312000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited social activities with friends some what during the past 4 weeks"
	end if
	if Session("GU11312000") = "3" then 
		Session("GU11312000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited social activities with friends quite a bit during the past 4 weeks"
	end if
	if Session("GU11312000") = "4" then 
		Session("GU11312000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited social activities with friends very much during the past 4 weeks"
	end if


	if Session("GU11313000") = "0" then 
		Session("GU11313000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have not limited exercise during the past 4 weeks"
	end if
	if Session("GU11313000") = "1" then 
		Session("GU11313000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited exercise a little bit during the past 4 weeks"
	end if
	if Session("GU11313000") = "2" then 
		Session("GU11313000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited exercise some what during the past 4 weeks"
	end if
	if Session("GU11313000") = "3" then 
		Session("GU11313000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited exercise quite a bit during the past 4 weeks"
	end if
	if Session("GU11313000") = "4" then 
		Session("GU11313000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited exercise very much during the past 4 weeks"
	end if


	if Session("GU11314000") = "0" then 
		Session("GU11314000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have not limited sleep during the past 4 weeks"
	end if
	if Session("GU11314000") = "1" then 
		Session("GU11314000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited sleep a little bit during the past 4 weeks"
	end if
	if Session("GU11314000") = "2" then 
		Session("GU11314000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited sleep some what during the past 4 weeks"
	end if
	if Session("GU11314000") = "3" then 
		Session("GU11314000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited sleep quite a bit during the past 4 weeks"
	end if
	if Session("GU11314000") = "4" then 
		Session("GU11314000string")= "Difficulties with bladder, stoma, neo-bladder or catheterizable pouch have limited sleep very much during the past 4 weeks"
	end if



end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=8
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU11312000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11313000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU11314000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if



	Session("Page")="10"
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


    <form action="qualityoflife9.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th style="text-align: left;" rowspan="2"><b>Over the past 4 weeks</b>, how much have difficulties with your bladder, stoma, neo-bladder or catheterizable pouch limited your activities?</th>
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
<td>		Social activities with friends</td>
<td style="text-align: center;"><input type="radio" id="GU11312000" class="required" type="text" value="0" size="1" name="GU11312000" <%=strGU11312000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11312000" type="text" value="1" size="1" name="GU11312000" <%=strGU11312000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11312000" type="text" value="2" size="1" name="GU11312000" <%=strGU11312000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11312000" type="text" value="3" size="1" name="GU11312000" <%=strGU11312000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11312000" type="text" value="4" size="1" name="GU11312000" <%=strGU11312000answer4%>></td>

</tr>
<tr>
<td>		Exercise</td>
<td style="text-align: center;"><input type="radio" id="GU11313000" class="required" type="text" value="0" size="1" name="GU11313000" <%=strGU11313000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11313000" type="text" value="1" size="1" name="GU11313000" <%=strGU11313000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11313000" type="text" value="2" size="1" name="GU11313000" <%=strGU11313000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11313000" type="text" value="3" size="1" name="GU11313000" <%=strGU11313000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11313000" type="text" value="4" size="1" name="GU11313000" <%=strGU11313000answer4%>></td>

<tr>
<td>Sleep</td>
<td style="text-align: center;"><input type="radio" id="GU11314000" class="required" type="text" value="0" size="1" name="GU11314000" <%=strGU11314000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU11314000" type="text" value="1" size="1" name="GU11314000" <%=strGU11314000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU11314000" type="text" value="2" size="1" name="GU11314000" <%=strGU11314000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU11314000" type="text" value="3" size="1" name="GU11314000" <%=strGU11314000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU11314000" type="text" value="4" size="1" name="GU11314000" <%=strGU11314000answer4%>></td>



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
