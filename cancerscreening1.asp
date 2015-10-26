
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31002000")="1" then
		strEPQ31002000answer1="checked"
	end if
	if Session("EPQ31002000")="0" then
		strEPQ31002000answer2="checked"
	end if
	if Session("EPQ31002000")="88" then
		strEPQ31002000answer3="checked"
	end if

	if Session("EPQ31003010")="88" then
		strEPQ31003010answer1="checked"
	end if

	if Session("EPQ31004010")="88" then
		strEPQ31004010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31001000string")= ""
	Session("EPQ31002000string")= ""
	Session("EPQ31003010string")= ""
	Session("EPQ31004010string")= ""


	Session("EPQ31001000") = Request.Form("EPQ31001000")
	Session("EPQ31002000") = Request.Form("EPQ31002000")
	Session("EPQ31003000MM") = Request.Form("EPQ31003000MM")
	Session("EPQ31003000YY") = Request.Form("EPQ31003000YY")
	Session("EPQ31003010") = Request.Form("EPQ31003010")
	Session("EPQ31004000") = Request.Form("EPQ31004000")
	Session("EPQ31004010") = Request.Form("EPQ31004010")


	if Session("EPQ31001000") = "0" then 
		Session("EPQ31301000string")= "no recommended skin exam"
	end if
	if Session("EPQ31001000") = "1" then 
		Session("EPQ31301000string")= "recommended skin exam"
	end if
	if Session("EPQ31001000") = "88" then 
		Session("EPQ31301000string")= "recommended skin exam unknown"
	end if

	if Session("EPQ31002000") = "1" then 
		Session("EPQ31302000string")= "had skin exam"
	end if
	if Session("EPQ31002000") = "1" then 
		Session("EPQ31302000string")= "never had skin exam"
	end if
	if Session("EPQ31002000") = "88" then 
		Session("EPQ31302000string")= "don't know about skin exam"
	end if

	if Session("EPQ31003010") = "88" then 
		Session("EPQ31302000string")= "don't know date of last skin exam"
	end if
	if Session("EPQ31004010") = "88" then 
		Session("EPQ31304010string")= "don't know how many skin exams"
	end if

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		If Session("EPQ30901120")= "0" then
			Session("Page")=1
			Session("CancerRiskSectionStatus")=""
			Response.Redirect "familyhistorymaster.asp"
		end if

		if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090") OR Session("EPQ30901140") OR Session("EPQ30901150") OR Session("EPQ30901100") OR Session("EPQ30901060") OR Session("EPQ30901070") OR Session("EPQ30901020") then
			Session("Page")=2
		else
			Session("Page")=1
		End if
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"


		Session("Page")=5
		Session("CancerScreeningSectionStatus")=""

		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31001000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31002000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="2"
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
	A <u>Skin Exam</u> is when your health care provider visually checks your skin from head to toe for signs of skin cancer.
	</div>

<br>

    <form action="cancerscreening1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<div class="QuestionBox">
Have you EVER HAD a skin exam?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31002000" value="1" class="qTrigger" id="EPQ31002000" <%=strEPQ31002000answer1%>>
		<label for="EPQ31002000">Yes</label>
		<input type="radio" name="EPQ31002000" value="0" class="qTriggerOff" id="EPQ31002000" <%=strEPQ31002000answer2%>>
		<label for="EPQ31002000">No</label>
		<input type="radio" name="EPQ31002000" value="88" class="qTriggerOff" id="EPQ31002000" <%=strEPQ31002000answer3%>>
		<label for="EPQ31002000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

<div class="hiddenQ">
	<div class="QuestionBox">
When did you have your MOST RECENT skin exam?<br>
	</div>
	<div class="QuestionAnswersBox">
Month: <input id="EPQ31003000MM" type="text" size="5" name="EPQ31003000MM" value=<%=Session("EPQ31003000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input id="EPQ31003000YY" type="text" size="5" name="EPQ31003000YY" value=<%=Session("EPQ31003000YY")%>>

		<input type="radio" name="EPQ31003010" value="88" id="EPQ31003010" <%=strEPQ31003010answer1%>>
		<label for="EPQ31004010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
How many skin exams have you had in the PAST 5 YEARS?<br>
	</div>
	<div class="QuestionAnswersBox">
Exams: <input id="EPQ31004000" type="text" size="5" name="EPQ31004000" value=<%=Session("EPQ31004000")%>>
		<input type="radio" name="EPQ31004010" value="88" id="EPQ31004010" <%=strEPQ31004010answer1%>>
		<label for="EPQ31004010">Don't know</label><br>
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
