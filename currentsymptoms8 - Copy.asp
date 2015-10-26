
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30513000")="1" then
		strEPQ30513000answer1="checked"
	end if
	if Session("EPQ30513000")="2" then
		strEPQ30513000answer2="checked"
	end if
	if Session("EPQ30513000")="3" then
		strEPQ30513000answer3="checked"
	end if
	if Session("EPQ30513000")="4" then
		strEPQ30513000answer4="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30513000string")= ""

	Session("EPQ30513000") = Request.Form("EPQ30513000")
	Session("EPQ30513000specify") = Request.Form("EPQ30513000specify")

	if Session("EPQ30513000") = "1" then 
		Session("EPQ30513000string")= ""
	end if
	if Session("EPQ30513000") = "2" then 
		Session("EPQ30513000string")= ""
	end if
	if Session("EPQ30513000") = "3" then 
		Session("EPQ30513000string")= ""
	end if
	if Session("EPQ30513000") = "4" then 
		Session("EPQ30513000string")= ""
	end if
	if Session("EPQ30513000") = "77" then 
		Session("EPQ30513000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30513000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
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


    <form action="currentsymptoms8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      Describe the color of the nipple discharge.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30513000" value="1" id="EPQ30513001" class="required" <%=strEPQ30513000answer1%>>
		<label for="EPQ30513001">Clear</label><br>
		<input type="radio" name="EPQ30513000" value="2" id="EPQ30513002" <%=strEPQ30513000answer2%>>
		<label for="EPQ30513002">Milky</label><br>
		<input type="radio" name="EPQ30513000" value="3" id="EPQ30513003" <%=strEPQ30513000answer3%>>
		<label for="EPQ30513003">Bloody</label><br>
		<input type="radio" name="EPQ30513000" value="4" id="EPQ30513004" <%=strEPQ30513000answer4%>>
		<label for="EPQ30513004">Other, specify:</label>		<input id="EPQ30513000specify" type="text" maxlength="75"  size="15" name="EPQ30513000specify" class="requiredIfPreviousRadio" value='<%=Session("EPQ30513000specify")%>' >
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

<script>
	$('#EPQ30513000specify').keyup(function(event) {
		if (event.target.value) {
			$('#EPQ30513000specify').prevAll(':radio').first().attr('checked', 'checked');
			console.log('full');
		} else {
			$('#EPQ30513000specify').prevAll(':radio').first().removeAttr('checked');
			console.log('empty');
		}
	});
</script>
	
 </body>
</html>
