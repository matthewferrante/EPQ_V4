
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30601000")="9" then
		strEPQ30601000answer1="checked"
	end if
	if Session("EPQ30601000")="10" then
		strEPQ30601000answer2="checked"
	end if
	if Session("EPQ30601000")="11" then
		strEPQ30601000answer3="checked"
	end if
	if Session("EPQ30601000")="12" then
		strEPQ30601000answer4="checked"
	end if
	if Session("EPQ30601000")="13" then
		strEPQ30601000answer5="checked"
	end if
	if Session("EPQ30601000")="14" then
		strEPQ30601000answer6="checked"
	end if
	if Session("EPQ30601000")="15" then
		strEPQ30601000answer7="checked"
	end if
	if Session("EPQ30601000")="16" then
		strEPQ30601000answer8="checked"
	end if
	if Session("EPQ30601000")="88" then
		strEPQ30601000answer9="checked"
	end if
	if Session("EPQ30601000")="0" then
		strEPQ30601000answer10="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30601000string")= ""

	Session("EPQ30601000") = Request.Form("EPQ30601000")

	if Session("EPQ30601000") = "9" then 
		Session("EPQ30601000string")= "less than 9Y"
	end if
	if Session("EPQ30601000") = "10" then 
		Session("EPQ30601000string")= "10Y"
	end if
	if Session("EPQ30601000") = "11" then 
		Session("EPQ30601000string")= "11Y"
	end if
	if Session("EPQ30601000") = "12" then 
		Session("EPQ30601000string")= "12Y"
	end if
	if Session("EPQ30601000") = "13" then 
		Session("EPQ30601000string")= "13Y"
	end if
	if Session("EPQ30601000") = "14" then 
		Session("EPQ30601000string")= "14Y"
	end if
	if Session("EPQ30601000") = "15" then 
		Session("EPQ30601000string")= "15Y"
	end if
	if Session("EPQ30601000") = "16" then 
		Session("EPQ30601000string")= "greater than 16Y"
	end if
	if Session("EPQ30601000") = "88" then 
		Session("EPQ30601000string")= "PT unsure about age of menarche"
	end if
	if Session("EPQ30601000") = "0" then 
		Session("EPQ30601000string")= "Never Menstruated"
	end if
end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("WomensRiskScreeningSectionStatus")="Incomplete"
	if Session("KioskMode")= 1 then
		Session("Page")=24
		Response.Redirect "currentsymptomsmaster.asp"
	end if
	if Session("KioskMode")= 2 then
		Session("Page")=24
		Response.Redirect "currentsymptomsmaster.asp"
	end if
		Session("ReturnID")="1"
		Session("Page")=25

		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30619000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30601000")="0" then
		Session.Contents.Remove("EPQ30602000")
		Session.Contents.Remove("EPQ30602001")
		Session.Contents.Remove("EPQ30602003")

	end if

	if Session("EPQ30601000") = "0" then 
	Session("Page")="6"

	Response.Redirect "womensriskmaster.asp"

	else
	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
How old were you when you menstruated for the first time (had your first period)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30601000" value="9" class="required" id="EPQ306010001" <%=strEPQ30601000answer1%>>
		<label for="EPQ306010001">9 or younger</label><br>

		<input type="radio" name="EPQ30601000" value="10" id="EPQ306010002" <%=strEPQ30601000answer2%>>
		<label for="EPQ306010002">10</label><br>

		<input type="radio" name="EPQ30601000" value="11" id="EPQ306010003" <%=strEPQ30601000answer3%>>
		<label for="EPQ306010003">11</label><br>
		<input type="radio" name="EPQ30601000" value="12" id="EPQ306010004" <%=strEPQ30601000answer4%>>
		<label for="EPQ306010004">12</label><br>
		<input type="radio" name="EPQ30601000" value="13" id="EPQ306010005" <%=strEPQ30601000answer5%>>
		<label for="EPQ306010005">13</label><br>
		<input type="radio" name="EPQ30601000" value="14" id="EPQ306010006" <%=strEPQ30601000answer6%>>
		<label for="EPQ306010006">14</label><br>
		<input type="radio" name="EPQ30601000" value="15" id="EPQ306010007" <%=strEPQ30601000answer7%>>
		<label for="EPQ306010007">15</label><br>
		<input type="radio" name="EPQ30601000" value="16" id="EPQ306010008" <%=strEPQ30601000answer8%>>
		<label for="EPQ306010008">16 or older</label><br>
		<input type="radio" name="EPQ30601000" value="88" id="EPQ306010009" <%=strEPQ30601000answer9%>>
		<label for="EPQ306010009">Don't know</label><br>
		<input type="radio" name="EPQ30601000" value="0" id="EPQ3060100010" <%=strEPQ30601000answer10%>>
		<label for="EPQ3060100010">Never Menstruated</label><br>

	</div><!-- [ /#AnswerBox] --> </fieldset>
</div> <!-- [ /#formBlock ] -->
	
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
