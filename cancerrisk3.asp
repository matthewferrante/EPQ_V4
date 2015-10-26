
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31104000b") ="0" then
		strEPQ31104000b="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31104000") = Request.Form("EPQ31104000")
	Session("EPQ31104000b") = Request.Form("EPQ31104000b")
	Session("EPQ31105000") = Request.Form("EPQ31105000")
	Session("EPQ31105000b") = Request.Form("EPQ31105000b")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31104000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31104000b")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31105000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31105000b")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="4"
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
	<div id="SpecialNote">
Think about the past twelve months and all the <U>vigorous</u> activities that you did in a typical week (e.g., <u>7 days).</u><br><br>   <u>Vigorous</u> physical activities refer to activities that take hard physical effort and make you breathe much harder than normal. Think only about those physical activities that you did for at least 10 minutes at a time.
	</div>
<br>

    <form action="cancerrisk3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
During a typical 7-day week in the past 12 months, on how many days did you do <u>vigorous</u> physical activities like<br> heavy lifting, digging, fast-paced dancing, aerobics, singles tennis, freestyle swimming, running, or fast bicycling?<br> Do <u>not</u> include walking.<br>
	</legend>

	<div class="QuestionAnswersBox eitherNegativeResponseOrInput">
<input id="EPQ31104000" type="text" size="1" maxlength="1" name="EPQ31104000" class="daysPerWeek qTrigger" value=<%=Session("EPQ31104000")%>>
days per week
&nbsp;&nbsp;&nbsp;&nbsp;<input id="EPQ31104000b" type="radio" name="EPQ31104000b" value="0" class="qTriggerOff" <%=strEPQ31104000b%>>
No vigorous physical activities
	</div><!-- [ /#AnswerBox] -->   </fieldset>

<div class="hiddenQ">
	<fieldset><legend class='QuestionBox'>
How much time did you usually spend doing vigorous physical activities on one of those days?<br>
	</legend>
	<div class="QuestionAnswersBox atLeastOneIfBranchActive">
<input id="EPQ31105000" type="text" size="2" maxlength="2" name="EPQ31105000" class="hours" value=<%=Session("EPQ31105000")%>>
hours per day
<input id="EPQ31105000b" type="text" size="2" maxlength="2" name="EPQ31105000b" class="minutes" value=<%=Session("EPQ31105000b")%>>
minutes per day
	</div><!-- [ /#AnswerBox] -->   </fieldset>
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
