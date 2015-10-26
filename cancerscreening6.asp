
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31030000")="1" then
		strEPQ31030000answer1="checked"
	end if
	if Session("EPQ31030000")="0" then
		strEPQ31031000answer2="checked"
	end if
	if Session("EPQ31030000")="88" then
		strEPQ31030000answer3="checked"
	end if

	if Session("EPQ31031010")="88" then
		strEPQ31031010answer1="checked"
	end if

	if Session("EPQ31032010")="88" then
		strEPQ31032010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31029000string")= ""
	Session("EPQ31030000string")= ""
	Session("EPQ31031010string")= ""
	Session("EPQ31032010string")= ""


	Session("EPQ31029000") = Request.Form("EPQ31029000")
	Session("EPQ31030000") = Request.Form("EPQ31030000")
	Session("EPQ31031000MM") = Request.Form("EPQ31031000MM")
	Session("EPQ31031000YY") = Request.Form("EPQ31031000YY")
	Session("EPQ31031010") = Request.Form("EPQ31031010")
	Session("EPQ31032000") = Request.Form("EPQ31032000")
	Session("EPQ31032010") = Request.Form("EPQ31032010")


	if Session("EPQ31029000") = "0" then 
		Session("EPQ31029000string")= "no recommended PSA"
	end if
	if Session("EPQ31029000") = "1" then 
		Session("EPQ31029000string")= "recommended PSA"
	end if
	if Session("EPQ31029000") = "88" then 
		Session("EPQ31029000string")= "don't know about PSA"
	end if


	if Session("EPQ31030000") = "1" then 
		Session("EPQ31030000string")= "had PSA"
	end if
	if Session("EPQ31030000") = "1" then 
		Session("EPQ3130000string")= "never had PSA"
	end if
	if Session("EPQ31030000") = "88" then 
		Session("EPQ31300000string")= "don't know about PSA"
	end if

	if Session("EPQ31031010") = "88" then 
		Session("EPQ31031010string")= "don't know date of last PSA"
	end if
	if Session("EPQ31032010") = "88" then 
		Session("EPQ31032010string")= "don't know how many PSA"
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerScreeningSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Response.Redirect "cancerscreeningmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31029000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31030000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("CancerScreeningSectionStatus")="Completed"
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
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
A <u>Prostate Specific Antigen (PSA)</u> test is a blood test to detect prostate cancer.
	</div>
<BR><BR>


    <form action="cancerscreening6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<div class="QuestionBox">
Have you EVER HAD a prostate specific antigen (PSA) test?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31030000" value="1" class="qTrigger" id="EPQ31030000" <%=strEPQ31030000answer1%>>
		<label for="EPQ31030000">Yes</label>
		<input type="radio" name="EPQ31030000" value="0" class="qTriggerOff" id="EPQ31030000" <%=strEPQ31030000answer2%>>
		<label for="EPQ31030000">No</label>
		<input type="radio" name="EPQ31030000" value="88" class="qTriggerOff" id="EPQ31030000" <%=strEPQ31030000answer3%>>
		<label for="EPQ31030000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
	When did you have your MOST RECENT prostate specific antigen (PSA) test?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31031000MM" type="text" size="5" name="EPQ31031000MM" value=<%=Session("EPQ31031000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31031000YY" type="text" size="5" name="EPQ31031000YY" value=<%=Session("EPQ31031000YY")%>>

		<input type="radio" name="EPQ31031010" value="88" id="EPQ31031010" <%=strEPQ31031010answer1%>>
		<label for="EPQ31031010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many prostate specific antigen (PSA) tests have you had in the PAST 5 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31032000" type="text" size="5" name="EPQ31032000" value=<%=Session("EPQ31032000")%>>
		<input type="radio" name="EPQ31032010" value="88" id="EPQ31032010" <%=strEPQ31032010answer1%>>
		<label for="EPQ31032010">Don't know</label><br>
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
