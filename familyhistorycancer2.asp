
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMPEPQ31140010")="1" then
		strTEMPEPQ31140010answer1="checked"
	end if

	if Session("TEMPEPQ31140060")="1" then
		strTEMPEPQ31140060answer1="checked"
	end if
	if Session("TEMPEPQ31140080")="1" then
		strTEMPEPQ31140080answer1="checked"
	end if
	if Session("TEMPEPQ31140100")="1" then
		strTEMPEPQ31140100answer1="checked"
	end if
	if Session("TEMPEPQ31140120")="1" then
		strTEMPEPQ31140120answer1="checked"
	end if
	if Session("TEMPEPQ31140140")="1" then
		strTEMPEPQ31140140answer1="checked"
	end if
	if Session("TEMPEPQ31140160")="1" then
		strTEMPEPQ31140160answer1="checked"
	end if
end if

if Request.Form("ispostback")="1" then
	Session("TEMPEPQ31140010")= Request.Form("TEMPEPQ31140010")
	Session("TEMPEPQ31140060")= Request.Form("TEMPEPQ31140060")
	Session("TEMPEPQ31140080")= Request.Form("TEMPEPQ31140080")
	Session("TEMPEPQ31140100")= Request.Form("TEMPEPQ31140100")
	Session("TEMPEPQ31140120")= Request.Form("TEMPEPQ31140120")
	Session("TEMPEPQ31140140")= Request.Form("TEMPEPQ31140140")
	Session("TEMPEPQ31140160")= Request.Form("TEMPEPQ31140160")
end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="1"
		Response.Redirect "familyhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("TEMPEPQ30801000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("TEMPEPQ30802000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("TEMPEPQ30803000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("TEMPEPQ31140120")="1" then
	Session("FamilyHistoryCancerSectionStatus")="Completed"
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	else

	if Session("TEMPEPQ31140080")="1" OR Session("TEMPEPQ31140060")="1" OR Session("TEMPEPQ31140010")="1" OR Session("TEMPEPQ31140100")="1" then
	Session("Page")="3"
	else 
	Session("Page")="3"
	end if

	Response.Redirect "familyhistorycancermaster.asp"
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


    <form action="familyhistorycancer2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		




	<fieldset class='eitherNoneOrChecked'>
  <legend class='QuestionBox'>
Which of your <u>IMMEDIATE</u> blood-related family members can you provide information on their medical history?  Check all that apply.
<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="TEMPEPQ31140160" value="1" id="TEMPEPQ31140160" <%=strTEMPEPQ31140160answer1%>>
		<label for="TEMPEPQ31140160">Mother</label><br>

		<input type="checkbox" name="TEMPEPQ31140140" value="1" id="TEMPEPQ31140140" <%=strTEMPEPQ31140140answer1%>>
		<label for="TEMPEPQ31140140">Father</label><br>

		<input type="checkbox" name="TEMPEPQ31140080" value="1" id="TEMPEPQ31140080" <%=strTEMPEPQ31140080answer1%>>
		<label for="TEMPEPQ31140080">Brother(s)</label><br>

		<input type="checkbox" name="TEMPEPQ31140060" value="1" id="TEMPEPQ31140060" <%=strTEMPEPQ31140060answer1%>>
		<label for="TEMPEPQ31140060">Sister(s)</label><br>

		<input type="checkbox" name="TEMPEPQ31140010" value="1" id="TEMPEPQ31140010" <%=strTEMPEPQ31140010answer1%>>
		<label for="TEMPEPQ31140010">Son(s)</label><br>
		<input type="checkbox" name="TEMPEPQ31140100" value="1" id="TEMPEPQ31140100" <%=strTEMPEPQ31140100answer1%>>
		<label for="TEMPEPQ31140100">Daughter(s)</label><br>

<br>

		<input type="radio" name="TEMPEPQ31140120" value="1" id="TEMPEPQ31140120" <%=strTEMPEPQ31140120answer1%>>
		<label for="TEMPEPQ31140120">None</label><br>
	</fieldset>
</div> <!-- [ /#QuestionAnswerBlock ] -->

	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
</div> <!-- [ /#formBlock ] -->
</div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
