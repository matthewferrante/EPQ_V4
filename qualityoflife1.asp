
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31301000")="1" then
		strEPQ31301000answer1="checked"
	end if
	if Session("EPQ31301000")="2" then
		strEPQ31301000answer2="checked"
	end if
	if Session("EPQ31301000")="3" then
		strEPQ31301000answer3="checked"
	end if
	if Session("EPQ31301000")="4" then
		strEPQ31301000answer4="checked"
	end if
	if Session("EPQ31301000")="5" then
		strEPQ31301000answer5="checked"
	end if

	if Session("EPQ31302000")="1" then
		strEPQ31302000answer1="checked"
	end if
	if Session("EPQ31302000")="2" then
		strEPQ31302000answer2="checked"
	end if
	if Session("EPQ31302000")="3" then
		strEPQ31302000answer3="checked"
	end if
	if Session("EPQ31302000")="4" then
		strEPQ31302000answer4="checked"
	end if
	if Session("EPQ31302000")="5" then
		strEPQ31302000answer5="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31301000string")= ""
	Session("EPQ31302000string")= ""


	Session("EPQ31301000") = Request.Form("EPQ31301000")
	Session("EPQ31302000") = Request.Form("EPQ31302000")

	if Session("EPQ31301000") = "1" then 
		Session("EPQ31301000string")= "0 (normal activity)"
	end if

	if Session("EPQ31301000") = "2" then 
		Session("EPQ31301000string")= "1 (restricted activity)"
	end if
	if Session("EPQ31301000") = "3" then 
		Session("EPQ31301000string")= "2 (unable to work)"
	end if
	if Session("EPQ31301000") = "4" then 
		Session("EPQ31301000string")= "3 (limited selfcare)"
	end if
	if Session("EPQ31301000") = "5" then 
		Session("EPQ31301000string")= "4 (completely disabled)"
	end if


	if Session("EPQ31302000") = "1" then 
		Session("EPQ31302000string")= "Excellent health"
	end if

	if Session("EPQ31302000") = "2" then 
		Session("EPQ31302000string")= "Very good health"
	end if
	if Session("EPQ31302000") = "3" then 
		Session("EPQ31302000string")= "Good health"
	end if
	if Session("EPQ31302000") = "4" then 
		Session("EPQ31302000string")= "Fair health"
	end if
	if Session("EPQ31302000") = "5" then 
		Session("EPQ31302000string")= "Poor health"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5  
		Session("QOLSectionStatus")=""

		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31301000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31302000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "qualityoflifemaster.asp"
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


    <form action="qualityoflife1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
    Please select the option that describes your current level of activity.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31301000" value="1" id="EPQ313010001" class="required" <%=strEPQ31301000answer1%>>
		<label for="EPQ313010001">Fully active, able to carry on all pre-disease performance without restriction</label><br>
		<input type="radio" name="EPQ31301000" value="2" id="EPQ313010002" <%=strEPQ31301000answer2%>>
		<label for="EPQ313010002">Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nature, e.g., light house work, office work</label><br>
		<input type="radio" name="EPQ31301000" value="3" id="EPQ313010003" <%=strEPQ31301000answer3%>>
		<label for="EPQ313010003">Ambulatory and capable of all self care but unable to carry out any work activities.  Up and about more than <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50% of waking hours</label><br>
		<input type="radio" name="EPQ31301000" value="4" id="EPQ313010004" <%=strEPQ31301000answer4%>>
		<label for="EPQ313010004">Capable of only limited self care, confined to bed or chair for more than 50% of waking hours</label><br>
		<input type="radio" name="EPQ31301000" value="5" id="EPQ313010005" <%=strEPQ31301000answer5%>>
		<label for="EPQ313010005">Completely disabled.  Cannot carry on any self care. Totally confined to bed or chair</label><br>
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
    In general, would you say your health is:<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31302000" value="1" id="EPQ313020001" class="required" <%=strEPQ31302000answer1%>>
		<label for="EPQ313020001">Excellent</label><br>
		<input type="radio" name="EPQ31302000" value="2" id="EPQ313020002" <%=strEPQ31302000answer2%>>
		<label for="EPQ313020002">Very good</label><br>
		<input type="radio" name="EPQ31302000" value="3" id="EPQ313020003" <%=strEPQ31302000answer3%>>
		<label for="EPQ313020003">Good</label><br>
		<input type="radio" name="EPQ31302000" value="4" id="EPQ313020004" <%=strEPQ31302000answer4%>>
		<label for="EPQ313020004">Fair</label><br>
		<input type="radio" name="EPQ31302000" value="5" id="EPQ313020005" <%=strEPQ31302000answer5%>>
		<label for="EPQ313020005">Poor</label><br>

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
