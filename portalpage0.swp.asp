<!--#include file="include/moduleStatusFunctions.asp"-->
<!--#include file="include/savedSessionFunctions.asp"-->
<!--#include file="removesessions.asp"-->

<%

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

if Request.Form("ispostback") <> 1 then
	Session("MRN") = Request.Form("MRN")
	Session("PatientClick") = Request.Form("PatientClick")
	Session("PatientClick")=trim(Session("PatientClick"))&".000"
	dim strMRN
	strMRN=CStr(Session("MRN"))
	dim strAppointmentID
	strAppointmentID=Session("PatientClick")
	Session("strAppointmentID")=Session("PatientClick")
end if

if Request.Form("ispostback") <> 1 then

dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=WTFS1190\VISITMANAGER;UID=MirthConnect;PWD=M0$$i88;DATABASE=AssessmentDashboard"

dim strFirstName
dim strMiddleInitial
dim strLastName
dim strName

'dim enterProviderID
dim DOBMonth
dim DOBYear
dim DOBDay
	dim strDOBDay
	dim strDOBMonth
	dim strDOBYear

dim strPatientIDLabel
dim strPatientIDPrefix
dim SpanishInterviewSet
dim PID18
dim PID2
dim PV7
dim PV10
dim strHomeAreaCode
dim strHomePrefix
dim strHomeBody
dim strHomePhoneNumber
dim strAccountNumber

dim strAPPTMonth
dim strAPPTDay
dim strAPPTYear
dim strAppointmentDate
dim strAppointmentDate2
dim strDOBMatch
dim AppointmentGap
dim AppointmentGap2

'enterProviderID = Session("EnterProviderID")
'strPatientIDLabel = "PV7 ID Value for MD"
'strPatientIDPrefix = Session("PatientIDPrefix")


Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Session("StatusMsgTooFar")=""

	Dim strError
	strError = ""

	' Name



'Confirm Unique
														dim strSQLUnique
														dim strSQLUnique2

														dim dbConnectUnique

strMRN=Session("MRN")

strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCC'"



														set dbConnectUnique = Server.CreateObject("adodb.connection")
														dbConnectUnique.ConnectionString = strConnection

														dbConnectUnique.Open

														dim rsLastNameUnique
														dim rsLastNameCountUnique
														set rsLastNameUnique = Server.CreateObject("adodb.recordset")
														rsLastNameUnique.open strSQLUnique, dbConnectUnique


   If not rsLastNameUnique.EOF Then
		dim PatientCount
		Session("PatientCount") = rsLastNameUnique("TotalPatients")
   End If


if Session("PatientCount") > 100 then
Session("DuplicateFound")=1
Session("StatusMsg2") = "We have found more than one appointment.  Please enter your First Name."

Response.Redirect "portalerror.asp"

else
end if

'CONFIRM +30 or -1

										'				dbConnectUnique.Close

'APPOINTMENT CHECK
AppointmentGap= "select DATEDIFF(day, '"&Session("strAppointmentDate2")&"', GETDATE()) AS CheckAppointment from APPOINTMENTS WHERE AccountNumber= '" & strMRN & "' AND AppointmentDate2= '" & strAppointmentDate& "' AND HealthSystem = 'MCC'"
 

														set dbConnectUnique = Server.CreateObject("adodb.connection")
														dbConnectUnique.ConnectionString = strConnection

														dbConnectUnique.Open

														dim rsLastNameUnique2
														dim rsLastNameCountUnique2
														set rsLastNameUnique2 = Server.CreateObject("adodb.recordset")
														rsLastNameUnique2.open AppointmentGap, dbConnectUnique



If not rsLastNameUnique2.EOF Then
		Session("AppointmentGap2") = rsLastNameUnique2("CheckAppointment")

else
		Session("AppointmentGap2") = "unknown"
end if


if Session("AppointmentGap2") <> "unknown" then
if Session("AppointmentGap2") < -30 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooFar") = "Your Appointment is "&abs(Session("AppointmentGap2"))&" days away. We kindly ask you to complete this form within 30 days of your appointment."
Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Response.Redirect "portalerror.asp"
else
end if

