
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11324000")="1" then
		strGU11324000answer1="checked"
	end if
	if Session("GU11324000")="2" then
		strGU11324000answer2="checked"
	end if
	if Session("GU11324000")="3" then
		strGU11324000answer3="checked"
	end if
	if Session("GU11324000")="4" then
		strGU11324000answer4="checked"
	end if
	if Session("GU11324000")="5" then
		strGU11324000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU11324000string")= ""
	

	Session("GU11324000") = Request.Form("GU11324000")
	


	if Session("GU11324000") = "1" then 
		Session("GU11324000string")= "Bowel habits have been a big problem during the past 4 weeks"
	end if
	if Session("GU11324000") = "2" then 
		Session("GU11324000string")= "Bowel habits have been a moderate problem during the past 4 weeks"
	end if
	if Session("GU11324000") = "3" then 
		Session("GU11324000string")= "Bowel habits have been a small problem during the past 4 weeks"
	end if
	if Session("GU11324000") = "4" then 
		Session("GU11324000string")= "Bowel habits have been a very small problem during the past 4 weeks"
	end if
	if Session("GU11324000") = "5" then 
		Session("GU11324000string")= "Bowel habits have been no problem during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=12
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("GU10202000")="1" AND Session("GU10201000")="1" then
		if Session("GU11324000")="5" then 
		Session("GU11351000")="1"
		end if
		if Session("GU11324000")="4" then 
		Session("GU11351000")="2"
		end if
		if Session("GU11324000")="3" then 
		Session("GU11351000")="3"
		end if
		if Session("GU11324000")="2" then 
		Session("GU11351000")="4"
		end if
		if Session("GU11324000")="1" then 
		Session("GU11351000")="5"
		end if


	else
	end if

	if len(Session("EPQ31301000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31302000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="14"
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

    <form action="qualityoflife13.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	Overall, how big a problem have your bowel habits been for you <b>during the past 4 weeks</b>?<br>
	</legend>

	<div class="QuestionAnswersBox">
	
		<input type="radio" name="GU11324000" value="1" id="GU11324010" class="required" <%=strGU11324000answer1%>>
		<label for="GU11324010">Big problem</label><br>
		<input type="radio" name="GU11324000" value="2" id="GU11324020" <%=strGU11324000answer2%>>
		<label for="GU11324020">Moderate problem</label><br>
		<input type="radio" name="GU11324000" value="3" id="GU11324030" <%=strGU11324000answer3%>>
		<label for="GU11324030">Small problem</label><br>
		<input type="radio" name="GU11324000" value="4" id="GU11324040" <%=strGU11324000answer4%>>
		<label for="GU11324040">Very small problem</label><br>
		<input type="radio" name="GU11324000" value="5" id="GU11324050" <%=strGU11324000answer5%>>
		<label for="GU11324050">No problem</label><br>
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
