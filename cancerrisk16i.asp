
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11113000")="1" then
		strCUTA11113000answer1="checked"
	end if
	if Session("CUTA11113000")="2" then
		strCUTA11113000answer2="checked"
	end if
	if Session("CUTA11113000")="3" then
		strCUTA11113000answer3="checked"
	end if

	if Session("CUTA11114000")="1" then
		strCUTA11114000answer1="checked"
	end if

	if Session("CUTA11114000")="2" then
		strCUTA11114000answer2="checked"
	end if
end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11113000string")= ""
	Session("CUTA11114000string")= ""

	Session("CUTA11113000") = Request.Form("CUTA11113000")
	Session("CUTA11114000") = Request.Form("CUTA11114000")


	if Session("CUTA11113000") = "1" then 
		Session("CUTA11113000string")= "Treated for psoriasis"
	end if
	if Session("CUTA11113000") = "2" then 
		Session("CUTA11113000string")= "Not treated for psoriasis"
	end if
	if Session("CUTA11113000") = "3" then 
		Session("CUTA11113000string")= ""
	end if


	if Session("CUTA11114000") = "1" then 
		Session("CUTA11114000string")= "with phototherapy"
	end if
	if Session("CUTA11114000") = "2" then 
		Session("CUTA11114000string")= ""
	end if


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16g"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="16j"


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

    <form action="cancerrisk16i.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Have you been treated for psoriasis?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11113000" value="1" class="required qTrigger" id="CUTA11103001" <%=strCUTA11113000answer1%>>
		<label for="CUTA111115001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11113000" value="2" class="required qTriggerOff" id="CUTA11103002" <%=strCUTA11113000answer2%>>
		<label for="CUTA111115002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11113000" value="3" class="required qTriggerOff" id="CUTA11103003" <%=strCUTA11113000answer3%>>
		<label for="CUTA111115003">Unknown</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
Did you receive phototherapy (also known as PUVA light therapy, ultraviolet therapy)?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11114000" value="1" class="requiredIfBranchActive" id="CUTA11116001" <%=strCUTA11114000answer1%>>
		<label for="CUTA11116001">Yes</label><br>
		<input type="radio" name="CUTA11114000" value="2" id="CUTA11116002" <%=strCUTA11114000answer2%>>
		<label for="CUTA11116002">No</label><br>


	</div>
  </fieldset>

</div>

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
