
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI11327000")="1" then
		strGI11327000answer1="checked"
	end if
	if Session("GI11327000")="0" then
		strGI11327000answer2="checked"
	end if

	if Session("GI11328000")="1" then
		strGI11328000answer1="checked"
	end if
	if Session("GI11328000")="2" then
		strGI11328000answer2="checked"
	end if
	if Session("GI11328000")="3" then
		strGI11328000answer3="checked"
	end if
	if Session("GI11328000")="4" then
		strGI11328000answer4="checked"
	end if

	if Session("GI11329000")="1" then
		strGI11329000answer1="checked"
	end if
	if Session("GI11329000")="2" then
		strGI11329000answer2="checked"
	end if
	if Session("GI11329000")="3" then
		strGI11329000answer3="checked"
	end if
	if Session("GI11329000")="4" then
		strGI11329000answer4="checked"
	end if

	if Session("GI11330000")="1" then
		strGI11330000answer1="checked"
	end if
	if Session("GI11330000")="2" then
		strGI11330000answer2="checked"
	end if
	if Session("GI11330000")="3" then
		strGI11330000answer3="checked"
	end if
	if Session("GI11330000")="4" then
		strGI11330000answer4="checked"
	end if



	if Session("GI11331000")="1" then
		strGI11331000answer1="checked"
	end if
	if Session("GI11331000")="2" then
		strGI11331000answer2="checked"
	end if
	if Session("GI11331000")="3" then
		strGI11331000answer3="checked"
	end if
	if Session("GI11331000")="4" then
		strGI11331000answer4="checked"
	end if

	if Session("GI11332000")="1" then
		strGI11332000answer1="checked"
	end if
	if Session("GI11332000")="2" then
		strGI11332000answer2="checked"
	end if
	if Session("GI11332000")="3" then
		strGI11332000answer3="checked"
	end if
	if Session("GI11332000")="4" then
		strGI11332000answer4="checked"
	end if

	if Session("GI11333000")="1" then
		strGI11333000answer1="checked"
	end if
	if Session("GI11333000")="2" then
		strGI11333000answer2="checked"
	end if
	if Session("GI11333000")="3" then
		strGI11333000answer3="checked"
	end if
	if Session("GI11333000")="4" then
		strGI11333000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("GI11327000string")= ""
	Session("GI11328000string")= ""
	Session("GI11329000string")= ""
	Session("GI11330000string")= ""
	Session("GI11331000string")= ""
	Session("GI11332000string")= ""
	Session("GI11333000string")= ""

	Session("GI11327000") = Request.Form("GI11327000")
	Session("GI11328000") = Request.Form("GI11328000")
	Session("GI11329000") = Request.Form("GI11329000")
	Session("GI11330000") = Request.Form("GI11330000")
	Session("GI11331000") = Request.Form("GI11331000")
	Session("GI11332000") = Request.Form("GI11332000")
	Session("GI11333000") = Request.Form("GI11333000")

	if Session("GI11327000") = "1" then 
		Session("GI11327000string")= "Accidental bowel leakage"
	end if
	if Session("GI11327000") = "0" then 
		Session("GI11327000string")= "No accidental bowel leakage"
	end if

	if Session("GI11328000") = "1" then 
		Session("GI11328000string")= "Most of the time"
	end if
	if Session("GI11328000") = "2" then 
		Session("GI11328000string")= "Some of the time"
	end if
	if Session("GI11328000") = "3" then 
		Session("GI11328000string")= "A little of the time"
	end if
	if Session("GI11328000") = "4" then 
		Session("GI11328000string")= "None of the time"
	end if

	if Session("GI11329000") = "1" then 
		Session("GI11329000string")= "Most of the time"
	end if
	if Session("GI11329000") = "2" then 
		Session("GI11329000string")= "Some of the time"
	end if
	if Session("GI11329000") = "3" then 
		Session("GI11329000string")= "A little of the time"
	end if
	if Session("GI11329000") = "4" then 
		Session("GI11329000string")= "None of the time"
	end if

	if Session("GI11330000") = "1" then 
		Session("GI11330000string")= "Most of the time"
	end if
	if Session("GI11330000") = "2" then 
		Session("GI11330000string")= "Some of the time"
	end if
	if Session("GI11330000") = "3" then 
		Session("GI11330000string")= "A little of the time"
	end if
	if Session("GI11330000") = "4" then 
		Session("GI11330000string")= "None of the time"
	end if

	if Session("GI11331000") = "1" then 
		Session("GI11331000string")= "Most of the time"
	end if
	if Session("GI11331000") = "2" then 
		Session("GI11331000string")= "Some of the time"
	end if
	if Session("GI11331000") = "3" then 
		Session("GI11331000string")= "A little of the time"
	end if
	if Session("GI11331000") = "4" then 
		Session("GI11331000string")= "None of the time"
	end if

	if Session("GI11332000") = "1" then 
		Session("GI11332000string")= "Most of the time"
	end if
	if Session("GI11332000") = "2" then 
		Session("GI11332000string")= "Some of the time"
	end if
	if Session("GI11332000") = "3" then 
		Session("GI11332000string")= "A little of the time"
	end if
	if Session("GI11332000") = "4" then 
		Session("GI11332000string")= "None of the time"
	end if

	if Session("GI11333000") = "1" then 
		Session("GI11333000string")= "Most of the time"
	end if
	if Session("GI11333000") = "2" then 
		Session("GI11333000string")= "Some of the time"
	end if
	if Session("GI11333000") = "3" then 
		Session("GI11333000string")= "A little of the time"
	end if
	if Session("GI11333000") = "4" then 
		Session("GI11333000string")= "None of the time"
	end if
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=31
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("GI11327000")="1" then
		Session("Page")="33"
		Response.Redirect "qualityoflifemaster.asp"
	else
		Session("Page")="35"
		Response.Redirect "qualityoflifemaster.asp"
	end if

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

    <form action="qualityoflife32.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset>
	<legend class="QuestionBox">
      Have you ever experienced accidental bowel leakage?<br>
	  </legend>
	<div class="QuestionAnswersBox">

	<input type="radio" name="GI11327000" value="1" id="GI113270001" class="required qTrigger2" <%=strGI11327000answer1%>>
		<label for="GI113270001">Yes</label><br>
		<input type="radio" name="GI11327000" value="0" id="GI113270002" class="qTriggerOff2" <%=strGI11327000answer2%>>
		<label for="GI113270002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   

