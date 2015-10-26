
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11351000")="1" then
		strGU11351000answer1="checked"
	end if
	if Session("GU11351000")="2" then
		strGU11351000answer2="checked"
	end if
	if Session("GU11351000")="3" then
		strGU11351000answer3="checked"
	end if
	if Session("GU11351000")="4" then
		strGU11351000answer4="checked"
	end if
	if Session("GU11351000")="5" then
		strGU11351000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU11351000string")= ""
	

	Session("GU11351000") = Request.Form("GU11351000")
	


	if Session("GU11351000") = "1" then 
		Session("GU11351000string")= "No problem with bowel habits during the past 4 weeks"
	end if
	if Session("GU11351000") = "2" then 
		Session("GU11351000string")= "Very small problem with bowel habits during the past 4 weeks"
	end if
	if Session("GU11351000") = "3" then 
		Session("GU11351000string")= "Small problem with bowel habits during the past 4 weeks"
	end if
	if Session("GU11351000") = "4" then 
		Session("GU11351000string")= "Moderate problem with bowel habits during the past 4 weeks"
	end if
	if Session("GU11351000") = "5" then 
		Session("GU11351000string")= "Big problem with bowel habits during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=22
		Response.Redirect "qualityoflifemaster.asp"
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

	Session("Page")="24"
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

    <form action="qualityoflife23.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	Overall, how big a problem have your bowel habits been for you <b>during the last 4 weeks</b>?<br>
	</legend>

	<div class="QuestionAnswersBox">
	
		<input type="radio" name="GU11351000" value="1" id="GU11351010" class="required" <%=strGU11351000answer1%>>
		<label for="GU11351010">No problem</label><br>
		<input type="radio" name="GU11351000" value="2" id="GU11351020" <%=strGU11351000answer2%>>
		<label for="GU11351020">Very small problem</label><br>
		<input type="radio" name="GU11351000" value="3" id="GU11351030" <%=strGU11351000answer3%>>
		<label for="GU11351030">Small problem</label><br>
		<input type="radio" name="GU11351000" value="4" id="GU11351040" <%=strGU11351000answer4%>>
		<label for="GU11351040">Moderate problem</label><br>
		<input type="radio" name="GU11351000" value="5" id="GU11351050" <%=strGU11351000answer5%>>
		<label for="GU11351050">Big problem</label>
<br>

	</div><!-- [ /#AnswerBox] -->   

	

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
