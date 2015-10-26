
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("4TEMP12EPQ30514040")="1" then
		str4TEMP12EPQ30514040answer1="checked"
	end if
	if Session("4TEMP13EPQ30514060")="1" then
		str4TEMP13EPQ30514060answer1="checked"
	end if
	if Session("4TEMP14EPQ30514030")="1" then
		str4TEMP14EPQ30514030answer1="checked"
	end if
	if Session("4TEMP15EPQ30514030")="1" then
		str4TEMP15EPQ30514030answer1="checked"
	end if
	if Session("4TEMP16EPQ30514090")="1" then
		str4TEMP16EPQ30514090answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("4TEMP13EPQ30514060") = Request.Form("4TEMP13EPQ30514060")
	Session("4TEMP12EPQ30514040") = Request.Form("4TEMP12EPQ30514040")
	Session("4TEMP14EPQ30514030") = Request.Form("4TEMP14EPQ30514030")
	Session("4TEMP15EPQ30514030") = Request.Form("4TEMP14EPQ30514030")
	Session("4TEMP16EPQ30514090") = Request.Form("4TEMP16EPQ30514090")
	Session("4TEMP19EPQ30514000") = Request.Form("4TEMP19EPQ30514000")


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="48"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("TEMP2EPQ31168000") = "1" then 
	Session("Page")="50"
	Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("TEMP2EPQ31169000") = "1" then 
	Session("Page")="52"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("SurveyVersion")="HEME" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("SurveyVersion")="GI" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("SurveyVersion")="Thoracic" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if

	Session("CancerRiskSectionStatus")="Completed"
	Session("Page")="0"
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


    <form action="cancerrisk49.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">
Examples of naproxen are <i>Aleve, Naprosyn, Anaprox, Naprelan</i>
</div>
<br>
	


	<fieldset>
  <legend class='QuestionBox'>
Why have you taken naproxen on a regular basis (at least once per week)? Check all  that apply.
<br>
	</legend>
<div class="QuestionAnswersBox">

<input type="checkbox" class="atLeastOneCheckboxRequired" name="4TEMP13EPQ30514060" value="1" id="4TEMP13EPQ30514060" <%=str4TEMP13EPQ30514060answer1%> >
<label for="4TEMP13EPQ30514060">Arthritis</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="4TEMP12EPQ30514040" value="1" id="4TEMP12EPQ30514040" <%=str4TEMP12EPQ30514040answer1%> >
<label for="4TEMP12EPQ30514040">Body or back pain</label><br>


<input type="checkbox" class="atLeastOneCheckboxRequired" name="4TEMP14EPQ30514030" value="1" id="4TEMP14EPQ30514030" <%=str4TEMP14EPQ30514030answer1%> >
<label for="4TEMP14EPQ30514030">Headaches</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="4TEMP15EPQ30514030" value="1" id="4TEMP15EPQ30514030" <%=str4TEMP15EPQ30514030answer1%> >
<label for="4TEMP15EPQ30514030">To prevent heart attack</label><br>

<input type="checkbox" class="atLeastOneCheckboxRequired" name="4TEMP16EPQ30514090" value="1" id="4TEMP16EPQ30514090" <%=str4TEMP16EPQ30514090answer1%> >
<label for="4TEMP16EPQ30514090">Other, specify:</label>		<input  id="4TEMP19EPQ30514000" type="text" maxlength="75" size="15" name="4TEMP19EPQ30514000"  class="requiredIfPreviousCheckbox" value='<%=Session("4TEMP19EPQ30514000")%>' ><br>
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
