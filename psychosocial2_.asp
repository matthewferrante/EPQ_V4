
<%

Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial Status"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ31204000")="10" then
		strEPQ31204000ten="checked"
	end if
	if Session("EPQ31204000")="9" then
		strEPQ31204000nine="checked"
	end if
	if Session("EPQ31204000")="8" then
		strEPQ31204000eight="checked"
	end if
	if Session("EPQ31204000")="7" then
		strEPQ31204000seven="checked"
	end if
	if Session("EPQ31204000")="6" then
		strEPQ31204000six="checked"
	end if
	if Session("EPQ31204000")="5" then
		strEPQ31204000five="checked"
	end if
	if Session("EPQ31204000")="4" then
		strEPQ31204000four="checked"
	end if
	if Session("EPQ31204000")="3" then
		strEPQ31204000three="checked"
	end if
	if Session("EPQ31204000")="2" then
		strEPQ31204000two="checked"
	end if
	if Session("EPQ31204000")="1" then
		strEPQ31204000one="checked"
	end if
	if Session("EPQ31204000")="0" then
		strEPQ31204000zero="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31204000string")= ""

	Session("EPQ31204000") = Request.Form("EPQ31204000")

	if Session("EPQ31204000") = "10" then 
		Session("EPQ31204000string")= "Distress = 10 of 10"
	end if
	if Session("EPQ31204000") = "9" then 
		Session("EPQ31204000string")= "Distress = 9 of 10"
	end if
	if Session("EPQ31204000") = "8" then 
		Session("EPQ31204000string")= "Distress = 8 of 10"
	end if
	if Session("EPQ31204000") = "7" then 
		Session("EPQ31204000string")= "Distress = 7 of 10"
	end if
	if Session("EPQ31204000") = "6" then 
		Session("EPQ31204000string")= "Distress = 6 of 10"
	end if
	if Session("EPQ31204000") = "5" then 
		Session("EPQ31204000string")= "Distress = 5 of 10"
	end if
	if Session("EPQ31204000") = "4" then 
		Session("EPQ31204000string")= "Distress = 4 of 10"
	end if
	if Session("EPQ31204000") = "3" then 
		Session("EPQ31204000string")= "Distress = 3 of 10"
	end if
	if Session("EPQ31204000") = "2" then 
		Session("EPQ31204000string")= "Distress = 2 of 10"
	end if
	if Session("EPQ31204000") = "1" then 
		Session("EPQ31204000string")= "Distress = 1 of 10"
	end if
	if Session("EPQ31204000") = "0" then 
		Session("EPQ31204000string")= "Distress = 0 of 10"
	end if


end if

if Request.Form("StopID")="1" then
		Session("PsychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31204000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "psychosocialmaster.asp"
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


    <form action="psychosocial2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class="QuestionBox">
Please select a number on the following scale that best describes how much distress you have been experiencing<br>in the past week, including today.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31204000" value="10" id="EPQ3120400010" class="required" <%=strEPQ31204000ten%>>
		<label for="EPQ3120400010">10 Extreme Distress</label> <br>
		<input type="radio" name="EPQ31204000" value="9" id="EPQ312040009" <%=strEPQ31204000nine%>>
		<label for="EPQ312040009">9</label><br>
		<input type="radio" name="EPQ31204000" value="8" id="EPQ312040008" <%=strEPQ31204000eight%>>
		<label for="EPQ312040008">8</label><br>
		<input type="radio" name="EPQ31204000" value="7" id="EPQ312040007" <%=strEPQ31204000seven%>>
		<label for="EPQ312040007">7</label><br>
		<input type="radio" name="EPQ31204000" value="6" id="EPQ312040006" <%=strEPQ31204000six%>>
		<label for="EPQ312040006">6</label><br>
		<input type="radio" name="EPQ31204000" value="5" id="EPQ312040005" <%=strEPQ31204000five%>>
		<label for="EPQ312040005">5</label><br>
		<input type="radio" name="EPQ31204000" value="4" id="EPQ312040004" <%=strEPQ31204000four%>>
		<label for="EPQ312040004">4</label><br>
		<input type="radio" name="EPQ31204000" value="3" id="EPQ312040003" <%=strEPQ31204000three%>>
		<label for="EPQ312040003">3</label><br>
		<input type="radio" name="EPQ31204000" value="2" id="EPQ312040002" <%=strEPQ31204000two%>>
		<label for="EPQ312040002">2</label><br>
		<input type="radio" name="EPQ31204000" value="1" id="EPQ312040001" <%=strEPQ31204000one%>>
		<label for="EPQ312040001">1</label><br>
		<input type="radio" name="EPQ31204000" value="0" id="EPQ312040000" <%=strEPQ31204000zero%>>
		<label for="EPQ312040000">0 No Distress</label><br>
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
