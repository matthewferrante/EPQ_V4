
<%


Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU10202000")="1" then
		strGU10202000answer1="checked"
	end if
	if Session("GU10201000")="1" then
		strGU10201000answer1="checked"
	end if
	if Session("GU10203000")="1" then
		strGU10203000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	
	Session("GU10202000string")= ""
	Session("GU10201000string")= ""
	Session("GU10203000string")= ""


	Session("GU10202000") = Request.Form("GU10202000")
	Session("GU10201000") = Request.Form("GU10201000")
	Session("GU10203000") = Request.Form("GU10203000")


	if Session("GU10202000") = "1" then 
		Session("GU10202000string")= ""
	end if
	if Session("GU10201000") = "1" then 
		Session("GU10201000string")= ""
	end if
	if Session("GU10203000") = "1" then 
		Session("GU10203000string")= ""
	end if
	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if


if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	If Session("Gender")="F" then 
		Session("Page")="162"
	else
		Session("Page")="16"
	end if
		Response.Redirect "currentsymptomsmaster.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if


if Request.Form("ContinueID")="1" then

	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then

	if Session("GU10203000")="1" then

	Session.Contents.Remove("GU10504000")
	Session.Contents.Remove("GU10505000")
	Session.Contents.Remove("GU10506000")
	Session.Contents.Remove("GU10507000")
	Session.Contents.Remove("GU10508000")
	Session.Contents.Remove("GU10509000")
	Session.Contents.Remove("GU10510000")

	Session.Contents.Remove("GU10511000")
	Session.Contents.Remove("GU10512000")
	Session.Contents.Remove("GU10513000")
	Session.Contents.Remove("GU10514000")
	Session.Contents.Remove("GU10515000")
	Session.Contents.Remove("GU10509000")

		Session("Page")="17"
		Response.Redirect "currentsymptomsmaster.asp"
	else
		Session("Page")="27"
		Response.Redirect "currentsymptomsmaster.asp"
	end if


	end if
	end if



	Session("Page")="17"
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


<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">


    <form action="currentsymptoms26.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Are you coming to Moffitt to see a doctor for:<br>
	  </legend>
	<div class="QuestionAnswersBox">

	<% if Session("gender")="M" then %>
		<input type="checkbox" name="GU10201000" value="1" id="GU10201000" <%=strGU10201000answer1%>>
		<label for="GU10201000">Prostate problem/Elevated PSA</label><br>
	<% end if %>
		<input type="checkbox" name="GU10202000" value="1" id="GU10202000" <%=strGU10202000answer1%>>
		<label for="GU10202000">Bladder problems</label><br>

<br><br>
		<input type="checkbox" name="GU10203000" value="1" id="GU10203000" <%=strGU10203000answer1%>>
		<label for="GU10203000">Other problems like kidney</label><br>
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
