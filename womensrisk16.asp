
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30624000")="88" then
		strEPQ30624000answer1="checked"
	end if
	if Session("EPQ30624000")="1" then
		strEPQ30624000answer2="checked"
	end if
	if Session("EPQ30624000")="2" then
		strEPQ30624000answer3="checked"
	end if
	if Session("EPQ30624000")="3" then
		strEPQ30624000answer4="checked"
	end if
	if Session("EPQ30624000")="4" then
		strEPQ30624000answer5="checked"
	end if


	if Session("EPQ30625000")="1" then
		strEPQ30625000answer1="checked"
	end if
	if Session("EPQ30625000")="0" then
		strEPQ30625000answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30625000string")= ""
	Session("EPQ30624000string")= ""


	Session("EPQ30625000") = Request.Form("EPQ30625000")
	Session("EPQ30624000") = Request.Form("EPQ30624000")

	if Session("EPQ30624000") = "1" then 
		Session("EPQ30624000string")= "less than 20"
	end if

	if Session("EPQ30624000") = "2" then 
		Session("EPQ30624000string")= "20 to 24Y"
	end if
	if Session("EPQ30624000") = "3" then 
		Session("EPQ30624000string")= "25 to 30Y"
	end if
	if Session("EPQ30624000") = "4" then 
		Session("EPQ30624000string")= "Greater than 31Y"
	end if

	if Session("EPQ30624000") = "88" then 
		Session("EPQ30624000string")= "PT unsure about reproductive HX"
	end if


	if Session("EPQ30625000") = "1" then 
		Session("EPQ30625000string")= "Has breastfed"
	end if

	if Session("EPQ30625000") = "2" then 
		Session("EPQ30625000string")= "Has not breastfed"
	end if
end if

if Request.Form("StopID")="1" then
		Session("WomensRiskScreeningSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=15
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30624000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if len(Session("EPQ30625000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	
	Session("WomensRiskScreeningSectionStatus")="Completed"
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk16.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
How old were you when your <u>first</u> child was born?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input id="EPQ30624000" type="text" size="2" maxlength="2" name="EPQ30624000" class="required pregnancyRange" value=<%=Session("EPQ30624000")%>> years old
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
Did you breastfeed any of your children for more than 1 month?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30625000" value="1" id="EPQ30625000" class="required" <%=strEPQ30625000answer1%>>
		<label for="EPQ30625000">Yes</label><br>
		<input type="radio" name="EPQ30625000" value="0" id="EPQ30625000" <%=strEPQ30625000answer2%>>
		<label for="EPQ31002000">No</label><br>
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