if Session("AppointmentGap2") >  1 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooClose") = "Your Appointment was more than one day ago. We kindly ask you to complete this form 30 days prior to your next appointment."

Session("StatusMsg")=""
Session("StatusMsgTooFar")=""

Response.Redirect "portalerror.asp"

else
end if
end if


														dbConnectUnique.Close

														' Get all the providers from the db
														dim strSQL
														dim dbConnect



								strSQL = "select * from APPOINTMENTS WHERE AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCC' AND InternalID='"&Session("PatientClick")&"'"


														set dbConnect = Server.CreateObject("adodb.connection")
														dbConnect.ConnectionString = strConnection
														dbConnect.Open

														dim rsLastName
														set rsLastName = Server.CreateObject("adodb.recordset")
														rsLastName.open strSQL, dbConnect

if not rsLastName.eof then

														do until rsLastName.EOF
															dim idCustomer
															dim strItem
															idCustomer = rsLastName("ExternalID")

															strItem = rsLastName("LastName")&rsLastName("FirstName")
															strItem = strItem &rsLastName("ExternalID")&","
															strItem = strItem &rsLastName("InternalID")&","
															strItem = strItem &rsLastName("HospitalService")&","
															strItem = strItem &rsLastName("Location")&","
															strItem = strItem &rsLastName("AttendingDoctor")&","
															strItem = strItem &rsLastName("Sex")&","
															strItem = strItem &rsLastName("AppointmentDate2")&","
															strItem = strItem &rsLastName("HomeNumber")

'Session("strLastName")=rsLastName("LastName")
Session("strFirstName")=rsLastName("FirstName")
Session("FirstName")=strFirstName
Session("MiddleInitial")=strMiddleInitial
Session("MessageTime")=rsLastName("MessageTime")
Session("PID2")=rsLastName("AccountNumber")
Session("PID3")=rsLastName("AccountNumber")
Session("AppointmentID")=rsLastName("InternalID")
Session("ReturnURL")="http://www.moffitt.org"

Session("PID18") = Session("strAccountNumber")
Session("PV7") = rsLastName("AttendingDoctor")
Session("PV10") =rsLastName("HospitalService")
Session("Location") =rsLastName("Location")
Session("AppointmentLocation") =rsLastName("Location")
Session("HomeNumber") = rsLastName("HomeNumber")
Session("strGender") = rsLastName("Sex")
Session("strDOB") = rsLastName("DOB")
Session("strPatientID") = rsLastName("AccountNumber")
Session("LastName")=rsLastName("LastName")
Session("strLastName")=rsLastName("LastName")
Session("FirstName")=rsLastName("FirstName")
Session("DisplayAppointmentDate")=rsLastName("AppointmentDate2")

Session("strDOBYear")=Left(Session("strDOB"),4)
Session("strDOBDay")=Right(Session("strDOB"),2)
Session("strDOBMonth")=Mid(Session("strDOB"),5,2)

'Patient Age
dim PatientAge
dim AgeCheck

AgeCheck = CStr(Session("strDOBMonth")) + "/" + CStr(Session("strDOBDay")) + "/" + CStr(Session("strDOBYear"))
PatientAge=DateDiff("d",AgeCheck,Now())\365
Session("PatientAge")=PatientAge


Session("DOBMonth") = Session("strDOBMonth")
Session("DOBDay") = Session("strDOBDay")
Session("DOBYear") = Session("strDOBYear")


Session("strDISPLAYAPPTYear")=Left(Session("DisplayAppointmentDate"),4)

Session("strDISPLAYAPPTDay")=Mid(Session("DisplayAppointmentDate"),7,2)
Session("strDISPLAYAPPTMonth")=Mid(Session("DisplayAppointmentDate"),5,2)
Session("strDISPLAYAPPTHour")=Mid(Session("DisplayAppointmentDate"),9,2)
Session("strDISPLAYAPPTMinute")=Mid(Session("DisplayAppointmentDate"),11,2)

if CInt(Session("strDISPLAYAPPTHour")) > 12 then
Session("strDISPLAYAPPTHourCALC")=(CInt(Session("strDISPLAYAPPTHour"))-12)
else
Session("strDISPLAYAPPTHourCALC")=Session("strDISPLAYAPPTHour")
end if



													rsLastName.MoveNext
														loop

