
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA11124000")="1" then
		strCUTA11124000answer1="checked"
	end if
	if Session("CUTA11124000")="2" then
		strCUTA11124000answer2="checked"
	end if
	if Session("CUTA11124000")="88" then
		strCUTA11124000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA11124000") = Request.Form("CUTA11124000")

	if Session("CUTA11124000") = "1" then 
		Session("CUTA11124000string")= "Taking antidepressant medication"
	end if
	if Session("CUTA11124000") = "2" then 
		Session("CUTA11124000string")= "Denies taking antidepressant medication"
	end if
	if Session("CUTA11124000") = "88" then 
		Session("CUTA11124000string")= "Unknown taking antidepressant medication"
	end if


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="22"
	Response.Redirect "cancerriskmaster.asp"
else
	Session("Page")="22"
	Response.Redirect "cancerriskmaster.asp"
end if

	if Session("THRC30605000")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605000")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if


		Session("ReturnID")="1"
		Session("Page")="22"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31162000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31163000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

If Session("SurveyVersion")="Thoracic" then 
	Session("Page")="23"
else
	Session("Page")="0"
end if
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"


	Session("Page")="0"
	Session("CancerRiskSectionStatus")="Completed"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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


    <form action="cancerrisk22b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
<b>Over the past 12 months did you take an antidepressant medication for four or more weeks in a row?<br> Examples include Prozac, Paxil, Celexa, Zoloft, Lexapro, Luvox, Cymbalta, Effexor, Wellbutrin,and Zyban.</b><br> Please consider that you may be taking these for conditions other than depression, such as weight loss,<br> sleep disorders, sexual dysfunction, or acne.
<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11124000" value="1" id="CUTA11127001" class="required" <%=strCUTA11124000answer1%>>
		<label for="CUTA11121001">Yes</label><br>
		<input type="radio" name="CUTA11124000" value="2" id="CUTA11127002" <%=strCUTA11124000answer2%>>
		<label for="CUTA11121002">No</label><br>
		<input type="radio" name="CUTA11124000" value="88" id="CUTA11127003" <%=strCUTA11124000answer3%>>
		<label for="CUTA11121003">Unknown</label><br>
<br>
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
