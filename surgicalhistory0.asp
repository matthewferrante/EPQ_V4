
<%

Session("PastSurgicalHistorySectionStatus")="Completed"
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	
if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Completed"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("EPQ30701010")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Session("FamilyHistoryCancerSectionStatus")=""
		Response.Redirect "surgicalhistorymaster.asp"
	end if
	if Session("EPQ30701020")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Session("FamilyHistoryCancerSectionStatus")=""
		Response.Redirect "surgicalhistorymaster.asp"
	end if

If Session("Gender")="F" then 
	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Session("FamilyHistoryCancerSectionStatus")="Incomplete"
	Response.Redirect "surgicalhistorymaster.asp"

	else

	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Session("FamilyHistoryCancerSectionStatus")="Incomplete"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if


if Request.Form("ispostback")="1" then
end if



if Request.Form("ContinueID")="1" then

	Session("Page")="1"
	 <!--#include file="autosavefunction.asp"-->
 
	Response.Redirect "familyhistorycancermaster.asp"

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
You have now finished Module 6, Surgical Clinical History.  Please press “Save & Continue” when ready.<br>
<% else%>
You have now finished Module 7, Surgical Clinical History.  Please press “Save & Continue” when ready.<br>

<% end if%>

	</div>


    <form action="surgicalhistory0.asp" method="post" id="formQuestion" name="formQuestion">
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
