
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11356000")="1" then
		strGU11356000answer1="checked"
	end if
	if Session("GU11356000")="2" then
		strGU11356000answer2="checked"
	end if
	if Session("GU11356000")="3" then
		strGU11356000answer3="checked"
	end if
	if Session("GU11356000")="4" then
		strGU11356000answer4="checked"
	end if
	if Session("GU11356000")="5" then
		strGU11356000answer5="checked"
	end if

	if Session("GU11356000")="99" then
		strGU11356000answer99="checked"
	end if

	if Session("GU11357000")="1" then
		strGU11357000answer1="checked"
	end if
	if Session("GU11357000")="2" then
		strGU11357000answer2="checked"
	end if
	if Session("GU11357000")="3" then
		strGU11357000answer3="checked"
	end if
	if Session("GU11357000")="4" then
		strGU11357000answer4="checked"
	end if
	if Session("GU11357000")="5" then
		strGU11357000answer5="checked"
	end if

	if Session("GU11357000")="99" then
		strGU11357000answer99="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("GU11356000string")= ""
	Session("GU11357000string")= ""


	Session("GU11356000") = Request.Form("GU11356000")
	Session("GU11357000") = Request.Form("GU11357000")




	if Session("GU11356000") = "1" then 
		Session("GU11356000string")= "Very poor ability to function sexually during the past 4 weeks"
	end if
	if Session("GU11356000") = "2" then 
		Session("GU11356000string")= "Poor ability to function sexually during the past 4 weeks"
	end if
	if Session("GU11356000") = "3" then 
		Session("GU11356000string")= "Fair ability to function sexually during the past 4 weeks"
	end if
	if Session("GU11356000") = "4" then 
		Session("GU11356000string")= "Good ability to function sexually during the past 4 weeks"
	end if
	if Session("GU11356000") = "5" then 
		Session("GU11356000string")= "Very good ability to function sexually during the past 4 weeks"
	end if
	if Session("GU11356000") = "99" then 
		Session("GU11356000string")= "Prefer not to answer ability to function sexually during the past 4 weeks"
	end if

	if Session("GU11357000") = "1" then 
		Session("GU11357000string")= "No problem with sexual function during the past 4 weeks"
	end if
	if Session("GU11357000") = "2" then 
		Session("GU11357000string")= "Very small problem with sexual function during the past 4 weeks"
	end if
	if Session("GU11357000") = "3" then 
		Session("GU11357000string")= "Small problem with sexual function during the past 4 weeks"
	end if
	if Session("GU11357000") = "4" then 
		Session("GU11357000string")= "Moderate problem with sexual function during the past 4 weeks"
	end if
	if Session("GU11357000") = "5" then 
		Session("GU11357000string")= "Big problem with sexual function during the past 4 weeks"
	end if
	if Session("GU11357000") = "99" then 
		Session("GU11357000string")= "Prefer not to answer about sexual function during the past 4 weeks"
	end if



end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=25
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

	Session("Page")="27"
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

    <form action="qualityoflife26.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
<legend class='QuestionBox'>
	 Overall, how would you rate your ability to function sexually <b>during the last 4 weeks</b>?
</legend>

	<div class="QuestionAnswersBox">

		<input type="radio" name="GU11356000" value="1" id="GU11356010" class="required" <%=strGU11356000answer1%>>
		<label for="GU11356010">Very poor</label><br>
		<input type="radio" name="GU11356000" value="2" id="GU11356020" <%=strGU11356000answer2%>>
		<label for="GU11356020">Poor</label><br>
		<input type="radio" name="GU11356000" value="3" id="GU11356030" <%=strGU11356000answer3%>>
		<label for="GU11356030">Fair</label><br>
		<input type="radio" name="GU11356000" value="4" id="GU11356040" <%=strGU11356000answer4%>>
		<label for="GU11356040">Good</label><br>
		<input type="radio" name="GU11356000" value="5" id="GU11356050" <%=strGU11356000answer5%>>
		<label for="GU11356050">Very good</label><br>

		<input type="radio" name="GU11356000" value="99" id="GU11356050" <%=strGU11356000answer99%>>
		<label for="GU11356050">Prefer not to answer</label><br>
	</div><!-- [ /#AnswerBox] -->   

<br>
</fieldset>
<fieldset>
<legend class='QuestionBox'>
    Overall, how big a problem has your sexual function or lack of sexual function been for you <b>during the last 4 weeks</b>?
</legend>

	<div class="QuestionAnswersBox">
    <input type="radio" name="GU11357000" value="1" id="GU11357010" class="required" <%=strGU11357000answer1%>>
    <label for="GU11355010">No problem</label><br>
    <input type="radio" name="GU11357000" value="2" id="GU11357020" <%=strGU11357000answer2%>>
    <label for="GU11357020">Very small problem</label><br>
    <input type="radio" name="GU11357000" value="3" id="GU11357030" <%=strGU11357000answer3%>>
    <label for="GU11357030">Small problem</label><br>
    <input type="radio" name="GU11357000" value="4" id="GU11357040" <%=strGU11357000answer4%>>
    <label for="GU11357040">Moderate problem</label><br>
    <input type="radio" name="GU11357000" value="5" id="GU11357050" <%=strGU11357000answer5%>>
    <label for="GU11357050">Big problem</label><br>
    <input type="radio" name="GU11357000" value="99" id="GU11357050" <%=strGU11357000answer99%>>
    <label for="GU11357050">Prefer not to answer</label><br>

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
