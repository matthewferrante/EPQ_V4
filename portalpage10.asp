<!--#include file="include/moduleStatusFunctions.asp"-->
<!--#include file="include/savedSessionFunctions.asp"-->
<!--#include file="removesessions.asp"-->

<%
Session("sessionState")="loggingIn"

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

if Session("ProductionMode")="1" then 

strSQLUnique = "select COUNT (*) AS ThoracicAppts from APPOINTMENTS WHERE AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCC' and Location= 'THNE' "

else 

strSQLUnique = "select COUNT (*) AS ThoracicAppts from APPOINTMENTS WHERE AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCCTEST' and Location= 'THNE' "

end if


														set dbConnectUnique = Server.CreateObject("adodb.connection")
														dbConnectUnique.ConnectionString = strConnection

														dbConnectUnique.Open

														dim rsLastNameUnique
														dim rsLastNameCountUnique
														set rsLastNameUnique = Server.CreateObject("adodb.recordset")
														rsLastNameUnique.open strSQLUnique, dbConnectUnique


   If not rsLastNameUnique.EOF Then
		dim ThoracicPatientCount
		dim PatientCount
		Session("ThoracicPatientCount") = rsLastNameUnique("ThoracicAppts")
	   End If


if Session("PatientCount") > 2 then
Session("DuplicateFound")=1
Session("StatusMsg2") = "We have found more than one appointment.  Please enter your First Name."

Response.Redirect "portalerror.asp"

else
end if


													dbConnectUnique.Close

														' Get all the providers from the db
														dim strSQL
														dim dbConnect
 


if Session("ProductionMode")="1" then 

If Session("ThoracicPatientCount") > 0 then

	strSQL = "select top 1 * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCC' AND Location= 'THNE' ORDER BY AppointmentDate "
else
	strSQL = "select top 1 * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCC' ORDER BY AppointmentDate"
end if

else
If Session("ThoracicPatientCount") > 0 then
	strSQL = "select top 1 * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCCTEST' AND Location= 'THNE' ORDER BY AppointmentDate"
else
	strSQL = "select top 1 * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND AccountNumber = '" & strMRN & "' AND HealthSystem = 'MCCTEST' ORDER BY AppointmentDate"
end if

end if

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
strAppointmentID=rsLastName("InternalID")
Session("strAppointmentID")=rsLastName("InternalID")
Session("ReturnURL")="http://www.moffitt.org"

Session("PID18") = Session("strAccountNumber")
Session("PV7") = rsLastName("AttendingDoctor")
Session("AttendingDoctor") = rsLastName("AttendingDoctor")
Session("PV10") =rsLastName("HospitalService")
Session("Location") =rsLastName("Location")
Session("AppointmentLocation") =rsLastName("Location")
Session("AppointmentType") =rsLastName("AppointmentType")
Session("AppointmentTypeCode") =rsLastName("AppointmentTypeCode2")
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

if len(Session("LastName")) < 1 then

Response.Redirect "kioskportal.asp"

end if

dim dtnow
dtNow = now()


dim hour_value
hour_value=now()
hourofday=hour(hour_value)

