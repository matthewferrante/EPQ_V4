
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA10501000")="1" then
		strCUTA10501000answer1="checked"
	end if
	if Session("CUTA10501000")="2" then
		strCUTA10501000answer2="checked"
	end if
	if Session("CUTA10501000")="3" then
		strCUTA10501000answer3="checked"
	end if
	if Session("CUTA10501000")="4" then
		strCUTA10501000answer4="checked"
	end if

	if Session("CUTA10502000")="1" then
		strCUTA10502000answer1="checked"
	end if

	if Session("CUTA10502000")="2" then
		strCUTA10502000answer2="checked"
	end if
	if Session("CUTA10502000")="3" then
		strCUTA10502000answer3="checked"
	end if
end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA10501000string")= ""
	Session("CUTA10502000string")= ""

	Session("CUTA10501000") = Request.Form("CUTA10501000")
	Session("CUTA10502000") = Request.Form("CUTA10502000")

	if Session("CUTA10501000") = "1" then 
		Session("CUTA10501000string")= "Denies having moles larger than one quarter present"
	end if
	if Session("CUTA10501000") = "2" then 
		Session("CUTA10501000string")= "Less than 10 moles larger than one quarter present"
	end if
	if Session("CUTA10501000") = "3" then 
		Session("CUTA10501000string")= "10-25 moles larger than one quarter present"
	end if
	if Session("CUTA10501000") = "4" then 
		Session("CUTA10501000string")= "More than 25 moles larger than one quarter present"
	end if

	if Session("CUTA10502000") = "1" then 
		Session("CUTA10502000string")= "Atypical moles present"
	end if
	if Session("CUTA10502000") = "2" then 
		Session("CUTA10502000string")= "Atypical moles absent"
	end if
	if Session("CUTA10502000") = "3" then 
		Session("CUTA10502000string")= "Atypical moles unknown if present"
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="4"
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="4b"


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
<br>
    <form action="currentsymptoms4a.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Approximately how many moles do you have on your entire body that are larger than one quarter of an inch <br> in diameter (e.g. larger than the size of a pencil eraser)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA10501000" value="1" class="required" id="CUTA10501001" <%=strCUTA10501000answer1%>>
		<label for="CUTA10501001">None (no moles)</label><br>
		<input type="radio" name="CUTA10501000" value="2" id="CUTA10501002" <%=strCUTA10501000answer2%>>
		<label for="CUTA10501002">Less than 10 moles</label><br>
		<input type="radio" name="CUTA10501000" value="3" id="CUTA10501003" <%=strCUTA10501000answer3%>>
		<label for="CUTA10501003">10-25 moles</label><br>
		<input type="radio" name="CUTA10501000" value="4" id="CUTA10501004" <%=strCUTA10501000answer4%>>
		<label for="CUTA10501004">More than 25 moles</label>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset><legend class='QuestionBox'>
Do you have any moles that are atypical in appearance (large, ragged edged, uneven coloring)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA10502000" value="1" class="required" id="CUTA10502001" <%=strCUTA10502000answer1%>>
		<label for="CUTA10501001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA10502000" value="2" id="CUTA10502002" <%=strCUTA10502000answer2%>>
		<label for="CUTA10501002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA10502000" value="3" id="CUTA10502003" <%=strCUTA10502000answer3%>>
		<label for="CUTA10501003">Unknown</label>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
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
