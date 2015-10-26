
<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31119000")="0" then
		strEPQ31119000answer1="checked"
	end if
	if Session("EPQ31119000")="1" then
		strEPQ31119000answer2="checked"
	end if
	if Session("EPQ31119000")="2" then
		strEPQ31119000answer3="checked"
	end if
	if Session("EPQ31119000")="3" then
		strEPQ31119000answer4="checked"
	end if
	if Session("EPQ31119000")="4" then
		strEPQ31119000answer5="checked"
	end if
	if Session("EPQ31119000")="5" then
		strEPQ31119000answer6="checked"
	end if

	if Session("EPQ31120000")="0" then
		strEPQ31120000answer1="checked"
	end if
	if Session("EPQ31120000")="1" then
		strEPQ31120000answer2="checked"
	end if
	if Session("EPQ31120000")="2" then
		strEPQ31120000answer3="checked"
	end if
	if Session("EPQ31120000")="3" then
		strEPQ31120000answer4="checked"
	end if
	if Session("EPQ31120000")="4" then
		strEPQ31120000answer5="checked"
	end if
	if Session("EPQ31120000")="5" then
		strEPQ31120000answer6="checked"
	end if

	if Session("EPQ31121000")="0" then
		strEPQ31121000answer1="checked"
	end if
	if Session("EPQ31121000")="1" then
		strEPQ31121000answer2="checked"
	end if
	if Session("EPQ31121000")="2" then
		strEPQ31121000answer3="checked"
	end if
	if Session("EPQ31121000")="3" then
		strEPQ31121000answer4="checked"
	end if
	if Session("EPQ31121000")="4" then
		strEPQ31121000answer5="checked"
	end if
	if Session("EPQ31121000")="5" then
		strEPQ31121000answer6="checked"
	end if

	if Session("EPQ31122000")="0" then
		strEPQ31122000answer1="checked"
	end if
	if Session("EPQ31122000")="1" then
		strEPQ31122000answer2="checked"
	end if
	if Session("EPQ31122000")="2" then
		strEPQ31122000answer3="checked"
	end if
	if Session("EPQ31122000")="3" then
		strEPQ31122000answer4="checked"
	end if
	if Session("EPQ31122000")="4" then
		strEPQ31122000answer5="checked"
	end if
	if Session("EPQ31122000")="5" then
		strEPQ31122000answer6="checked"
	end if

	if Session("EPQ31123000")="0" then
		strEPQ31123000answer1="checked"
	end if
	if Session("EPQ31123000")="1" then
		strEPQ31123000answer2="checked"
	end if
	if Session("EPQ31123000")="2" then
		strEPQ31123000answer3="checked"
	end if
	if Session("EPQ31123000")="3" then
		strEPQ31123000answer4="checked"
	end if
	if Session("EPQ31123000")="4" then
		strEPQ31123000answer5="checked"
	end if
	if Session("EPQ31123000")="5" then
		strEPQ31123000answer6="checked"
	end if

	if Session("EPQ31124000")="0" then
		strEPQ31124000answer1="checked"
	end if
	if Session("EPQ31124000")="1" then
		strEPQ31124000answer2="checked"
	end if
	if Session("EPQ31124000")="2" then
		strEPQ31124000answer3="checked"
	end if
	if Session("EPQ31124000")="3" then
		strEPQ31124000answer4="checked"
	end if
	if Session("EPQ31124000")="4" then
		strEPQ31124000answer5="checked"
	end if
	if Session("EPQ31124000")="5" then
		strEPQ31124000answer6="checked"
	end if

	if Session("EPQ31125000")="0" then
		strEPQ31125000answer1="checked"
	end if
	if Session("EPQ31125000")="1" then
		strEPQ31125000answer2="checked"
	end if
	if Session("EPQ31125000")="2" then
		strEPQ31125000answer3="checked"
	end if
	if Session("EPQ31125000")="3" then
		strEPQ31125000answer4="checked"
	end if
	if Session("EPQ31125000")="4" then
		strEPQ31125000answer5="checked"
	end if
	if Session("EPQ31125000")="5" then
		strEPQ31125000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31119000string")= ""
	Session("EPQ31120000string")= ""
	Session("EPQ31121000string")= ""
	Session("EPQ31122000string")= ""
	Session("EPQ31123000string")= ""
	Session("EPQ31124000string")= ""
	Session("EPQ31125000string")= ""

	Session("EPQ31119000") = Request.Form("EPQ31119000")
	Session("EPQ31120000") = Request.Form("EPQ31120000")
	Session("EPQ31121000") = Request.Form("EPQ31121000")
	Session("EPQ31122000") = Request.Form("EPQ31122000")
	Session("EPQ31123000") = Request.Form("EPQ31123000")
	Session("EPQ31124000") = Request.Form("EPQ31124000")
	Session("EPQ31125000") = Request.Form("EPQ31125000")


	if Session("EPQ31119000") = "0" then 
		Session("EPQ31119000string")= ""
	end if
	if Session("EPQ31119000") = "1" then 
		Session("EPQ31119000string")= ""
	end if
	if Session("EPQ31119000") = "2" then 
		Session("EPQ31119000string")= ""
	end if
	if Session("EPQ31119000") = "3" then 
		Session("EPQ31119000string")= ""
	end if
	if Session("EPQ31119000") = "4" then 
		Session("EPQ31119000string")= ""
	end if
	if Session("EPQ31119000") = "5" then 
		Session("EPQ31119000string")= ""
	end if

	if Session("EPQ31120000") = "0" then 
		Session("EPQ31120000string")= ""
	end if
	if Session("EPQ31120000") = "1" then 
		Session("EPQ31120000string")= ""
	end if
	if Session("EPQ31120000") = "2" then 
		Session("EPQ31120000string")= ""
	end if
	if Session("EPQ31120000") = "3" then 
		Session("EPQ31120000string")= ""
	end if
	if Session("EPQ31120000") = "4" then 
		Session("EPQ31120000string")= ""
	end if
	if Session("EPQ31120000") = "5" then 
		Session("EPQ31120000string")= ""
	end if

	if Session("EPQ31121000") = "0" then 
		Session("EPQ31121000string")= ""
	end if
	if Session("EPQ31121000") = "1" then 
		Session("EPQ31121000string")= ""
	end if
	if Session("EPQ31121000") = "2" then 
		Session("EPQ31121000string")= ""
	end if
	if Session("EPQ31121000") = "3" then 
		Session("EPQ31121000string")= ""
	end if
	if Session("EPQ31121000") = "4" then 
		Session("EPQ31121000string")= ""
	end if
	if Session("EPQ31121000") = "5" then 
		Session("EPQ31121000string")= ""
	end if

	if Session("EPQ31122000") = "0" then 
		Session("EPQ31122000string")= ""
	end if
	if Session("EPQ31122000") = "1" then 
		Session("EPQ31122000string")= ""
	end if
	if Session("EPQ31122000") = "2" then 
		Session("EPQ31122000string")= ""
	end if
	if Session("EPQ31122000") = "3" then 
		Session("EPQ31122000string")= ""
	end if
	if Session("EPQ31122000") = "4" then 
		Session("EPQ31122000string")= ""
	end if
	if Session("EPQ31122000") = "5" then 
		Session("EPQ31122000string")= ""
	end if

	if Session("EPQ31123000") = "0" then 
		Session("EPQ31123000string")= ""
	end if
	if Session("EPQ31123000") = "1" then 
		Session("EPQ31123000string")= ""
	end if
	if Session("EPQ31123000") = "2" then 
		Session("EPQ31123000string")= ""
	end if
	if Session("EPQ31123000") = "3" then 
		Session("EPQ31123000string")= ""
	end if
	if Session("EPQ31123000") = "4" then 
		Session("EPQ31123000string")= ""
	end if
	if Session("EPQ31123000") = "5" then 
		Session("EPQ31123000string")= ""
	end if

	if Session("EPQ31124000") = "0" then 
		Session("EPQ31124000string")= ""
	end if
	if Session("EPQ31124000") = "1" then 
		Session("EPQ31124000string")= ""
	end if
	if Session("EPQ31124000") = "2" then 
		Session("EPQ31124000string")= ""
	end if
	if Session("EPQ31124000") = "3" then 
		Session("EPQ31124000string")= ""
	end if
	if Session("EPQ31124000") = "4" then 
		Session("EPQ31124000string")= ""
	end if
	if Session("EPQ31124000") = "5" then 
		Session("EPQ31124000string")= ""
	end if

	if Session("EPQ31125000") = "0" then 
		Session("EPQ31125000string")= ""
	end if
	if Session("EPQ31125000") = "1" then 
		Session("EPQ31125000string")= ""
	end if
	if Session("EPQ31125000") = "2" then 
		Session("EPQ31125000string")= ""
	end if
	if Session("EPQ31125000") = "3" then 
		Session("EPQ31125000string")= ""
	end if
	if Session("EPQ31125000") = "4" then 
		Session("EPQ31125000string")= ""
	end if
	if Session("EPQ31125000") = "5" then 
		Session("EPQ31125000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="71"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31117000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31118000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31119000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31120000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="9"

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
	For each question, indicate how often <u>on average</u> you have eaten the item(s) <u>during the past twelve months</u>.
	</div>
<br>

    <form action="cancerrisk8.asp" method="post" id="formQuestion" name="formQuestion">
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
<td>Whole milk, Dairy Foods (whole milk, hard cheese, butter, ice cream)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31119000" type="text" value="0" size="1" name="EPQ31119000" <%=strEPQ31119000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31119000" type="text" value="1" size="1" name="EPQ31119000" <%=strEPQ31119000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31119000" type="text" value="2" size="1" name="EPQ31119000" <%=strEPQ31119000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31119000" type="text" value="3" size="1" name="EPQ31119000" <%=strEPQ31119000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31119000" type="text" value="4" size="1" name="EPQ31119000" <%=strEPQ31119000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31119000" type="text" value="5" size="1" name="EPQ31119000" <%=strEPQ31119000answer6%>></td>
</tr>


<tr>
<td>Low-fat Milk Products (for example, low-fat/skim milk, yogurt, cottage cheese)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31120000" type="text" value="0" size="1" name="EPQ31120000" <%=strEPQ31120000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31120000" type="text" value="1" size="1" name="EPQ31120000" <%=strEPQ31120000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31120000" type="text" value="2" size="1" name="EPQ31120000" <%=strEPQ31120000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31120000" type="text" value="3" size="1" name="EPQ31120000" <%=strEPQ31120000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31120000" type="text" value="4" size="1" name="EPQ31120000" <%=strEPQ31120000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31120000" type="text" value="5" size="1" name="EPQ31120000" <%=strEPQ31120000answer6%>></td>
</tr>


<tr>
<td>Whole eggs</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31121000" type="text" value="0" size="1" name="EPQ31121000" <%=strEPQ31121000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31121000" type="text" value="1" size="1" name="EPQ31121000" <%=strEPQ31121000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31121000" type="text" value="2" size="1" name="EPQ31121000" <%=strEPQ31121000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31121000" type="text" value="3" size="1" name="EPQ31121000" <%=strEPQ31121000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31121000" type="text" value="4" size="1" name="EPQ31121000" <%=strEPQ31121000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31121000" type="text" value="5" size="1" name="EPQ31121000" <%=strEPQ31121000answer6%>></td>
</tr>


<tr>
<td>Margarine (stick-type not tub)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31122000" type="text" value="0" size="1" name="EPQ31122000" <%=strEPQ31122000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31122000" type="text" value="1" size="1" name="EPQ31122000" <%=strEPQ31122000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31122000" type="text" value="2" size="1" name="EPQ31122000" <%=strEPQ31122000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31122000" type="text" value="3" size="1" name="EPQ31122000" <%=strEPQ31122000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31122000" type="text" value="4" size="1" name="EPQ31122000" <%=strEPQ31122000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31122000" type="text" value="5" size="1" name="EPQ31122000" <%=strEPQ31122000answer6%>></td>
</tr>

<tr>
<td>Whole Grain Foods (for example, whole grain breads, brown rice)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31123000" type="text" value="0" size="1" name="EPQ31123000" <%=strEPQ31123000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31123000" type="text" value="1" size="1" name="EPQ31123000" <%=strEPQ31123000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31123000" type="text" value="2" size="1" name="EPQ31123000" <%=strEPQ31123000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31123000" type="text" value="3" size="1" name="EPQ31123000" <%=strEPQ31123000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31123000" type="text" value="4" size="1" name="EPQ31123000" <%=strEPQ31123000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31123000" type="text" value="5" size="1" name="EPQ31123000" <%=strEPQ31123000answer6%>></td>
</tr>


<tr>
<td>Baked Products (donuts, cookies, muffins, crackers, cakes, sweet rolls, pastries)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31124000" type="text" value="0" size="1" name="EPQ31124000" <%=strEPQ31124000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31124000" type="text" value="1" size="1" name="EPQ31124000" <%=strEPQ31124000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31124000" type="text" value="2" size="1" name="EPQ31124000" <%=strEPQ31124000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31124000" type="text" value="3" size="1" name="EPQ31124000" <%=strEPQ31124000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31124000" type="text" value="4" size="1" name="EPQ31124000" <%=strEPQ31124000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31124000" type="text" value="5" size="1" name="EPQ31124000" <%=strEPQ31124000answer6%>></td>
</tr>

<tr>
<td>Pasta, Rice, Noodles</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31125000" type="text" value="0" size="1" name="EPQ31125000" <%=strEPQ31125000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31125000" type="text" value="1" size="1" name="EPQ31125000" <%=strEPQ31125000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31125000" type="text" value="2" size="1" name="EPQ31125000" <%=strEPQ31125000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31125000" type="text" value="3" size="1" name="EPQ31125000" <%=strEPQ31125000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31125000" type="text" value="4" size="1" name="EPQ31125000" <%=strEPQ31125000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31125000" type="text" value="5" size="1" name="EPQ31125000" <%=strEPQ31125000answer6%>></td>
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
