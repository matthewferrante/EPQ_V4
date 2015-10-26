
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31012010")="88" then
		strEPQ31012010answer1="checked"
	end if

	if Session("EPQ31013010")="88" then
		strEPQ31013010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31012000string")= ""
	Session("EPQ31013000string")= ""
	Session("EPQ31013010string")= ""
	Session("EPQ31012010string")= ""


	Session("EPQ31012000MM") = Request.Form("EPQ31012000MM")
	Session("EPQ31012000YY") = Request.Form("EPQ31012000YY")
	Session("EPQ31012010") = Request.Form("EPQ31012010")

	if Session("EPQ31012010") = "88" then 
		Session("EPQ31012010string")= "don't know date of last exams"
	end if

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="28"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31012000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31013000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	Session("CancerRiskSectionStatus")="Completed"
	 <!--#include file="autosavefunction.asp"-->
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
	<div id="SpecialNote">
A <u>Sigmoidoscopy</u> is an exam in which your health care provider inserts a tube into the rectum and lower part of the colon to look for signs of cancer or other problems.  Before a sigmoidoscopy is done, you have 1-2 enemas.<BR>
<br>A <u>Colonoscopy</u> is a similar exam but it uses a longer tube to examine the entire colon.  Before a colonoscopy is done, you need to clean out your entire colon and you are usually given medication through a needle in you arm to make you sleepy during the test.<BR>
	</div>


    <form action="cancerrisk29.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br>
<fieldset>
<legend>

	<div class="QuestionBox">
When did you have your MOST RECENT exam?<br>
	</div>
</legend>
	<div class="QuestionAnswersBox eitherNegativeResponseOrDate">
Month: <input class="dateMonth" id="EPQ31012000MM" type="text" size="2" maxlength="2" name="EPQ31012000MM" value=<%=Session("EPQ31012000MM")%>>
&nbsp;&nbsp;&nbsp; Year: <input class="yearRange" id="EPQ31012000YY" type="text" size="4" maxlength="4" name="EPQ31012000YY" value=<%=Session("EPQ31012000YY")%>>

		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ31012010" value="88" id="EPQ31012010" <%=strEPQ31012010answer1%>>
		<label for="EPQ31012010">Don't know</label><br>
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
