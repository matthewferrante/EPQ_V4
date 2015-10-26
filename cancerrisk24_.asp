<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("THRC30606600")="1" then
		strTHRC30606600answer1="checked"
	end if
	if Session("THRC30606600")="2" then
		strTHRC30606600answer2="checked"
	end if
	if Session("THRC30606800")="1" then
		strTHRC30606800answer1="checked"
	end if
	if Session("THRC30606800")="2" then
		strTHRC30606800answer2="checked"
	end if

end if	

if Request.Form("ispostback")="1" then
	Session("THRC30606600") = Request.Form("THRC30606600")
	Session("THRC30606700") = Request.Form("THRC30606700")
	Session("THRC30606800") = Request.Form("THRC30606800")
	Session("THRC30606900") = Request.Form("THRC30606900")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="23"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31161010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="25"
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
    <form action="cancerrisk24.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->	
	<fieldset>
    <legend class="QuestionBox">
      Have you ever taken a lipid-lowering (cholesterol-lowering) medicine on a regular basis, that is, at least once<br> per week for six months or longer?  Examples include, Crestor, Lipitor, Niacin, and Baycol.<Br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="radio" name="THRC30606600" value="1" id="THRC306066001" class="required qTrigger" <%=strTHRC30606600answer1%>>
      <label for="THRC306066001">Yes</label><br>
      <input type="radio" name="THRC30606600" value="2" id="THRC306066002" class="qTriggerOff" <%=strTHRC30606600answer2%>>
      <label for="THRC306066002">No</label><br>
    </div>
  </fieldset>

  <div class="hiddenQ">
    <fieldset>
      <legend class="QuestionBox">How old were you when you first started using a lipid-lowering medicine?</legend>
      <div class="QuestionAnswersBox">
        <input id="THRC30606700" type="text" size="3" maxlength="3" name="THRC30606700" class="yearsExposed requiredIfBranchActive" value=<%=Session("THRC30606700")%>> years old<br>
      </div>
    </fieldset>

    <fieldset>
      <legend class="QuestionBox">Are you still using a lipid-lowering medicine?</legend>
      <div class="QuestionAnswersBox">
        <input type="radio" name="THRC30606800" value="1" id="THRC306068001" class="requiredIfBranchActive qTriggerOff2" <%=strTHRC30606800answer1%>>
        <label for="THRC306068001">Yes</label><br>
        <input type="radio" name="THRC30606800" value="2" id="THRC306068002" class="qTrigger2" <%=strTHRC30606800answer2%>>
        <label for="THRC306068002">No</label><br>
      </div>
    </fieldset>

    <fieldset class="hiddenQ2">
      <legend class="QuestionBox">How old were you when you stopped using a lipid-lowering medicine?</legend>
      <div class="QuestionAnswersBox">
        <input id="THRC30606900" type="text" size="3" maxlength="3" name="THRC30606900" class="yearsExposed requiredIfBranchActive" value=<%=Session("THRC30606900")%>> years old<br>
      </div>
    </fieldset>
  </div>

</div> <!-- [ /#formBlock ] -->
<div class="ResetBox">
</div>	
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
