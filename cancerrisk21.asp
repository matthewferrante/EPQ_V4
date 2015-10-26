
<%
'get EPQ numbers from current symptoms1 in DEVEPQ3 for this
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31161070")="0" then
		strEPQ31161070answer1="checked"
	end if
	if Session("EPQ31161070")="1" then
		strEPQ31161070answer2="checked"
	end if

	if Session("EPQ31161070")="2" then
		strEPQ31161070answer3="checked"
	end if

	if Session("EPQ30503000")="1" then
		strEPQ30503000answer1="checked"
	end if
	if Session("EPQ30503000")="2" then
		strEPQ30503000answer2="checked"
	end if
	if Session("EPQ30503000")="3" then
		strEPQ30503000answer3="checked"
	end if
	if Session("EPQ30503000")="4" then
		strEPQ30503000answer4="checked"
	end if
	if Session("EPQ30503000")="5" then
		strEPQ30503000answer5="checked"
	end if
	if Session("EPQ30503000")="0" then
		strEPQ30503000answer6="checked"
	end if

	if Session("EPQ30503100")="1" then
		strEPQ30503100answer1="checked"
	end if
	if Session("EPQ30503100")="2" then
		strEPQ30503100answer2="checked"
	end if
	if Session("EPQ30503100")="3" then
		strEPQ30503100answer3="checked"
	end if
	if Session("EPQ30503100")="4" then
		strEPQ30503100answer4="checked"
	end if
	if Session("EPQ30503100")="5" then
		strEPQ30503100answer5="checked"
	end if
	if Session("EPQ30503100")="0" then
		strEPQ30503100answer6="checked"
	end if
end if	

if Request.Form("ispostback")="1" then
	Session("EPQ31161070") = Request.Form("EPQ31161070")
	Session("EPQ31161080") = Request.Form("EPQ31161080")
	Session("EPQ31161090") = Request.Form("EPQ31161090")
	Session("EPQ31161100") = Request.Form("EPQ31161100")
	Session("EPQ30503000") = Request.Form("EPQ30503000")
	Session("EPQ30503100") = Request.Form("EPQ30503100")


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("SurveyVersion")="EPQ" then
	Session("Page")="19exposure"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="19exposure"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("SurveyVersion")="HEME" then
	Session("Page")="19exposure"
	Response.Redirect "cancerriskmaster.asp"
end if


if Session("SurveyVersion")="GI" then
	Session("Page")="19exposure"
	Response.Redirect "cancerriskmaster.asp"
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	Session("Page")="19exposure"
	Response.Redirect "cancerriskmaster.asp"
end if
end if

	if Session("THRC39400000")="1" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC39400000")="2" then
		Session("Page")="19b3"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31159000")="1" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31159000")="2" then
		Session("Page")="19b2"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("EPQ31158000")="1" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("EPQ31158000")="2" then
		Session("Page")="19b1"
		Response.Redirect "cancerriskmaster.asp"
	end if


	if Session("SurveyVersion")="Thoracic" then 
		Session("ReturnID")="1"
		Session("Page")="19b"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("SurveyVersion")="EPQ" then 
		Session("ReturnID")="1"
		Session("Page")="19"
		Response.Redirect "cancerriskmaster.asp"
	end if 

		Session("ReturnID")="1"
		Session("Page")="19"
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

	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="21c"
	Session("Page")="40"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
	end if
	end if


	if Session("SurveyVersion")="Thoracic" then 
		Session("Page")="21b"
	else
		Session("Page")="40"
	end if

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
</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">
    <form action="cancerrisk21.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

<div id='SpecialNote'>
One drink is equivalent to a 12-ounce beer, a 5-ounce glass of wine, or a drink with one shot of liquor (for example,  a 40 ounce beer would count as 3 drinks, or a cocktail with 2 shots would count as 2 drinks).
</div>
<br>
<% if Session("Gender")="M" then %>
	<fieldset>
		<legend class="QuestionBox">
