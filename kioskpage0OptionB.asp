<!--#include file="removesessions.asp"-->
<!--#include file="include/productionmode.asp"-->

<%
dim StatusMsgDate
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

dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=WTFS1190\VISITMANAGER;UID=MirthConnect;PWD=M0$$i88;DATABASE=AssessmentDashboard"



dim strFirstName
dim strMiddleInitial
dim strLastName
dim strName
dim strLocationID
%>

<% '$Revision: 3 $ %>
<%

'dim enterProviderID

	dim strDOBDay
	dim strDOBMonth
	dim strDOBYear

dim DOBMonth
dim DOBYear
dim DOBDay
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
dim AppointmentType
dim strDOBMatch
dim AppointmentGap
dim AppointmentGap2

'enterProviderID = Session("EnterProviderID")
'strPatientIDLabel = "PV7 ID Value for MD"
'strPatientIDPrefix = Session("PatientIDPrefix")

dim bInputPatientSSN
if Session("InputPatientSSN") = 1 then
	bInputPatientSSN = true
else
	bInputPatientSSN = false
end if


if Request.Form("ispostback") = 1 then

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

	if Session("KioskMode")="2" then 
		Session("ReturnURL")="../wysewelcome.asp?LC="&Session("PatientLocation")
		Response.redirect Session("ReturnURL")
	end if

	if Session("KioskMode")="1" then 
		Session("ReturnURL")="../kioskwelcome.asp?LC="&Session("PatientLocation")
		Response.redirect Session("ReturnURL")
	end if

		Response.Redirect "kioskwelcome.asp"
end if


Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Session("StatusMsgTooFar")=""

	Dim strError
	strError = ""

	' Patient ID
	dim strPatientID
	strPatientID = Request.Form("txtPatientID")
	Session("ProviderID")=strPatientID

	' Name


	'strLastName = Request.Form("txtLastName")
	'strFirstName = Request.Form("txtFirstName")
	'Session("LastName") = Request.Form("txtLastName")
	'Session("FirstName")= Request.Form("txtFirstName")

	strLocationID = Session("PatientLocation")
	Session("LocationID")=strLocationID
	strDOBDay = Request.Form("txtDOBDay")
	strDOBMonth = Request.Form("txtDOBMonth")
	strDOBYear = Request.Form("txtDOBYear")

	'Session("strDOBDay")=strDOBDay
	'Session("strDOBMonth")=strDOBMonth
	'Session("strDOBYear")=strDOBYear

	strAPPTDay = Request.Form("txtAPPTDay")
	strAPPTMonth = Request.Form("txtAPPTMonth")
	strAPPTYear = Request.Form("txtAPPTYear")

	strDOBDay = Request.Form("txtAPPTDay")
	strDOBMonth = Request.Form("txtAPPTMonth")
	strDOBYear = Request.Form("txtAPPTYear")
	Session("strDOBDay")=strDOBDay
	Session("strDOBMonth")=strDOBMonth
	Session("strDOBYear")=strDOBYear
	strDOBMatch=strDOBYear&strDOBMonth&strDOBDay

'Patient Age
dim PatientAge
dim AgeCheck

AgeCheck = CStr(Session("strDOBMonth")) + "/" + CStr(Session("strDOBDay")) + "/" + CStr(Session("strDOBYear"))

dim AgeCheck2
AgeCheck2 = ""&CStr(Session("strDOBDay")) + "/" + CStr(Session("strDOBMonth")) + "/" + CStr(Session("strDOBYear"))&""

if isDate(AgeCheck2) then
Session("StatusMsgDate")=""
else
Session("StatusMsgDate")="Please enter a valid date"
Response.Redirect "kioskpage0.asp"
end if
       
PatientAge=DateDiff("yyyy",AgeCheck,Now())
Session("PatientAge")=PatientAge

	Session("strAPPTDay")=strAPPTDay
	Session("strAPPTMonth")=strAPPTMonth
	Session("strAPPTYear")=strAPPTYear

if Session("strAPPTYear")="" then
strApptYear="2000"
end if
if Session("strAPPTMonth")="" then
strApptMonth="06"
end if

