
<%

Session("WomensRiskAssessmentSectionStatus")="Completed"
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	
if Request.Form("StopID")="1" then
	Session("WomensRiskAssessmentSectionStatus")="Completed"
	Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("WomensRiskSectionStatus")=""


if Session("EPQ30619000")="1" then
	if Session("EPQ30621000")= "0" then
	Session("Page")="15"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
	
	else
	Session("Page")="16"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
	end if
end if


	Session("Page")="14"
	Response.Redirect "womensriskmaster.asp"

end if

if Request.Form("ispostback")="1" then
end if



if Request.Form("ContinueID")="1" then

	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
 
	Response.Redirect "surgicalhistorymaster.asp"

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

<div id="wrapper">


<div id="formWrapper">


<div id="formBlock">
	<div id="SpecialNote">
You have now finished Module 6, Women's Risk Assessment.  Please press �Save & Continue� when ready.<br>
	</div>


    <form action="womensrisk0.asp" method="post" id="formQuestion" name="formQuestion">
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
