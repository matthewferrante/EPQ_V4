
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11105000")="0" then
		strHM11105000answer0="checked"
	end if
	if Session("HM11105000")="1" then
		strHM11105000answer1="checked"
	end if
	if Session("HM11105000")="2" then
		strHM11105000answer2="checked"
	end if
	if Session("HM11105000")="3" then
		strHM11105000answer3="checked"
	end if
	if Session("HM11105000")="4" then
		strHM11105000answer4="checked"
	end if

	if Session("HM11106000")="1" then
		strHM11106000answer1="checked"
	end if
	if Session("HM11107000")="1" then
		strHM11107000answer1="checked"
	end if
	if Session("HM11108000")="1" then
		strHM11108000answer1="checked"
	end if
	if Session("HM11109000")="1" then
		strHM11109000answer1="checked"
	end if

	if Session("HM11110000")="1" then
		strHM11110000answer1="checked"
	end if
	if Session("HM11111000")="1" then
		strHM11111000answer1="checked"
	end if

	if Session("HM11112000")="1" then
		strHM11112000answer1="checked"
	end if




end if
	

if Request.Form("ispostback")="1" then
	Session("HM11106000string")= ""
	Session("HM11107000string")= ""
	Session("HM11108000string")= ""
	Session("HM11109000string")= ""
	Session("HM11110000string")= ""
	Session("HM11111000string")= ""
	Session("HM11112000string")= ""


	Session("HM11105000") = Request.Form("HM11105000")
	Session("HM11106000") = Request.Form("HM11106000")
	Session("HM11107000") = Request.Form("HM11107000")
	Session("HM11108000") = Request.Form("HM11108000")
	Session("HM11109000") = Request.Form("HM11109000")
	Session("HM11110000") = Request.Form("HM11110000")
	Session("HM11111000") = Request.Form("HM11111000")
	Session("HM11112000") = Request.Form("HM11112000")
	Session("HM11113000") = Request.Form("HM11113000")




end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("THRC31102100")<>"1" and Session("HM10204000")="1" then
	Session("Page")="26"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC31102100")="1" and Session("HM10204000")="1" then
	Session("Page")="25a"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC31102100")<>"1" and Session("HM10207000")="1" then
	Session("Page")="26"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC31102100")="1" and Session("HM10207000")="1" then
	Session("Page")="25a"
	Response.Redirect "cancerriskmaster.asp"
	end if

if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
	if Session("HM11102000")="1" or Session("THRC31101300")="1" or Session("THRC31101400")="1" or Session("THRC31101500")="1" or Session("THRC31101700")="1" or Session("THRC31101900")="1" or Session("THRC31102000")="1" then
		Session("Page")="26"
		Response.Redirect "cancerriskmaster.asp"
	else
			Session("Page")="25a"
		Response.Redirect "cancerriskmaster.asp"
	end if

end if
end if

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="0"
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


    <form action="cancerrisk30.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<fieldset>
  <fieldset>
    <legend class="QuestionBox">
How many times did you fall in the past year?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" class="qTriggerOff2 required" name="HM11105000" class="required" value="0" id="HM11105010" <%=strHM11105000answer0%>>
		<label for="HM111050001">0</label>
<br>
		<input type="radio" class="qTrigger2" name="HM11105000" class="required" value="1" id="HM11105020" <%=strHM11105000answer1%>>
		<label for="HM111050002">1</label>
<br>
		<input type="radio" class="qTrigger2" name="HM11105000" value="2" id="HM11105030" <%=strHM11105000answer2%>>
		<label for="HM111050003">2</label>
<br>
		<input type="radio" class="qTrigger2" name="HM11105000"  value="3" id="HM11105030" <%=strHM11105000answer3%>>
		<label for="HM111050003">3</label>
<br>
		<input type="radio" class="qTrigger2" name="HM11105000" value="4" id="HM11105030" <%=strHM11105000answer4%>>
		<label for="HM111050003">4 or more</label><br>


	</div><!-- [ /#AnswerBox] -->
  </fieldset>


<div class="hiddenQ2 atLeastOneCheckboxIfBranchActive">
    <legend class="QuestionBox">
      Why did you fall? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="HM11106000" value="1" id="HM11106000" <%=strHM11106000answer1%>>
		<label for="HM11106000">Accidental tripping</label><br>

		<input type="checkbox" name="HM11107000" value="1" id="HM11107000" <%=strHM11107000answer1%>>
		<label for="HM11107000">Dizziness</label><br>		
		
		<input type="checkbox" name="HM11108000" value="1" id="HM11108000" <%=strHM11108000answer1%>>
		<label for="HM11108000">Loss of balance</label><br>



		<input type="checkbox" name="HM11109000" value="1" id="HM11109000" <%=strHM11109000answer1%>>
		<label for="HM11109000">Loss of consciousness</label><br>
		<input type="checkbox" name="HM11110000" value="1" id="HM11110000" <%=strHM11110000answer1%>>
		<label for="HM11110000">Seizure</label><br>
		<input type="checkbox" name="HM11111000" value="1" id="HM11111000" <%=strHM11111000answer1%>>
		<label for="HM11111000">Sports</label><br>


		
		<input type="checkbox" name="HM11112000" value="1" id="HM11112000" <%=strHM11112000answer1%>>
		<label for="HM11112000">Other, specify:</label>
<input id="HM11113000" type="text" maxlength="75" size="15" name="HM11113000" class="requiredIfPreviousCheckbox" value='<%=Session("HM11113000")%>'><br>

	</div>
  </fieldset>
 
</div><!-- [ /#formBlock ] -->
	
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
