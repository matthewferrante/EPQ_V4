
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11105000")="1" then
		strCUTA11105000answer1="checked"
	end if
	if Session("CUTA11105000")="2" then
		strCUTA11105000answer2="checked"
	end if
	if Session("CUTA11105000")="3" then
		strCUTA11105000answer3="checked"
	end if

	if Session("CUTA11106000")="1" then
		strCUTA11106000answer1="checked"
	end if

	if Session("CUTA11106000")="2" then
		strCUTA11106000answer2="checked"
	end if
	if Session("CUTA11106000")="3" then
		strCUTA11106000answer3="checked"
	end if
	if Session("CUTA11106000")="4" then
		strCUTA11106000answer4="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11105000string")= ""
	Session("CUTA11106000string")= ""

	Session("CUTA11105000") = Request.Form("CUTA11105000")
	Session("CUTA11106000") = Request.Form("CUTA11106000")

	if Session("CUTA11105000") = "1" then 
		Session("CUTA11105000string")= ""
	end if
	if Session("CUTA11105000") = "2" then 
		Session("CUTA11105000string")= "Does not work outdoors"
	end if
	if Session("CUTA11105000") = "3" then 
		Session("CUTA11105000string")= "Unknown if works outdoors"
	end if

	if Session("CUTA11106000") = "1" then 
		Session("CUTA11106000string")= "Spends 25% or less of their time working outdoors"
	end if
	if Session("CUTA11106000") = "2" then 
		Session("CUTA11106000string")= "Spends 26-50% of their time working outdoors"
	end if
	if Session("CUTA11106000") = "3" then 
		Session("CUTA11106000string")= "Spends 51-75% of their time working outdoors"
	end if
	if Session("CUTA11106000") = "4" then 
		Session("CUTA11106000string")= "Spends More than 75% of their time working outdoors"
	end if


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16d"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="16f"


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

    <form action="cancerrisk16e.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Do you work outdoors for your job?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11105000" value="1" class="required qTrigger" id="CUTA11103001" <%=strCUTA11105000answer1%>>
		<label for="CUTA11103001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11105000" value="2" class="required qTriggerOff" id="CUTA11103002" <%=strCUTA11105000answer2%>>
		<label for="CUTA11103002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11105000" value="3" class="required qTriggerOff" id="CUTA11103003" <%=strCUTA11105000answer3%>>
		<label for="CUTA11103003">Unknown</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
What percentage of your working hours do you spend outdoors?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11106000" value="1" class="requiredIfBranchActive"" id="CUTA11104001" <%=strCUTA11106000answer1%>>
		<label for="CUTA11104001">25% or less</label><br>
		<input type="radio" name="CUTA11106000" value="2" id="CUTA11104002" <%=strCUTA11106000answer2%>>
		<label for="CUTA11104002">26 – 50%</label><br>
		<input type="radio" name="CUTA11106000" value="3" id="CUTA11104003" <%=strCUTA11106000answer3%>>
		<label for="CUTA11104003">51 – 75%</label><br>
		<input type="radio" name="CUTA11106000" value="4" id="CUTA11104004" <%=strCUTA11106000answer4%>>
		<label for="CUTA11104004">More than 75%</label><br>
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
