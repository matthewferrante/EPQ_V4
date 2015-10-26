
<%

Session("CancerScreeningSectionStatus")="Completed"
Session("PageHolder")="Module Complete"

if Request.Form("ispostback") <> "1" then
end if
	

if Request.Form("ispostback")="1" then
end if

if Request.Form("StopID")="1" then
		Session("CancerScreeningSectionStatus")="Completed"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	if Session("Gender")="M" then
			Session("Page")=6
			Session("CancerRiskSectionStatus")=""
			Response.Redirect "cancerscreeningmaster.asp"
	end if
	if Session("Gender")="F" then 
			Session("Page")=9
			Session("CancerRiskSectionStatus")=""
			Response.Redirect "cancerscreeningmaster.asp"
	end if

		If Session("EPQ30901120")= "0" then
			Session("Page")=1
			Session("CancerRiskSectionStatus")=""
			Response.Redirect "familyhistorymaster.asp"
		end if

		if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090") OR Session("EPQ30901140") OR Session("EPQ30901150") OR Session("EPQ30901100") OR Session("EPQ30901060") OR Session("EPQ30901070") OR Session("EPQ30901020") then
			Session("Page")=2
		else
			Session("Page")=1
		End if
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"
end if


if Request.Form("ContinueID")="1" then

	Session("Page")="1"
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
</div>

<div id="wrapper">


<div id="formWrapper">
	<div id="SpecialNote">
<%
if Session("Gender")="M" then 
%>
You have now finished Module 9, Cancer Screening.  Please press “Save & Continue” when ready.<br>
<% else%>
You have now finished Module 10, Cancer Screening.  Please press “Save & Continue” when ready.<br>
<% end if%>

	</div>


<div id="formBlock">


    <form action="cancerscreening0.asp" method="post" id="formQuestion" name="formQuestion">
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
