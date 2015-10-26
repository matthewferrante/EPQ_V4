
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMPEPQ31156000")="1" then
		strTEMPEPQ31156000answer1="checked"
	end if
	if Session("TEMPEPQ31156000")="2" then
		strTEMPEPQ31156000answer2="checked"
	end if
	if Session("TEMPEPQ31156000")="0" then
		strTEMPEPQ31156000answer3="checked"
	end if

	if Session("TEMPEPQ31157000")="1" then
		strTEMPEPQ31157000answer1="checked"
	end if
	if Session("TEMPEPQ31157000")="2" then
		strTEMPEPQ31157000answer2="checked"
	end if
	if Session("TEMPEPQ31157000")="0" then
		strTEMPEPQ31157000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then

	Session("TEMPEPQ31156000string")= ""
	Session("TEMPEPQ31157000string")= ""
	Session("TEMPEPQ31155000string")= ""

	Session("TEMPEPQ31156000") = Request.Form("TEMPEPQ31156000")
	Session("TEMPEPQ31157000") = Request.Form("TEMPEPQ31157000")


	if Session("TEMPEPQ31156000") = "1" then 
		Session("TEMPEPQ31156000string")= ""
	end if
	if Session("TEMPEPQ31156000") = "2" then 
		Session("TEMPEPQ31156000string")= ""
	end if
	if Session("TEMPEPQ31156000") = "0" then 
		Session("TEMPEPQ31156000string")= ""
	end if

	if Session("TEMPEPQ31157000") = "1" then 
		Session("TEMPEPQ31157000string")= ""
	end if
	if Session("TEMPEPQ31157000") = "2" then 
		Session("TEMPEPQ31157000string")= ""
	end if
	if Session("TEMPEPQ31157000") = "0" then 
		Session("TEMPEPQ31157000string")= ""
	end if




end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"


Session("Page")="19ecig"
Response.Redirect "cancerriskmaster.asp"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("TEMPEPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="19exposure"
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


    <form action="cancerrisk19ecig2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<!-- [Question boxes ] -->		

<div id="SpecialNote">
An electronic cigarette (e-cig or e-cigarette, e-hookah, hookah pen, personal vaporizer (PV), electronic nicotine delivery system (ENDS)) is a battery-powered vaporizer that produces a mist rather than cigarette smoke and has the feel of tobacco smoking.
</div>
<br>
	<fieldset>
  <legend class='QuestionBox'>
When did you start using an e-cigarette?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="TEMPEPQ31149000" value="1" class="required" id="TEMPEPQ311490001" <%=strTEMPEPQ31149000answer1%>>
		<label for="TEMPEPQ311490001">One month or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="2" id="TEMPEPQ311490002" <%=strTEMPEPQ31149000answer2%>>
		<label for="TEMPEPQ311490002">More than 1 month but 3 months or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="3" id="TEMPEPQ311490003" <%=strTEMPEPQ31149000answer3%>>
		<label for="TEMPEPQ311490003">More than 3 months but 6 months or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="4" id="TEMPEPQ311490004" <%=strTEMPEPQ31149000answer4%>>
		<label for="TEMPEPQ311490004">More than 6 months but 1 year or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="5" id="TEMPEPQ311490005" <%=strTEMPEPQ31149000answer5%>>
		<label for="TEMPEPQ311490005">More than 1 year but 5 years or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="6" id="TEMPEPQ311490006" <%=strTEMPEPQ31149000answer6%>>
		<label for="TEMPEPQ311490006">More than 5 years but 10 years or less</label><br>
		<input type="radio" name="TEMPEPQ31149000" value="7" id="TEMPEPQ311490007" <%=strTEMPEPQ31149000answer7%>>
		<label for="TEMPEPQ311490007">10 years or more</label><br>
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
Why did you begin using an e-cigarette? Check all that apply.<br>
	</legend>

<div class="QuestionAnswersBox">
<input type="checkbox" class="atLeastOneCheckboxRequired" name="12EPQ30514040" value="1" id="EPQ30514040" <%=strEPQ30514040answer1%>>
<label for="EPQ30514040">To use them when I can’t smoke tobacco cigarettes (for example, inside a restaurant)</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="EPQ30514060" value="1" id="EPQ30514060" <%=strEPQ30514060answer1%>>
<label for="EPQ30514060">To help me quit smoking tobacco cigarettes</label><br>
<input type="checkbox" class="atLeastOneCheckboxRequired" name="3EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
<label for="EPQ30514030">To prevent me from resuming smoking tobacco cigarettes</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="4EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
<label for="EPQ30514030">To help me cut down the amount of tobacco cigarettes I smoke</label><br>
<input type="checkbox" class="atLeastOneCheckboxRequired" name="5EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
<label for="EPQ30514030">Because of health concerns associated with tobacco cigarettes</label><br>
<input type="checkbox" class="atLeastOneCheckboxRequired" name="6EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
<label for="EPQ30514030">I was curious about them</label><br>
<input type="checkbox" class="atLeastOneCheckboxRequired" name="7EPQ30514030" value="1" id="EPQ30514030" <%=strEPQ30514030answer1%>>
<label for="EPQ30514030">Recommendations from family or friends</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="7EPQ30514090" value="1" id="EPQ30514090" <%=strEPQ30514090answer1%>>
<label for="EPQ30514090">Other, specify:</label>		<input id="EPQ30514000" type="text" maxlength="75" size="15" name="9EPQ30514000" class="requiredIfPreviousCheckbox" value='<%=Session("9EPQ30514000")%>' ><br>
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