<div class="hiddenQ2"> 
<br>
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
<td>		I am afraid to go out</td>
<td style="text-align: center;"><input type="radio" id="GI11328000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11328000" <%=strGI11328000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11328000" type="text" value="2" size="1" name="GI11328000" <%=strGI11328000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11328000" type="text" value="3" size="1" name="GI11328000" <%=strGI11328000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11328000" type="text" value="4" size="1" name="GI11328000" <%=strGI11328000answer4%>></td>

</tr>
<tr>
<td>		I avoid visiting friends</td>
<td style="text-align: center;"><input type="radio" id="GI11329000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11329000" <%=strGI11329000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11329000" type="text" value="2" size="1" name="GI11329000" <%=strGI11329000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11329000" type="text" value="3" size="1" name="GI11329000" <%=strGI11329000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11329000" type="text" value="4" size="1" name="GI11329000" <%=strGI11329000answer4%>></td>
</tr>

<tr>
<td>		I avoid staying overnight away from home</td>
<td style="text-align: center;"><input type="radio" id="GI11330000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11330000" <%=strGI11330000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11330000" type="text" value="2" size="1" name="GI11330000" <%=strGI11330000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11330000" type="text" value="3" size="1" name="GI11330000" <%=strGI11330000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11330000" type="text" value="4" size="1" name="GI11330000" <%=strGI11330000answer4%>></td>
</tr>

<tr>
<td>		It is difficult for me to get out and do things like going to a movie or to church</td>
<td style="text-align: center;"><input type="radio" id="GI11331000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11331000" <%=strGI11331000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11331000" type="text" value="2" size="1" name="GI11331000" <%=strGI11331000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11331000" type="text" value="3" size="1" name="GI11331000" <%=strGI11331000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11331000" type="text" value="4" size="1" name="GI11331000" <%=strGI11331000answer4%>></td>
</tr>
<tr>
<td>		I cut down on how much I eat before I go out</td>
<td style="text-align: center;"><input type="radio" id="GI11332000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11332000" <%=strGI11332000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11332000" type="text" value="2" size="1" name="GI11332000" <%=strGI11332000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11332000" type="text" value="3" size="1" name="GI11332000" <%=strGI11332000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11332000" type="text" value="4" size="1" name="GI11332000" <%=strGI11332000answer4%>></td>
</tr>
<tr>
<td>		Whenever I am away from home, I try to stay near a restroom as much as possible</td>
<td style="text-align: center;"><input type="radio" id="GI11333000" class="requiredIfBranchActive" type="text" value="1" size="1" name="GI11333000" <%=strGI11333000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11333000" type="text" value="2" size="1" name="GI11333000" <%=strGI11333000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11333000" type="text" value="3" size="1" name="GI11333000" <%=strGI11333000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11333000" type="text" value="4" size="1" name="GI11333000" <%=strGI11333000answer4%>></td>
</tr>
</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
</fieldset>
</div>

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
