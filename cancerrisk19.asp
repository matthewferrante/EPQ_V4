
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31155000")="1" then
		strEPQ31155000answer1="checked"
	end if
	if Session("EPQ31155000")="2" then
		strEPQ31155000answer2="checked"
	end if
	if Session("EPQ31155000")="0" then
		strEPQ31155000answer3="checked"
	end if

	if Session("EPQ31156000")="1" then
		strEPQ31156000answer1="checked"
	end if
	if Session("EPQ31156000")="2" then
		strEPQ31156000answer2="checked"
	end if
	if Session("EPQ31156000")="0" then
		strEPQ31156000answer3="checked"
	end if

	if Session("EPQ31157000")="1" then
		strEPQ31157000answer1="checked"
	end if
	if Session("EPQ31157000")="2" then
		strEPQ31157000answer2="checked"
	end if
	if Session("EPQ31157000")="0" then
		strEPQ31157000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31156000string")= ""
	Session("EPQ31157000string")= ""
	Session("EPQ31155000string")= ""

	Session("EPQ31155000") = Request.Form("EPQ31155000")
	Session("EPQ31156000") = Request.Form("EPQ31156000")
	Session("EPQ31157000") = Request.Form("EPQ31157000")


	if Session("EPQ31155000") = "1" then 
		Session("EPQ31155000string")= ""
	end if
	if Session("EPQ31155000") = "2" then 
		Session("EPQ31155000string")= ""
	end if
	if Session("EPQ31155000") = "0" then 
		Session("EPQ31155000string")= ""
	end if

	if Session("EPQ31156000") = "1" then 
		Session("EPQ31156000string")= ""
	end if
	if Session("EPQ31156000") = "2" then 
		Session("EPQ31156000string")= ""
	end if
	if Session("EPQ31156000") = "0" then 
		Session("EPQ31156000string")= ""
	end if

	if Session("EPQ31157000") = "1" then 
		Session("EPQ31157000string")= ""
	end if
	if Session("EPQ31157000") = "2" then 
		Session("EPQ31157000string")= ""
	end if
	if Session("EPQ31157000") = "0" then 
		Session("EPQ31157000string")= ""
	end if




end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"


	if Session("EPQ31147000")="1" then
		if Session("SurveyVersion")="Thoracic" then 	
		Session("Page")="18b2"
		else
		Session("Page")="18"
		end if
		Response.Redirect "cancerriskmaster.asp"
	end if

		if Session("SurveyVersion")="Thoracic" then 	

		if Session("THRC30400060")="1" then
		Session("Page")="17b6"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400050")="1" then
		Session("Page")="17b5"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400040")="1" then
		Session("Page")="17b4"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400030")="1" then
		Session("Page")="17b3"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400020")="1" then
		Session("Page")="17b2"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400010")="1" then
		Session("Page")="17b1"
		Response.Redirect "cancerriskmaster.asp"
		end if

		if Session("THRC30400070")="1" then
		Session("Page")="17b"
		Response.Redirect "cancerriskmaster.asp"
		end if

		end if
Session("Page")="9"
Response.Redirect "cancerriskmaster.asp"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="19ecig"
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


    <form action="cancerrisk19.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<!-- [Question boxes ] -->		

	<fieldset><legend class='QuestionBox'>
Have you ever smoked cigars?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31155000" value="1" id="EPQ311550001" class="required" <%=strEPQ31155000answer1%>>
		<label for="EPQ311550001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31155000" value="2" id="EPQ311550002" <%=strEPQ31155000answer2%>>
		<label for="EPQ311550002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31155000" value="0" id="EPQ311550003" <%=strEPQ31155000answer3%>>
		<label for="EPQ311550003">Infrequently or never</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset><legend class='QuestionBox'>
Have you ever smoked a pipe?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31156000" value="1" id="EPQ311560001" class="required" <%=strEPQ31156000answer1%>>
		<label for="EPQ311560001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31156000" value="2" id="EPQ311560002" <%=strEPQ31156000answer2%>>
		<label for="EPQ311560002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31156000" value="0" id="EPQ311560003" <%=strEPQ31156000answer3%>>
		<label for="EPQ311560003">Infrequently or never</label><br>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset><legend class='QuestionBox'>
Have you ever used smokeless tobacco (snuff, chew)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31157000" value="1" id="EPQ311570001" class="required" <%=strEPQ31157000answer1%>>
		<label for="EPQ311570001">Yes, currently</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31157000" value="2" id="EPQ311570002" <%=strEPQ31157000answer2%>>
		<label for="EPQ311570002">Yes, previously but not now</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ31157000" value="0" id="EPQ311570003" <%=strEPQ31157000answer3%>>
		<label for="EPQ311570003">Infrequently or never</label><br>
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
