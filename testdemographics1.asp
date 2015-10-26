
<%

Session("VisitBackgroundSectionStatus")= ""
Session("PersonalHistoryCancerSectionStatus")= "" 
Session("PastMedicalHistorySectionStatus")= ""
Session("CurrentSymptomsSectionStatus")=""
Session("WomensRiskScreeningSectionStatus")= "" 
Session("PastSurgicalHistorySectionStatus")= "" 
Session("FamilyHistoryCancerSectionStatus")= "" 
Session("FamilyHistorySectionStatus")= ""
Session("CancerScreeningSectionStatus")= ""
Session("CancerRiskSectionStatus")= ""
Session("PsychosocialSectionStatus")= ""
Session("QOLSectionStatus")= ""



Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	
	if Session("Gender")="F" then
		strEPQ30101000no="checked"
	else
		strEPQ30101000yes="checked"
	end if

	if Session("EPQ30102000")="1" then
		strEPQ30102000yes="checked"
	end if
	if Session("EPQ30102000")="0" then
		strEPQ30102000no="checked"
	end if

	if Session("EPQ30103000")="1" then
		strEPQ30103000white="checked"
	end if
	if Session("EPQ30103000")="2" then
		strEPQ30103000black="checked"
	end if
	if Session("EPQ30103000")="3" then
		strEPQ30103000asian="checked"
	end if
	if Session("EPQ30103000")="4" then
		strEPQ30103000hawaiian="checked"
	end if
	if Session("EPQ30103000")="5" then
		strEPQ30103000indian="checked"
	end if
	if Session("EPQ30103000")="6" then
		strEPQ30103000other="checked"
	end if
	if Session("EPQ30103000")="88" then
		strEPQ30103000unknown="checked"
	end if
	if Session("EPQ30103000")="99" then
		strEPQ30103000prefer="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30101000string")= ""
	Session("EPQ30102000string")= ""
	Session("EPQ30103000string")= ""

	Session("EPQ30101000") = Request.Form("EPQ30101000")
	Session("Gender") = Request.Form("EPQ30101000")

	if Session("Gender") = "1" then 
		Session("Gender")= "M"
	else
		Session("Gender")= "F"
	end if


	if Session("EPQ30101000") = "1" then 
		Session("EPQ30101000string")= "Male"
	else
		Session("EPQ30101000string")= "Female"
	end if

	Session("EPQ30102000") = Request.Form("EPQ30102000")

	if Session("EPQ30102000") = "1" then 
		Session("EPQ30102000string")= "Hispanic"
	end if
	if Session("EPQ30102000") = "0" then 
		Session("EPQ30102000string")= "Non Hispanic"
	end if


	Session("EPQ30103000") = Request.Form("EPQ30103000")
	Session("EPQ30103001") = Request.Form("EPQ30103001")

	if Session("EPQ30103000") = "1" then 
		Session("EPQ30103000string")= "White"
	end if
	if Session("EPQ30103000") = "2" then 
		Session("EPQ30103000string")= "Black"
	end if
	if Session("EPQ30103000") = "3" then 
		Session("EPQ30103000string")= "Asian"
	end if
	if Session("EPQ30103000") = "4" then 
		Session("strEPQ30103000string")= "Native Hawaiian or Other Pacific Islander"
	end if
	if Session("EPQ30103000") = "5" then 
		Session("EPQ30103000string")= "Amer Ind / Alaska Nat"
	end if
	if Session("EPQ30103000") = "6" then 
		Session("EPQ30103000string")= Session("EPQ30103001")
	end if
	if Session("EPQ30103000") = "88" then 
		Session("EPQ30103000string")= "Unknown"
	end if
	if Session("EPQ30103000") = "99" then 
		Session("EPQ30103000string")= "Race Answer Declined"
	end if


end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30101000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30102000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30103000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30102000")="1" then
		Session("Page")="1b"
	else
	Session("Page")="2"
	end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "demographicsmaster.asp"
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


    <form action="demographics1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
	<div class="QuestionBox">
		What is your gender:<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30101000" value="1" id="EPQ30101000" <%=strEPQ30101000yes%>>
		<label for="EPQ30101000">Male</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30101000" value="2" id="EPQ30101000" <%=strEPQ30101000no%>>
		<label for="EPQ30101000">Female</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
		Do you consider yourself Hispanic or Latino?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30102000" value="1" id="EPQ30102000" <%=strEPQ30102000yes%>>
		<label for="EPQ30102000">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30102000" value="0" id="EPQ30102000" <%=strEPQ30102000no%>>
		<label for="EPQ30102000">No</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
		Which one of these groups would you say best represents your race? (Mark only one)<br>
	</div>
	<div class="QuestionAnswersBox">
		<span class="column1">
		<input type="radio" name="EPQ30103000" value="1" id="EPQ30103000" <%=strEPQ30103000white%>>
		<label for="EPQ30103000">White</label><br>
		<input type="radio" name="EPQ30103000" value="3" id="EPQ30103000" <%=strEPQ30103000asian%>>
		<label for="EPQ30103000">Asian</label><br>
		<input type="radio" name="EPQ30103000" value="5" id="EPQ30103000" <%=strEPQ30103000indian%>>
		<label for="EPQ30103000">American Indian or Alaska Native</label><br>
		<input type="radio" name="EPQ30103000" value="6" id="EPQ30103000" <%=strEPQ30103000other%>>
		<label for="EPQ30103000">Other, specify: </label>
		<input id="EPQ30103001" type="text" size="10" name="EPQ30103001" value=<%=Session("EPQ30103001")%> ><br>
		<input type="radio" name="EPQ30103000" value="99" id="EPQ30103000" <%=strEPQ30103000prefer%>>
		<label for="EPQ30103000">Prefer not to answer</label><br>
		</span>
		<span class="column2">
		<input type="radio" name="EPQ30103000" value="2" id="EPQ30103000" <%=strEPQ30103000black%>>
		<label for="EPQ30103000">Black or African American</label><br>
		<input type="radio" name="EPQ30103000" value="4" id="EPQ30103000" <%=strEPQ30103000hawaiian%>>
		<label for="EPQ30103000">Native Hawaiian or Other Pacific Islander</label><br>
		<input type="radio" name="EPQ30103000" value="88" id="EPQ30103000" <%=strEPQ30103000unknown%>>
		<label for="EPQ30103000">Don't know / Not sure</label><br>
		</span>
	</div><!-- [ /#AnswerBox] -->
		<span class="column5">&nbsp;
		</span>

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
