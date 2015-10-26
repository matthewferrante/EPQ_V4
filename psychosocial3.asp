
<%

Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31205000")="1" then
		strEPQ31205000yes="checked"
	end if

	if Session("EPQ31205000")="0" then
		strEPQ31205000no="checked"
	end if

	if Session("EPQ31205001")="1" then
		strEPQ31205001yes="checked"
	end if
	if Session("EPQ31205002")="1" then
		strEPQ31205002yes="checked"
	end if
	if Session("EPQ31205003")="1" then
		strEPQ31205003yes="checked"
	end if
	if Session("EPQ31205004")="1" then
		strEPQ31205004yes="checked"
	end if
	if Session("EPQ31205005")="1" then
		strEPQ31205005yes="checked"
	end if
	if Session("EPQ31205006")="1" then
		strEPQ31205006yes="checked"
	end if
	if Session("EPQ31205007")="1" then
		strEPQ31205007yes="checked"
	end if
	if Session("EPQ31205008")="1" then
		strEPQ31205008yes="checked"
	end if
	if Session("EPQ31205009")="1" then
		strEPQ31205009yes="checked"
	end if
	if Session("EPQ31205010")="1" then
		strEPQ31205010yes="checked"
	end if
	if Session("EPQ31205011")="1" then
		strEPQ31205011yes="checked"
	end if
	if Session("EPQ31205012")="1" then
		strEPQ31205012yes="checked"
	end if
	if Session("EPQ31205013")="1" then
		strEPQ31205013yes="checked"
	end if
	if Session("EPQ31205014")="1" then
		strEPQ31205014yes="checked"
	end if
	if Session("EPQ31205015")="1" then
		strEPQ31205015yes="checked"
	end if
	if Session("EPQ31205016")="1" then
		strEPQ31205016yes="checked"
	end if
	if Session("EPQ31205017")="1" then
		strEPQ31205017yes="checked"
	end if
	if Session("EPQ31205018")="1" then
		strEPQ31205018yes="checked"
	end if
	if Session("EPQ31205170")="1" then
		strEPQ31205170yes="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31205001string")= ""
	Session("EPQ31205002string")= ""
	Session("EPQ31205003string")= ""
	Session("EPQ31205004string")= ""
	Session("EPQ31205005string")= ""
	Session("EPQ31205006string")= ""
	Session("EPQ31205007string")= ""
	Session("EPQ31205008string")= ""
	Session("EPQ31205009string")= ""
	Session("EPQ31205010string")= ""
	Session("EPQ31205011string")= ""
	Session("EPQ31205012string")= ""
	Session("EPQ31205013string")= ""
	Session("EPQ31205014string")= ""
	Session("EPQ31205015string")= ""
	Session("EPQ31205016string")= ""
	Session("EPQ31205017string")= ""
	Session("EPQ31205018string")= ""

	Session("EPQ31205000") = Request.Form("EPQ31205000")
	Session("EPQ31205001") = Request.Form("EPQ31205001")
	Session("EPQ31205002") = Request.Form("EPQ31205002")
	Session("EPQ31205003") = Request.Form("EPQ31205003")
	Session("EPQ31205004") = Request.Form("EPQ31205004")
	Session("EPQ31205005") = Request.Form("EPQ31205005")
	Session("EPQ31205006") = Request.Form("EPQ31205006")
	Session("EPQ31205007") = Request.Form("EPQ31205007")
	Session("EPQ31205008") = Request.Form("EPQ31205008")
	Session("EPQ31205009") = Request.Form("EPQ31205009")
	Session("EPQ31205010") = Request.Form("EPQ31205010")
	Session("EPQ31205011") = Request.Form("EPQ31205011")
	Session("EPQ31205012") = Request.Form("EPQ31205012")
	Session("EPQ31205013") = Request.Form("EPQ31205013")
	Session("EPQ31205014") = Request.Form("EPQ31205014")
	Session("EPQ31205015") = Request.Form("EPQ31205015")
	Session("EPQ31205016") = Request.Form("EPQ31205016")
	Session("EPQ31205017") = Request.Form("EPQ31205017")
	Session("EPQ31205017specify") = Request.Form("EPQ31205017specify")
	Session("EPQ31205018") = Request.Form("EPQ31205018")
	Session("EPQ31205170") = Request.Form("EPQ31205170")


	if Session("EPQ31205000") = "1" then 
	Session("EPQ31205000string")= "None"
	else
	Session("EPQ31205000") = "0"
	end if

	if Session("EPQ31205170") = "1" then 
	else
	Session("EPQ31205170") = "0"
	end if

	if Session("EPQ31205001") = "1" then 
	Session("EPQ31205001string")= "Childcare"
	else
	Session("EPQ31205001") = "0"
	end if

	if Session("EPQ31205002") = "1" then 
	Session("EPQ31205002string")= "Dealing with Children"
	else
	Session("EPQ31205002") = "0"
	end if

	if Session("EPQ31205003") = "1" then 
	Session("EPQ31205003string")= "Depression"
	else
	Session("EPQ31205003") = "0"
	end if

	if Session("EPQ31205004") = "1" then 
	Session("EPQ31205004string")= "Housing"
	else
	Session("EPQ31205004") = "0"
	end if

	if Session("EPQ31205005") = "1" then 
	Session("EPQ31205005string")= "Dealing with partner"
	else
	Session("EPQ31205005") = "0"
	end if

	if Session("EPQ31205006") = "1" then 
	Session("EPQ31205006string")= "Fears"
	else
	Session("EPQ31205006") = "0"
	end if

	if Session("EPQ31205007") = "1" then 
	Session("EPQ31205007string")= "Financial"
	else
	Session("EPQ31205007") = "0"
	end if

	if Session("EPQ31205008") = "1" then 
	Session("EPQ31205008string")= "Dealing with other family"
	else
	Session("EPQ31205008") = "0"
	end if

	if Session("EPQ31205009") = "1" then 
	Session("EPQ31205009string")= "Nervousness"
	else
	Session("EPQ31205009") = "0"
	end if

	if Session("EPQ31205010") = "1" then
	Session("EPQ31205010string")= "Insurance" 
	else
	Session("EPQ31205010") = "0"
	end if
	if Session("EPQ31205011") = "1" then 
	Session("EPQ31205011string")= "Sadness"
	else
	Session("EPQ31205011") = "0"
	end if
	if Session("EPQ31205012") = "1" then 
	Session("EPQ31205012string")= "Transportation"
	else
	Session("EPQ31205012") = "0"
	end if
	if Session("EPQ31205013") = "1" then 
	Session("EPQ31205013string")= "Loss of faith"
	else
	Session("EPQ31205013") = "0"
	end if
	if Session("EPQ31205014") = "1" then 
	Session("EPQ31205014string")= "Worry"
	else
	Session("EPQ31205014") = "0"
	end if

	if Session("EPQ31205015") = "1" then 
	Session("EPQ31205015string")= "Work / School"
	else
	Session("EPQ31205015") = "0"
	end if

	if Session("EPQ31205016") = "1" then 
	Session("EPQ31205016string")= "Relating to God"
	else
	Session("EPQ31205016") = "0"
	end if
	if Session("EPQ31205017") = "1" then 
	Session("EPQ31205017string")= "Other"
	else
	Session("EPQ31205017") = "0"
	end if
	if Session("EPQ31205018") = "1" then 
	Session("EPQ31205018string")= "Meaning of illness"
	else
	Session("EPQ31205018") = "0"
	end if

