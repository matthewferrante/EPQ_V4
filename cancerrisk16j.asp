
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11115000")="1" then
		strCUTA11115000answer1="checked"
	end if
	if Session("CUTA11115000")="2" then
		strCUTA11115000answer2="checked"
	end if

	if Session("CUTA11115000")="3" then
		strCUTA11115000answer3="checked"
	end if

	if Session("CUTA11116000")="1" then
		strCUTA11116000answer1="checked"
	end if

	if Session("CUTA11116000")="2" then
		strCUTA11116000answer2="checked"
	end if


	if Session("CUTA11117000")="1" then
		strCUTA11117000answer1="checked"
	end if

	if Session("CUTA11117000")="2" then
		strCUTA11117000answer2="checked"
	end if

	if Session("CUTA11117000")="3" then
		strCUTA11117000answer3="checked"
	end if


	if Session("CUTA11118000")="1" then
		strCUTA11118000answer1="checked"
	end if

	if Session("CUTA11118000")="2" then
		strCUTA11118000answer2="checked"
	end if
	if Session("CUTA11118000")="3" then
		strCUTA11118000answer3="checked"
	end if

	if Session("CUTA11118000")="4" then
		strCUTA11118000answer4="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11115000string")= ""
	Session("CUTA11116000string")= ""
	Session("CUTA11117000string")= ""
	Session("CUTA111180000string")= ""

	Session("CUTA11115000") = Request.Form("CUTA11115000")
	Session("CUTA11116000") = Request.Form("CUTA11116000")

	Session("CUTA11117000") = Request.Form("CUTA11117000")
	Session("CUTA11118000") = Request.Form("CUTA11118000")


	if Session("CUTA11115000") = "1" then 
		Session("CUTA11115000string")= "Performs skin self-exams"
	end if
	if Session("CUTA11115000") = "2" then 
		Session("CUTA11115000string")= "Does not perform skin self-exams"
	end if
	if Session("CUTA11115000") = "3" then 
		Session("CUTA11115000string")= "Unknown"
	end if


	if Session("CUTA11116000") = "1" then 
		Session("CUTA11116000string")= "at least once per month"
	end if
	if Session("CUTA11116000") = "2" then 
		Session("CUTA11116000string")= "less often than once per month"
	end if
	if Session("CUTA11117000") = "1" then 
		Session("CUTA11117000string")= "Receives skin screenings by a health professional"
	end if
	if Session("CUTA11117000") = "2" then 
		Session("CUTA11117000string")= "Does not receive skin screenings by a health professional"
	end if


	if Session("CUTA11118000") = "1" then 
		Session("CUTA11118000string")= "Had last skin screening in 6 months or less"
	end if
	if Session("CUTA11118000") = "2" then 
		Session("CUTA11118000string")= "Had last skin screening 7 - 12 months"
	end if
	if Session("CUTA11118000") = "3" then 
		Session("CUTA11118000string")= "Had last skin screening 13 months - 2 years"
	end if
	if Session("CUTA11118000") = "4" then 
		Session("CUTA11118000string")= "Had last skin screening more than 2 years"
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

if Session("EPQ30418030")="1" then
	Session("Page")="16i"
else 
	Session("Page")="16g"
end if

		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="9"


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

    <form action="cancerrisk16j.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Do you perform skin self-exams?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11115000" value="1" class="required qTrigger" id="CUTA11103001" <%=strCUTA11115000answer1%>>
		<label for="CUTA111115001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11115000" value="2" class="required qTriggerOff" id="CUTA11103002" <%=strCUTA11115000answer2%>>
		<label for="CUTA111115002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11115000" value="3" class="required qTriggerOff" id="CUTA11103003" <%=strCUTA11115000answer3%>>
		<label for="CUTA111115003">Unknown</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
How often do you perform skin self-exams?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11116000" value="1" class="requiredIfBranchActive" id="CUTA11118001" <%=strCUTA11116000answer1%>>
		<label for="CUTA11118001">At least once per month</label><br>
		<input type="radio" name="CUTA11116000" value="2" id="CUTA11118002" <%=strCUTA11116000answer2%>>
		<label for="CUTA11118002">Less often than once per month</label><br>

	</div>
  </fieldset>

</div>

	<fieldset><legend class='QuestionBox'>
Do you regularly receive skin screenings by a health professional?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11117000" value="1" class="required qTrigger2" id="CUTA11119001" <%=strCUTA11117000answer1%>>
		<label for="CUTA11119001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11117000" value="2" class="required qTriggerOff2" id="CUTA11119002" <%=strCUTA11117000answer2%>>
		<label for="CUTA11119002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ2">
	<fieldset><legend class='QuestionBox'>
How long ago was your last skin screening?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11118000" value="1" class="requiredIfBranchActive" id="CUTA11120001" <%=strCUTA11118000answer1%>>
		<label for="CUTA11120001">6 months or less</label><br>
		<input type="radio" name="CUTA11118000" value="2" id="CUTA11120002" <%=strCUTA11118000answer2%>>
		<label for="CUTA11120002">7 - 12 months</label><br>
		<input type="radio" name="CUTA11118000" value="3" id="CUTA11120003" <%=strCUTA11118000answer3%>>
		<label for="CUTA11120002">13 months - 2 years</label><br>
		<input type="radio" name="CUTA11118000" value="4" id="CUTA11120004" <%=strCUTA11118000answer4%>>
		<label for="CUTA11120002">More than 2 years</label><br>
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
