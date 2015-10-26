
<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31116000")="0" then
		strEPQ31116000answer1="checked"
	end if
	if Session("EPQ31116000")="1" then
		strEPQ31116000answer2="checked"
	end if
	if Session("EPQ31116000")="2" then
		strEPQ31116000answer3="checked"
	end if
	if Session("EPQ31116000")="3" then
		strEPQ31116000answer4="checked"
	end if
	if Session("EPQ31116000")="4" then
		strEPQ31116000answer5="checked"
	end if
	if Session("EPQ31116000")="5" then
		strEPQ31116000answer6="checked"
	end if

	if Session("EPQ31117000")="0" then
		strEPQ31117000answer1="checked"
	end if
	if Session("EPQ31117000")="1" then
		strEPQ31117000answer2="checked"
	end if
	if Session("EPQ31117000")="2" then
		strEPQ31117000answer3="checked"
	end if
	if Session("EPQ31117000")="3" then
		strEPQ31117000answer4="checked"
	end if
	if Session("EPQ31117000")="4" then
		strEPQ31117000answer5="checked"
	end if
	if Session("EPQ31117000")="5" then
		strEPQ31117000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31116000string")= ""
	Session("EPQ31117000string")= ""

	Session("EPQ31116000") = Request.Form("EPQ31116000")
	Session("EPQ31117000") = Request.Form("EPQ31117000")



	if Session("EPQ31116000") = "0" then 
		Session("EPQ31116000string")= ""
	end if
	if Session("EPQ31116000") = "1" then 
		Session("EPQ31116000string")= ""
	end if
	if Session("EPQ31116000") = "2" then 
		Session("EPQ31116000string")= ""
	end if
	if Session("EPQ31116000") = "3" then 
		Session("EPQ31116000string")= ""
	end if
	if Session("EPQ31116000") = "4" then 
		Session("EPQ31116000string")= ""
	end if
	if Session("EPQ31116000") = "5" then 
		Session("EPQ31116000string")= ""
	end if

	if Session("EPQ31117000") = "0" then 
		Session("EPQ31117000string")= ""
	end if
	if Session("EPQ31117000") = "1" then 
		Session("EPQ31117000string")= ""
	end if
	if Session("EPQ31117000") = "2" then 
		Session("EPQ31117000string")= ""
	end if
	if Session("EPQ31117000") = "3" then 
		Session("EPQ31117000string")= ""
	end if
	if Session("EPQ31117000") = "4" then 
		Session("EPQ31117000string")= ""
	end if
	if Session("EPQ31117000") = "5" then 
		Session("EPQ31117000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31310000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31311000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31312000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31313000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="8"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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
	For each question, indicate how often <u>on average</u> you have eaten the item(s) <u>during the past twelve months</u>. Remember to include things you cook with.  These questions are not intended to assess your total diet, and you may not find all the foods you eat listed.
	</div>
<br>
    <form action="cancerrisk71.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

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
				<th rowspan="2">Item</th>
				<th rowspan="2">Never</th>
				<th rowspan="2">Less than once per week</th>
				<th rowspan="2">Once per week</th>
				<th rowspan="2">2-4 times per week</th>
				<th rowspan="2">Nearly daily or daily</th>
				<th rowspan="2">Twice or more per day</th>
			</tr>

		   <tbody>
<tr>
<td>Citrus Fruits (for example, orange juice or grapefruit juice, oranges, grapefruit)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31116000" type="text" value="0" size="1" name="EPQ31116000" <%=strEPQ31116000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31116000" type="text" value="1" size="1" name="EPQ31116000" <%=strEPQ31116000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31116000" type="text" value="2" size="1" name="EPQ31116000" <%=strEPQ31116000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31116000" type="text" value="3" size="1" name="EPQ31116000" <%=strEPQ31116000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31116000" type="text" value="4" size="1" name="EPQ31116000" <%=strEPQ31116000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31116000" type="text" value="5" size="1" name="EPQ31116000" <%=strEPQ31116000answer6%>></td>
</tr>

<tr>
<td>Other Fruits (for example, fresh apples or pears, bananas, berries, grapes, melons)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31117000" type="text" value="0" size="1" name="EPQ31117000" <%=strEPQ31117000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31117000" type="text" value="1" size="1" name="EPQ31117000" <%=strEPQ31117000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31117000" type="text" value="2" size="1" name="EPQ31117000" <%=strEPQ31117000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31117000" type="text" value="3" size="1" name="EPQ31117000" <%=strEPQ31117000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31117000" type="text" value="4" size="1" name="EPQ31117000" <%=strEPQ31117000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31117000" type="text" value="5" size="1" name="EPQ31117000" <%=strEPQ31117000answer6%>></td>
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
