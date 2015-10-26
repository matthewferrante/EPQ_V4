
<%

If Session("Gender")="F" then
	Session("Page")="7"
	Response.Redirect "cancerscreeningmaster.asp"
end if

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31026000")="1" then
		strEPQ31026000answer1="checked"
	end if
	if Session("EPQ31026000")="0" then
		strEPQ31026000answer2="checked"
	end if
	if Session("EPQ31026000")="88" then
		strEPQ31026000answer3="checked"
	end if

	if Session("EPQ31027010")="88" then
		strEPQ31027010answer1="checked"
	end if

	if Session("EPQ31028010")="88" then
		strEPQ31028010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31025000string")= ""
	Session("EPQ31026000string")= ""
	Session("EPQ31027010string")= ""
	Session("EPQ31028010string")= ""


	Session("EPQ31025000") = Request.Form("EPQ31025000")
	Session("EPQ31026000") = Request.Form("EPQ31026000")
	Session("EPQ31027000MM") = Request.Form("EPQ31027000MM")
	Session("EPQ31027000YY") = Request.Form("EPQ31027000YY")
	Session("EPQ31027010") = Request.Form("EPQ31027010")
	Session("EPQ31028000") = Request.Form("EPQ31028000")
	Session("EPQ31028010") = Request.Form("EPQ31028010")


	if Session("EPQ31025000") = "0" then 
		Session("EPQ31305000string")= "no recommended DRE"
	end if
	if Session("EPQ31025000") = "1" then 
		Session("EPQ31305000string")= "recommended DRE"
	end if
	if Session("EPQ31025000") = "88" then 
		Session("EPQ31305000string")= "don't know about DRE"
	end if


	if Session("EPQ31026000") = "1" then 
		Session("EPQ31306000string")= "had DRE"
	end if
	if Session("EPQ31026000") = "1" then 
		Session("EPQ31306000string")= "never had DRE"
	end if
	if Session("EPQ31026000") = "88" then 
		Session("EPQ31306000string")= "don't know about DRE"
	end if

	if Session("EPQ31027010") = "88" then 
		Session("EPQ31302000string")= "don't know date of last DRE"
	end if
	if Session("EPQ31028010") = "88" then 
		Session("EPQ31308010string")= "don't know how many DRE"
	end if
end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	if Session("EPQ31010000") = "1" then 
	Session("Page")="4"
	else
	Session("Page")="3"
	end if

		Response.Redirect "cancerscreeningmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31025000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31026000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="6"
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
A <u>Digital Rectal Exam (DRE)</u> is when your doctor or other health care provider inserts a gloved, lubricated finger into the rectum to feel for an enlarged prostate gland.
	</div>
<br><br>

    <form action="cancerscreening5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QuestionBox">
Have you EVER HAD a digital rectal exam (DRE)?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31026000" value="1" class="qTrigger" id="EPQ31026000" <%=strEPQ31026000answer1%>>
		<label for="EPQ31026000">Yes</label>
		<input type="radio" name="EPQ31026000" value="0" class="qTriggerOff" id="EPQ31026000" <%=strEPQ31026000answer2%>>
		<label for="EPQ31026000">No</label>
		<input type="radio" name="EPQ31026000" value="88" class="qTriggerOff" id="EPQ31026000" <%=strEPQ31026000answer3%>>
		<label for="EPQ31026000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
When did you have your MOST RECENT digital rectal exam (DRE)?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31027000MM" type="text" size="5" name="EPQ31027000MM" value=<%=Session("EPQ31027000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31027000YY" type="text" size="5" name="EPQ31027000YY" value=<%=Session("EPQ31027000YY")%>>

		<input type="radio" name="EPQ31027010" value="88" id="EPQ31027010" <%=strEPQ31027010answer1%>>
		<label for="EPQ31027010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many digital rectal (DRE) exams have you had in the PAST 5 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31028000" type="text" size="5" name="EPQ31028000" value=<%=Session("EPQ31028000")%>>
		<input type="radio" name="EPQ31028010" value="88" id="EPQ31028010" <%=strEPQ31028010answer1%>>
		<label for="EPQ31028010">Don't know</label><br>
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
