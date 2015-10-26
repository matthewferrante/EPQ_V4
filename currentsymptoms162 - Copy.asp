
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
	if Session("EPQ30521090")="1" then
		strEPQ30521090answer1="checked"
	end if
	if Session("EPQ30521100")="1" then
		strEPQ30521100answer1="checked"
	end if
	if Session("EPQ30521110")="1" then
		strEPQ30521110answer1="checked"
	end if
	if Session("EPQ30521160")="1" then
		strEPQ30521160answer1="checked"
	end if
	if Session("EPQ30521170")="1" then
		strEPQ30521170answer1="checked"
	end if
	if Session("EPQ30521180")="1" then
		strEPQ30521180answer1="checked"
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
	Session("EPQ30521090string")= ""
	Session("EPQ30521100string")= ""
	Session("EPQ30521110string")= ""
	Session("EPQ30521120string")= ""
	Session("EPQ30521140string")= ""
	Session("EPQ30521150string")= ""
	Session("EPQ30521160string")= ""
	Session("EPQ30521170string")= ""
	Session("EPQ30521180string")= ""
	Session("EPQ30521190string")= ""
	Session("EPQ30521200string")= ""


	Session("EPQ30521000") = Request.Form("EPQ30521000")
	Session("EPQ30521010") = Request.Form("EPQ30521010")
	Session("EPQ30521020") = Request.Form("EPQ30521020")
	Session("EPQ30521030") = Request.Form("EPQ30521030")
	Session("EPQ30521040") = Request.Form("EPQ30521040")
	Session("EPQ30521050") = Request.Form("EPQ30521050")
	Session("EPQ30521060") = Request.Form("EPQ30521060")
	Session("EPQ30521090") = Request.Form("EPQ30521090")
	Session("EPQ30521100") = Request.Form("EPQ30521100")
	Session("EPQ30521110") = Request.Form("EPQ30521110")
	Session("EPQ30521160") = Request.Form("EPQ30521160")
	Session("EPQ30521170") = Request.Form("EPQ30521170")
	Session("EPQ30521180") = Request.Form("EPQ30521180")
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
	if Session("EPQ30521160") = "1" then 
		Session("EPQ30521160string")= ""
	end if
	if Session("EPQ30521170") = "1" then 
		Session("EPQ30521170string")= ""
	end if
	if Session("EPQ30521180") = "1" then 
		Session("EPQ30521180string")= ""
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

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">
    <form action="currentsymptoms162.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any kidney or bladder related problems in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30521160" value="1" id="EPQ30521160" <%=strEPQ30521160answer1%>>
		<label for="EPQ30521160">Blood clots in urine</label><br>

		<input type="checkbox" name="EPQ30521020" value="1" id="EPQ30521020" <%=strEPQ30521020answer1%>>
		<label for="EPQ30521020">Blood in urine</label><br>

		<input type="checkbox" name="EPQ30521090" value="1" id="EPQ30521090" <%=strEPQ30521090answer1%>>
		<label for="EPQ30521090">Darkening of urine</label><br>
		<input type="checkbox" name="EPQ30521180" value="1" id="EPQ30521180" <%=strEPQ30521180answer1%>>
		<label for="EPQ30521180">Difficulty emptying bladder</label><br>
		<input type="checkbox" name="EPQ30521170" value="1" id="EPQ30521170" <%=strEPQ30521170answer1%>>
		<label for="EPQ30521170">Foul smelling urine</label><br>
		<input type="checkbox" name="EPQ30521110" value="1" id="EPQ30521110" <%=strEPQ30521110answer1%>>
		<label for="EPQ30521110">Getting up more than once a night to urinate</label><br>
		<input type="checkbox" name="EPQ30521010" value="1" id="EPQ30521010" <%=strEPQ30521010answer1%>>
		<label for="EPQ30521010">Kidney stones</label><br>

<br><br>
		<input type="radio" name="EPQ30521200" value="1" id="EPQ30521200" <%=strEPQ30521200answer1%>>
		<label for="EPQ30521200">None</label><br>

</span>

<span class="column2">

		<input type="checkbox" name="EPQ30521030" value="1" id="EPQ30521030" <%=strEPQ30521030answer1%>>
		<label for="EPQ30521030">Pain when urinating</label><br>
		<input type="checkbox" name="EPQ30521050" value="1" id="EPQ30521050" <%=strEPQ30521050answer1%>>
		<label for="EPQ30521050">Sensation of not emptying bladder completely<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; after you finish urinating</label><br>

		<input type="checkbox" name="EPQ30521040" value="1" id="EPQ30521040" <%=strEPQ30521040answer1%>>
		<label for="EPQ30521040">Urinary leaking (incontinence)</label><br>

		<input type="checkbox" name="EPQ30521060" value="1" id="EPQ30521060" <%=strEPQ30521060answer1%>>
		<label for="EPQ30521060">Urinary tract infection (UTI) or bladder infection</label><br>

		<input type="checkbox" name="EPQ30521100" value="1" id="EPQ30521100" <%=strEPQ30521100answer1%>>
		<label for="EPQ30521100">Urinating often</label><br>


		<input type="checkbox" name="EPQ30521190" value="1" id="EPQ30521190" <%=strEPQ30521190answer1%>>
		<label for="EPQ30521190">Other, specify:</label>	
	<input id="EPQ30521000" type="text" maxlength="75" size="15" name="EPQ30521000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30521000")%>'><br>
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
