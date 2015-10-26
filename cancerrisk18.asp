
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31153000")="1" then
		strEPQ31153000answer1="checked"
	end if
	if Session("EPQ31153000")="0" then
		strEPQ31153000answer2="checked"
	end if

	if Session("EPQ31154000")="1" then
		strEPQ31154000answer1="checked"
	end if
	if Session("EPQ31154000")="2" then
		strEPQ31154000answer2="checked"
	end if

	if Session("TEMP1EPQ31154000")="1" then
		strTEMP1EPQ31154000answer1="checked"
	end if
	if Session("TEMP1EPQ31154000")="2" then
		strTEMP1EPQ31154000answer2="checked"
	end if
	if Session("TEMP1EPQ31154000")="3" then
		strTEMP1EPQ31154000answer3="checked"
	end if
	if Session("TEMP1EPQ31154000")="4" then
		strTEMP1EPQ31154000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31153000string")= ""
	Session("EPQ31154000string")= ""

	Session("EPQ31150000") = Request.Form("EPQ31150000")
	Session("EPQ31151000") = Request.Form("EPQ31151000")
	Session("EPQ31152000") = Request.Form("EPQ31152000")
	Session("EPQ31153000") = Request.Form("EPQ31153000")
	Session("EPQ31154000") = Request.Form("EPQ31154000")
	Session("TEMP1EPQ31154000") = Request.Form("TEMP1EPQ31154000")


	if Session("EPQ31153000") = "1" then 
		Session("EPQ31153000string")= ""
	end if
	if Session("EPQ31153000") = "0" then 
		Session("EPQ31153000string")= ""
	end if
	if Session("EPQ31154000") = "1" then 
		Session("EPQ31154000string")= ""
	end if
	if Session("EPQ31154000") = "0" then 
		Session("EPQ31154000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	If Session("SurveyVersion")="EPQ" then 
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("SurveyVersion")="HEME" then
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if

	If Session("SurveyVersion")="GU" then 
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if


	If Session("SurveyVersion")="GI" then 
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if


	If Session("SurveyVersion")="Cutaneous" then 
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31148000")="1" then
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31148000")="2" then
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400070")="1" then
		Session("Page")="9b"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400060")="1" then
		Session("Page")="9b6"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400050")="1" then
		Session("Page")="9b5"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400040")="1" then
		Session("Page")="9b4"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400030")="1" then
		Session("Page")="9b3"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400020")="1" then
		Session("Page")="9b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400010")="1" then
		Session("Page")="9b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
	 
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("SurveyVersion")="Thoracic" then 
	Session("Page")="18b"
	else
	Session("Page")="19"
	end if

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
    <form action="cancerrisk18.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
How old were you when you started smoking cigarettes regularly?<br>
	</legend>

	<div class="QuestionAnswersBox">
<input id="EPQ31150000" type="text" size="3" maxlength="3" name="EPQ31150000" class="smokingRange required" value=<%=Session("EPQ31150000")%>>
years old
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset>
  <legend class='QuestionBox'>
Throughout your entire lifetime, how many years in total have you smoked?<br>
	</legend>

	<div class="QuestionAnswersBox">
<input id="EPQ31151000" type="text" size="3" maxlength="3" name="EPQ31151000" class="smokingRange2 required" value=<%=Session("EPQ31151000")%>>
years <br>
<i>If you stopped smoking at one point, and started smoking again, do not count the time in between when you did not smoke.</i>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
How many cigarettes on average do or did you smoke per day?<br>
	</legend>
	<div class="QuestionAnswersBox">
<input id="EPQ31152000" type="text" size="3" maxlength="3" name="EPQ31152000" class="cigarettes required" value=<%=Session("EPQ31152000")%>>
cigarettes per day
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


<% if session("EPQ31148000")="1" or session("EPQ31148000")="2" then %>
	<fieldset>
  <legend class='QuestionBox'>
	During the past 12 months have you stopped smoking for one day or longer because you were trying to quit?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31153000" value="1" id="EPQ311530001" class="required" <%=strEPQ31153000answer1%>>
		<label for="EPQ311530001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31153000" value="0" id="EPQ311530002" <%=strEPQ31153000answer2%>>
		<label for="EPQ311530002">No</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

<% end if %>

	<fieldset>
  <legend class='QuestionBox'>
	How soon after you wake up do you smoke your first cigarette? <br>
	</legend>
	<div class="QuestionAnswersBox">
	<input type="radio" name="TEMP1EPQ31154000" value="1" id="TEMP1EPQ311540001" class="required" <%=strTEMP1EPQ31154000answer1%>>
	<label for="TEMP1EPQ311540001">Within 5 minutes</label><br>
	<input type="radio" name="TEMP1EPQ31154000" value="2" id="TEMP1EPQ311540002" <%=strTEMP1EPQ31154000answer2%>>
	<label for="TEMP1EPQ311540002">6-30 minutes</label><br>
	<input type="radio" name="TEMP1EPQ31154000" value="3" id="TEMP1EPQ311540001" class="required" <%=strTEMP1EPQ31154000answer3%>>
<label for="EPQ311540001">31 - 60 minutes</label><br>
	<input type="radio" name="TEMP1EPQ31154000" value="4" id="TEMP1EPQ311540002" <%=strTEMP1EPQ31154000answer4%>>
	<label for="TEMP1EPQ311540002">After 60 minutes</label><br>

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
