
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31145050")="1" then
		strEPQ31145050answer1="checked"
	end if
	if Session("EPQ31145060")="1" then
		strEPQ31145060answer1="checked"
	end if
	if Session("EPQ31145070")="1" then
		strEPQ31145070answer1="checked"
	end if
	if Session("EPQ31145080")="1" then
		strEPQ31145080answer1="checked"
	end if
	if Session("EPQ31145090")="1" then
		strEPQ31145090answer1="checked"
	end if
	if Session("EPQ31145100")="1" then
		strEPQ31145100answer1="checked"
	end if
	if Session("EPQ31145110")="1" then
		strEPQ31145110answer1="checked"
	end if
	if Session("EPQ31145120")="1" then
		strEPQ31145120answer1="checked"
	end if
	if Session("EPQ31145130")="1" then
		strEPQ31145130answer1="checked"
	end if
	if Session("EPQ31145140")="1" then
		strEPQ31145140answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31145050string")= ""
	Session("EPQ31145060string")= ""
	Session("EPQ31145070string")= ""
	Session("EPQ31145080string")= ""
	Session("EPQ31145090string")= ""
	Session("EPQ31145100string")= ""
	Session("EPQ31145110string")= ""
	Session("EPQ31145120string")= ""
	Session("EPQ31145130string")= ""
	Session("EPQ31145140string")= ""


	Session("EPQ31145050") = Request.Form("EPQ31145050")
	Session("EPQ31145060") = Request.Form("EPQ31145060")
	Session("EPQ31145070") = Request.Form("EPQ31145070")
	Session("EPQ31145090") = Request.Form("EPQ31145090")
	Session("EPQ31145110") = Request.Form("EPQ31145110")
	Session("EPQ31145130") = Request.Form("EPQ31145130")
	Session("EPQ31145140") = Request.Form("EPQ31145140")


	if Session("EPQ31145050") = "1" then 
		Session("EPQ31145050string")= ""
	end if
	if Session("EPQ31145060") = "1" then 
		Session("EPQ31145060string")= ""
	end if
	if Session("EPQ31145070") = "1" then 
		Session("EPQ31145070string")= ""
	end if
	if Session("EPQ31145090") = "1" then 
		Session("EPQ31145090string")= ""
	end if
	if Session("EPQ31145110") = "1" then 
		Session("EPQ31145110string")= ""
	end if
	if Session("EPQ31145130") = "1" then 
		Session("EPQ31145130string")= ""
	end if
	if Session("EPQ31145140") = "1" then 
		Session("EPQ31145140string")= ""
	end if


	if Session("EPQ31146000") = "1" then 
		Session("EPQ31146000string")= ""
	end if
	if Session("EPQ31146000") = "2" then 
		Session("EPQ31146000string")= ""
	end if
	if Session("EPQ31146000") = "77" then 
		Session("EPQ31146000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then



if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311035")="1" then
	Session("Page")="2cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311026")="1" then
	Session("Page")="1cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("EPQ30312040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30313040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30314040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30315040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30316040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30317040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30318040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30319040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30320040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30321040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30322040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30323040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30324040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30325040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30326040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30327040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30328040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30329040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30330040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30331040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30332040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30333040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30334040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30335040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30337040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30338040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30339040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30340040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30342040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if





		Session("Page")="3"
		if Session("PHCDisplayCounter") > 9 then
		Session("Page")="31"
		end if

		if Session("PHCDisplayCounter") > 18 then
		Session("Page")="32"
		end if

		if Session("PHCDisplayCounter") > 27 then
		Session("Page")="32"
		end if

		Session("ReturnID")="1"
		Response.Redirect "personalhistorycancermaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "personalhistorycancermaster.asp"
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


    <form action="personalhistorycancer3cuta.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


	<fieldset class='eitherNoneOrChecked'>
  <legend class='QuestionBox'>
Have you ever had any of the following conditions affecting your skin? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ31145050" value="1" id="EPQ31145050" <%=strEPQ31145050answer1%>>
		<label for="EPQ31145050">Large number of moles as a child</label><br>
		<input type="checkbox" name="EPQ31145070" value="1" id="EPQ31145070" <%=strEPQ31145070answer1%>>
		<label for="EPQ31145070">Large number of moles now</label><br>
		<input type="checkbox" name="EPQ31145130" value="1" id="EPQ31145130" <%=strEPQ31145130answer1%>>
		<label for="EPQ31145130">Mole or birthmark that disappeared</label><br>

<br><Br>
		<input type="radio" name="EPQ31145140" value="1" id="EPQ31145140" <%=strEPQ31145140answer1%>>
		<label for="EPQ31145140">None of these</label><br>

</span>
<span class="column2">
		<input type="checkbox" name="EPQ31145090" value="1" id="EPQ31145090" <%=strEPQ31145090answer1%>>
		<label for="EPQ31145090">Moles that were present from birth</label><br>
		<input type="checkbox" name="EPQ31145060" value="1" id="EPQ31145060" <%=strEPQ31145060answer1%>>
		<label for="EPQ31145060">Tendency to freckle</label><br>
		<input type="checkbox" name="EPQ31145110" value="1" id="EPQ31145110" <%=strEPQ31145110answer1%>>
		<label for="EPQ31145110">White rings around any mole or birthmark</label><br>

</span></div>
<br><BR><BR><br><BR><BR>

	</legend><!-- [ /#AnswerBox] -->   
  </fieldset> 


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
