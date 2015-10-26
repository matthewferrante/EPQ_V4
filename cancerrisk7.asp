
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31141010")="1" then
		strEPQ31141010answer1="checked"
	end if
	if Session("EPQ31141020")="1" then
		strEPQ31141020answer1="checked"
	end if
	if Session("EPQ31141030")="1" then
		strEPQ31141030answer1="checked"
	end if
	if Session("EPQ31141040")="1" then
		strEPQ31141040answer1="checked"
	end if
	if Session("EPQ31141050")="1" then
		strEPQ31141050answer1="checked"
	end if
	if Session("EPQ31141060")="1" then
		strEPQ31141060answer1="checked"
	end if
	if Session("EPQ31141070")="1" then
		strEPQ31141070answer1="checked"
	end if
	if Session("EPQ31141080")="1" then
		strEPQ31141080answer1="checked"
	end if
	if Session("EPQ31141090")="1" then
		strEPQ31141090answer1="checked"
	end if
	if Session("EPQ31141100")="1" then
		strEPQ31141100answer1="checked"
	end if
	if Session("EPQ31141110")="1" then
		strEPQ31141110answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31141010string")= ""
	Session("EPQ31141020string")= ""
	Session("EPQ31141030string")= ""
	Session("EPQ31141040string")= ""
	Session("EPQ31141050string")= ""
	Session("EPQ31141060string")= ""
	Session("EPQ31141070string")= ""
	Session("EPQ31141080string")= ""
	Session("EPQ31141090string")= ""
	Session("EPQ31141100string")= ""
	Session("EPQ31141110string")= ""

	Session("EPQ31141010") = Request.Form("EPQ31141010")
	Session("EPQ31141020") = Request.Form("EPQ31141020")
	Session("EPQ31141030") = Request.Form("EPQ31141030")
	Session("EPQ31141040") = Request.Form("EPQ31141040")
	Session("EPQ31141050") = Request.Form("EPQ31141050")
	Session("EPQ31141060") = Request.Form("EPQ31141060")
	Session("EPQ31141070") = Request.Form("EPQ31141070")
	Session("EPQ31141080") = Request.Form("EPQ31141080")
	Session("EPQ31141090") = Request.Form("EPQ31141090")
	Session("EPQ31141100") = Request.Form("EPQ31141100")
	Session("EPQ31141110") = Request.Form("EPQ31141110")

	if Session("EPQ31141010") = "1" then 
		Session("EPQ31141010string")= ""
	end if
	if Session("EPQ31141020") = "1" then 
		Session("EPQ31141020string")= ""
	end if
	if Session("EPQ31141030") = "1" then 
		Session("EPQ31141030string")= ""
	end if
	if Session("EPQ31141040") = "1" then 
		Session("EPQ31141040string")= ""
	end if
	if Session("EPQ31141050") = "1" then 
		Session("EPQ31141050string")= ""
	end if
	if Session("EPQ31141060") = "1" then 
		Session("EPQ31141060string")= ""
	end if
	if Session("EPQ31141070") = "1" then 
		Session("EPQ31141070string")= ""
	end if
	if Session("EPQ31141080") = "1" then 
		Session("EPQ31141080string")= ""
	end if
	if Session("EPQ31141090") = "1" then 
		Session("EPQ31141090string")= ""
	end if
	if Session("EPQ31141100") = "1" then 
		Session("EPQ31141100string")= ""
	end if
	if Session("EPQ31141110") = "1" then 
		Session("EPQ31141110string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	Session("Page")="6"
	Response.Redirect "cancerriskmaster.asp"

	if Session("THRC39400000")="1" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC39400000")="2" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31159000")="1" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31159000")="2" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31158000")="1" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31158000")="2" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="19b"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="8"
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


    <form action="cancerrisk7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class='eitherNoneOrChecked'><legend class='QuestionBox'>
During the past 12 months, have you seen a professional provider, licensed practitioner, or therapist for any of the following for your own health? Check all that apply. <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ31141010" value="1" id="EPQ31141010" <%=strEPQ31141010answer1%>>
		<label for="EPQ31141010">Acupuncture</label><br>
		<input type="checkbox" name="EPQ31141020" value="1" id="EPQ31141020" <%=strEPQ31141020answer1%>>
		<label for="EPQ31141020">Ayurveda</label><br>
		<input type="checkbox" name="EPQ31141030" value="1" id="EPQ31141030" <%=strEPQ31141030answer1%>>
		<label for="EPQ31141030">Biofeedback</label><br>
		<input type="checkbox" name="EPQ31141040" value="1" id="EPQ31141040" <%=strEPQ31141040answer1%>>
		<label for="EPQ31141040">Chelation therapy</label><br>
		<input type="checkbox" name="EPQ31141050" value="1" id="EPQ31141050" <%=strEPQ31141050answer1%>>
		<label for="EPQ31141050">Chiropractic care</label><br>
		<input type="checkbox" name="EPQ31141060" value="1" id="EPQ31141060" <%=strEPQ31141060answer1%>>
		<label for="EPQ31141060">Energy healing therapy (for example, Reiki)</label><br>
		<input type="checkbox" name="EPQ31141070" value="1" id="EPQ31141070" <%=strEPQ31141070answer1%>>
		<label for="EPQ31141070">Folk medicine (for example, Curanderismo or Native American healing)</label><br>
		<input type="checkbox" name="EPQ31141080" value="1" id="EPQ31141080" <%=strEPQ31141080answer1%>>
		<label for="EPQ31141080">Hypnosis</label><br>
		<input type="checkbox" name="EPQ31141090" value="1" id="EPQ31141090" <%=strEPQ31141090answer1%>>
		<label for="EPQ31141090">Massage therapy</label><br>
		<input type="checkbox" name="EPQ31141100" value="1" id="EPQ31141100" <%=strEPQ31141100answer1%>>
		<label for="EPQ31141100">Naturopathy</label><br><br>
		<input type="radio" name="EPQ31141110" value="1" id="EPQ31141110" <%=strEPQ31141110answer1%>>
		<label for="EPQ31141110">None of these</label><br>
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
