
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30504080")="1" then
		strEPQ30504080answer1="checked"
	end if
	if Session("EPQ30504080")="2" then
		strEPQ30504080answer2="checked"
	end if
	if Session("EPQ30504080")="0" then
		strEPQ30504080answer3="checked"
	end if
	if Session("EPQ30504090")="1" then
		strEPQ30504090answer1="checked"
	end if
	if Session("EPQ30504090")="0" then
		strEPQ30504090answer2="checked"
	end if

	if Session("EPQ30504100")="1" then
		strEPQ30504100answer1="checked"
	end if
	if Session("EPQ30504110")="1" then
		strEPQ30504110answer1="checked"
	end if
	if Session("EPQ30504120")="1" then
		strEPQ30504120answer1="checked"
	end if
	if Session("EPQ30504130")="1" then
		strEPQ30504130answer1="checked"
	end if
	if Session("EPQ30504140")="1" then
		strEPQ30504140answer1="checked"
	end if
	if Session("EPQ30504150")="1" then
		strEPQ30504150answer1="checked"
	end if
	if Session("EPQ30504160")="1" then
		strEPQ30504160answer1="checked"
	end if
	if Session("EPQ30504170")="1" then
		strEPQ30504170answer1="checked"
	end if
	if Session("EPQ30504180")="1" then
		strEPQ30504180answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30504080") = Request.Form("EPQ30504080")
	Session("EPQ30504090") = Request.Form("EPQ30504090")
	Session("EPQ30504100") = Request.Form("EPQ30504100")
	Session("EPQ30504110") = Request.Form("EPQ30504110")
	Session("EPQ30504120") = Request.Form("EPQ30504120")
	Session("EPQ30504130") = Request.Form("EPQ30504130")
	Session("EPQ30504140") = Request.Form("EPQ30504140")
	Session("EPQ30504150") = Request.Form("EPQ30504150")
	Session("EPQ30504160") = Request.Form("EPQ30504160")
	Session("EPQ30504170") = Request.Form("EPQ30504170")
	Session("EPQ30504180") = Request.Form("EPQ30504180")

	Session("EPQ30504000") = Request.Form("EPQ30504000")
	Session("EPQ30504000specify") = Request.Form("EPQ30504000specify")

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=32
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30504000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	Session("CurrentSymptomsSectionStatus")="Complete"
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
    <form action="currentsymptoms33.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
		<legend class="QuestionBox">
			Have you ever, even once, used a needle to inject a drug not prescribed by a doctor?
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30504080" value="1" id="EPQ305040801" class="required" <%=strEPQ30504080answer1%>>
			<label for="EPQ305040801">Yes, in the past 3 months</label><br>
			<input type="radio" name="EPQ30504080" value="2" id="EPQ305040802" <%=strEPQ30504080answer2%>>
			<label for="EPQ305040802">Yes, but not in the past 3 months</label><br>
			<input type="radio" name="EPQ30504080" value="0" id="EPQ305040803" <%=strEPQ30504080answer3%>>
			<label for="EPQ305040803">No, never</label><br>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset>
		<legend class="QuestionBox">
In the past 3 months, have you used any drugs or medicines on your own, either without a doctor’s prescription or for reasons other than a doctor said you should use them?
We will ask you about over-the-counter medications later, so do not include those drugs or medications here.
		</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30504090" value="1" class="qTrigger2 required" id="EPQ305040901" <%=strEPQ30504090answer1%>>
			<label for="EPQ305040901">Yes</label><br>
			<input type="radio" name="EPQ30504090" value="0" class="qTriggerOff2" id="EPQ305040902" <%=strEPQ30504090answer2%>>
			<label for="EPQ305040902">No</label>
		</div><!-- [ /#AnswerBox] -->
	</fieldset>

	<fieldset class="hiddenQ2 atLeastOneCheckboxIfBranchActive">
		<legend class="QuestionBox">
Which drugs or medicines have you used on your own in the past 3 months? Check all that apply.<br></legend>
		<div class="QuestionAnswersBox">
			<input type="checkbox" name="EPQ30504100" value="1" id="EPQ30504100" <%=strEPQ30504100answer1%>>
			<label for="EPQ30504100">Marijuana, hash, or grass</label><br>
			<input type="checkbox" name="EPQ30504110" value="1" id="EPQ30504110" <%=strEPQ30504110answer1%>>
			<label for="EPQ30504110">Painkillers or narcotics (for example, Codeine, Demerol, Dilaudid, Fentanyl, Morphine,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Oxcycontin, Percocet, Vicodin)</label><br>
			<input type="checkbox" name="EPQ30504120" value="1" id="EPQ30504120" <%=strEPQ30504120answer1%>>
			<label for="EPQ30504120">Tranquilizers or anti-anxiety drugs (for example,  Ativan, Valium, Xanax, muscle relaxants)</label><br>
			<input type="checkbox" name="EPQ30504130" value="1" id="EPQ30504130" <%=strEPQ30504130answer1%>>
			<label for="EPQ30504130">Sedatives (for example, sleeping pills, barbiturates, Quaaludes, downers)</label><br>
			<input type="checkbox" name="EPQ30504140" value="1" id="EPQ30504140" <%=strEPQ30504140answer1%>>
			<label for="EPQ30504140">Stimulants (for example, amphetamine, methamphetamine, Dexedrine, Ritalin, Adderall, “speed”, <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "crystal meth", “ice”, "crank")</label><br>
			<input type="checkbox" name="EPQ30504150" value="1" id="EPQ30504150" <%=strEPQ30504150answer1%>>
			<label for="EPQ30504150">Cocaine or crack</label><br>
			<input type="checkbox" name="EPQ30504160" value="1" id="EPQ30504160" <%=strEPQ30504160answer1%>>
			<label for="EPQ30504160">Hallucinogens (for example, Ecstasy, LSD, psilocybin, PCP)</label><br>
			<input type="checkbox" name="EPQ30504170"  value="1" id="EPQ30504170" <%=strEPQ30504170answer1%>>
			<label for="EPQ30504170">Heroin</label><br>
			<input type="checkbox" name="EPQ30504180" value="1" id="EPQ30504180" <%=strEPQ30504180answer1%>>
			<label for="EPQ30504180">Other, specify:</label><input id="EPQ30504000specify" type="text" maxlength="75" size="75" id="EPQ30504000specify" class="requiredIfPreviousCheckbox" name="EPQ30504000specify" value='<%=Session("EPQ30504000specify")%>'><br>
		</div>
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
