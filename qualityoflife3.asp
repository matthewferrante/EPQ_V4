
<%
 'Comment to push GIT
Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31305000")="1" then
		strEPQ31305000answer1="checked"
	end if
	if Session("EPQ31305000")="0" then
		strEPQ31305000answer2="checked"
	end if

	if Session("EPQ31306000")="1" then
		strEPQ31306000answer1="checked"
	end if
	if Session("EPQ31306000")="0" then
		strEPQ31306000answer2="checked"
	end if

	if Session("EPQ31307000")="1" then
		strEPQ31307000answer1="checked"
	end if
	if Session("EPQ31307000")="0" then
		strEPQ31307000answer2="checked"
	end if

	if Session("EPQ31308000")="1" then
		strEPQ31308000answer1="checked"
	end if
	if Session("EPQ31308000")="0" then
		strEPQ31308000answer2="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31305000string")= ""
	Session("EPQ31306000string")= ""
	Session("EPQ31307000string")= ""
	Session("EPQ31308000string")= ""


	Session("EPQ31305000") = Request.Form("EPQ31305000")
	Session("EPQ31306000") = Request.Form("EPQ31306000")
	Session("EPQ31307000") = Request.Form("EPQ31307000")
	Session("EPQ31308000") = Request.Form("EPQ31308000")

	if Session("EPQ31305000") = "1" then 
		Session("EPQ31305000string")= "Physical restrictions on activities"
	end if
	if Session("EPQ31305000") = "0" then 
		Session("EPQ31305000string")= "No physical restrictions on activities"
	end if


	if Session("EPQ31306000") = "1" then 
		Session("EPQ31306000string")= "Physical restrictions on activities"
	end if
	if Session("EPQ31306000") = "0" then 
		Session("EPQ31306000string")= "No physical restrictions on activities"
	end if
	if Session("EPQ31307000") = "1" then 
		Session("EPQ31307000string")= "Emotional restrictions on activities"
	end if
	if Session("EPQ31307000") = "0" then 
		Session("EPQ31307000string")= "No emotional restrictions on activities"
	end if
	if Session("EPQ31308000") = "1" then 
		Session("EPQ31308000string")= "Emotional restrictions on activities"
	end if
	if Session("EPQ31308000") = "0" then 
		Session("EPQ31308000string")= "No emotional restrictions on activities"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31305000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31306000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31307000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31308000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="4"
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
    <form action="qualityoflife3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
    During the <u>past 4 weeks</u>, have you had any of the following problems with your work or other regular daily activities<BR> <u> as a result of your physical health</u>?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<u>Accomplished less</u> than you would like?<br>
		<input type="radio" name="EPQ31305000" value="1" id="EPQ313050001" class="required" <%=strEPQ31305000answer1%>>
		<label for="EPQ313050001">Yes</label><br>
		<input type="radio" name="EPQ31305000" value="0" id="EPQ313050002" <%=strEPQ31305000answer2%>>
		<label for="EPQ313050002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   

	<div class="QuestionAnswersBox">
    Were limited in the kind of work or other activities.<br>
		<input type="radio" name="EPQ31306000" value="1" id="EPQ313060001" class="required" <%=strEPQ31306000answer1%>>
		<label for="EPQ313060001">Yes</label><br>
		<input type="radio" name="EPQ31306000" value="0" id="EPQ313060002" <%=strEPQ31306000answer2%>>
		<label for="EPQ313060002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   


	<legend class='QuestionBox'>
    During the <u>past 4 weeks</u>, have you had any of the following problems with your work or other regular daily<br> activities <u> as a result of any emotional problems</u> (such as feeling depressed or anxious)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<u>Accomplished less</u> than you would like?<br>
		<input type="radio" name="EPQ31307000" value="1" id="EPQ313070001" class="required" <%=strEPQ31307000answer1%>>
		<label for="EPQ313070001">Yes</label><br>
		<input type="radio" name="EPQ31307000" value="0" id="EPQ313070002" <%=strEPQ31307000answer2%>>
		<label for="EPQ313070002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   

	<div class="QuestionAnswersBox">
    Did work or other activities <u>less carefully than usual</u>?<br>
		<input type="radio" name="EPQ31308000" value="1" id="EPQ313080001" class="required" <%=strEPQ31308000answer1%>>
		<label for="EPQ313080001">Yes</label><br>
		<input type="radio" name="EPQ31308000" value="0" id="EPQ313080002" <%=strEPQ31308000answer2%>>
		<label for="EPQ313080002">No</label><br>
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
