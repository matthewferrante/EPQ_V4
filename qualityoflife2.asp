
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31303000")="1" then
		strEPQ31303000answer1="checked"
	end if
	if Session("EPQ31303000")="2" then
		strEPQ31303000answer2="checked"
	end if
	if Session("EPQ31303000")="3" then
		strEPQ31303000answer3="checked"
	end if

	if Session("EPQ31304000")="1" then
		strEPQ31304000answer1="checked"
	end if
	if Session("EPQ31304000")="2" then
		strEPQ31304000answer2="checked"
	end if
	if Session("EPQ31304000")="3" then
		strEPQ31304000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31303000string")= ""
	Session("EPQ31304000string")= ""


	Session("EPQ31303000") = Request.Form("EPQ31303000")
	Session("EPQ31304000") = Request.Form("EPQ31304000")

	if Session("EPQ31303000") = "3" then 
		Session("EPQ31303000string")= "0 (normal activity)"
	end if

	if Session("EPQ31303000") = "2" then 
		Session("EPQ31303000string")= "1 (restricted activity)"
	end if
	if Session("EPQ31303000") = "1" then 
		Session("EPQ31303000string")= "2 (unable to work)"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
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

	Session("Page")="3"
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

    <form action="qualityoflife2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">
The following questions are about activities you might do during a typical day.</div>
<br>
	<fieldset>
  <legend class='QuestionBox'>

	Does <u>your health now limit you</u> in these activities?  If so, how much?<br>
	</legend>

	<div class="QuestionAnswersBox">
		Moderate activities, such as moving a table, pushing a vacuum cleaner, bowling, or playing golf?<br>
		<input type="radio" name="EPQ31303000" value="1" id="EPQ313030001" class="required" <%=strEPQ31303000answer1%>>
		<label for="EPQ313030001">Yes, limited a lot</label><br>
		<input type="radio" name="EPQ31303000" value="2" id="EPQ313030002" <%=strEPQ31303000answer2%>>
		<label for="EPQ313030002">Yes, limited a little</label><br>
		<input type="radio" name="EPQ31303000" value="3" id="EPQ313030003" <%=strEPQ31303000answer3%>>
		<label for="EPQ313030003">No, not limited at all</label><br>
	</div><!-- [ /#AnswerBox] -->   


	<div class="QuestionAnswersBox">
    Climbing several flights of stairs?<br>
    <input type="radio" name="EPQ31304000" value="1" id="EPQ313040001" class="required" <%=strEPQ31304000answer1%>>
    <label for="EPQ313040001">Yes, limited a lot</label><br>
    <input type="radio" name="EPQ31304000" value="2" id="EPQ313040002" <%=strEPQ31304000answer2%>>
    <label for="EPQ313040002">Yes, limited a little</label><br>
    <input type="radio" name="EPQ31304000" value="3" id="EPQ313040003" <%=strEPQ31304000answer3%>>
    <label for="EPQ313040003">No, not limited at all</label><br>
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
