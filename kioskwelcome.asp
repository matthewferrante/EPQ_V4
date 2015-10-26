<!--#include file="removesessions.asp"-->
<%
Session("PatientLocation")=Request.QueryString("LC")

Session("sessionState")="loggingIn"
Session("KIOSKCONFIRMED")=""
Session("DemographicsSectionStatus")=""

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

'dim enterProviderID

dim strAPPTMonth
dim strAPPTDay
dim strAPPTYear
dim strAppointmentDate
dim strAppointmentDate2
dim strDOBMatch
dim AppointmentGap
dim AppointmentGap2


strAPPTMonth = ""
strAPPTDay= ""
strAPPTYear= ""
strAppointmentDate= ""
strAppointmentDate2= ""
strDOBMatch= ""
AppointmentGap= ""
AppointmentGap2= ""
Session("strLast4SSN")= ""
Session("StatusMsg")= ""
Session("StatusMsgDate")= ""
Session("StatusMsg2")= ""
Session("StatusMsgTooClose")=""
Session("StatusMsgTooFar")=""

Session("LocationID")= ""

if Request.Form("ispostback") = 1 then

	strDOBDay = ""
	strDOBMonth = ""
	strDOBYear = ""


	strAPPTDay = ""
	strAPPTMonth = ""
	strAPPTYear = ""

	strDOBDay = ""
	strDOBMonth = ""
	strDOBYear = ""
	Session("strDOBDay")=strDOBDay
	Session("strDOBMonth")=strDOBMonth
	Session("strDOBYear")=strDOBYear
	strDOBMatch=strDOBYear&strDOBMonth&strDOBDay

	Session("strAPPTDay")=strAPPTDay
	Session("strAPPTMonth")=strAPPTMonth
	Session("strAPPTYear")=strAPPTYear

	Session("strLastName")=""
	strLastName=""


Session("strFirstName")=""
Session("FirstName")=""
Session("MiddleInitial")=""
Session("MessageTime")=""
Session("PID2")=""
Session("PID3")=""
Session("PID18") = ""
Session("PV7") = ""
Session("PV10") =""
Session("Location") =""
Session("AppointmentLocation") =""

Session("HomeNumber") = ""
Session("strGender") = ""
'Session("strDOB") = ""
Session("strPatientID") = ""
'Session("LastName")=""
'Session("strLastName")=""
Session("FirstName")=""

Session("strDOBYear")=""
Session("strDOBDay")=""
Session("strDOBMonth")=""

Session("DOBMonth") = ""
Session("DOBDay") = ""
Session("DOBYear") = ""


Session("strDOBDay")=""
Session("strDOBMonth")=""
Session("strDOBYear")=""

Session("MatchFound")=""
				

Session("Page")=1
Session("TestMode")="2"
Session("KioskMode")="1"
Session("Version")=924
Session("PatientLocation")=Request.QueryString("LC")
Session("PatientLocation")=Request.Form("PatientLocation")

Session("PatientsName") = ""
Session("PatientID")= ""

dim dtnow
dtNow = now()

Session("AdministrationDateStart")= ""
Session("Gender") = ""


		Response.Redirect "kioskpage0.asp"

else



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

<script src="scripts_js/jquery-1.3.2.js" type="text/javascript"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
	 <!--#include file="functionbox.asp"-->
		-->
		</script>


</head>
<body>

<div id="wrapper">
<div id="formWrapper">
<div id="formBlock">



    <form action="kioskwelcome.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
			<input type="hidden" name="kioskmode" value="1" ID="ispostback">
			<input type="hidden" name="PatientLocation" value="<%=Session("PatientLocation")%>" ID="ispostback">


<!-- [Question boxes ] -->		
<br>
	<div class="QuestionBox">
<B>Welcome to the Patient Questionnaire!</B><br>
Please click Continue to Proceed
	</div>

</div> <!-- [ /#formBlock ] -->
	
	<div id="buttonBox">
	 <!--#include file="buttonboxbegin.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu2.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>