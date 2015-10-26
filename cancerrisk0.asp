
<%

	if Session("GI10201000")<>"1" then
		Session.Contents.Remove("EPQ31006000")
		Session.Contents.Remove("EPQ31007000MM")
		Session.Contents.Remove("EPQ31007000YY")
		Session.Contents.Remove("EPQ31007010")
		Session.Contents.Remove("EPQ31010000")
		Session.Contents.Remove("EPQ31011000")
		Session.Contents.Remove("EPQ31011000specify")
		Session.Contents.Remove("EPQ31012000MM")
		Session.Contents.Remove("EPQ31012000YY")
		Session.Contents.Remove("EPQ31012010")
	end if

Session("CancerRiskSectionStatus")="Completed"
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	

if Request.Form("ispostback")="1" then
end if


if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Completed"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
Session("CancerRiskSectionStatus")="Incomplete"

if Session("SurveyVersion")="HEME" then
if Session("HM10204000")="1" OR Session("HM10207000")="1" then
	Session("Page")="30"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("HM11102000")="1" or Session("THRC31101300")="1" or Session("THRC31101400")="1" or Session("THRC31101500")="1" or Session("THRC31101700")="1" or Session ("THRC31101900")="1" or Session("THRC31102000")="1" then
Session("Page")="26"
Response.Redirect "cancerriskmaster.asp"
else
Session("Page")="25a"
Response.Redirect "cancerriskmaster.asp"
end if

end if

if Session("SurveyVersion")="Thoracic" then
	if Session("THRC31102100")="1" then
	Session("Page")="25"
	else
	Session("Page")="26"
	end if 
else
	Session("Page")="22"
end if


if Session("SurveyVersion")="GI" then
	if Session("GI10201000")="1" then
		if Session("EPQ31010000")="1" then
		Session("Page")="29"
		Response.Redirect "cancerriskmaster.asp"
		else
		Session("Page")="28"
		Response.Redirect "cancerriskmaster.asp"
		end if 
	end if

	if Session("GI10201000")<>"1" and Session("THRC31102100")="1" then
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	else
		Session("Page")="26"
		Response.Redirect "cancerriskmaster.asp"
	end if 

end if

	if Session("TEMP2EPQ31169000") = "1" then 
	Session("Page")="53"
	Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("TEMP2EPQ31168000") = "1" then 
	Session("Page")="50"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMP2EPQ31167000") = "1" then 
	Session("Page")="49"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31167000") = "1" then 
	Session("Page")="47"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31166000") = "1" then 
	Session("Page")="45"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31165000") = "1" then 
	Session("Page")="43"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31164000") = "1" then 
	Session("Page")="41"
	Response.Redirect "cancerriskmaster.asp"
	end if


Session("Page")="40"
Response.Redirect "cancerriskmaster.asp"

end if


if Request.Form("ContinueID")="1" then

	Session("Page")="1"
	 <!--#include file="autosavefunction.asp"-->
 
	Response.Redirect "psychosocialmaster.asp"

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
You have now finished Module 9, Cancer Risk Assessment.  Please press “Save & Continue” when ready.<br>
<% else%>
You have now finished Module 10, Cancer Risk Assessment.  Please press “Save & Continue” when ready.<br>
<% end if%>
</div>


    <form action="cancerrisk0.asp" method="post" id="formQuestion" name="formQuestion">
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
