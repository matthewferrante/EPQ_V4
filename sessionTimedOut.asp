<%
if Request.Form("ispostback")="1" then

if Request.Form("StopID")="1" then
		Response.Redirect "sessionTimedOut.asp"
end if

if Request.Form("GoBackID")="1" then
		Response.Redirect "sessionTimedOut.asp"
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

<script src="scripts_js/jquery-1.3.2.js" type="text/javascript"></script>
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
You have been logged out for your security<br>
	</div>



    <form action="sessionTimedOut.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br>
	<div class="QuestionBox">
<%
=Session("StatusMsg2")
%>
<br>

<%
if Session("KioskMode")=1 or Session("KioskMode")=2 then
%>
Please see a Moffitt Associate for assistance.
<%
end if
%>

<%
if Session("KioskMode")<>1 AND Session("KioskMode")<>2 then
%>
Please close this window for your privacy.<BR><BR>  You may restart by clicking the Questionnaire button on your Appointments page in the patient portal.
<%
end if
%>

	</div>
  
</div> <!-- [ /#formBlock ] -->
	

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu2.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>