
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("GI11320000")="1" then
		strGI11320000answer1="checked"
	end if
	if Session("GI11320000")="0" then
		strGI11320000answer2="checked"
	end if

	if Session("GI11321000")="0" then
		strGI11321000answer1="checked"
	end if
	if Session("GI11321000")="1" then
		strGI11321000answer2="checked"
	end if
	if Session("GI11321000")="2" then
		strGI11321000answer3="checked"
	end if
	if Session("GI11321000")="3" then
		strGI11321000answer4="checked"
	end if
	if Session("GI11321000")="4" then
		strGI11321000answer5="checked"
	end if

	if Session("GI11322000")="0" then
		strGI11311000answer1="checked"
	end if
	if Session("GI11322000")="1" then
		strGI11311000answer2="checked"
	end if
	if Session("GI11322000")="2" then
		strGI11311000answer3="checked"
	end if
	if Session("GI11322000")="3" then
		strGI11311000answer4="checked"
	end if
	if Session("GI11322000")="4" then
		strGI11311000answer5="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("GI11320000string")= ""
	Session("GI11321000string")= ""
	Session("GI11322000string")= ""

	Session("GI11320000") = Request.Form("GI11320000")
	Session("GI11321000") = Request.Form("GI11321000")
	Session("GI11322000") = Request.Form("GI11322000")

	if Session("GI11320000") = "1" then 
		Session("GI11320000string")= "Ostomy appliance"
	end if
	if Session("GI11320000") = "0" then 
		Session("GI11320000string")= "No ostomy appliance"
	end if

	if Session("GI11321000") = "0" then 
		Session("GI11321000string")= "Not at all"
	end if
	if Session("GI11321000") = "1" then 
		Session("GI11321000string")= "A little bit"
	end if
	if Session("GI11321000") = "2" then 
		Session("GI11321000string")= "Some what"
	end if
	if Session("GI11321000") = "3" then 
		Session("GI11321000string")= "Quite a bit"
	end if
	if Session("GI11321000") = "4" then 
		Session("GI11321000string")= "Very much"
	end if

	if Session("GI11322000") = "0" then 
		Session("GI11311000string")= "Not at all"
	end if
	if Session("GI11322000") = "1" then 
		Session("GI11311000string")= "A little bit"
	end if
	if Session("GI11322000") = "2" then 
		Session("GI11311000string")= "Some what"
	end if
	if Session("GI11322000") = "3" then 
		Session("GI11311000string")= "Quite a bit"
	end if
	if Session("GI11322000") = "4" then 
		Session("GI11311000string")= "Very much"
	end if

	
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
if Session("GI10202000")="1" then
	Session("Page")="29"
	Response.Redirect "qualityoflifemaster.asp"
else
	Session("Page")="28"
	Response.Redirect "qualityoflifemaster.asp"

	 <!--#include file="autosavefunction.asp"-->
end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="31"
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

    <form action="qualityoflife30.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset>
	<legend class="QuestionBox">
      Do you have an ostomy appliance?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="GI11320000" value="1" id="GI113200001" class="required qTrigger2" <%=strGI11320000answer1%>>
		<label for="GI113200001">Yes</label><br>
		<input type="radio" class="qTriggerOff2" name="GI11320000" value="0" id="GI113200002" <%=strGI11320000answer2%>>
		<label for="GI113200002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   

<div class="hiddenQ2"> 
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
<td>		I am embarrassed by my ostomy appliance</td>
<td style="text-align: center;"><input type="radio" id="GI11321000" class="requiredIfBranchActive" type="text" value="0" size="1" name="GI11321000" <%=strGI11321000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11321000" type="text" value="1" size="1" name="GI11321000" <%=strGI11321000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11321000" type="text" value="2" size="1" name="GI11321000" <%=strGI11321000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11321000" type="text" value="3" size="1" name="GI11321000" <%=strGI11321000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11321000" type="text" value="4" size="1" name="GI11321000" <%=strGI11321000answer5%>></td>
</tr>
<tr>
<td>		Caring for my ostomy appliance is difficult</td>
<td style="text-align: center;"><input type="radio" id="GI11322000" class="requiredIfBranchActive" type="text" value="0" size="1" name="GI11322000" <%=strGI11311000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GI11322000" type="text" value="1" size="1" name="GI11322000" <%=strGI11311000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GI11322000" type="text" value="2" size="1" name="GI11322000" <%=strGI11311000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GI11322000" type="text" value="3" size="1" name="GI11322000" <%=strGI11311000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GI11322000" type="text" value="4" size="1" name="GI11322000" <%=strGI11311000answer5%>></td>
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
