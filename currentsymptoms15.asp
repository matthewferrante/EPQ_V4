
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30520010")="1" then
		strEPQ30520010answer1="checked"
	end if
	if Session("EPQ30520020")="1" then
		strEPQ30520020answer1="checked"
	end if
	if Session("EPQ30520030")="1" then
		strEPQ30520030answer1="checked"
	end if
	if Session("EPQ30520040")="1" then
		strEPQ30520040answer1="checked"
	end if
	if Session("EPQ30520050")="1" then
		strEPQ30520050answer1="checked"
	end if
	if Session("EPQ30520060")="1" then
		strEPQ30520060answer1="checked"
	end if
	if Session("EPQ30520070")="1" then
		strEPQ30520070answer1="checked"
	end if
	if Session("EPQ30520080")="1" then
		strEPQ30520080answer1="checked"
	end if
	if Session("EPQ30520090")="1" then
		strEPQ30520090answer1="checked"
	end if
	if Session("EPQ30520100")="1" then
		strEPQ30520100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30520010string")= ""
	Session("EPQ30520020string")= ""
	Session("EPQ30520030string")= ""
	Session("EPQ30520040string")= ""
	Session("EPQ30520050string")= ""
	Session("EPQ30520060string")= ""
	Session("EPQ30520070string")= ""
	Session("EPQ30520080string")= ""
	Session("EPQ30520090string")= ""
	Session("EPQ30520100string")= ""


	Session("EPQ30520000") = Request.Form("EPQ30520000")
	Session("EPQ30520010") = Request.Form("EPQ30520010")
	Session("EPQ30520020") = Request.Form("EPQ30520020")
	Session("EPQ30520030") = Request.Form("EPQ30520030")
	Session("EPQ30520040") = Request.Form("EPQ30520040")
	Session("EPQ30520050") = Request.Form("EPQ30520050")
	Session("EPQ30520060") = Request.Form("EPQ30520060")
	Session("EPQ30520070") = Request.Form("EPQ30520070")
	Session("EPQ30520080") = Request.Form("EPQ30520080")
	Session("EPQ30520090") = Request.Form("EPQ30520090")
	Session("EPQ30520100") = Request.Form("EPQ30520100")

	if Session("EPQ30520010") = "1" then 
		Session("EPQ30520010string")= ""
	end if
	if Session("EPQ30520020") = "1" then 
		Session("EPQ30520020string")= ""
	end if
	if Session("EPQ30520030") = "1" then 
		Session("EPQ30520030string")= ""
	end if
	if Session("EPQ30520040") = "1" then 
		Session("EPQ30520040string")= ""
	end if
	if Session("EPQ30520050") = "1" then 
		Session("EPQ30520050string")= ""
	end if
	if Session("EPQ30520060") = "1" then 
		Session("EPQ30520060string")= ""
	end if
	if Session("EPQ30520070") = "1" then 
		Session("EPQ30520070string")= ""
	end if
	if Session("EPQ30520080") = "1" then 
		Session("EPQ30520080string")= ""
	end if
	if Session("EPQ30520090") = "1" then 
		Session("EPQ30520090string")= ""
	end if
	if Session("EPQ30520100") = "1" then 
		Session("EPQ30520100string")= ""
	end if
	if Session("EPQ30520110") = "1" then 
		Session("EPQ30520110string")= ""
	end if
	if Session("EPQ30520120") = "1" then 
		Session("EPQ30520120string")= ""
	end if
	if Session("EPQ30520130") = "1" then 
		Session("EPQ30520130string")= ""
	end if
	if Session("EPQ30520140") = "1" then 
		Session("EPQ30520140string")= ""
	end if
	if Session("EPQ30520150") = "1" then 
		Session("EPQ30520150string")= ""
	end if
	if Session("EPQ30520160") = "1" then 
		Session("EPQ30520160string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=14
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30520010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("Gender")="M" then 
	Session("Page")="16"
else
	Session("Page")="162"
end if
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
    <form action="currentsymptoms15.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any breathing or lung symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30520040" value="1" id="EPQ30520040" <%=strEPQ30520040answer1%>>
		<label for="EPQ30520040">Asthma or  wheezing</label><br>
		<input type="checkbox" name="EPQ30520030" value="1" id="EPQ30520030" <%=strEPQ30520030answer1%>>
		<label for="EPQ30520030">Blood in sputum (mucus brought <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; up from the lungs by coughing)</label><br>
		<input type="checkbox" name="EPQ30520100" value="1" id="EPQ30520100" <%=strEPQ30520100answer1%>>
		<label for="EPQ30520100">Chest pain or discomfort upon breathing</label><br>

		<input type="checkbox" name="EPQ30520010" value="1" id="EPQ30520010" <%=strEPQ30520010answer1%>>
		<label for="EPQ30520010">Cough</label><br>
<br><br>
		<input type="radio" name="EPQ30520090" value="1" id="EPQ30520090" <%=strEPQ30520090answer1%>>
		<label for="EPQ30520090">None</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30520050" value="1" id="EPQ30520050" <%=strEPQ30520050answer1%>>
		<label for="EPQ30520050">Respiratory infection or pneumonia</label><br>

		<input type="checkbox" name="EPQ30520020" value="1" id="EPQ30520020" <%=strEPQ30520020answer1%>>
		<label for="EPQ30520020">Shortness of breath</label><br>
		<input type="checkbox" name="EPQ30520060" value="1" id="EPQ30520060" <%=strEPQ30520060answer1%>>
		<label for="EPQ30520060">Tuberculosis (TB) or exposure to someone with TB</label><br>
		<input type="checkbox" name="EPQ30520080" value="1" id="EPQ30520080" <%=strEPQ30520080answer1%>>
		<label for="EPQ30520080">Use of oxygen</label><br>

		<input type="checkbox" name="EPQ30520070" value="1" id="EPQ30520070" <%=strEPQ30520070answer1%>>
		<label for="EPQ30520070">Other, specify:</label>	
	  <input id="EPQ30520000" type="text" maxlength="75" size="15" name="EPQ30520000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30520000")%>' ><br>

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
