
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM10508000")="1" then
		strHM10508000answer1="checked"
	end if
	if Session("HM10508000")="2" then
		strHM10508000answer2="checked"
	end if

	if Session("HM10509000")="1" then
		strHM10509000answer1="checked"
	end if
	if Session("HM10509000")="2" then
		strHM10509000answer2="checked"
	end if
	if Session("HM10509000")="3" then
		strHM10509000answer3="checked"
	end if

	if Session("HM10510000")="1" then
		strHM10510000answer1="checked"
	end if
	if Session("HM10511000")="1" then
		strHM10511000answer1="checked"
	end if
	if Session("HM10512000")="1" then
		strHM10512000answer1="checked"
	end if
	if Session("HM10513000")="1" then
		strHM10513000answer1="checked"
	end if
	if Session("HM10514000")="88" then
		strHM10514000answer88="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("HM10508000string")= ""
	Session("HM10509000string")= ""
	Session("HM10510000string")= ""
	Session("HM10511000string")= ""
	Session("HM10512000string")= ""
	Session("HM10513000string")= ""
	Session("HM10514000string")= ""

	Session("HM10508000") = Request.Form("HM10508000")
	Session("HM10509000") = Request.Form("HM10509000")
	Session("HM10510000") = Request.Form("HM10510000")
	Session("HM10511000") = Request.Form("HM10511000")
	Session("HM10512000") = Request.Form("HM10512000")
	Session("HM10513000") = Request.Form("HM10513000")
	Session("HM10514000") = Request.Form("HM10514000")
	Session("HM10515000") = Request.Form("HM10515000")


end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
if Session("HM10204000")="1" OR Session("HM10207000")="1" then
if Session("EPQ30515050")="1" then
	Session("Page")="10a"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
end if
end if

		Session("ReturnID")="1"
		Session("Page")=10
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms10a1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      When did numbness or tingling start?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM10508000" value="1" id="HM10508010" class="required" <%=strHM10508000answer1%>>
		<label for="HM105080001">Before cancer diagnosis</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="HM10508000" value="2" id="HM10508020" <%=strHM10508000answer2%>>
		<label for="HM105080002">Since cancer diagnosis</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>


  <fieldset>
    <legend class="QuestionBox">
How severe is your numbness or tingling?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM10509000" class="required" value="1" id="HM10509010" <%=strHM10509000answer1%>>
		<label for="HM105090001">Mild</label><br>
		<input type="radio" name="HM10509000" value="2" id="HM10509020" <%=strHM10509000answer2%>>
		<label for="HM105090002">Moderate</label><br>
		<input type="radio" name="HM10509000" value="3" id="HM10509030" <%=strHM10509000answer3%>>
		<label for="HM105090003">Severe</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      What do you believe is the primary cause of your numbness or tingling? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="HM10510000" value="1" id="HM10510000" <%=strHM10510000answer1%>>
		<label for="HM10510000">Amyloidosis</label><br>

		<input type="checkbox" name="HM10511000" value="1" id="HM10511000" <%=strHM10511000answer1%>>
		<label for="HM10511000">Diabetes</label><br>	
		
		<input type="checkbox" name="HM10512000" value="1" id="HM10512000" <%=strHM10512000answer1%>>
		<label for="HM10512000">My cancer treatment</label><br>	
		
		<input type="checkbox" name="HM10513000" value="1" id="HM10513000" <%=strHM10513000answer1%>>
		<label for="HM10513000">Other, specify:</label>
<input id="HM10515000" type="text" maxlength="75" size="15" name="HM10515000" class="requiredIfPreviousCheckbox" value='<%=Session("HM10515000")%>'><br>

<br><br>
		<input type="radio" name="HM10514000" value="88" id="HM10514000" <%=strHM10514000answer88%>>
		<label for="HM10514000">Don't know</label><br>
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
