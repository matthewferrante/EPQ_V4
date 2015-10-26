
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31018000")="1" then
		strEPQ31018000answer1="checked"
	end if
	if Session("EPQ31018000")="0" then
		strEPQ31018000answer2="checked"
	end if
	if Session("EPQ31018000")="88" then
		strEPQ31018000answer3="checked"
	end if

	if Session("EPQ31019010")="88" then
		strEPQ31019010answer1="checked"
	end if

	if Session("EPQ31020010")="88" then
		strEPQ31020010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31018000string")= ""
	Session("EPQ31019010string")= ""
	Session("EPQ31020010string")= ""


	Session("EPQ31018000") = Request.Form("EPQ31018000")
	Session("EPQ31019000MM") = Request.Form("EPQ31019000MM")
	Session("EPQ31019000YY") = Request.Form("EPQ31019000YY")
	Session("EPQ31019010") = Request.Form("EPQ31019010")
	Session("EPQ31020000") = Request.Form("EPQ31020000")
	Session("EPQ31020010") = Request.Form("EPQ31020010")



	if Session("EPQ31018000") = "0" then 
		Session("EPQ31305000string")= "no recommended clinical breast exam (CBE)"
	end if
	if Session("EPQ31018000") = "1" then 
		Session("EPQ31305000string")= "recommended clinical breast exam (CBE)"
	end if
	if Session("EPQ31018000") = "88" then 
		Session("EPQ31305000string")= "don't know about clinical breast exam (CBE)"
	end if


	if Session("EPQ31022000") = "1" then 
		Session("EPQ31306000string")= "had clinical breast exam (CBE)"
	end if
	if Session("EPQ31022000") = "1" then 
		Session("EPQ31306000string")= "never had clinical breast exam (CBE)"
	end if
	if Session("EPQ31022000") = "88" then 
		Session("EPQ31306000string")= "don't know about clinical breast exam (CBE)"
	end if

	if Session("EPQ31007010") = "88" then 
		Session("EPQ31302000string")= "don't know date of last clinical breast exam (CBE)"
	end if
	if Session("EPQ31008010") = "88" then 
		Session("EPQ31308010string")= "don't know how many clinical breast exam (CBE)"
	end if
end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "cancerscreeningmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31018000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="9"
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
A <u>Clinical Breast Exam (CBE)</u> is when the breasts are felt by a doctor or other health care provider to check for lumps or other signs of breast cancer.
	</div>
<BR><BR>

    <form action="cancerscreening8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QuestionBox">
Have you EVER HAD a Clinical Breast Exam (CBE)?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31018000" value="1" class="qTrigger" id="EPQ31018000" <%=strEPQ31018000answer1%>>
		<label for="EPQ31018000">Yes</label>
		<input type="radio" name="EPQ31018000" value="0" class="qTriggerOff" id="EPQ31018000" <%=strEPQ31018000answer2%>>
		<label for="EPQ31018000">No</label>
		<input type="radio" name="EPQ31018000" value="88" class="qTriggerOff" id="EPQ31018000" <%=strEPQ31018000answer3%>>
		<label for="EPQ31018000">Don't know</label><br>

	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
When did you have your MOST RECENT Clinical Breast Exam (CBE)?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31019000MM" type="text" size="5" name="EPQ31019000MM" value=<%=Session("EPQ31019000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31019000YY" type="text" size="5" name="EPQ31019000YY" value=<%=Session("EPQ31019000YY")%>>

		<input type="radio" name="EPQ31019010" value="88" id="EPQ31019010" <%=strEPQ31019010answer1%>>
		<label for="EPQ31019010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many Clinical Breast Exams have you had in the PAST 6 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31020000" type="text" size="5" name="EPQ31020000" value=<%=Session("EPQ31020000")%>>
		<input type="radio" name="EPQ31020010" value="88" id="EPQ31020010" <%=strEPQ31020010answer1%>>
		<label for="EPQ31020010">Don't know</label><br>
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
