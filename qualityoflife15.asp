
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11330000")="1" then
		strGU11330000answer1="checked"
	end if
	if Session("GU11330000")="2" then
		strGU11330000answer2="checked"
	end if
	if Session("GU11330000")="3" then
		strGU11330000answer3="checked"
	end if
	if Session("GU11330000")="4" then
		strGU11330000answer4="checked"
	end if
	if Session("GU11330000")="99" then
		strGU11330000answer99="checked"
	end if

	if Session("GU11331000")="1" then
		strGU11331000answer1="checked"
	end if
	if Session("GU11331000")="2" then
		strGU11331000answer2="checked"
	end if
	if Session("GU11331000")="3" then
		strGU11331000answer3="checked"
	end if
	if Session("GU11331000")="4" then
		strGU11331000answer4="checked"
	end if
	if Session("GU11331000")="5" then
		strGU11331000answer5="checked"
	end if
	if Session("GU11331000")="99" then
		strGU11331000answer99="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU11330000string")= ""
	Session("GU11331000string")= ""


	Session("GU11330000") = Request.Form("GU11330000")
	Session("GU11331000") = Request.Form("GU11331000")




	if Session("GU11330000") = "1" then 
		Session("GU11330000string")= "No sexual activity during the past 4 weeks"
	end if
	if Session("GU11330000") = "2" then 
		Session("GU11330000string")= "Sexual activity less than once a week during the past 4 weeks"
	end if
	if Session("GU11330000") = "3" then 
		Session("GU11330000string")= "Sexual activity about once a week during the past 4 weeks"
	end if
	if Session("GU11330000") = "4" then 
		Session("GU11330000string")= "Sexual activity more than once a week during the past 4 weeks"
	end if
	if Session("GU11330000") = "99" then 
		Session("GU11330000string")= "Prefer not to answer sexual activity during the past 4 weeks"
	end if


	if Session("GU11331000") = "1" then 
		Session("GU11331000string")= "No pain related to intercourse during the past 4 weeks"
	end if
	if Session("GU11331000") = "2" then 
		Session("GU11331000string")= "Seldomly had pain related to intercourse during the past 4 weeks"
	end if
	if Session("GU11331000") = "3" then 
		Session("GU11331000string")= "Not often had pain related to intercourse during the past 4 weeks"
	end if
	if Session("GU11331000") = "4" then 
		Session("GU11331000string")= "Often had pain related to intercourse during the past 4 weeks"
	end if
	if Session("GU11331000") = "5" then 
		Session("GU11331000string")= "Very often had pain related to intercourse during the past 4 weeks"
	end if
	if Session("GU11331000") = "99" then 
		Session("GU11331000string")= "Prefer not to answer pain related to intercourse during the past 4 weeks"
	end if
end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=14
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

	Session("Page")="16"
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

    <form action="qualityoflife15.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
		<b>Over the past 4 weeks</b>, how often did you have <u>any</u> sexual activity?
</legend>

	<div class="QuestionAnswersBox">

		<input type="radio" name="GU11330000" value="1" id="GU11330010" class="required" <%=strGU11330000answer1%>>
		<label for="GU11330010">Not at all</label><br>
		<input type="radio" name="GU11330000" value="2" id="GU11330020" <%=strGU11330000answer2%>>
		<label for="GU11330020">Less than once a week</label><br>
		<input type="radio" name="GU11330000" value="3" id="GU11330030" <%=strGU11330000answer3%>>
		<label for="GU11330030">About once a week</label><br>
		<input type="radio" name="GU11330000" value="4" id="GU11330040" <%=strGU11330000answer4%>>
		<label for="GU11330040">More than once a week</label><br>
		<input type="radio" name="GU11330000" value="99" id="GU11330040" <%=strGU11330000answer99%>>
		<label for="GU11330040">Prefer not to answer</label><br>


	</div><!-- [ /#AnswerBox] -->   

</fieldset>
<br>
<fieldset>
  <legend class='QuestionBox'>
		<b>Over the past 4 weeks</b>, how often have you had pain related to intercourse?
</legend>

	<div class="QuestionAnswersBox">


    <input type="radio" name="GU11331000" value="1" id="GU11331010" class="required" <%=strGU11331000answer1%>>
    <label for="GU11331010">Never</label><br>
    <input type="radio" name="GU11331000" value="2" id="GU11331020" <%=strGU11331000answer2%>>
    <label for="GU11331020">Seldom</label><br>
    <input type="radio" name="GU11331000" value="3" id="GU11331030" <%=strGU11331000answer3%>>
    <label for="GU11331030">Not often</label><br>
    <input type="radio" name="GU11331000" value="4" id="GU11331040" <%=strGU11331000answer4%>>
    <label for="GU11331040">Often</label><br>
    <input type="radio" name="GU11331000" value="5" id="GU11331050" <%=strGU11331000answer5%>>
    <label for="GU11331050">Very often</label><br>
    <input type="radio" name="GU11331000" value="99" id="GU11331050" <%=strGU11331000answer99%>>
    <label for="GU11331050">Prefer not to answer</label><br>

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
