
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30614001")="1" then
		strEPQ30614001answer1="checked"
	end if
	if Session("EPQ30614002")="1" then
		strEPQ30614002answer1="checked"
	end if
	if Session("EPQ30614003")="1" then
		strEPQ30614003answer1="checked"
	end if
	if Session("EPQ30614004")="1" then
		strEPQ30614004answer1="checked"
	end if
	if Session("EPQ30614005")="1" then
		strEPQ30614005answer1="checked"
	end if
	if Session("EPQ30614006")="1" then
		strEPQ30614006answer1="checked"
	end if
	if Session("EPQ30614007")="1" then
		strEPQ30614007answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30614001string")= ""
	Session("EPQ30614002string")= ""
	Session("EPQ30614003string")= ""
	Session("EPQ30614004string")= ""
	Session("EPQ30614005string")= ""
	Session("EPQ30614006string")= ""
	Session("EPQ30614000string")= ""


	Session("EPQ30614001") = Request.Form("EPQ30614001")
	Session("EPQ30614002") = Request.Form("EPQ30614002")
	Session("EPQ30614003") = Request.Form("EPQ30614003")
	Session("EPQ30614004") = Request.Form("EPQ30614004")
	Session("EPQ30614005") = Request.Form("EPQ30614005")
	Session("EPQ30614006") = Request.Form("EPQ30614006")
	Session("EPQ30614000specify") = Request.Form("EPQ30614000specify")
	Session("EPQ30614007") = Request.Form("EPQ30614007")
	Session("EPQ30614008") = Request.Form("EPQ30614008")

	if Session("EPQ306140001") = "1" then 
		Session("EPQ30614001string")= "Birth control pills like the pill or mini-pill"
	end if
	if Session("EPQ306140002") = "1" then 
		Session("EPQ30614002string")= "Birth control patch "
	end if
	if Session("EPQ306140003") = "1" then 
		Session("EPQ30614003string")= "Injectables "
	end if
	if Session("EPQ306140004") = "1" then 
		Session("EPQ30614004string")= "Implants "
	end if
	if Session("EPQ306140005") = "1" then 
		Session("EPQ30614005string")= "Vaginal Ring (e.g., NuvaRing)"
	end if
	if Session("EPQ306140006") = "1" then 
		Session("EPQ30614006string")= "Hormonal IUD"
	end if
	if Session("EPQ306140007") = "1" then 
		Session("EPQ30614007string")= "Other hormonal birth control, please specify"
	end if

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30626000") = "1" then 
	Session("Page")="8"
	Response.Redirect "womensriskmaster.asp"
	end if

	Session("Page")="6"
	Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30614001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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
    <form action="womensrisk10.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
<div id='SpecialNote'>
We will ask you about birth control methods other than hormones to prevent pregnancy and/or sexually transmitted diseases (STDs), such as condoms, a diaphragm, abstinence, in another question.</div>

<!-- [Question boxes ] -->		
<br>	<fieldset>
  <legend class='QuestionBox'>
Please check what type of <b><u>hormonal</b></u> birth control you have ever taken.   Check all that apply.
	</legend>





	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30614002" value="1" id="EPQ30614002" class="atLeastOneCheckboxRequired" <%=strEPQ30614002answer1%>>
		<label for="EPQ30614002">Birth control patch (e.g., Ortho Evra)</label><br>

		<input type="checkbox" name="EPQ30614001" value="1" id="EPQ30614001" class="atLeastOneCheckboxRequired" <%=strEPQ30614001answer1%>>
		<label for="EPQ30614001">Birth control pills (e.g., the pill or mini-pill)</label><br>
		<input type="checkbox" name="EPQ30614003" value="1" id="EPQ30614003" class="atLeastOneCheckboxRequired" <%=strEPQ30614003answer1%>>
		<label for="EPQ30614003">Injectables (e.g., Depo-Provera, Lunelle shots)</label><br>
		<input type="checkbox" name="EPQ30614004" value="1" id="EPQ30614004" class="atLeastOneCheckboxRequired" <%=strEPQ30614004answer1%>>
		<label for="EPQ30614004">Implants (e.g., Norplant)</label><br>
		<input type="checkbox" name="EPQ30614005" value="1" id="EPQ30614005" class="atLeastOneCheckboxRequired" <%=strEPQ30614005answer1%>>
		<label for="EPQ30614005">Vaginal ring (e.g., Nuva Ring)</label><br>
		<input type="checkbox" name="EPQ30614006" value="1" id="EPQ30614006" class="atLeastOneCheckboxRequired" <%=strEPQ30614006answer1%>>
		<label for="EPQ30614006">Hormonal IUD (e.g., Mirena)</label><br>
		<input type="checkbox" name="EPQ30614007" value="1" id="EPQ30614007" class="atLeastOneCheckboxRequired" <%=strEPQ30614007answer1%>>
		<label for="EPQ30614007">Other hormonal birth control, please specify:</label>
		<input id="EPQ30614000specify" type="text" maxlength="75" size="15" name="EPQ30614000specify" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30614000specify")%>' ><br>
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
