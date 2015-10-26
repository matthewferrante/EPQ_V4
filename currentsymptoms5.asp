
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30508010")="1" then
		strEPQ30508010answer1="checked"
	end if
	if Session("EPQ30508020")="1" then
		strEPQ30508020answer1="checked"
	end if
	if Session("EPQ30508030")="1" then
		strEPQ30508030answer1="checked"
	end if
	if Session("EPQ30508040")="1" then
		strEPQ30508040answer1="checked"
	end if
	if Session("EPQ30508050")="1" then
		strEPQ30508050answer1="checked"
	end if
	if Session("EPQ30508060")="1" then
		strEPQ30508060answer1="checked"
	end if
	if Session("EPQ30508070")="1" then
		strEPQ30508070answer1="checked"
	end if
	if Session("EPQ30508080")="1" then
		strEPQ30508080answer1="checked"
	end if
	if Session("EPQ30508090")="1" then
		strEPQ30508090answer1="checked"
	end if
	if Session("EPQ30508100")="1" then
		strEPQ30508100answer1="checked"
	end if
	if Session("EPQ30508110")="1" then
		strEPQ30508110answer1="checked"
	end if
	if Session("EPQ30508120")="1" then
		strEPQ30508120answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30508010string")= ""
	Session("EPQ30508020string")= ""
	Session("EPQ30508030string")= ""
	Session("EPQ30508040string")= ""
	Session("EPQ30508050string")= ""
	Session("EPQ30508060string")= ""
	Session("EPQ30508070string")= ""
	Session("EPQ30508080string")= ""
	Session("EPQ30508090string")= ""
	Session("EPQ30508100string")= ""
	Session("EPQ30508110string")= ""
	Session("EPQ30508120string")= ""


	Session("EPQ30508000") = Request.Form("EPQ30508000")
	Session("EPQ30508010") = Request.Form("EPQ30508010")
	Session("EPQ30508020") = Request.Form("EPQ30508020")
	Session("EPQ30508030") = Request.Form("EPQ30508030")
	Session("EPQ30508040") = Request.Form("EPQ30508040")
	Session("EPQ30508050") = Request.Form("EPQ30508050")
	Session("EPQ30508060") = Request.Form("EPQ30508060")
	Session("EPQ30508070") = Request.Form("EPQ30508070")
	Session("EPQ30508080") = Request.Form("EPQ30508080")
	Session("EPQ30508090") = Request.Form("EPQ30508090")
	Session("EPQ30508100") = Request.Form("EPQ30508100")
	Session("EPQ30508110") = Request.Form("EPQ30508110")
	Session("EPQ30508120") = Request.Form("EPQ30508120")


	if Session("EPQ30508010") = "1" then 
		Session("EPQ30508010string")= ""
	end if
	if Session("EPQ30508020") = "1" then 
		Session("EPQ30508020string")= ""
	end if
	if Session("EPQ30508030") = "1" then 
		Session("EPQ30508030string")= ""
	end if
	if Session("EPQ30508040") = "1" then 
		Session("EPQ30508040string")= ""
	end if
	if Session("EPQ30508050") = "1" then 
		Session("EPQ30508050string")= ""
	end if
	if Session("EPQ30508060") = "1" then 
		Session("EPQ30508060string")= ""
	end if
	if Session("EPQ30508070") = "1" then 
		Session("EPQ30508070string")= ""
	end if
	if Session("EPQ30508080") = "1" then 
		Session("EPQ30508080string")= ""
	end if
	if Session("EPQ30508090") = "1" then 
		Session("EPQ30508090string")= ""
	end if
	if Session("EPQ30508100") = "1" then 
		Session("EPQ30508100string")= ""
	end if
	if Session("EPQ30508110") = "1" then 
		Session("EPQ30508110string")= ""
	end if
	if Session("EPQ30508120") = "1" then 
		Session("EPQ30508120string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("ReturnID")="1"

	if Session("CUTA10503000") = "1" then 
	Session("Page")="4b2"
	else
	Session("Page")="4b"
	end if
	Response.Redirect "currentsymptomsmaster.asp"

end if
end if

		Session("ReturnID")="1"
		Session("Page")=4
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30508010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30508080")<>"1" then
		Session.Contents.Remove("EPQ30509000")
		Session.Contents.Remove("EPQ30510000")
		Session.Contents.Remove("EPQ30510000specify")

	end if

	if Session("EPQ30508080")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30508090")<>"1" then
		Session.Contents.Remove("EPQ30511000")
		Session.Contents.Remove("EPQ30512000")
		Session.Contents.Remove("EPQ30513000")
		Session.Contents.Remove("EPQ30513000specify")

	end if

	if Session("EPQ30508090")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if



	Session("Page")="9"
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


    <form action="currentsymptoms5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any of the following breast symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">

		<input type="checkbox" name="EPQ30508100" value="1" id="EPQ30508100" <%=strEPQ30508100answer1%>>
		<label for="EPQ30508100">Abnormal mammogram, ultrasound, or MRI </label><br>
		<input type="checkbox" name="EPQ30508080" value="1" id="EPQ30508080" <%=strEPQ30508080answer1%>>
		<label for="EPQ30508080">Breast pain or discomfort</label><br>
		<input type="checkbox" name="EPQ30508040" value="1" id="EPQ30508040" <%=strEPQ30508040answer1%>>
		<label for="EPQ30508040">Fibrocystic changes (lumpiness throughout the breast)</label><br>

		<input type="checkbox" name="EPQ30508030" value="1" id="EPQ30508030" <%=strEPQ30508030answer1%>>
		<label for="EPQ30508030">Lump in your armpit or under your arm</label><br>
		<input type="checkbox" name="EPQ30508020" value="1" id="EPQ30508020" <%=strEPQ30508020answer1%>>
		<label for="EPQ30508020">Lump or breast mass that has changed</label><br>
		<input type="checkbox" name="EPQ30508010" value="1" id="EPQ30508010" <%=strEPQ30508010answer1%>>
		<label for="EPQ30508010">Lump or breast mass that is new</label><br>




<br><br>	<input type="radio" name="EPQ30508120" value="1" id="EPQ30508120" <%=strEPQ30508120answer1%>>
		<label for="EPQ30508120">None</label><br>

</span>
<span class="column2">
		<input type="checkbox" name="EPQ30508090" value="1" id="EPQ30508090" <%=strEPQ30508090answer1%>>
		<label for="EPQ30508090">Nipple discharge</label><br>

		<input type="checkbox" name="EPQ30508050" value="1" id="EPQ30508050" <%=strEPQ30508050answer1%>>
		<label for="EPQ30508050">Nipple inversion (nipple turning inward)</label><br>
		<input type="checkbox" name="EPQ30508070" value="1" id="EPQ30508070" <%=strEPQ30508070answer1%>>
		<label for="EPQ30508070">Skin dimpling</label><br>

		<input type="checkbox" name="EPQ30508060" value="1" id="EPQ30508060" <%=strEPQ30508060answer1%>>
		<label for="EPQ30508060">Skin redness</label><br>
		<input type="checkbox" name="EPQ30508110" value="1" id="EPQ30508110" <%=strEPQ30508110answer1%>>
		<label for="EPQ30508110">Other, specify:</label>		<input id="EPQ30508000" type="text" maxlength="75" size="15" name="EPQ30508000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30508000")%>' ><br>

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
