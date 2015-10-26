<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC31101000")="1" then
		strTHRC31101000answer1="checked"
	end if
	if Session("THRC31101100")="1" then
		strTHRC31101100answer1="checked"
	end if
	if Session("THRC31101200")="1" then
		strTHRC31101200answer1="checked"
	end if
	if Session("THRC31101300")="1" then
		strTHRC31101300answer1="checked"
	end if
	if Session("THRC31101400")="1" then
		strTHRC31101400answer1="checked"
	end if
	if Session("THRC31101500")="1" then
		strTHRC31101500answer1="checked"
	end if
	if Session("THRC31101600")="1" then
		strTHRC31101600answer1="checked"
	end if
	if Session("THRC31101700")="1" then
		strTHRC31101700answer1="checked"
	end if
	if Session("THRC31101800")="1" then
		strTHRC31101800answer1="checked"
	end if
	if Session("THRC31101900")="1" then
		strTHRC31101900answer1="checked"
	end if
	if Session("GI11101000")="1" then
		strGI11101000answer1="checked"
	end if
	if Session("GI11101100")="1" then
		strGI11101100answer1="checked"
	end if
	if Session("THRC31102000")="1" then
		strTHRC31102000answer1="checked"
	end if
	if Session("THRC31102100")="1" then
		strTHRC31102100answer1="checked"
	end if
	if Session("HM11102000")="1" then
		strHM11102000answer1="checked"
	end if

end if

if Request.Form("ispostback")="1" then

	Session("THRC31101000")= Request.Form("THRC31101000")
	Session("THRC31101100")= Request.Form("THRC31101100")
	Session("THRC31101200")= Request.Form("THRC31101200")
	Session("THRC31101300")= Request.Form("THRC31101300")
	Session("THRC31101400")= Request.Form("THRC31101400")
	Session("THRC31101500")= Request.Form("THRC31101500")
	Session("THRC31101600")= Request.Form("THRC31101600")
	Session("THRC31101700")= Request.Form("THRC31101700")
	Session("THRC31101800")= Request.Form("THRC31101800")
	Session("THRC31101900")= Request.Form("THRC31101900")
	Session("GI11101000")= Request.Form("GI11101000")
	Session("GI11101100")= Request.Form("GI11101100")
	Session("THRC31102000")= Request.Form("THRC31102000")
	Session("THRC31102100")= Request.Form("THRC31102100")
	Session("HM11102000")= Request.Form("HM11102000")

end if


if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
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
		Session("ReturnID")="1"
		Session("Page")=40
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("THRC31101000") <> "1" then
		Session("THRC31101000") = "0"
	end if
	if Session("THRC31101100") <> "1" then
		Session("THRC31101100") = "0"
	end if
	if Session("THRC31101200") <> "1" then
		Session("THRC31101200") = "0"
	end if
	if Session("THRC31101300") <> "1" then
		Session("THRC31101300") = "0"
	end if
	if Session("THRC31101400") <> "1" then
		Session("THRC31101400") = "0"
	end if
	if Session("THRC31101500") <> "1" then
		Session("THRC31101500") = "0"
	end if
	if Session("THRC31101600") <> "1" then
		Session("THRC31101600") = "0"
	end if
	if Session("THRC31101700") <> "1" then
		Session("THRC31101700") = "0"
	end if
	if Session("THRC31101800") <> "1" then
		Session("THRC31101800") = "0"
	end if
	if Session("THRC31101900") <> "1" then
		Session("THRC31101900") = "0"
	end if
	if Session("GI11101000") <> "1" then
		Session("GI11101000") = "0"
	end if
	if Session("GI11101100") <> "1" then
		Session("GI11101100") = "0"
	end if
 	if Session("THRC31102000") <> "1" then
		Session("THRC31102000") = "0"
	end if
	if Session("THRC31102100") <> "1" then
		Session("THRC31102100") = "0"
	end if
	if Session("HM11102000") <> "1" then
		Session("HM11102000") = "0"
	end if

	if Session("THRC31101000")<>"1" then

		Session.Contents.Remove("THRC31103300")
		Session.Contents.Remove("THRC31102200")
	end if

	if Session("THRC31101100")<>"1" then

		Session.Contents.Remove("THRC31103400")
		Session.Contents.Remove("THRC31102300")
	end if

	if Session("THRC31101200")<>"1" then

		Session.Contents.Remove("THRC31103500")
		Session.Contents.Remove("THRC31102400")
	end if

	if Session("THRC31101300")<>"1" then

		Session.Contents.Remove("THRC31103600")
		Session.Contents.Remove("THRC31102500")
	end if

	if Session("THRC31101400")<>"1" then

		Session.Contents.Remove("THRC31103700")
		Session.Contents.Remove("THRC31102600")
	end if

	if Session("THRC31101500")<>"1" then

		Session.Contents.Remove("THRC31103800")
		Session.Contents.Remove("THRC31102700")
	end if

	if Session("THRC31101600")<>"1" then

		Session.Contents.Remove("THRC31103900")
		Session.Contents.Remove("THRC31102800")
	end if

	if Session("THRC31101700")<>"1" then

		Session.Contents.Remove("THRC31104000")
		Session.Contents.Remove("THRC31102900")
	end if

	if Session("THRC31101800")<>"1" then

		Session.Contents.Remove("THRC31104100")
		Session.Contents.Remove("THRC31103000")
	end if

	if Session("THRC31101900")<>"1" then

		Session.Contents.Remove("THRC31104200")
		Session.Contents.Remove("THRC31103100")
	end if

	if Session("GI11101000")<>"1" then

		Session.Contents.Remove("GI11101200")
		Session.Contents.Remove("GI11101400")
	end if

	if Session("GI11101100")<>"1" then

		Session.Contents.Remove("GI11101300")
		Session.Contents.Remove("GI11101500")
	end if

	if Session("HM11102000")<>"1" then

		Session.Contents.Remove("HM11103000")
		Session.Contents.Remove("HM11104000")
	end if



	if Session("THRC31102100")="1" and Session("GI10201000")="1" then
	Session("Page")="27"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC31102100")="1" and Session("HM10204000")="1" then
	Session("Page")="30"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC31102100")="1" then
	Session("Page")="0"
	Session("CancerRiskSectionStatus")="Completed"
	Response.Redirect "cancerriskmaster.asp"
	end if

	Session("Page")="26"
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


    <form action="cancerrisk25.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset class="eitherNoneOrChecked">
  <legend class='QuestionBox'>
