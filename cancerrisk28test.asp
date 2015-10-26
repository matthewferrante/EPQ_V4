
<%
'code test
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31010000")="1" then
		strEPQ31010000answer1="checked"
	end if
	if Session("EPQ31010000")="0" then
		strEPQ31010000answer2="checked"
	end if
	if Session("EPQ31010000")="88" then
		strEPQ31010000answer3="checked"
	end if

	if Session("EPQ31011000")="1" then
		strEPQ31011000answer1="checked"
	end if
	if Session("EPQ31011000")="2" then
		strEPQ31011000answer2="checked"
	end if
	if Session("EPQ31011000")="3" then
		strEPQ31011000answer3="checked"
	end if
	if Session("EPQ31011000")="88" then
		strEPQ31011000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31010000string")= ""
	Session("EPQ31011000string")= ""

	Session("EPQ31009000") = Request.Form("EPQ31009000")
	Session("EPQ31010000") = Request.Form("EPQ31010000")
	Session("EPQ31011000") = Request.Form("EPQ31011000")
	Session("EPQ31011000specify") = Request.Form("EPQ31011000specify")


	if Session("EPQ31010000") = "1" then 
		Session("EPQ313010000string")= "had colonoscopy or sigmoidoscopy"
	end if
	if Session("EPQ31010000") = "0" then 
		Session("EPQ313010000string")= "never had colonoscopy or sigmoidoscopy"
	end if
	if Session("EPQ31010000") = "88" then 
		Session("EPQ313010000string")= "don't know about colonoscopy or sigmoidoscopy"
	end if

	if Session("EPQ31011000") = "1" then 
		Session("EPQ313011000string")= "most recent was colonoscopy"
	end if
	if Session("EPQ31011000") = "2" then 
		Session("EPQ313011000string")= "most recent was sigmoidoscopy"
	end if
	if Session("EPQ31011000") = "3" then 
		Session("EPQ313011000string")= "most recent was something else"
	end if


end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ31006000")="1" then
	Session("Page")="27"
	else
	Session("Page")="27"
	end if

		Session("ReturnID")="1"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("EPQ31010000") = "1" then 
	Session("Page")="29"
	else
	Session("EPQ31012000MM") = ""
	Session("EPQ31012000YY") = ""
	Session("EPQ31012010") = ""

	Session("Page")="0"
	Session("CancerRiskSectionStatus")="Completed"
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

</div>

<div id="wrapper">
<div id="formWrapper">
<div id="formBlock">
	<div id="SpecialNote">
A <u>Sigmoidoscopy</u> is an exam in which your health care provider inserts a tube into the rectum and lower part of the colon to look for signs of cancer or other problems.  Before a sigmoidoscopy is done, you have 1-2 enemas.<BR>
<br>A <u>Colonoscopy</u> is a similar exam but it uses a longer tube to examine the entire colon.  Before a colonoscopy is done, you need to clean out your entire colon and you are usually given medication through a needle in you arm to make you sleepy during the test.<BR>
	</div>
    <form action="cancerrisk28.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br><br>
	<div class="QuestionBox">
Have you EVER HAD a sigmoidoscopy or colonoscopy?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31010000" value="1" class="qTrigger" id="EPQ31010000" <%=strEPQ31010000answer1%>>
		<label for="EPQ31010000">Yes</label><br>
		<input type="radio" name="EPQ31010000" value="0" class="qTriggerOff" id="EPQ31010000" <%=strEPQ31010000answer2%>>
		<label for="EPQ31010000">No</label><br>
		<input type="radio" name="EPQ31010000" value="88" class="qTriggerOff" id="EPQ31010000" <%=strEPQ31010000answer3%>>
		<label for="EPQ31010000">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->


<div class="hiddenQ">

	<div class="QuestionBox">
	What was this MOST RECENT exam called? (PLEASE MARK THE APPROPRIATE EXAM)<br>
	</div>

<fieldset>
	<legend class="QuestionAnswersBox">
	<input type="radio" class="requiredIBranchActive" name="EPQ31011000" value="1" id="EPQ31011000" <%=strEPQ31011000answer1%>>
	<label for="EPQ31011000">Colonoscopy</label><br>
	<input type="radio" name="EPQ31011000" value="2" id="EPQ31011000" <%=strEPQ31011000answer2%>>
	<label for="EPQ31011000">Sigmoidoscopy</label><br>
	<input type="radio" name="EPQ31011000" value="3" id="EPQ31011000" <%=strEPQ31011000answer3%>>
	<label for="EPQ31011000">Other, specify</label>

	<input id="EPQ31011000specify" class="requiredIfPreviousRadio" type="text" size="25" name="EPQ31011000specify" 	value=<%=Session("EPQ31011000specify")%>><br>

	<input type="radio" name="EPQ31011000" value="88" id="EPQ31011000" <%=strEPQ31011000answer4%>>
	<label for="EPQ31011000">Don't know</label><br>

	</legend><!-- [ /#AnswerBox] -->

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