end if

if Request.Form("StopID")="1" then
		Session("PsychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30101000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "psychosocialmaster.asp"
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

<script type="text/javascript">
function countChars(countfrom,displayto) {
  var len = document.getElementById(countfrom).value.length;
  document.getElementById(displayto).innerHTML = len;
}
</script>


</head>
<body>

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->
</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">

    <form action="psychosocial3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
Do you have any concerns that may interfere with your ability to seek care at Moffitt (for example, transportation, financial, family care, or spiritual concerns)?
	</legend>
	<div class="QuestionAnswersBox">
<br><input type="radio" class="qTrigger" name="EPQ31205000" value="1" id="EPQ31205000" <%=strEPQ31205000yes%>>
<label for="EPQ31205017">Yes</label>


<br>
<input type="radio" class="qTriggerOff" name="EPQ31205000" value="0" id="EPQ31205000" <%=strEPQ31205000no%>>
<label for="EPQ31205000">No</label><br>
</div>
  </fieldset>

<div class="hiddenQ">
<fieldset>
<legend class='QuestionBox'>
Please specify any concerns that you may have. Please enter up to 500 characters.
</legend>

	<div class="QuestionAnswersBox">
<textarea cols="80" rows="6" id="EPQ31205017specify" maxlength="500" name="EPQ31205017specify" class="requiredIfBranchActive"  
onkeyup="countChars('EPQ31205017specify','charcount');" onkeydown="countChars('EPQ31205017specify','charcount');" onmouseout="countChars('EPQ31205017specify','charcount');"><%=Session("EPQ31205017specify")%></textarea><br>
<span id="charcount">0</span> characters entered.
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
