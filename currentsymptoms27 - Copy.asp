
<%
Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU10501000")="0" then
		strGU10501000answer0="checked"
	end if
	if Session("GU10501000")="1" then
		strGU10501000answer1="checked"
	end if
	if Session("GU10501000")="2" then
		strGU10501000answer2="checked"
	end if
	if Session("GU10501000")="3" then
		strGU10501000answer3="checked"
	end if
	if Session("GU10501000")="4" then
		strGU10501000answer4="checked"
	end if

	if Session("GU10501000")="5" then
		strGU10501000answer5="checked"
	end if


	if Session("GU10502000")="0" then
		strGU10502000answer0="checked"
	end if
	if Session("GU10502000")="1" then
		strGU10502000answer1="checked"
	end if
	if Session("GU10502000")="2" then
		strGU10502000answer2="checked"
	end if
	if Session("GU10502000")="3" then
		strGU10502000answer3="checked"
	end if
	if Session("GU10502000")="4" then
		strGU10502000answer4="checked"
	end if
	if Session("GU10502000")="5" then
		strGU10502000answer5="checked"
	end if


	if Session("GU10503000")="0" then
		strGU10503000answer0="checked"
	end if
	if Session("GU10503000")="1" then
		strGU10503000answer1="checked"
	end if
	if Session("GU10503000")="2" then
		strGU10503000answer2="checked"
	end if
	if Session("GU10503000")="3" then
		strGU10503000answer3="checked"
	end if
	if Session("GU10503000")="4" then
		strGU10503000answer4="checked"
	end if
	if Session("GU10503000")="5" then
		strGU10503000answer5="checked"
	end if


	if Session("GU10504000")="0" then
		strGU10504000answer0="checked"
	end if
	if Session("GU10504000")="1" then
		strGU10504000answer1="checked"
	end if
	if Session("GU10504000")="2" then
		strGU10504000answer2="checked"
	end if
	if Session("GU10504000")="3" then
		strGU10504000answer3="checked"
	end if
	if Session("GU10504000")="4" then
		strGU10504000answer4="checked"
	end if
	if Session("GU10504000")="5" then
		strGU10504000answer5="checked"
	end if


	if Session("GU10505000")="0" then
		strGU10505000answer0="checked"
	end if
	if Session("GU10505000")="1" then
		strGU10505000answer1="checked"
	end if
	if Session("GU10505000")="2" then
		strGU10505000answer2="checked"
	end if
	if Session("GU10505000")="3" then
		strGU10505000answer3="checked"
	end if
	if Session("GU10505000")="4" then
		strGU10505000answer4="checked"
	end if
	if Session("GU10505000")="5" then
		strGU10505000answer5="checked"
	end if

	if Session("GU10506000")="0" then
		strGU10506000answer0="checked"
	end if
	if Session("GU10506000")="1" then
		strGU10506000answer1="checked"
	end if
	if Session("GU10506000")="2" then
		strGU10506000answer2="checked"
	end if
	if Session("GU10506000")="3" then
		strGU10506000answer3="checked"
	end if
	if Session("GU10506000")="4" then
		strGU10506000answer4="checked"
	end if
	if Session("GU10506000")="5" then
		strGU10506000answer5="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("GU10501000string")= ""
	Session("GU10502000string")= ""
	Session("GU10503000string")= ""
	Session("GU10504000string")= ""
	Session("GU10505000string")= ""
	Session("GU10506000string")= ""

	Session("GU10501000") = Request.Form("GU10501000")
	Session("GU10502000") = Request.Form("GU10502000")
	Session("GU10503000") = Request.Form("GU10503000")
	Session("GU10504000") = Request.Form("GU10504000")
	Session("GU10505000") = Request.Form("GU10505000")
	Session("GU10506000") = Request.Form("GU10506000")

	if Session("GU10501000") = "0" then 
		Session("GU10501000string")= "Never had a sensation of not emptying bladder completely after finising urinating during the past month"
	end if
	if Session("GU10501000") = "1" then 
		Session("GU10501000string")= "Had a sensation of not emptying bladder completely after finising urinating less than 1 time in 5 during the past month"
	end if
	if Session("GU10501000") = "2" then 
		Session("GU10501000string")= "Had a sensation of not emptying bladder completely after finising urinating less than half the time during the past month"
	end if
	if Session("GU10501000") = "3" then 
		Session("GU10501000string")= "Had a sensation of not emptying bladder completely after finising urinating about half the time during the past month"
	end if
	if Session("GU10501000") = "4" then 
		Session("GU10501000string")= "Had a sensation of not emptying bladder completely after finising urinating more than half the time during the past month"
	end if
	if Session("GU10501000") = "5" then 
		Session("GU10501000string")= "Almost always had a sensation of not emptying bladder completely after finising urinating during the past month"
	end if

	if Session("GU10502000") = "0" then 
		Session("GU10502000string")= "Never had to urinate again less than two hours after finishing urinating during the past month"
	end if
	if Session("GU10502000") = "1" then 
		Session("GU10502000string")= "Had to urinate again less than two hours after finishing urinating less than 1 time in 5 during the past month"
	end if
	if Session("GU10502000") = "2" then 
		Session("GU10502000string")= "Had to urinate again less than two hours after finishing urinating less than half the time during the past month"
	end if
	if Session("GU10502000") = "3" then 
		Session("GU10502000string")= "Had to urinate again less than two hours after finishing urinating about half the time during the past month"
	end if
	if Session("GU10502000") = "4" then 
		Session("GU10502000string")= "Had to urinate again less than two hours after finishing urinating more than half the time during the past month"
	end if
	if Session("GU10502000") = "5" then 
		Session("GU10502000string")= "Almost always had to urinate again less than two hours after finishing urinating during the past month"
	end if

	if Session("GU10503000") = "0" then 
		Session("GU10503000string")= "Never had to stop and start again several times while urinating during the past month"
	end if
	if Session("GU10503000") = "1" then 
		Session("GU10503000string")= "Had to stop and start again several times while urinating less than 1 time in 5 during the past month"
	end if
	if Session("GU10503000") = "2" then 
		Session("GU10503000string")= "Had to stop and start again several times while urinating less than half the time during the past month"
	end if
	if Session("GU10503000") = "3" then 
		Session("GU10503000string")= "Had to stop and start again several times while urinating about half the time during the past month"
	end if
	if Session("GU10503000") = "4" then 
		Session("GU10503000string")= "Had to stop and start again several times while urinating more than half the time during the past month"
	end if
	if Session("GU10503000") = "5" then 
		Session("GU10503000string")= "Almost always had to stop and start again several times while urinating during the past month"
	end if


	if Session("GU10504000") = "0" then 
		Session("GU10504000string")= "Never found it difficult to postpone urination during the past month"
	end if
	if Session("GU10504000") = "1" then 
		Session("GU10504000string")= "Found it difficult to postpone urination less than 1 time in 5 during the past month"
	end if
	if Session("GU10504000") = "2" then 
		Session("GU10504000string")= "Found it difficult to postpone urination less than half the time during the past month"
	end if
	if Session("GU10504000") = "3" then 
		Session("GU10504000string")= "Found it difficult to postpone urination about half the time during the past month"
	end if
	if Session("GU10504000") = "4" then 
		Session("GU10504000string")= "Found it difficult to postpone urination more than half the time during the past month"
	end if
	if Session("GU10504000") = "5" then 
		Session("GU10504000string")= "Almost always found it difficult to postpone urination during the past month"
	end if

	if Session("GU10505000") = "0" then 
		Session("GU10505000string")= "Never had a weak urinary stream during the past month"
	end if
	if Session("GU10505000") = "1" then 
		Session("GU10505000string")= "Had a weak urinary stream less than 1 time in 5 during the past month"
	end if
	if Session("GU10505000") = "2" then 
		Session("GU10505000string")= "Had a weak urinary stream less than half the time during the past month"
	end if
	if Session("GU10505000") = "3" then 
		Session("GU10505000string")= "Had a weak urinary stream about half the time during the past month"
	end if
	if Session("GU10505000") = "4" then 
		Session("GU10505000string")= "Had a weak urinary stream more than half the time during the past month"
	end if
	if Session("GU10505000") = "5" then 
		Session("GU10505000string")= "Almost always had a weak urinary stream during the past month"
	end if

	if Session("GU10506000") = "0" then 
		Session("GU10506000string")= "Never had push or strain to begin urination during the past month"
	end if
	if Session("GU10506000") = "1" then 
		Session("GU10506000string")= "Had push or strain to begin urination less than 1 time in 5 during the past month"
	end if
	if Session("GU10506000") = "2" then 
		Session("GU10506000string")= "Had push or strain to begin urination less than half the time during the past month"
	end if
	if Session("GU10506000") = "3" then 
		Session("GU10506000string")= "Had push or strain to begin urination about half the time during the past month"
	end if
	if Session("GU10506000") = "4" then 
		Session("GU10506000string")= "Had push or strain to begin urination more than half the time during the past month"
	end if
	if Session("GU10506000") = "5" then 
		Session("GU10506000string")= "Almost always had push or strain to begin urination during the past month"
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16"
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("GU10501000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10502000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10503000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("GU10504000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 

	end if


	Session("Page")="28"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms27.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th style="text-align:left;" rowspan="2">Over the past month, how often have you</th>
				<th rowspan="2">Not at all</th>
				<th rowspan="2">Less than 1 time in 5</th>
				<th rowspan="2">Less than half the time</th>
				<th rowspan="2">About half the time</th>
				<th rowspan="2">More than half the time</th>
				<th rowspan="2">Almost always</th>

			</tr>

		   <tbody>
		</div>
		<div class="cell1">





<tr>
<td>had a sensation of not emptying your bladder completely after you finished urinating?</td>
<td style="text-align: center;"><input type="radio" id="GU10501000" class="required" type="text" value="0" size="1" name="GU10501000" <%=strGU10501000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10501000" type="text" value="1" size="1" name="GU10501000" <%=strGU10501000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10501000" type="text" value="2" size="1" name="GU10501000" <%=strGU10501000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10501000" type="text" value="3" size="1" name="GU10501000" <%=strGU10501000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10501000" type="text" value="4" size="1" name="GU10501000" <%=strGU10501000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10501000" type="text" value="5" size="1" name="GU10501000" <%=strGU10501000answer5%>></td>

</tr>
<tr>
<td>had to urinate again less than two hours after you finished urinating?</td>
<td style="text-align: center;"><input type="radio" id="GU10502000" class="required" type="text" value="0" size="1" name="GU10502000" <%=strGU10502000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10502000" type="text" value="1" size="1" name="GU10502000" <%=strGU10502000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10502000" type="text" value="2" size="1" name="GU10502000" <%=strGU10502000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10502000" type="text" value="3" size="1" name="GU10502000" <%=strGU10502000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10502000" type="text" value="4" size="1" name="GU10502000" <%=strGU10502000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10502000" type="text" value="5" size="1" name="GU10502000" <%=strGU10502000answer5%>></td>
</tr>

<tr>
<td>found you stopped and started again several times when you urinated?</td>
<td style="text-align: center;"><input type="radio" id="GU10503000" class="required" type="text" value="0" size="1" name="GU10503000" <%=strGU10503000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10503000" type="text" value="1" size="1" name="GU10503000" <%=strGU10503000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10503000" type="text" value="2" size="1" name="GU10503000" <%=strGU10503000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10503000" type="text" value="3" size="1" name="GU10503000" <%=strGU10503000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10503000" type="text" value="4" size="1" name="GU10503000" <%=strGU10503000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10503000" type="text" value="5" size="1" name="GU10503000" <%=strGU10503000answer5%>></td>
</tr>

<tr>
<td>found it difficult to postpone urination?</td>
<td style="text-align: center;"><input type="radio" id="GU10504000" class="required" type="text" value="0" size="1" name="GU10504000" <%=strGU10504000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10504000" type="text" value="1" size="1" name="GU10504000" <%=strGU10504000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10504000" type="text" value="2" size="1" name="GU10504000" <%=strGU10504000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10504000" type="text" value="3" size="1" name="GU10504000" <%=strGU10504000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10504000" type="text" value="4" size="1" name="GU10504000" <%=strGU10504000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10504000" type="text" value="5" size="1" name="GU10504000" <%=strGU10504000answer5%>></td>
</tr>

<tr>
<td>had a weak urinary stream?</td>
<td style="text-align: center;"><input type="radio" id="GU10505000" class="required" type="text" value="0" size="1" name="GU10505000" <%=strGU10505000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10505000" type="text" value="1" size="1" name="GU10505000" <%=strGU10505000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10505000" type="text" value="2" size="1" name="GU10505000" <%=strGU10505000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10505000" type="text" value="3" size="1" name="GU10505000" <%=strGU10505000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10505000" type="text" value="4" size="1" name="GU10505000" <%=strGU10505000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10505000" type="text" value="5" size="1" name="GU10505000" <%=strGU10505000answer5%>></td>
</tr>

<tr>
<td>had to push or strain to begin urination?</td>
<td style="text-align: center;"><input type="radio" id="GU10506000" class="required" type="text" value="0" size="1" name="GU10506000" <%=strGU10506000answer0%>></td>
<td style="text-align: center;"><input type="radio" id="GU10506000" type="text" value="1" size="1" name="GU10506000" <%=strGU10506000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="GU10506000" type="text" value="2" size="1" name="GU10506000" <%=strGU10506000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="GU10506000" type="text" value="3" size="1" name="GU10506000" <%=strGU10506000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="GU10506000" type="text" value="4" size="1" name="GU10506000" <%=strGU10506000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="GU10506000" type="text" value="5" size="1" name="GU10506000" <%=strGU10506000answer5%>></td>
</tr>

</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
</fieldset>

</div><!-- [ /#formBlock ] -->
	
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
