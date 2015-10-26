
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11107000")="1" then
		strCUTA11107000answer1="checked"
	end if
	if Session("CUTA11107000")="2" then
		strCUTA11107000answer2="checked"
	end if
	if Session("CUTA11107000")="3" then
		strCUTA11107000answer3="checked"
	end if

	if Session("CUTA11108000")="1" then
		strCUTA11108000answer1="checked"
	end if

	if Session("CUTA11108000")="2" then
		strCUTA11108000answer2="checked"
	end if


	if Session("CUTA11109000")="1" then
		strCUTA11109000answer1="checked"
	end if

	if Session("CUTA11109000")="2" then
		strCUTA11109000answer2="checked"
	end if
	if Session("CUTA11109000")="3" then
		strCUTA11109000answer3="checked"
	end if
	if Session("CUTA11109000")="4" then
		strCUTA11109000answer4="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11107000string")= ""
	Session("CUTA11108000string")= ""
	Session("CUTA11109000string")= ""

	Session("CUTA11107000") = Request.Form("CUTA11107000")
	Session("CUTA11108000") = Request.Form("CUTA11108000")
	Session("CUTA11109000") = Request.Form("CUTA11109000")

	if Session("CUTA11107000") = "1" then 
		Session("CUTA11107000string")= "Wears sunscreen on face"
	end if
	if Session("CUTA11107000") = "2" then 
		Session("CUTA11107000string")= "Does not wear sunscreen on face"
	end if
	if Session("CUTA11107000") = "3" then 
		Session("CUTA11107000string")= "Unknown sunscreen on face"
	end if


	if Session("CUTA11108000") = "1" then 
		Session("CUTA11108000string")= "occasionally"
	end if
	if Session("CUTA11108000") = "2" then 
		Session("CUTA11108000string")= "daily"
	end if

	if Session("CUTA11109000") = "1" then 
		Session("CUTA11109000string")= "with SPF of less than 15"
	end if
	if Session("CUTA11109000") = "2" then 
		Session("CUTA11109000string")= "with SPF of 15"
	end if
	if Session("CUTA11109000") = "3" then 
		Session("CUTA11109000string")= "with SPF of 30"
	end if
	if Session("CUTA11109000") = "4" then 
		Session("CUTA11109000string")= "with SPF of more than 30"
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16e"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="16g"


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

    <form action="cancerrisk16f.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Do you wear sunscreen on your face (including make-up or moisturizers that contain sunscreen)?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11107000" value="1" class="required qTrigger" id="CUTA11103001" <%=strCUTA11107000answer1%>>
		<label for="CUTA11103001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11107000" value="2" class="required qTriggerOff" id="CUTA11103002" <%=strCUTA11107000answer2%>>
		<label for="CUTA11103002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA11107000" value="3" class="required qTriggerOff" id="CUTA11103003" <%=strCUTA11107000answer3%>>
		<label for="CUTA11103003">Unknown</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
How often do you wear sunscreen on your face?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11108000" value="1" class="requiredIfBranchActive"" id="CUTA11104001" <%=strCUTA11108000answer1%>>
		<label for="CUTA11104001">Occasionally</label><br>
		<input type="radio" name="CUTA11108000" value="2" id="CUTA11104002" <%=strCUTA11108000answer2%>>
		<label for="CUTA11104002">Daily</label><br>
	</div>
  </fieldset>
	<fieldset><legend class='QuestionBox'>
What strength or SPF do you usually use on your face?
 	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11109000" value="1" class="requiredIfBranchActive"" id="CUTA11104001" <%=strCUTA11109000answer1%>>
		<label for="CUTA11104001">Less than 15</label><br>
		<input type="radio" name="CUTA11109000" value="2" id="CUTA11104002" <%=strCUTA11109000answer2%>>
		<label for="CUTA11104002">15</label><br>
		<input type="radio" name="CUTA11109000" value="3" id="CUTA11104003" <%=strCUTA11109000answer3%>>
		<label for="CUTA11104003">30</label><br>
		<input type="radio" name="CUTA11109000" value="4" id="CUTA11104004" <%=strCUTA11109000answer4%>>
		<label for="CUTA11104004">More than 30</label><br>
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