if Session("strAPPTDay")="" then
strApptDay="01"
end if


	strHomeAreaCode=Request.Form("txtHomeAreaCode")
	strHomePrefix=Request.Form("txtHomePrefix")
	strHomeBody=Request.Form("txtHomeBody")
	Session("strLastName")=Request.Form("txtLastName")
	strLastName=Request.Form("txtLastName")
	strLastName=Replace(strLastName,"'","''")
	strLastName=Ucase(strLastName)
	Session("strLastName")=UCase(Session("strLastName"))

	Session("strHomeAreaCode")=strHomeAreaCode
	Session("strHomePrefix")=strHomePrefix
	Session("strHomeBody")=strHomeBody


	strHomePhoneNumber=strHomeAreaCode&strHomePrefix&strHomeBody
	Session("strHomePhoneNumber")=strHomeAreaCode&strHomePrefix&strHomeBody



	strMiddleInitial = Request.Form("txtMiddleInitial")

'Confirm Unique
														dim strSQLUnique
														dim strSQLUnique2

														dim dbConnectUnique

														'strSQLUnique = "select COUNT(*) AS '"& """&"TotalPatients"&"""&" from APPOINTMENTS WHERE LastName= '" & strLastName & "'"


if Session("ProductionMode")="1" then 
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName = '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"'"
else
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName = '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"'"
end if
 


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


if Session("PatientCount") = 0 then

Session("StatusMsg2") = "We find no upcoming appointment for you with this information."

Response.Redirect "kioskerror.asp"

else
end if


if Session("PatientCount") > 1 then
Session("DuplicateFound")=1

Response.Redirect "kioskpage3.asp"

else
end if


'CONFIRM +45 or -1

										'				dbConnectUnique.Close
'OPEN TABLE, GET APPOINTMENT DATE2, CONFIRM IT
Session("strAppointmentDate2")=strAppointmentMonth&"/"&strAPPTDay&"/"&strAPPTYear

Session("strAppointmentDate")=strAPPTYear&strAPPTMonth&strAPPTDay
strAppointmentDate=strAPPTYear&strAPPTMonth&strAPPTDay

if Session("ProductionMode")="1" then
AppointmentGap= "select DATEDIFF(day,GETDATE(),AppointmentDate) AS CheckAppointment from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName= '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"' Order By AppointmentDate ASC"
else

AppointmentGap= "select DATEDIFF(day,GETDATE(),AppointmentDate) AS CheckAppointment from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName= '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"' Order By AppointmentDate ASC"

end if



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

if Session("AppointmentGap2") > 45 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooFar") = "Your Appointment is "&abs(Session("AppointmentGap2"))&" days away. We kindly ask you to complete this form within 45 days of your appointment."
Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Response.Redirect "kioskpage0.asp"
else
end if

end if

														dbConnectUnique.Close

' Get all the providers from the db
dim strSQL
dim dbConnect



if Session("ProductionMode")="1" then 
	strSQL = "select top(1) * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC'" & " AND Location = '"&strLocationID&"' ORDER BY AppointmentDate ASC" 
else
	strSQL = "select top (1) * from APPOINTMENTS WHERE (DATEDIFF(day, GETDATE(), AppointmentDate) >= 0) AND LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST'" & " AND Location = '"&strLocationID&"' ORDER BY AppointmentDate ASC"
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
Session("AccountNumber")=rsLastName("AccountNumber")
Session("strPatientID")=rsLastName("AccountNumber")

Session("PID2")=rsLastName("ExternalID")
Session("PID3")=rsLastName("InternalID")

Session("strAppointmentID")=rsLastName("InternalID")
Session("PID18") = Session("strAccountNumber")
Session("PV7") = rsLastName("AttendingDoctor")
Session("AttendingDoctor") = rsLastName("AttendingDoctor")
Session("PV10") =rsLastName("HospitalService")
Session("DisplayAppointmentDate")=rsLastName("AppointmentDate2")

Session("Location") =rsLastName("Location")
Session("AppointmentLocation") =rsLastName("Location")
Session("AppointmentType") =rsLastName("AppointmentType")
Session("AppointmentTypeCode") =rsLastName("AppointmentTypeCode2")
Session("HomeNumber") = rsLastName("HomeNumber")
Session("strGender") = rsLastName("Sex")
'Session("strDOB") = rsLastName("DOB")
Session("strPatientID") = rsLastName("AccountNumber")
'Session("LastName")=rsLastName("LastName")
'Session("strLastName")=rsLastName("LastName")
Session("FirstName")=rsLastName("FirstName")

Session("strDOBYear")=Left(Session("strDOB"),4)
Session("strDOBDay")=Right(Session("strDOB"),2)
Session("strDOBMonth")=Mid(Session("strDOB"),5,2)

Session("strDISPLAYAPPTYear")=Left(Session("DisplayAppointmentDate"),4)
Session("strDISPLAYAPPTDay")=Mid(Session("DisplayAppointmentDate"),7,2)
Session("strDISPLAYAPPTMonth")=Mid(Session("DisplayAppointmentDate"),5,2)
Session("strDISPLAYAPPTHour")=Mid(Session("DisplayAppointmentDate"),9,2)
Session("strDISPLAYAPPTMinute")=Mid(Session("DisplayAppointmentDate"),11,2)

Session("DOBMonth") = Session("strDOBMonth")
Session("DOBDay") = Session("strDOBDay")
Session("DOBYear") = Session("strDOBYear")


Session("strDOBDay")=strDOBDay
Session("strDOBMonth")=strDOBMonth
Session("strDOBYear")=strDOBYear
													rsLastName.MoveNext
														loop

Session("MatchFound")=1
														rsLastName.Close



														dbConnect.Close
														set rsLastName = nothing
														set dbConnect = nothing



	' Validate gender.
	dim strGender
	dim maleChecked
	dim femaleChecked

if len(Session("PV7"))>0 then
else
	Session("PV7")= "005275"
end if

	' Date of birth

	strDOBDay = Request.Form("txtDOBDay")
	strDOBMonth = Request.Form("txtDOBMonth")
	strDOBYear = Request.Form("txtDOBYear")

	'Session("strDOBDay")=strDOBDay
	'Session("strDOBMonth")=strDOBMonth
	'Session("strDOBYear")=strDOBYear
	'Session("strLastName")=strLastName

	if len(strError) = 0 then
		if strDOBMonth = "" or strDOBDay = "" or strDOBYear = "" then
			strError = "Please enter a month, day, and year for date of birth."
		end if
	end if


	dobMonth = 0
	dobDay = 0
	dobYear = 0

	if IsNumeric(strDOBMonth) then
		dobMonth = CInt(strDOBMonth)
	end if

	if IsNumeric(strDOBDay) then
		dobDay = CInt(strDOBDay)
	end if

	if IsNumeric(strDOBYear) then
		dobYear = CInt(strDOBYear)
	end if

	if len(strError) = 0 then
		if dobMonth < 1 or dobMonth > 12 then
			strError = "Please enter a number from 1 to 12 for the month."
		end if
	end if

	if len(strError) = 0 then
		if dobDay < 1 or dobDay > 31 then
			strError = "Please enter a number from 1 to 31 for the day."
		end if
	end if

	if len(strError) = 0 then
		if dobYear < 1900 or dobYear > 2100 then
			strError = "Please enter a valid number for the year. Use 4 digits for the year (ex: 1960)."
		end if
	end if

	if len(strError) = 0 then
		dim dateCheck
		dateCheck = CStr(dobMonth) + "/" + CStr(dobDay) + "/" + CStr(dobYear)
		if isDate(dateCheck) then
		else
			strError = "There is an error with the date of birth. Please correct the month, day, or year and try again."
		end if
	end if


	if len(strError) = 0 then
		Dim aPTQWebScreening
		set aPTQWebScreening = Session("PTQWebScreening")

		aPTQWebScreening.Logon
		if Err.number > 0 then
			strError = "An unexpected initialization error has occurred. Unable to logon. Error code:" & Err.number & ". Please contact your provider."
		end if

	If Request.Form("SpanishInterview")= "Yes" then
		Session("CurrentLanguage")= 2058
	end if

		Dim langID
		langID = Session("CurrentLanguage")
		if (langID = 0) then
			langID = 1033  ' English
		end if

		aPTQWebScreening.SetLanguage(langID)
		if Err.number > 0 then
			strError = "An unexpected initialization error has occurred. Unable to set language. Error code:" & Err.number & ". Please contact your provider."
		end if

		if len(strPatientID) > 0 then
			aPTQWebScreening.PatientID = strPatientIDPrefix + strPatientID
			aPTQWebScreening.PatientID = Session("PID18")
		end if

		Err.number = 0
		aPTQWebScreening.PatientFirstName = strFirstName
		aPTQWebScreening.PatientMiddleName = strMiddleInitial
		aPTQWebScreening.PatientLastName = strLastName


		Err.number=0
		aPTQWebScreening.SetPatientDOB dobMonth, dobDay, dobYear
		if Err.number > 0 then
			strError = "An unexpected initialization error has occurred. Unable to set date of birth. Error code:" & Err.number & ". Please contact your provider."
		end if


		if len(strError) <> 0 then
			aPTQWebScreening.Logoff
		end if

	end if


Session("Page")=1
Session("AppointmentID")=Session("PID3")
Session("TestMode")="2"
Session("Version")=924

Session("PatientsName") = Session("FirstName")&" "&strLastName
Session("PatientID")= Session("strPatientID")

dim dtnow
dtNow = now()

dim hour_value
dim hourofday
hour_value=now()
hourofday=hour(hour_value)


if hourofday=23 then 
	Session("AdministrationDateStart") = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow)+1,2) & right("00",2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
else
	Session("AdministrationDateStart") = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
end if

Session("Gender")=Session("strGender")  
Session("OriginalGender")=Session("strGender")  

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


	if Session("Location")="GU" then
		Session("SurveyVersion")="GU"
	end if
	if Session("AppointmentType")="MIP GU NP" then
		Session("SurveyVersion")="GU"
	end if
	if Session("AppointmentType")="CRU GU NP" then
		Session("SurveyVersion")="GU"
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
if Session("AppointmentType")="MIP THOR HN NP" then
	Session("SurveyVersion")="Thoracic"
end if

if Session("AppointmentType")="CRU THOR NP" then
	Session("SurveyVersion")="Thoracic"
end if
%>
<!--#include file="genericappointment.asp"-->
<%


		Response.Redirect "kioskpageconfirm.asp"

else
	Session("StatusMsg") = "We have not found your appointment.  Please check with your physician's office."
	Session("ErrorCode")=1

	Session("MatchFound")=0
	Session("DuplicateFound")=0


	Response.Redirect "kioskpage0.asp"

end if

	if len(strError) = 0 then
		set aPTQWebScreening = Nothing
		Session("PatientsName") = strName

		if Session("InputPatientType") = "1" then
'			Response.Redirect "patienttype.asp"
		elseif Session("InputPatientDemographics") = "1" then
'			Response.Redirect "patientdemographics.asp"
		else
'			Response.Redirect "pickprovider.asp"
		end if
	end if
else
	Session("PatientsName") = ""
end if
%>

<?xml version="1.0" encoding="iso-8859-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title><%=Session("PageHolder")%></title>

<link href="css/stylesOptionB.css" rel="stylesheet" type="text/css" />
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
<div id="wrapper">


<div id="formWrapper">

<div id="formBlock">
	<div id="SpecialNote">
Find Your Appointment<br>
	</div>



    <form action="kioskpage0.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="2" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br>

	<div class="QuestionBox">
	Please enter your Last Name and Date of Birth
	</div>
<fieldset>
<legend></legend>
	<div class="QuestionAnswersBox">
	<%
	if Session("ErrorCode")<>1 then
	%>
											<p>Please enter your information and click Next.</p>
	<%
	end if
	%>
											<p>
											<table>
<font color="red">
<%
=strAppointmentGap
%>
<%
=	Session("StatusMsgDate")
%>
<%
=	Session("StatusMsg")
%>
<%
=	Session("StatusMsgTooClose")
%>
<%
=	Session("StatusMsgTooFar")
%>
</font>
	<tr>
													<td><b>Last Name</b></td>
													<td><input class="keyboardInput required" id="txtLastName" type="text" size="15" value="<%=Session("strLastName")%>" name="txtLastName">
												</tr>


												<tr>
													<td><b>Date of Birth</b></td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>&nbsp;&nbsp;Month</td>

						<td><select id="txtAPPTMonth" size="1" class="dateMonth required" name="txtAPPTMonth" size="1">
                                        <option> </option>
<option value="01">Jan</option>
<option value="02">Feb</option>
<option value="03">Mar</option>
<option value="04">Apr</option>
<option value="05">May</option>
<option value="06">June</option>
<option value="07">July</option>
<option value="08">Aug</option>
<option value="09">Sept</option>
<option value="10">Oct</option>
<option value="11">Nov</option>
<option value="12">Dec</option>


                                      </select></td>


												</tr>
												<tr>
													<td>&nbsp;&nbsp;Day</td>
						<td><select id="txtAPPTDay" size="1" class="dateDay required" name="txtAPPTDay" size="1">
                                        <option> </option>
<option value="01">01</option>
<option value="02">02</option>
<option value="03">03</option>
<option value="04">04</option>
<option value="05">05</option>
<option value="06">06</option>
<option value="07">07</option>
<option value="08">08</option>
<option value="09">09</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>


                                      </select></td>

												</tr>
												<tr>

													<td>&nbsp;&nbsp;Year</td>

						<td><select id="txtAPPTYear" size="1" class="dateYear required" name="txtAPPTYear" size="1">
                                        <option> </option>
<option value="2015">2015</option>
<option value="2014">2014</option>
<option value="2013">2013</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option>
<option value="2000">2000</option>
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option>
<option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976">1976</option>
<option value="1975">1975</option>
<option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
<option value="1964">1964</option>
<option value="1963">1963</option>
<option value="1962">1962</option>
<option value="1961">1961</option>
<option value="1960">1960</option>
<option value="1959">1959</option>
<option value="1958">1958</option>
<option value="1957">1957</option>
<option value="1956">1956</option>
<option value="1955">1955</option>
<option value="1954">1954</option>
<option value="1953">1953</option>
<option value="1952">1952</option>
<option value="1951">1951</option>
<option value="1950">1950</option>
<option value="1949">1949</option>
<option value="1948">1948</option>
<option value="1947">1947</option>
<option value="1946">1946</option>
<option value="1945">1945</option>
<option value="1944">1944</option>
<option value="1943">1943</option>
<option value="1942">1942</option>
<option value="1941">1941</option>
<option value="1940">1940</option>
<option value="1939">1939</option>
<option value="1938">1938</option>
<option value="1937">1937</option>
<option value="1936">1936</option>
<option value="1935">1935</option>
<option value="1934">1934</option>
<option value="1933">1933</option>
<option value="1932">1932</option>
<option value="1931">1931</option>
<option value="1930">1930</option>
<option value="1929">1929</option>
<option value="1928">1928</option>
<option value="1927">1927</option>
<option value="1926">1926</option>
<option value="1925">1925</option>
<option value="1924">1924</option>
<option value="1923">1923</option>
<option value="1922">1922</option>
<option value="1921">1921</option>
<option value="1920">1920</option>
<option value="1919">1919</option>
<option value="1918">1918</option>
<option value="1917">1917</option>
<option value="1916">1916</option>
<option value="1915">1915</option>
<option value="1914">1914</option>
<option value="1913">1913</option>
<option value="1912">1912</option>
<option value="1911">1911</option>
<option value="1910">1910</option>
<option value="1909">1909</option>
<option value="1908">1908</option>
<option value="1907">1907</option>
<option value="1906">1906</option>
<option value="1905">1905</option>
<option value="1904">1904</option>
<option value="1903">1903</option>
<option value="1902">1902</option>
<option value="1901">1901</option>
<option value="1900">1900</option>

</select></td>
												</tr>

												<tr>
</fieldset>
</table>

</div> <!-- [ /#formBlock ] -->
	
	<div id="buttonBox">
	 <!--#include file="buttonbox4.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu2.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>