if hourofday=23 then 
	Session("AdministrationDateStart") = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow)+1,2) & right("00",2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
else
	Session("AdministrationDateStart") = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
end if


Session("Gender") = Session("strGender")
Session("OriginalGender") = Session("strGender")

'Session("strDOB") = rsLastName("DOB")


if Session("Location")="THNE" then
	Session("SurveyVersion")="Thoracic"
else
	Session("SurveyVersion")="EPQ"
end if

if Session("ProductionModeSpoke")="C" then
	if Session("Location")="CUTA" then
		Session("SurveyVersion")="Cutaneous"
	end if
	if Session("AppointmentType")="MIP CUTA NP" then
		Session("SurveyVersion")="Cutaneous"
	end if
	if Session("AppointmentType")="CRU CUTA NP" then
		Session("SurveyVersion")="Cutaneous"
	end if

end if


if Session("ProductionModeSpoke2")="GU" then
	if Session("Location")="GU" then
		Session("SurveyVersion")="GU"
	end if
	if Session("AppointmentType")="MIP GU NP" then
		Session("SurveyVersion")="GU"
	end if
	if Session("AppointmentType")="CRU GU NP" then
		Session("SurveyVersion")="GU"
	end if

end if

if Session("ProductionModeSpoke4")="HEME" then
	if Session("Location")="HEMM" then
		Session("SurveyVersion")="HEME"
	end if
	if Session("Location")="BMTC" then
		Session("SurveyVersion")="HEME"
	end if
	if Session("Location")="SRAD" then
		Session("SurveyVersion")="HEME"
	end if
end if


	if Session("Location")="GI" then
		Session("SurveyVersion")="GI"
	end if
	if Session("AppointmentType")="GI NP COLORECTAL HIGH RSK HERED" then
		Session("SurveyVersion")="GI"
	end if
	if Session("AppointmentType")="MIP GI NP" then
		Session("SurveyVersion")="GI"
	end if
	if Session("AppointmentType")="MSP GI NP" then
		Session("SurveyVersion")="GI"
	end if

	if Session("AppointmentType")="MSP GI SURV NP" then
		Session("SurveyVersion")="GI"
	end if

	if Session("AppointmentType")="CRU GI NP" then
		Session("SurveyVersion")="GI"
	end if
	'if Session("AppointmentType")="THOR GI NP" then
	'	Session("SurveyVersion")="GI"
	'end if
	'if Session("AppointmentType")="THOR NP GI" then
	'	Session("SurveyVersion")="GI"
	'end if


if Session("AppointmentType")="MIP THOR NP" then
	Session("SurveyVersion")="Thoracic"
end if
if Session("AppointmentType")="CRU THOR NP" then
	Session("SurveyVersion")="Thoracic"
end if
if Session("AppointmentType")="MIP THOR HN NP" then
	Session("SurveyVersion")="Thoracic"
end if
if Session("AppointmentType")="THOR NP LUNG SCREENING" then
	Session("SurveyVersion")="Thoracic"
end if
if Session("AppointmentType")="MIP THOR NP LUNG SCREENING" then
	Session("SurveyVersion")="Thoracic"
end if

%>
<!--#include file="genericappointment.asp"-->
<%

if Session("AppointmentLocation")="MBST" then
	Session("DisplayLocation")="Melanoma, Brain, and Spinal Tumor Clinic"	
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

if Session("AppointmentLocation")="ECRI" then
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
	Session("DisplayLocation")="Lifetime Cancer Screening"	
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
if Session("AppointmentLocation")="CWIP" then
	Session("DisplayLocation")="MIP CLINIC WING"	
				end if
if Session("AppointmentLocation")="BDIP" then
	Session("DisplayLocation")="MIP BLOOD DRAW"	
				end if
if Session("AppointmentLocation")="RAIP" then
	Session("DisplayLocation")="MIP RADIATION ONCOLOGY"	
				end if
if Session("AppointmentLocation")="ICIP" then
	Session("DisplayLocation")="MIP INFUSION CENTER"	
				end if
if Session("AppointmentLocation")="BOIP" then
	Session("DisplayLocation")="MIP BUSINESS OFFICE"	
				end if
if Session("AppointmentLocation")="RHIP" then
	Session("DisplayLocation")="MIP REHAB SERVICES"	
				end if
if Session("AppointmentLocation")="SP" then
	Session("DisplayLocation")="SCREENING AND PREVENTION"	
				end if
if Session("AppointmentLocation")="CRDO" then
	Session("DisplayLocation")="CARDIO ONCOLOGY"	
end if

if Session("AppointmentLocation")="BRS1" then
	Session("DisplayLocation")="WOMEN'S BREAST"	
				end if
if Session("AppointmentLocation")="RHAB" then
	Session("DisplayLocation")="REHAB"	
				end if
if Session("AppointmentLocation")="ITPN" then
	Session("DisplayLocation")="INTERVENTIONAL PAIN"	
				end if
if Session("AppointmentLocation")="ITGM" then
	Session("DisplayLocation")="INTEGRATIVE MEDICINE"	
				end if
if Session("AppointmentLocation")="AIM" then
	Session("DisplayLocation")="AMBULATORY INTERNAL MEDICINE"	
				end if
if Session("AppointmentLocation")="CUMK" then
	Session("DisplayLocation")="MCKINLEY CUTANEOUS"
				end if
if Session("AppointmentLocation")="BRMK" then
	Session("DisplayLocation")="MCKINLEY WOMEN’s BREAST"	
				end if


end if
end if


if Request.Form("ispostback") = 1 then


	Session("KIOSKCONFIRMED") = Request.Form("KIOSKCONFIRMED")

	if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Response.Redirect "portalpage10.asp"
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
    Session("sessionState") = "restored"
	  Response.Redirect Session("lastPage")
	else

	  initializeModuleStatusRecords(strAppointmentID)

	  ' Redirect to first page
	Session("Page")="1"
  Session("sessionState") = "initialized"
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

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js"></script>
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

    <form action="portalpage10.asp" method="post" id="formQuestion" name="formQuestion">
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

<fieldset><legend></legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="KIOSKCONFIRMED" value="1" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer1%>>
		<label for="EPQ31155000">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="KIOSKCONFIRMED" value="2" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer2%>>
		<label for="EPQ31155000">No</label>&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</fieldset>
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
if CInt(Session("strDISPLAYAPPTHour")) >= 12 then
%>
PM
<%
end if
%>

<%
if CInt(Session("strDISPLAYAPPTHour")) < 12 then
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