Have you handled, used or been in contact with any of these substances for <b><u>at least 8 hours a week<br> for a year or more</b></u>?  It can be either on a job or working on a hobby. Check all that apply.
<br>
	</legend>
	<div class="QuestionAnswersBox">

<%
if Session("SurveyVersion")="HEME" then
%>
		<input type="checkbox" name="HM11102000" value="1" 
id="HM11102000" <%=strHM11102000answer1%>>
		<label for="HM11102000">Agent Orange</label><br>
<%
end if
%>
<%
if Session("SurveyVersion")<>"HEME" then
%>
		<input type="checkbox" name="THRC31101600" value="1" 
id="THRC31101600" <%=strTHRC31101600answer1%>>
		<label for="THRC31101600">Ammonia, other ammonia-based chemicals</label><br>
<%
end if
%>
		<input type="checkbox" name="THRC31101700" value="1" 
id="THRC31101700" <%=strTHRC31101700answer1%>>
		<label for="THRC31101700">Arsenic</label><br>

<%
if Session("SurveyVersion")<>"HEME" then
%>

		<input type="checkbox" name="THRC31101000" value="1" 
id="THRC31101000" <%=strTHRC31101000answer1%>>
		<label for="THRC31101000">Asbestos</label><br>
<%
end if 
%>		

<input type="checkbox" name="THRC31101900" value="1" 
id="THRC31101900" <%=strTHRC31101900answer1%>>
		<label for="THRC31101900">Benzene</label><br>

<%
if Session("SurveyVersion")<>"HEME" then
%>
		<input type="checkbox" name="THRC31101200" value="1" 
id="THRC31101200" <%=strTHRC31101200answer1%>>
		<label for="THRC31101200">Coal dust, soot</label><br>
<%
end if 
%>


<%
if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
if Session("GI10202000")="1" OR Session("GI10201000")="1" then
%>

		<input type="checkbox" name="GI11101000" value="1" 
id="GI11101000" <%=strGI11101000answer1%>>
		<label for="GI11101000">Dry cleaning agents</label><br>

		<input type="checkbox" name="GI11101100" value="1" 
id="GI11101100" <%=strGI11101100answer1%>>
		<label for="GI11101100">Metal or welding products</label><br>

<%
end if
end if
end if
%>

		<input type="checkbox" name="THRC31101500" value="1" 
id="THRC31101500" <%=strTHRC31101500answer1%>>
		<label for="THRC31101500">Pesticides, herbicides, insecticides, fertilizers</label><br>


		<input type="checkbox" name="THRC31101400" value="1" 
id="THRC31101400" <%=strTHRC31101400answer1%>>
		<label for="THRC31101400">Printer’s inks or dyes, paints, lacquers, pigments</label><br>

<%
if Session("SurveyVersion")<>"HEME" then
%>

		<input type="checkbox" name="THRC31101800" value="1" 
id="THRC31101800" <%=strTHRC31101800answer1%>>
		<label for="THRC31101800">Radon, uranium</label><br>

		<input type="checkbox" name="THRC31101100" value="1" 
id="THRC31101100" <%=strTHRC31101100answer1%>>
		<label for="THRC31101100">Sawdust, wood dust</label><br>
<%
end if
%>

		<input type="checkbox" name="THRC31101300" value="1" 
id="THRC31101300" <%=strTHRC31101300answer1%>>
		<label for="THRC31101300">Solvents, paint thinners, toluene, xylene</label><br>


		<input type="checkbox" name="THRC31102000" value="1" 
id="THRC31102000" <%=strTHRC31102000answer1%>>
		<label for="THRC31102000">Other substances like these</label><br>

		<input type="radio" name="THRC31102100" value="1" 
id="THRC31102100" <%=strTHRC31102100answer1%>>
		<label for="THRC31102100">Never been exposed to these substances</label><br>



	</div><!-- [ /#AnswerBox] -->   
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
