
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31015000")="1" then
		strEPQ31015000answer1="checked"
	end if
	if Session("EPQ31015000")="0" then
		strEPQ31015000answer2="checked"
	end if
	if Session("EPQ31015000")="88" then
		strEPQ31015000answer3="checked"
	end if

	if Session("EPQ31016010")="88" then
		strEPQ31016010answer1="checked"
	end if

	if Session("EPQ31017010")="88" then
		strEPQ31017010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31014000string")= ""
	Session("EPQ31015000string")= ""
	Session("EPQ31007010string")= ""
	Session("EPQ31008010string")= ""


	Session("EPQ31014000") = Request.Form("EPQ31014000")
	Session("EPQ31015000") = Request.Form("EPQ31015000")
	Session("EPQ31016000MM") = Request.Form("EPQ31016000MM")
	Session("EPQ31016000YY") = Request.Form("EPQ31016000YY")
	Session("EPQ31016010") = Request.Form("EPQ31016010")
	Session("EPQ31017010") = Request.Form("EPQ31017010")
	Session("EPQ31017000") = Request.Form("EPQ31017000")


	if Session("EPQ31014000") = "0" then 
		Session("EPQ31305000string")= "no recommended pap smear"
	end if
	if Session("EPQ31014000") = "1" then 
		Session("EPQ31305000string")= "recommended pap smear"
	end if
	if Session("EPQ31014000") = "88" then 
		Session("EPQ31305000string")= "don't know about pap smear"
	end if


	if Session("EPQ31015000") = "1" then 
		Session("EPQ31306000string")= "had pap smear"
	end if
	if Session("EPQ31015000") = "1" then 
		Session("EPQ31306000string")= "never had pap smear"
	end if
	if Session("EPQ31015000") = "88" then 
		Session("EPQ31306000string")= "don't know about pap smear"
	end if

	if Session("EPQ31007010") = "88" then 
		Session("EPQ31302000string")= "don't know date of last pap smear"
	end if
	if Session("EPQ31008010") = "88" then 
		Session("EPQ31308010string")= "don't know how many pap smear"
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
	if len(Session("EPQ31014000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31015000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="8"
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
A <u>Pap Smear</u> is a routine test for women in which your doctor or other health care provider inserts an instrument into the vagina to examine the cervix, takes a cell sample from the cervix with a small stick or brush, and sends it to the lab to look for signs of cancer. 
	</div>
<BR><BR>
    <form action="cancerscreening7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<div class="QuestionBox">
Have you EVER HAD a Pap Smear?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31015000" value="1" class="qTrigger" id="EPQ31015000" <%=strEPQ31015000answer1%>>
		<label for="EPQ31015000">Yes</label>
		<input type="radio" name="EPQ31015000" value="0" class="qTriggerOff" id="EPQ31015000" <%=strEPQ31015000answer2%>>
		<label for="EPQ31015000">No</label>
		<input type="radio" name="EPQ31015000" value="88" class="qTriggerOff" id="EPQ31015000" <%=strEPQ31015000answer3%>>
		<label for="EPQ31015000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
When did you have your MOST RECENT Pap Smear?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31016000MM" type="text" size="5" name="EPQ31016000MM" value=<%=Session("EPQ31016000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31016000YY" type="text" size="5" name="EPQ31016000YY" value=<%=Session("EPQ31016000YY")%>>

		<input type="radio" name="EPQ31016010" value="88" id="EPQ31016010" <%=strEPQ31016010answer1%>>
		<label for="EPQ31016010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many Pap Smears have you had in the PAST 6 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31017000" type="text" size="5" name="EPQ31017000" value=<%=Session("EPQ31017000")%>>
		<input type="radio" name="EPQ31017010" value="88" id="EPQ31017010" <%=strEPQ31017010answer1%>>
		<label for="EPQ31017010">Don't know</label><br>
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
