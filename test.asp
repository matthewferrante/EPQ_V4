
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31101000") = Request.Form("EPQ31101000")
	Session("EPQ31101000b") = Request.Form("EPQ31101000b")
	Session("EPQ31102000") = Request.Form("EPQ31102000")
	Session("EPQ31103000") = Request.Form("EPQ31103000")

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		If Session("Gender")="F" then
		Session("Page")=9
		else
		Session("Page")=6
		End if
		Session("CancerRiskSectionStatus")=""

		Response.Redirect "cancerscreeningmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31101000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31101000b")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31102000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31103000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="2"
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
		<img src="images/moffitt.gif" />
</div>

<div id="wrapper">


<div id="formWrapper">
	<div id="SectionHeader">
	 <!--#include file="sectionheader.asp"-->
	</div>
	<div id="DirectionsHeader">
	Please answer the following questions and click CONTINUE
	</div>
	<div id="SpecialNote">
This section contains questions that will help us get a more complete picture of your weight history. Please complete the following blanks with an answer that best describes you.
	</div>


<div id="formBlock">


    <form action="cancerrisk1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QuestionBox">

	</div>

	<div class="QuestionAnswersBox">
How tall are you? 
<input id="EPQ31101000" type="text" size="5" name="EPQ31101000" value=<%=Session("EPQ31101000")%>>
Feet 
&nbsp;&nbsp;&nbsp;&nbsp;<input id="EPQ31101000b" type="text" size="5" name="EPQ31101000b" value=<%=Session("EPQ31101000b")%>>
Inches

	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
	</div>
	<div class="QuestionAnswersBox">
How much do you currently weigh? 
<input id="EPQ31102000" type="text" size="5" name="EPQ31102000" value=<%=Session("EPQ31102000")%>>
Pounds

	</div><!-- [ /#AnswerBox] -->
	<div class="QuestionBox">
	</div>
	<div class="QuestionAnswersBox">
How much did you weigh one year ago? 
<input id="EPQ31103000" type="text" size="5" name="EPQ31103000" value=<%=Session("EPQ31103000")%>>
Pounds

	</div><!-- [ /#AnswerBox] -->




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