Session("MatchFound")=1
														rsLastName.Close



														dbConnect.Close
														set rsLastName = nothing
														set dbConnect = nothing


Session("Page")=1
'Session("AppointmentID")="TestAppt55MCC"
Session("TestMode")="2"
Session("KioskMode")="0"
Session("Version")=924

Session("PatientsName") = Session("FirstName")&" "&Session("LastName")
Session("PatientID")= Session("strPatientID")


dim dtnow
dtNow = now()

Session("AdministrationDateStart")= Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow),2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
Session("Gender") = Session("strGender")
Session("OriginalGender") = Session("strGender")

'Session("strDOB") = rsLastName("DOB")

if Session("AppointmentLocation")="THNE" then
Session("SurveyVersion")="Thoracic"
else
Session("SurveyVersion")="EPQ"
end if

if Session("AppointmentLocation")="BRST" then
	Session("DisplayLocation")="Breast clinic"	
				end if
if Session("AppointmentLocation")="BMTC" then
	Session("DisplayLocation")="BMT Clinic"
					end if
if Session("AppointmentLocation")="CUTA" then
	Session("DisplayLocation")="Cutaneous"
					end if
if Session("AppointmentLocation")="ECRU" then
	Session("DisplayLocation")="Endocrine"
					end if
if Session("AppointmentLocation")="EPV" then
	Session("DisplayLocation")="Endo Pain Vads"
					end if
if Session("AppointmentLocation")="GI" then
	Session("DisplayLocation")="GI Clinic"	
				end if
if Session("AppointmentLocation")="GU" then
	Session("DisplayLocation")="GU clinic"	
				end if
if Session("AppointmentLocation")="HEMM" then
	Session("DisplayLocation")="Hematology"
					end if
if Session("AppointmentLocation")="H-N" then
	Session("DisplayLocation")="Head and neck clinic"
					end if
if Session("AppointmentLocation")="INFU" then
	Session("DisplayLocation")="Infusion"	
				end if
if Session("AppointmentLocation")="LCS" then
	Session("DisplayLocation")="Lifetime cancer"	
				end if
if Session("AppointmentLocation")="MSMO" then
	Session("DisplayLocation")="MED ONC SOUTH"
					end if
if Session("AppointmentLocation")="MSMS" then
	Session("DisplayLocation")="MED SURG SOUTH"
					end if
if Session("AppointmentLocation")="MSRD" then
	Session("DisplayLocation")="RADIOLOGY SOUTH"
end if
if Session("AppointmentLocation")="MSRT" then
	Session("DisplayLocation")="RAD THERAPY SO"
					end if
if Session("AppointmentLocation")="NEUR" then
	Session("DisplayLocation")="Neurology"
					end if
if Session("AppointmentLocation")="NMED" then
	Session("DisplayLocation")="NUCLEAR MEDICINE"
					end if
if Session("AppointmentLocation")="PALL" then
	Session("DisplayLocation")="PALLIATIVE CARE"
					end if
if Session("AppointmentLocation")="PAT" then
	Session("DisplayLocation")="PRE ANESTHESIA TESTING"
					end if
if Session("AppointmentLocation")="PET" then
	Session("DisplayLocation")="POSITRON EMISSION TOMOGRAPHY"
					end if
if Session("AppointmentLocation")="PHOT" then
	Session("DisplayLocation")="PHOTOPHERESIS"
					end if
if Session("AppointmentLocation")="PICC" then
	Session("DisplayLocation")="PICC"	
				end if
if Session("AppointmentLocation")="PSYC" then
	Session("DisplayLocation")="PSYCHOSOCIAL ONCOLOGY"
					end if
if Session("AppointmentLocation")="PULM" then
	Session("DisplayLocation")="PULMONARY"	
				end if
if Session("AppointmentLocation")="RAD" then
	Session("DisplayLocation")="RADIOLOGY"	
				end if
if Session("AppointmentLocation")="RESP" then
	Session("DisplayLocation")="RESPIRATORY"
					end if
