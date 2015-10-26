
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31022000")="1" then
		strEPQ31022000answer1="checked"
	end if
	if Session("EPQ31022000")="0" then
		strEPQ31022000answer2="checked"
	end if
	if Session("EPQ31022000")="88" then
		strEPQ31022000answer3="checked"
	end if

	if Session("EPQ31023010")="88" then
		strEPQ31023010answer1="checked"
	end if

	if Session("EPQ31024010")="88" then
		strEPQ31024010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31021000string")= ""
	Session("EPQ31022000string")= ""
	Session("EPQ31023010string")= ""
	Session("EPQ31024010string")= ""


	Session("EPQ31021000") = Request.Form("EPQ31021000")
	Session("EPQ31022000") = Request.Form("EPQ31022000")
	Session("EPQ31023000MM") = Request.Form("EPQ31023000MM")
	Session("EPQ31023000YY") = Request.Form("EPQ31023000YY")
	Session("EPQ31023010") = Request.Form("EPQ31023010")
	Session("EPQ31024000") = Request.Form("EPQ31024000")
	Session("EPQ31024010") = Request.Form("EPQ31024010")


	if Session("EPQ31021000") = "0" then 
		Session("EPQ313021000string")= "no recommended mammogram"
	end if
	if Session("EPQ31021000") = "1" then 
		Session("EPQ313021000string")= "recommended mammogram"
	end if
	if Session("EPQ31021000") = "88" then 
		Session("EPQ31302100string")= "don't know about mammogram"
	end if


	if Session("EPQ31022000") = "1" then 
		Session("EPQ313022000string")= "had mammogram"
	end if
	if Session("EPQ31022000") = "1" then 
		Session("EPQ313022000string")= "never had mammogram"
	end if
	if Session("EPQ31022000") = "88" then 
		Session("EPQ313022000string")= "don't know about mammogram"
	end if

	if Session("EPQ31023010") = "88" then 
		Session("EPQ31023010string")= "don't know date of last mammogram"
	end if
	if Session("EPQ31024010") = "88" then 
		Session("EPQ31024010string")= "don't know how many mammogram"
	end if
end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=8
		Response.Redirect "cancerscreeningmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31021000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31022000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Session("CancerScreeningSectionStatus")="Completed"

	Response.Redirect "cancerscreeningmaster.asp"
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
	<div id="SpecialNote">
A <u>Mammogram</u> is an X-ray taken only of the breast by a machine that presses against the breast.
	</div>
<BR><BR>

    <form action="cancerscreening9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<div class="QuestionBox">
Have you EVER HAD a mammogram?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31022000" value="1" class="qTrigger" id="EPQ31022000" <%=strEPQ31022000answer1%>>
		<label for="EPQ31022000">Yes</label>
		<input type="radio" name="EPQ31022000" value="0" class="qTriggerOff" id="EPQ31022000" <%=strEPQ31022000answer2%>>
		<label for="EPQ31022000">No</label>
		<input type="radio" name="EPQ31022000" value="88" class="qTriggerOff" id="EPQ31022000" <%=strEPQ31022000answer3%>>
		<label for="EPQ31022000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
When did you have your MOST RECENT mammogram?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31023000MM" type="text" size="5" name="EPQ31023000MM" value=<%=Session("EPQ31023000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31023000YY" type="text" size="5" name="EPQ31023000YY" value=<%=Session("EPQ31023000YY")%>>

		<input type="radio" name="EPQ31023010" value="88" id="EPQ31023010" <%=strEPQ31023010answer1%>>
		<label for="EPQ31023010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many mammograms have you had in the PAST 6 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31024000" type="text" size="5" name="EPQ31024000" value=<%=Session("EPQ31024000")%>>
		<input type="radio" name="EPQ31024010" value="88" id="EPQ31024010" <%=strEPQ31024010answer1%>>
		<label for="EPQ31024010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->
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