How recently did you have more than 5 drinks containing alcohol in one day?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30503000" class="required" value="1" id="EPQ305030001" <%=strEPQ30503000answer1%>>
			<label for="EPQ305030001">Yesterday or today</label><br>
			<input type="radio" name="EPQ30503000" value="2" id="EPQ305030002" <%=strEPQ30503000answer2%>>
			<label for="EPQ305030002">In the past week</label><br>
			<input type="radio" name="EPQ30503000" value="3" id="EPQ305030003" <%=strEPQ30503000answer3%>>
			<label for="EPQ305030003">In the past month</label><br>
			<input type="radio" name="EPQ30503000" value="4" id="EPQ305030004" <%=strEPQ30503000answer4%>>
			<label for="EPQ305030004">In the past year</label><br>
			<input type="radio" name="EPQ30503000" value="5" id="EPQ305030005" <%=strEPQ30503000answer5%>>
			<label for="EPQ305030005">Longer than one year ago</label><br>
			<input type="radio" name="EPQ30503000" value="0" id="EPQ305030006" <%=strEPQ30503000answer6%>>
			<label for="EPQ305030006">Never</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>

<% end if %>

<% if Session("Gender")="F" then %>
	<fieldset>
		<legend class="QuestionBox">
			How recently did you have more than 4 drinks containing alcohol in one day?</legend>
		<div class="QuestionAnswersBox">
			<input type="radio" name="EPQ30503100" class="required" value="1" id="EPQ305031001" <%=strEPQ30503100answer1%>>
			<label for="EPQ305031001">Yesterday or today</label><br>
			<input type="radio" name="EPQ30503100" value="2" id="EPQ305031002" <%=strEPQ30503100answer2%>>
			<label for="EPQ305031002">In the past week</label><br>
			<input type="radio" name="EPQ30503100" value="3" id="EPQ305031003" <%=strEPQ30503100answer3%>>
			<label for="EPQ305031003">In the past month</label><br>
			<input type="radio" name="EPQ30503100" value="4" id="EPQ305031004" <%=strEPQ30503100answer4%>>
			<label for="EPQ305031004">In the past year</label><br>
			<input type="radio" name="EPQ30503100" value="5" id="EPQ305031005" <%=strEPQ30503100answer5%>>
			<label for="EPQ305030005">Longer than one year ago</label><br>
			<input type="radio" name="EPQ30503100" value="0" id="EPQ305031006" <%=strEPQ30503100answer6%>>
			<label for="EPQ305031006">Never</label><br>
		</div><!-- [ /#AnswerBox] -->
	<fieldset>

<% end if %>

<fieldset>
<div class='QuestionBox'>
<legend >
During the past 12 months how many days per month did you have at least one drink of any alcoholic beverage?<br>
	</legend>
</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31161070" value="0" id="EPQ311610701" class="required qTriggerOff qTriggerOff3" <%=strEPQ31161070answer1%>>
		<label for="EPQ311610701">No drinks in past year</label><br>
		<input type="radio" name="EPQ31161070" value="1" id="EPQ311610702" class="qTriggerOff qTrigger3" <%=strEPQ31161070answer2%>>
		<label for="EPQ311610702">Less than 1 day per month</label><br>
		<input type="radio" name="EPQ31161070" value="2" id="EPQ311610703" class="qTrigger qTrigger3" <%=strEPQ31161070answer3%>>
		<label for="EPQ311610703">1 day or more per month</label><br>
		<div class="hiddenQ">
		<input id="EPQ31161090" type="text" size="1" maxlength="2" name="EPQ31161090" class="daysPerMonth requiredIfBranchActive" value=<%=Session("EPQ31161090")%>> days per month<br>
		</div>
	</div>
  </fieldset>



  <fieldset>
  <div class="hiddenQ3">
  <div class="QuestionBox">


During the <b>past 12 months</b>, on the days when you drank, about how many drinks did you drink on average? <br>
    </div>
    <div class="QuestionAnswersBox">
	<legend></legend>      <input id="EPQ31161100" class="alcoholConsumption requiredIfBranchActive" type="text" size="2" maxlength="2" name="EPQ31161100" value=<%=Session("EPQ31161100")%>> number of drinks<br>

    </div>
  </div>
  </fieldset>




</div> 

<!-- [ /#formBlock ] -->
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