if Session("AppointmentLocation")="SARC" then
	Session("DisplayLocation")="SARCOMA"	
				end if
if Session("AppointmentLocation")="SPCH" then
	Session("DisplayLocation")="SPEECH"	
				end if
if Session("AppointmentLocation")="SPRM" then
	Session("DisplayLocation")="SPRM"	
				end if
if Session("AppointmentLocation")="SRAD" then
	Session("DisplayLocation")="SENIOR ADULT"		
			end if
if Session("AppointmentLocation")="THNE" then
	Session("DisplayLocation")="THORACIC ONCOLOGY"
					end if
if Session("AppointmentLocation")="ULSD" then
	Session("DisplayLocation")="ULTRASOUND"	
				end if
if Session("AppointmentLocation")="ULSD_BRST" then
	Session("DisplayLocation")="ULTRASOUND_BRST"	
				end if
if Session("AppointmentLocation")="ULSD_RAD" then
	Session("DisplayLocation")="ULTRASOUND_RAD"
					end if
if Session("AppointmentLocation")="WDC" then
	Session("DisplayLocation")="WOMEN'S DIAGNOSTIC"	
				end if
if Session("AppointmentLocation")="XRT" then
	Session("DisplayLocation")="RADIATION ONCOLOGY"	
				end if
end if
end if


if Request.Form("ispostback") = 1 then


	Session("KIOSKCONFIRMED") = Request.Form("KIOSKCONFIRMED")

	if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Response.Redirect "portalpage0.asp"
	end if

if Request.Form("ContinueID")="1" then
if Session("KIOSKCONFIRMED")="1" then

	Dim assessmentDataId, serializedSession
	strAppointmentID = Session("strAppointmentID")
	assessmentDataId = assessmentDataIdFromAppointmentId(strAppointmentID)
	Session("assessmentDataId") = assessmentDataId
	serializedSession = getSavedSession(assessmentDataId)
	if (len(serializedSession) > 0) then
	  loadSerializedSession(serializedSession)
	  Response.Redirect Session("lastPage")
	else

	  initializeModuleStatusRecords(strAppointmentID)

	  ' Redirect to first page
	Session("Page")="1"
	Response.Redirect "demographicsmaster.asp"
	end if
end if
	if Session("KIOSKCONFIRMED")="2" then
			Session("Page")=""
			Response.Redirect "portalerror.asp"
	end if

end if
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

<script> 
function refresh() 
{ 
window.location.reload(); 
} 
</script> 


</head>
<body>

<div id="header" style="display: block">
</div>

<div id="wrapper">


<div id="formWrapper">

<div id="formBlock">
	<div id="SpecialNote">
Find Your Appointment<br>
	</div>

    <form action="https://www.visitmanagertool.com/UAT/portalpage0.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br>
	<div class="QuestionBox">
Is this information correct for your appointment?
	</div>

	<div class="QuestionAnswersBox">
		<input type="radio" name="KIOSKCONFIRMED" value="1" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer1%>>
		<label for="EPQ31155000">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="KIOSKCONFIRMED" value="2" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer2%>>
		<label for="EPQ31155000">No</label>&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
Your Name:
<b>
<%
= Session("strLastName")
%>
,
<%
= Session("FirstName")
%>
</b>
<BR>
Your Medical Record Number:
<b>
<%
=Session("MRN")
%>
</b>

<BR>
Your Location:
<b><%
=Session("DisplayLocation")
%>
</b>
<BR>
Your Appointment Date:
<b><%
=Session("strDISPLAYAPPTMonth")
%>
/
<%
=Session("strDISPLAYAPPTDay")
%>
/
<%
=Session("strDISPLAYAPPTYear")
%>
</b>

<BR>
Your Appointment Time:
<b><%
=Session("strDISPLAYAPPTHourCALC")
%>
:
<%
=Session("strDISPLAYAPPTMinute")
%>
&nbsp;

<%
if CInt(Session("strDISPLAYAPPTHour")) > 12 then
%>
PM
<%
end if
%>

<%
if CInt(Session("strDISPLAYAPPTHour")) <= 12 then
%>
AM
<%
end if
%>

</b>

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