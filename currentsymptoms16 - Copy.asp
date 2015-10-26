
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30521010")="1" then
		strEPQ30521010answer1="checked"
	end if
	if Session("EPQ30521020")="1" then
		strEPQ30521020answer1="checked"
	end if
	if Session("EPQ30521030")="1" then
		strEPQ30521030answer1="checked"
	end if
	if Session("EPQ30521040")="1" then
		strEPQ30521040answer1="checked"
	end if
	if Session("EPQ30521050")="1" then
		strEPQ30521050answer1="checked"
	end if
	if Session("EPQ30521060")="1" then
		strEPQ30521060answer1="checked"
	end if
	if Session("EPQ30521070")="1" then
		strEPQ30521070answer1="checked"
	end if
	if Session("EPQ30521080")="1" then
		strEPQ30521080answer1="checked"
	end if
	if Session("EPQ30521090")="1" then
		strEPQ30521090answer1="checked"
	end if
	if Session("EPQ30521100")="1" then
		strEPQ30521100answer1="checked"
	end if
	if Session("EPQ30521110")="1" then
		strEPQ30521110answer1="checked"
	end if
	if Session("EPQ30521120")="1" then
		strEPQ30521120answer1="checked"
	end if
	if Session("EPQ30521130")="1" then
		strEPQ30521130answer1="checked"
	end if
	if Session("EPQ30521140")="1" then
		strEPQ30521140answer1="checked"
	end if
	if Session("EPQ30521150")="1" then
		strEPQ30521150answer1="checked"
	end if
	if Session("EPQ30521160")="1" then
		strEPQ30521160answer1="checked"
	end if
	if Session("EPQ30521190")="1" then
		strEPQ30521190answer1="checked"
	end if
	if Session("EPQ30521200")="1" then
		strEPQ30521200answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30521010string")= ""
	Session("EPQ30521020string")= ""
	Session("EPQ30521030string")= ""
	Session("EPQ30521040string")= ""
	Session("EPQ30521050string")= ""
	Session("EPQ30521060string")= ""
	Session("EPQ30521070string")= ""
	Session("EPQ30521080string")= ""
	Session("EPQ30521090string")= ""
	Session("EPQ30521100string")= ""
	Session("EPQ30521110string")= ""
	Session("EPQ30521120string")= ""
	Session("EPQ30521130string")= ""
	Session("EPQ30521140string")= ""
	Session("EPQ30521150string")= ""
	Session("EPQ30521160string")= ""
	Session("EPQ30521190string")= ""
	Session("EPQ30521200string")= ""


	Session("EPQ30521000") = Request.Form("EPQ30521000")
	Session("EPQ30521010") = Request.Form("EPQ30521010")
	Session("EPQ30521020") = Request.Form("EPQ30521020")
	Session("EPQ30521030") = Request.Form("EPQ30521030")
	Session("EPQ30521040") = Request.Form("EPQ30521040")
	Session("EPQ30521050") = Request.Form("EPQ30521050")
	Session("EPQ30521060") = Request.Form("EPQ30521060")
	Session("EPQ30521070") = Request.Form("EPQ30521070")
	Session("EPQ30521080") = Request.Form("EPQ30521080")
	Session("EPQ30521090") = Request.Form("EPQ30521090")
	Session("EPQ30521100") = Request.Form("EPQ30521100")
	Session("EPQ30521110") = Request.Form("EPQ30521110")
	Session("EPQ30521120") = Request.Form("EPQ30521120")
	Session("EPQ30521130") = Request.Form("EPQ30521130")
	Session("EPQ30521140") = Request.Form("EPQ30521140")
	Session("EPQ30521150") = Request.Form("EPQ30521150")
	Session("EPQ30521160") = Request.Form("EPQ30521160")
	Session("EPQ30521190") = Request.Form("EPQ30521190")
	Session("EPQ30521200") = Request.Form("EPQ30521200")


	if Session("EPQ30521010") = "1" then 
		Session("EPQ30521010string")= ""
	end if
	if Session("EPQ30521020") = "1" then 
		Session("EPQ30521020string")= ""
	end if
	if Session("EPQ30521030") = "1" then 
		Session("EPQ30521030string")= ""
	end if
	if Session("EPQ30521040") = "1" then 
		Session("EPQ30521040string")= ""
	end if
	if Session("EPQ30521050") = "1" then 
		Session("EPQ30521050string")= ""
	end if
	if Session("EPQ30521060") = "1" then 
		Session("EPQ30521060string")= ""
	end if
	if Session("EPQ30521070") = "1" then 
		Session("EPQ30521070string")= ""
	end if
	if Session("EPQ30521080") = "1" then 
		Session("EPQ30521080string")= ""
	end if
	if Session("EPQ30521090") = "1" then 
		Session("EPQ30521090string")= ""
	end if
	if Session("EPQ30521100") = "1" then 
		Session("EPQ30521100string")= ""
	end if
	if Session("EPQ30521110") = "1" then 
		Session("EPQ30521110string")= ""
	end if
	if Session("EPQ30521120") = "1" then 
		Session("EPQ30521120string")= ""
	end if
	if Session("EPQ30521130") = "1" then 
		Session("EPQ30521130string")= ""
	end if
	if Session("EPQ30521140") = "1" then 
		Session("EPQ30521140string")= ""
	end if
	if Session("EPQ30521150") = "1" then 
		Session("EPQ30521150string")= ""
	end if
	if Session("EPQ30521160") = "1" then 
		Session("EPQ30521160string")= ""
	end if
	if Session("EPQ30521190") = "1" then 
		Session("EPQ30521190string")= ""
	end if
	if Session("EPQ30521200") = "1" then 
		Session("EPQ30521200string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=15
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30521010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	'if Session("GU10202000") = "1" then 
	'	Session("Page")="27"
	'	Response.Redirect "currentsymptomsmaster.asp"
	'end if
	'Remove Bladder Branch
	if Session("GU10201000") = "1" then 
		Session("Page")="27"
		Response.Redirect "currentsymptomsmaster.asp"
	end if


	end if
	end if


	Session("Page")="17"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms16.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any kidney, bladder, prostate or penis related problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30521020" value="1" id="EPQ30521020" <%=strEPQ30521020answer1%>>
		<label for="EPQ30521020">Blood in urine</label><br>
		<input type="checkbox" name="EPQ30521090" value="1" id="EPQ30521090" <%=strEPQ30521090answer1%>>
		<label for="EPQ30521090">Darkening of urine</label><br>
		<input type="checkbox" name="EPQ30521120" value="1" id="EPQ30521120" <%=strEPQ30521120answer1%>>
		<label for="EPQ30521120">Difficulty starting urine stream</label><br>

		<input type="checkbox" name="EPQ30521150" value="1" id="EPQ30521150" <%=strEPQ30521150answer1%>>
		<label for="EPQ30521150">Discharge from the penis or penile sores</label><br>
		<input type="checkbox" name="EPQ30521110" value="1" id="EPQ30521110" <%=strEPQ30521110answer1%>>
		<label for="EPQ30521110">Getting up more than once a night to urinate</label><br>

		<input type="checkbox" name="EPQ30521010" value="1" id="EPQ30521010" <%=strEPQ30521010answer1%>>
		<label for="EPQ30521010">Kidney stones</label><br>
		<input type="checkbox" name="EPQ30521140" value="1" id="EPQ30521140" <%=strEPQ30521140answer1%>>
		<label for="EPQ30521140">Loss of sexual desire</label><br>

<br><BR>
		<input type="radio" name="EPQ30521200" value="1" id="EPQ30521200" <%=strEPQ30521200answer1%>>
		<label for="EPQ30521200">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30521080" value="1" id="EPQ30521080" <%=strEPQ30521080answer1%>>
		<label for="EPQ30521080">Mass or bulge inside scrotum (Testes)</label><br>

		<input type="checkbox" name="EPQ30521030" value="1" id="EPQ30521030" <%=strEPQ30521030answer1%>>
		<label for="EPQ30521030">Pain when urinating</label><br>
		<input type="checkbox" name="EPQ30521050" value="1" id="EPQ30521050" <%=strEPQ30521050answer1%>>
		<label for="EPQ30521050">Sensation of not emptying bladder completely <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; after you finish urinating</label><br>
		<input type="checkbox" name="EPQ30521070" value="1" id="EPQ30521070" <%=strEPQ30521070answer1%>>
		<label for="EPQ30521070">Testicular pain</label><br>
		<input type="checkbox" name="EPQ30521130" value="1" id="EPQ30521130" <%=strEPQ30521130answer1%>>
		<label for="EPQ30521130">Trouble having or keeping an erection (impotence)</label><br>
		<input type="checkbox" name="EPQ30521040" value="1" id="EPQ30521040" <%=strEPQ30521040answer1%>>
		<label for="EPQ30521040">Urinary leaking (incontinence)</label><br>

		<input type="checkbox" name="EPQ30521100" value="1" id="EPQ30521100" <%=strEPQ30521100answer1%>>
		<label for="EPQ30521100">Urinating often</label><br>

		<input type="checkbox" name="EPQ30521060" value="1" id="EPQ30521060" <%=strEPQ30521060answer1%>>
		<label for="EPQ30521060">Urinary tract infection (UTI) or bladder infection</label><br>



		<input type="checkbox" name="EPQ30521190" value="1" id="EPQ30521190" <%=strEPQ30521190answer1%>>
		<label for="EPQ30521190">Other, specify:</label>	
	<input id="EPQ30521000" type="text" maxlength="75" size="15" name="EPQ30521000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30521000")%>' ><br>

</span>
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
