
<%

Session("CancerScreeningSectionStatus")="Current"
Session("PageHolder")="Cancer Screening"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31006000")="1" then
		strEPQ31006000answer1="checked"
	end if
	if Session("EPQ31006000")="0" then
		strEPQ31006000answer2="checked"
	end if
	if Session("EPQ31006000")="88" then
		strEPQ31006000answer3="checked"
	end if

	if Session("EPQ31007010")="88" then
		strEPQ31007010answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31006000string")= ""


	Session("EPQ31006000") = Request.Form("EPQ31006000")


	if Session("EPQ31006000") = "1" then 
		Session("EPQ31306000string")= "had FOBT"
	end if
	if Session("EPQ31006000") = "1" then 
		Session("EPQ31306000string")= "never had FOBT"
	end if
	if Session("EPQ31006000") = "88" then 
		Session("EPQ31306000string")= "don't know about FOBT"
	end if

	Session("EPQ31007000MM") = Request.Form("EPQ31007000MM")
	Session("EPQ31007000YY") = Request.Form("EPQ31007000YY")
	Session("EPQ31007010") = Request.Form("EPQ31007010")


	if Session("EPQ31007010") = "88" then 
		Session("EPQ31307010string")= "don't know date of past FOBT"
	end if
end if


if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
if Session("THRC31102100")="1" then
		Session("Page")=25
		Response.Redirect "cancerriskmaster.asp"
end if
		Session("Page")=26
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then


Session.Contents.Remove("EPQ31011000")
	if Session("EPQ31006000")="1" then
	Session("Page")="28"
	else
	Session("Page")="28"
	end if
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
<u>Fecal Occult blood tests (FOBTs)</u> are done either at home or in your health care provider's office using a kit to determine whether you have blood in your stool or bowel movement. You smear a small amount of stool on paper cards and send the cards back to the doctor or other health care provider or lab.
	</div>


    <form action="cancerrisk27.asp" method="post" id="formQuestion" name="formQuestion">
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
Have you EVER HAD a fecal occult blood test (FOBT)?<br>
	</div>
</legend>
	<div class="QuestionAnswersBox required">
		<input type="radio" class="qTrigger" name="EPQ31006000" value="1" class="qTrigger" id="EPQ31006000" <%=strEPQ31006000answer1%>>
		<label for="EPQ31006000">Yes</label><br>
		<input type="radio" class="qTriggerOff" name="EPQ31006000" value="0" class="qTriggerOff" id="EPQ31006000" <%=strEPQ31006000answer2%>>
		<label for="EPQ31006000">No</label><br>
		<input type="radio" class="qTriggerOff" name="EPQ31006000" value="88" class="qTriggerOff" id="EPQ31006000" <%=strEPQ31006000answer3%>>
		<label for="EPQ31006000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->

</fieldset>

<div class="hiddenQ">
<fieldset>
<legend>
	<div class="QuestionBox">
When did you have your MOST RECENT fecal occult blood test (FOBT)?<br>
	</div>
</legend>

	<div class="QuestionAnswersBox eitherNegativeResponseOrDateIfBranchActive">
Month: <input class="dateMonth" id="EPQ31007000MM" type="text" size="5" name="EPQ31007000MM" value=<%=Session("EPQ31007000MM")%>>
Year: <input class="yearRange" id="EPQ31007000YY" type="text" size="5" name="EPQ31007000YY" value=<%=Session("EPQ31007000YY")%>>
	&nbsp;&nbsp;&nbsp;	&nbsp;<input type="radio" name="EPQ31007010" value="88" id="EPQ31007010" <%=strEPQ31007010answer1%>>
		<label for="EPQ31007010">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->
</fieldset>
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
