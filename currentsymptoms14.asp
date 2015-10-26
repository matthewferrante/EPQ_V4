
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30519010")="1" then
		strEPQ30519010answer1="checked"
	end if
	if Session("EPQ30519020")="1" then
		strEPQ30519020answer1="checked"
	end if
	if Session("EPQ30519030")="1" then
		strEPQ30519030answer1="checked"
	end if
	if Session("EPQ30519040")="1" then
		strEPQ30519040answer1="checked"
	end if
	if Session("EPQ30519050")="1" then
		strEPQ30519050answer1="checked"
	end if
	if Session("EPQ30519060")="1" then
		strEPQ30519060answer1="checked"
	end if
	if Session("EPQ30519070")="1" then
		strEPQ30519070answer1="checked"
	end if
	if Session("EPQ30519080")="1" then
		strEPQ30519080answer1="checked"
	end if
	if Session("EPQ30519090")="1" then
		strEPQ30519090answer1="checked"
	end if
	if Session("EPQ30519100")="1" then
		strEPQ30519100answer1="checked"
	end if
	if Session("EPQ30519110")="1" then
		strEPQ30519110answer1="checked"
	end if
	if Session("EPQ30519120")="1" then
		strEPQ30519120answer1="checked"
	end if
	if Session("EPQ30519130")="1" then
		strEPQ30519130answer1="checked"
	end if
	if Session("EPQ30519140")="1" then
		strEPQ30519140answer1="checked"
	end if
	if Session("EPQ30519150")="1" then
		strEPQ30519150answer1="checked"
	end if
	if Session("EPQ30519160")="1" then
		strEPQ30519160answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30519010string")= ""
	Session("EPQ30519020string")= ""
	Session("EPQ30519030string")= ""
	Session("EPQ30519040string")= ""
	Session("EPQ30519050string")= ""
	Session("EPQ30519060string")= ""
	Session("EPQ30519070string")= ""
	Session("EPQ30519080string")= ""
	Session("EPQ30519090string")= ""
	Session("EPQ30519100string")= ""
	Session("EPQ30519110string")= ""
	Session("EPQ30519120string")= ""
	Session("EPQ30519130string")= ""
	Session("EPQ30519140string")= ""
	Session("EPQ30519150string")= ""
	Session("EPQ30519160string")= ""


	Session("EPQ30519000") = Request.Form("EPQ30519000")
	Session("EPQ30519010") = Request.Form("EPQ30519010")
	Session("EPQ30519020") = Request.Form("EPQ30519020")
	Session("EPQ30519030") = Request.Form("EPQ30519030")
	Session("EPQ30519040") = Request.Form("EPQ30519040")
	Session("EPQ30519050") = Request.Form("EPQ30519050")
	Session("EPQ30519060") = Request.Form("EPQ30519060")
	Session("EPQ30519070") = Request.Form("EPQ30519070")
	Session("EPQ30519080") = Request.Form("EPQ30519080")
	Session("EPQ30519090") = Request.Form("EPQ30519090")
	Session("EPQ30519100") = Request.Form("EPQ30519100")
	Session("EPQ30519110") = Request.Form("EPQ30519110")
	Session("EPQ30519120") = Request.Form("EPQ30519120")
	Session("EPQ30519130") = Request.Form("EPQ30519130")
	Session("EPQ30519140") = Request.Form("EPQ30519140")
	Session("EPQ30519150") = Request.Form("EPQ30519150")
	Session("EPQ30519160") = Request.Form("EPQ30519160")


	if Session("EPQ30519010") = "1" then 
		Session("EPQ30519010string")= ""
	end if
	if Session("EPQ30519020") = "1" then 
		Session("EPQ30519020string")= ""
	end if
	if Session("EPQ30519030") = "1" then 
		Session("EPQ30519030string")= ""
	end if
	if Session("EPQ30519040") = "1" then 
		Session("EPQ30519040string")= ""
	end if
	if Session("EPQ30519050") = "1" then 
		Session("EPQ30519050string")= ""
	end if
	if Session("EPQ30519060") = "1" then 
		Session("EPQ30519060string")= ""
	end if
	if Session("EPQ30519070") = "1" then 
		Session("EPQ30519070string")= ""
	end if
	if Session("EPQ30519080") = "1" then 
		Session("EPQ30519080string")= ""
	end if
	if Session("EPQ30519090") = "1" then 
		Session("EPQ30519090string")= ""
	end if
	if Session("EPQ30519100") = "1" then 
		Session("EPQ30519100string")= ""
	end if
	if Session("EPQ30519110") = "1" then 
		Session("EPQ30519110string")= ""
	end if
	if Session("EPQ30519120") = "1" then 
		Session("EPQ30519120string")= ""
	end if
	if Session("EPQ30519130") = "1" then 
		Session("EPQ30519130string")= ""
	end if
	if Session("EPQ30519140") = "1" then 
		Session("EPQ30519140string")= ""
	end if
	if Session("EPQ30519150") = "1" then 
		Session("EPQ30519150string")= ""
	end if
	if Session("EPQ30519160") = "1" then 
		Session("EPQ30519160string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=13
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30519010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="15"
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


    <form action="currentsymptoms14.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any heart symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30519100" value="1" id="EPQ30519100" <%=strEPQ30519100answer1%>>
		<label for="EPQ30519100">Blood clots</label><br>

		<input type="checkbox" name="EPQ30519080" value="1" id="EPQ30519080" <%=strEPQ30519080answer1%>>
		<label for="EPQ30519080">Calf cramps after walking a short distance</label><br>
		<input type="checkbox" name="EPQ30519010" value="1" id="EPQ30519010" <%=strEPQ30519010answer1%>>
		<label for="EPQ30519010">Chest pain, discomfort, tightness, or angina</label><br>
		<input type="checkbox" name="EPQ30519050" value="1" id="EPQ30519050" <%=strEPQ30519050answer1%>>
		<label for="EPQ30519050">Fainting</label><br>

		<input type="checkbox" name="EPQ30519120" value="1" id="EPQ30519120" <%=strEPQ30519120answer1%>>
		<label for="EPQ30519120">Heart disease</label><br>

		<input type="checkbox" name="EPQ30519020" value="1" id="EPQ30519020" <%=strEPQ30519020answer1%>>
		<label for="EPQ30519020">Heart murmurs</label><br>
		<input type="checkbox" name="EPQ30519110" value="1" id="EPQ305191100" <%=strEPQ30519110answer1%>>
		<label for="EPQ305191100">High blood pressure</label><br>


<br><br>	<input type="radio" name="EPQ30519160" value="1" id="EPQ30519160" <%=strEPQ30519160answer1%>>
		<label for="EPQ30519160">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30519150" value="1" id="EPQ305191150" <%=strEPQ30519150answer1%>>
		<label for="EPQ305191150">Low blood pressure</label><br>

		<input type="checkbox" name="EPQ30519030" value="1" id="EPQ30519030" <%=strEPQ30519030answer1%>>
		<label for="EPQ30519030">Palpitations (feeling skipped heart beats or fluttering)</label><br>
		<input type="checkbox" name="EPQ30519060" value="1" id="EPQ30519060" <%=strEPQ30519060answer1%>>
		<label for="EPQ30519060">Phlebitis (irritation or inflammation of a vein)</label><br>

		<input type="checkbox" name="EPQ30519130" value="1" id="EPQ305191130" <%=strEPQ30519130answer1%>>
		<label for="EPQ305191130">Rapid heartbeat</label><br>

		<input type="checkbox" name="EPQ30519090" value="1" id="EPQ30519090" <%=strEPQ30519090answer1%>>
		<label for="EPQ30519090">Rheumatic fever</label><br>
		<input type="checkbox" name="EPQ30519040" value="1" id="EPQ30519040" <%=strEPQ30519040answer1%>>
		<label for="EPQ30519040">Swelling of feet, legs or ankles</label><br>

		<input type="checkbox" name="EPQ30519070" value="1" id="EPQ30519070" <%=strEPQ30519070answer1%>>
		<label for="EPQ30519070">Trouble breathing at night or in bed</label><br>

		<input type="checkbox" name="EPQ30519140" value="1" id="EPQ30519140" <%=strEPQ30519140answer1%>>
		<label for="EPQ30519140">Other, specify:</label>	
	  <input id="EPQ30519000" type="text" maxlength="75" size="15" name="EPQ30519000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30519000")%>' ><br>

</span>
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
