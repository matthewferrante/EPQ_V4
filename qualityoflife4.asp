
<%
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31309000")="1" then
		strEPQ31309000answer1="checked"
	end if
	if Session("EPQ31309000")="2" then
		strEPQ31309000answer2="checked"
	end if
	if Session("EPQ31309000")="3" then
		strEPQ31309000answer3="checked"
	end if
	if Session("EPQ31309000")="4" then
		strEPQ31309000answer4="checked"
	end if
	if Session("EPQ31309000")="5" then
		strEPQ31309000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31309000string")= ""


	Session("EPQ31309000") = Request.Form("EPQ31309000")

	if Session("EPQ31309000") = "1" then 
		Session("EPQ31309000string")= "Pain interfered not at all"
	end if
	if Session("EPQ31309000") = "2" then 
		Session("EPQ31309000string")= "Pain interfered a little bit"
	end if
	if Session("EPQ31309000") = "3" then 
		Session("EPQ31309000string")= "Pain interfered moderately"
	end if
	if Session("EPQ31309000") = "4" then 
		Session("EPQ31309000string")= "Pain interfered quite a bit"
	end if
	if Session("EPQ31309000") = "5" then 
		Session("EPQ31309000string")= "Pain interfered extremely"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31309000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="5"
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


    <form action="qualityoflife4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	  During the <u>past 4 weeks</u>, how much did pain interfere with your normal work (including both work outside the<br> home and housework)?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31309000" value="1" id="EPQ313090001" class="required" <%=strEPQ31309000answer1%>>
		<label for="EPQ313090001">Not at all</label><br>
		<input type="radio" name="EPQ31309000" value="2" id="EPQ313090002" <%=strEPQ31309000answer2%>>
		<label for="EPQ313090002">A little bit</label><br>
		<input type="radio" name="EPQ31309000" value="3" id="EPQ313090003" <%=strEPQ31309000answer3%>>
		<label for="EPQ313090003">Moderately</label><br>
		<input type="radio" name="EPQ31309000" value="4" id="EPQ313090004" <%=strEPQ31309000answer4%>>
		<label for="EPQ313090004">Quite a bit</label><br>

		<input type="radio" name="EPQ31309000" value="5" id="EPQ313090005" <%=strEPQ31309000answer5%>>
		<label for="EPQ313090005">Extremely</label><br>
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
