
<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31164000")="0" then
		strEPQ31164000answer1="checked"
	end if
	if Session("EPQ31164000")="1" then
		strEPQ31164000answer2="checked"
	end if
	if Session("EPQ31164000")="2" then
		strEPQ31164000answer3="checked"
	end if
	if Session("EPQ31164000")="3" then
		strEPQ31164000answer4="checked"
	end if
	if Session("EPQ31164000")="4" then
		strEPQ31164000answer5="checked"
	end if
	if Session("EPQ31164000")="5" then
		strEPQ31164000answer6="checked"
	end if

	if Session("EPQ31165000")="0" then
		strEPQ31165000answer1="checked"
	end if
	if Session("EPQ31165000")="1" then
		strEPQ31165000answer2="checked"
	end if
	if Session("EPQ31165000")="2" then
		strEPQ31165000answer3="checked"
	end if
	if Session("EPQ31165000")="3" then
		strEPQ31165000answer4="checked"
	end if
	if Session("EPQ31165000")="4" then
		strEPQ31165000answer5="checked"
	end if
	if Session("EPQ31165000")="5" then
		strEPQ31165000answer6="checked"
	end if

	if Session("EPQ31166000")="0" then
		strEPQ31166000answer1="checked"
	end if
	if Session("EPQ31166000")="1" then
		strEPQ31166000answer2="checked"
	end if
	if Session("EPQ31166000")="2" then
		strEPQ31166000answer3="checked"
	end if
	if Session("EPQ31166000")="3" then
		strEPQ31166000answer4="checked"
	end if
	if Session("EPQ31166000")="4" then
		strEPQ31166000answer5="checked"
	end if
	if Session("EPQ31166000")="5" then
		strEPQ31166000answer6="checked"
	end if

	if Session("EPQ31167000")="0" then
		strEPQ31167000answer1="checked"
	end if
	if Session("EPQ31167000")="1" then
		strEPQ31167000answer2="checked"
	end if
	if Session("EPQ31167000")="2" then
		strEPQ31167000answer3="checked"
	end if
	if Session("EPQ31167000")="3" then
		strEPQ31167000answer4="checked"
	end if
	if Session("EPQ31167000")="4" then
		strEPQ31167000answer5="checked"
	end if
	if Session("EPQ31167000")="5" then
		strEPQ31167000answer6="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31164000string")= ""
	Session("EPQ31165000string")= ""
	Session("EPQ31166000string")= ""
	Session("EPQ31167000string")= ""

	Session("EPQ31164000") = Request.Form("EPQ31164000")
	Session("EPQ31165000") = Request.Form("EPQ31165000")
	Session("EPQ31166000") = Request.Form("EPQ31166000")
	Session("EPQ31167000") = Request.Form("EPQ31167000")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=9
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31164000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31165000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="11"

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
	Over the past 12 months, did you drink any of the following <u><b>caffeinated beverages</b></u> at least once per week? (Check all that apply.) Please indicate how many of these caffeinated drinks you drink per week.
	</div>
<br><br>

    <form action="cancerrisk10.asp" method="post" id="formQuestion" name="formQuestion">
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
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">Item</th>
				<th rowspan="2">Serving Size</th>
				<th rowspan="2">Never</th>
				<th rowspan="2">Less than 1 serving per week</th>
				<th rowspan="2">1 serving per week</th>
				<th rowspan="2">2-4 servings per week</th>
				<th rowspan="2">5-10 servings per week</th>
				<th rowspan="2">10 or more servings<br> per week</th>
			</tr>

		   <tbody>
<tr>
<td>Coffee or Espresso including espresso drinks such as cappuccinos or lattes?</td>
<td>6 oz. cup or<br>single espresso shot</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31164000" type="text" value="0" size="1" name="EPQ31164000" <%=strEPQ31164000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31164000" type="text" value="1" size="1" name="EPQ31164000" <%=strEPQ31164000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31164000" type="text" value="2" size="1" name="EPQ31164000" <%=strEPQ31164000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31164000" type="text" value="3" size="1" name="EPQ31164000" <%=strEPQ31164000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31164000" type="text" value="4" size="1" name="EPQ31164000" <%=strEPQ31164000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31164000" type="text" value="5" size="1" name="EPQ31164000" <%=strEPQ31164000answer6%>></td>
</tr>
<tr>
<td>Hot Tea?</td>
<td>6 oz. cup</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31165000" type="text" value="0" size="1" name="EPQ31165000" <%=strEPQ31165000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31165000" type="text" value="1" size="1" name="EPQ31165000" <%=strEPQ31165000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31165000" type="text" value="2" size="1" name="EPQ31165000" <%=strEPQ31165000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31165000" type="text" value="3" size="1" name="EPQ31165000" <%=strEPQ31165000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31165000" type="text" value="4" size="1" name="EPQ31165000" <%=strEPQ31165000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31165000" type="text" value="5" size="1" name="EPQ31165000" <%=strEPQ31165000answer6%>></td>
</tr>
<tr>
<td>Iced Tea?</td>
<td>12 oz. glass</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31166000" type="text" value="0" size="1" name="EPQ31166000" <%=strEPQ31166000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31166000" type="text" value="1" size="1" name="EPQ31166000" <%=strEPQ31166000answer2%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31166000" type="text" value="2" size="1" name="EPQ31166000" <%=strEPQ31166000answer3%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31166000" type="text" value="3" size="1" name="EPQ31166000" <%=strEPQ31166000answer4%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31166000" type="text" value="4" size="1" name="EPQ31166000" <%=strEPQ31166000answer5%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31166000" type="text" value="5" size="1" name="EPQ31166000" <%=strEPQ31166000answer6%>></td>
</tr>
<tr>
<td>
Soda or Energy Drink (such as Coca-Cola, Diet Pepsi, Dr. Pepper, Mountain Dew, Red Bull, etc.)?</td>
<td>12 oz. can</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31167000" type="text" value="0" size="1" name="EPQ31167000" <%=strEPQ31167000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="EPQ31167000" type="text" value="1" size="1" name="EPQ31167000" <%=strEPQ31167000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31167000" type="text" value="2" size="1" name="EPQ31167000" <%=strEPQ31167000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31167000" type="text" value="3" size="1" name="EPQ31167000" <%=strEPQ31167000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31167000" type="text" value="4" size="1" name="EPQ31167000" <%=strEPQ31167000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31167000" type="text" value="5" size="1" name="EPQ31167000" <%=strEPQ31167000answer6%>></td>
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
