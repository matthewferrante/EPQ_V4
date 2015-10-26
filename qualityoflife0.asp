
<%

	if Session("GI10202000")<>"1" then
		Session.Contents.Remove("GI11307000")
		Session.Contents.Remove("GI11308000")
		Session.Contents.Remove("GI11309000")
		Session.Contents.Remove("GI11310000")
		Session.Contents.Remove("GI11311000")
		Session.Contents.Remove("GI11312000")
		Session.Contents.Remove("GI11313000")
		Session.Contents.Remove("GI11314000")
		Session.Contents.Remove("GI11315000")
		Session.Contents.Remove("GI11316000")
		Session.Contents.Remove("GI11317000")
		Session.Contents.Remove("GI11318000")
	end if

	if Session("GI10201000")<>"1" then
		Session.Contents.Remove("GI11319000")
		Session.Contents.Remove("GI11320000")
		Session.Contents.Remove("GI11321000")
		Session.Contents.Remove("GI11322000")
		Session.Contents.Remove("GI11323000")
		Session.Contents.Remove("GI11324000")
		Session.Contents.Remove("GI11325000")
		Session.Contents.Remove("GI11326000")
		Session.Contents.Remove("GI11327000")
		Session.Contents.Remove("GI11328000")
		Session.Contents.Remove("GI11329000")
		Session.Contents.Remove("GI11330000")
		Session.Contents.Remove("GI11331000")
		Session.Contents.Remove("GI11332000")
		Session.Contents.Remove("GI11333000")
		Session.Contents.Remove("GI11334000")
		Session.Contents.Remove("GI11335000")
		Session.Contents.Remove("GI11336000")
		Session.Contents.Remove("GI11337000")
		Session.Contents.Remove("GI11338000")
		Session.Contents.Remove("GI11339000")
		Session.Contents.Remove("GI11340000")
		Session.Contents.Remove("GI11341000")
		Session.Contents.Remove("GI11342000")
		Session.Contents.Remove("GI11343000")
		Session.Contents.Remove("GI11344000")
		Session.Contents.Remove("GI11345000")
		Session.Contents.Remove("GI11346000")
		Session.Contents.Remove("GI11347000")
		Session.Contents.Remove("GI11348000")
		Session.Contents.Remove("GI11349000")
		Session.Contents.Remove("GI11350000")
		Session.Contents.Remove("GI11351000")
		Session.Contents.Remove("GI11352000")
		Session.Contents.Remove("GI11353000")
		Session.Contents.Remove("GI11354000")
		Session.Contents.Remove("GI11355000")

	end if

	if Session("GI10202000")<>"1" and Session("GI10201000")<>"1" then
		Session.Contents.Remove("GI11301000")
		Session.Contents.Remove("GI11302000")
		Session.Contents.Remove("GI11303000")
		Session.Contents.Remove("GI11304000")
		Session.Contents.Remove("GI11305000")
		Session.Contents.Remove("GI11306000")
	end if


<!--#include file="include/productionmode.asp"-->

Session("QOLSectionStatus")="Completed"
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	

if Request.Form("ispostback")="1" then
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Completed"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Session("QOLSectionStatus")=""
		Session("SurveyStatus")="Incomplete"

if Session("GI10201000")="1" then
	Session("Page")="35"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10202000")="1" then
	Session("Page")="29"
	Response.Redirect "qualityoflifemaster.asp"
end if
if Session("GI10203000")="1" then
	Session("Page")="5"
	Response.Redirect "qualityoflifemaster.asp"
	 <!--#include file="autosavefunction.asp"-->
end if


if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM10204000")="1" then
		Session("Page")="52"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10202000")="1" OR Session("HM10206000")="1" then
		Session("Page")="41"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("HM10201000")="1" or Session("HM10203000")="1" then
		Session("Page")="37"
		Response.Redirect "qualityoflifemaster.asp"
	else
			Session("Page")="5"
		Response.Redirect "qualityoflifemaster.asp"
	end if

end if
end if


if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10201000")="1" then
		Session("Page")="27"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

	if Session("GU10202000")="1" then
		Session("Page")="17"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if


end if
end if

		Response.Redirect "qualityoflifemaster.asp"
end if


if Request.Form("ContinueID")="1" then


	Session("Page")="1"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "surveyquestion1.asp"

	Response.Redirect "moffittreport.asp"

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
</div>

<div id="wrapper">


<div id="formWrapper">

<div id="formBlock">
<div id="SpecialNote">
<%
if Session("Gender")="M" then 
%>
You have now finished Module 11, Quality of Life.  Please press “Save & Continue” when ready.<br>
<% else%>
You have now finished Module 12, Quality of Life.  Please press “Save & Continue” when ready.<br>

<% end if%>

</div>

    <form action="qualityoflife0.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

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
