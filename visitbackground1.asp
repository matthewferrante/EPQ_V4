<%
Session("VisitBackgroundSectionStatus")="Current"
Session("PageHolder")="Visit Background"


if Request.Form("ispostback") <> "1" then
	if Session("EPQ30205000")="1" then
		strEPQ30205000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30201000") = Request.Form("EPQ30201000")
               
end if

if Request.Form("StopID")="1" then
		Session("VisitBackgroundSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30101000")="3" then 
	Session("Page")="8"
	else 
	Session("Page")="7"
	end if


		Session("ReturnID")="1"
		Session("VisitBackgroundSectionStatus")=""
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30201000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "visitbackgroundmaster.asp"

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
<script src="scripts_js/scripts.js" type="text/javascript">
</script>
<script language="javascript" TYPE="text/javascript">
</script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
	 <!--#include file="functionbox.asp"-->
		-->
		</script>
<script type="text/javascript">
function countChars(countfrom,displayto) {
  var len = document.getElementById(countfrom).value.length;
  document.getElementById(displayto).innerHTML = len;
}
</script>

</head>
<body>

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->
</div>

<div id="wrapper">

 <div id="formWrapper">
   <div id="formBlock">
		
    <form action="visitbackground1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class="QuestionBox">
		For what reason(s) are you visiting the clinic or having this exam? Please enter up to 500 characters.<br>
	</legend>

	<div class="QuestionAnswersBox">



<textarea cols="80" rows="6" id="EPQ30201000" maxlength="500" name="EPQ30201000" class="required" 
onkeyup="countChars('EPQ30201000','charcount');" onkeydown="countChars('EPQ30201000','charcount');" onmouseout="countChars('EPQ30201000','charcount');"><%=Session("EPQ30201000")%></textarea><br>
<span id="charcount">0</span> characters entered.

  </fieldset>

<div class="ResetBox">
</div>

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
