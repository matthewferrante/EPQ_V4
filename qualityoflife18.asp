
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11337000")="1" then
		strGU11337000answer1="checked"
	end if
	if Session("GU11337000")="2" then
		strGU11337000answer2="checked"
	end if
	if Session("GU11337000")="3" then
		strGU11337000answer3="checked"
	end if
	if Session("GU11337000")="4" then
		strGU11337000answer4="checked"
	end if
	if Session("GU11337000")="5" then
		strGU11337000answer5="checked"
	end if

	if Session("GU11338000")="1" then
		strGU11338000answer1="checked"
	end if
	if Session("GU11338000")="2" then
		strGU11338000answer2="checked"
	end if
	if Session("GU11338000")="3" then
		strGU11338000answer3="checked"
	end if
	if Session("GU11338000")="4" then
		strGU11338000answer4="checked"
	end if
	if Session("GU11338000")="5" then
		strGU11338000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU11337000string")= ""
	Session("GU11338000string")= ""


	Session("GU11337000") = Request.Form("GU11337000")
	Session("GU11338000") = Request.Form("GU11338000")




	if Session("GU11337000") = "1" then 
		Session("GU11337000string")= "Leaked urine more than once a day in the last 4 weeks"
	end if
	if Session("GU11337000") = "2" then 
		Session("GU11337000string")= "Leaked urine about once a day in the last 4 weeks"
	end if
	if Session("GU11337000") = "3" then 
		Session("GU11337000string")= "Leaked urine more than once a week in the last 4 weeks"
	end if
	if Session("GU11337000") = "4" then 
		Session("GU11337000string")= "Leaked urine about once a week in the last 4 weeks"
	end if
	if Session("GU11337000") = "5" then 
		Session("GU11337000string")= "Leaked urine rarely or never in the last 4 weeks"
	end if

	if Session("GU11338000") = "1" then 
		Session("GU11338000string")= "No urinary control whatsoever in the past 4 weeks"
	end if
	if Session("GU11338000") = "2" then 
		Session("GU11338000string")= "Frequent dribbling in the past 4 weeks"
	end if
	if Session("GU11338000") = "3" then 
		Session("GU11338000string")= "Occasional dribbling in the past 4 weeks"
	end if
	if Session("GU11338000") = "4" then 
		Session("GU11338000string")= "Total urinary control in the past 4 weeks"
	end if


end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then

	if Session("GU10202000")="1" then
		Session("Page")="17"
		Response.Redirect "qualityoflifemaster.asp"
	else
	end if

end if
end if
		Session("Page")="5"
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

	Session("Page")="19"
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
<div id="SpecialNote">
This questionnaire is designed to measure Quality of Life issues in patients with Prostate problems. To help us get the most accurate measurement, it is important that you answer all questions honestly and completely.</div>
<br>

    <form action="qualityoflife18.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <div id='SpecialNote'>
	<b>URINARY FUNCTION</b><br>This section is about your urinary habits. Please consider <b>ONLY THE LAST 4 WEEKS</b>.
	</div>
<br>
	<fieldset>
  <legend class='QuestionBox'>
	 Over the <b>the past 4 weeks</b>, how often have you leaked urine?<br>
</legend>
	<div class="QuestionAnswersBox">

		<input type="radio" name="GU11337000" value="1" id="GU11337010" class="required" <%=strGU11337000answer1%>>
		<label for="GU11337010">More than once a day</label><br>
		<input type="radio" name="GU11337000" value="2" id="GU11337020" <%=strGU11337000answer2%>>
		<label for="GU11337020">About once a day</label><br>
		<input type="radio" name="GU11337000" value="3" id="GU11337030" <%=strGU11337000answer3%>>
		<label for="GU11337030">More than once a week</label><br>
		<input type="radio" name="GU11337000" value="4" id="GU11337040" <%=strGU11337000answer4%>>
		<label for="GU11337040">About once a week</label><br>
		<input type="radio" name="GU11337000" value="5" id="GU11337050" <%=strGU11337000answer5%>>
		<label for="GU11337050">Rarely or never</label><br>
	</div><!-- [ /#AnswerBox] -->   

  </fieldset>
<fieldset>
  <legend class='QuestionBox'>
    Which of the following best describes your urinary control <b>during the last 4 weeks</b>?<br>
  </legend>
	<div class="QuestionAnswersBox">
    <input type="radio" name="GU11338000" value="1" id="GU11338010" class="required" <%=strGU11338000answer1%>>
    <label for="GU11338010">No urinary control whatsoever</label><br>
    <input type="radio" name="GU11338000" value="2" id="GU11338020" <%=strGU11338000answer2%>>
    <label for="GU11338020">Frequent dribbling</label><br>
    <input type="radio" name="GU11338000" value="3" id="GU11338030" <%=strGU11338000answer3%>>
    <label for="GU11338030">Occasional dribbling</label><br>
    <input type="radio" name="GU11338000" value="4" id="GU11338040" <%=strGU11338000answer4%>>
    <label for="GU11338040">Total control</label><br>


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
