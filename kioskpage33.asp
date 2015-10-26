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

dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=WTFS1190\VISITMANAGER;UID=MirthConnect;PWD=M0$$i88;DATABASE=AssessmentDashboard"



dim strLocationID

	strLocationID = 	Session("LocationID")
	strDOBMatch=Session("strDOBYear")&Session("strDOBMonth")&Session("strDOBDay")


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
dim strDOBMatch
dim AppointmentGap
dim AppointmentGap2


if Request.Form("ispostback") = 1 then

dim strFirstName
dim strMiddleInitial
dim strLastName
dim strName

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


	strLastName = Request.Form("txtLastName")
	'strFirstName = Request.Form("txtFirstName")
	Session("LastName") = Request.Form("txtLastName")
	'Session("FirstName")= Request.Form("txtFirstName")


	strLast4SSN = Request.Form("txtLast4SSN")
	Session("strLast4SSN")=strLast4SSN


	strAPPTDay = Request.Form("txtAPPTDay")
	strAPPTMonth = Request.Form("txtAPPTMonth")
	strAPPTYear = Request.Form("txtAPPTYear")

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

Session("strAppointmentDate2")=strAPPTMonth&"/"&strAPPTDay&"/"&strAPPTYear

Session("strAppointmentDate")=strAPPTYear&strAPPTMonth&strAPPTDay
strAppointmentDate=strAPPTYear&strAPPTMonth&strAPPTDay

	Session("strLastName")=Request.Form("txtLastName")
	strLastName=Request.Form("txtLastName")
	strLastName=Replace(strLastName,"'","''")
	strLastName=Ucase(strLastName)
	Session("strLastName")=UCase(Session("strLastName"))

'Confirm Unique
														dim strSQLUnique
if Session("ProductionMode")="1" then 
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE LastName = '" & strLastName & "' AND EXTERNALID = '" & strLast4SSN& "'AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"'"
else
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE LastName = '" & strLastName & "' AND EXTERNALID = '" & strLast4SSN& "'AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"'"
end if
 

														dim strSQLUnique2

														dim dbConnectUnique

														'strSQLUnique = "select COUNT(*) AS '"& """&"TotalPatients"&"""&" from APPOINTMENTS WHERE LastName= '" & strLastName & "'"



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

Session("StatusMsg2") = "We find no appointment for you with this information."

Response.Redirect "kioskerror.asp"

else
end if


if Session("PatientCount") > 1 then
Session("DuplicateFound")=1
Session("StatusMsg2") = "We still have more than one appointment."

Response.Redirect "kioskerror.asp"

else
end if

'CONFIRM +30 or -1

										'				dbConnectUnique.Close

if Session("ProductionMode")="1" then 
AppointmentGap= "select DATEDIFF(day, AppointmentDate,GETDATE()) AS CheckAppointment from APPOINTMENTS WHERE LastName= '" & strLastName & "' AND EXTERNALID = '" & strLast4SSN& "'AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"'"
else 

AppointmentGap= "select DATEDIFF(day, AppointmentDate,GETDATE()) AS CheckAppointment from APPOINTMENTS WHERE LastName= '" & strLastName & "' AND EXTERNALID = '" & strLast4SSN& "'AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"'"

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
if Session("AppointmentGap2") < -45 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooFar") = "Your Appointment is "&abs(Session("AppointmentGap2"))&" days away. We kindly ask you to complete this form within 45 days of your appointment."
Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Response.Redirect "kioskpage3.asp"

else
end if

if Session("AppointmentGap2") >  1 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooClose") = "Your Appointment was more than one day ago. We kindly ask you to complete this form 45 days prior to your next appointment."

Session("StatusMsg")=""
Session("StatusMsgTooFar")=""

Response.Redirect "kioskpage3.asp"

else
end if

end if

														dbConnectUnique.Close

														' Get all the providers from the db
														dim strSQL
														dim dbConnect



if Session("ProductionMode")="1" then
 							strSQL = "select * from APPOINTMENTS WHERE LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND EXTERNALID = '" & strLast4SSN& "'AND HealthSystem = 'MCC'" & " AND Location = '"&strLocationID&"'"
else
	strSQL = "select * from APPOINTMENTS WHERE LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND EXTERNALID = '" & strLast4SSN& "'AND HealthSystem = 'MCCTEST'" & " AND Location = '"&strLocationID&"'"
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
Session("PV10") =rsLastName("HospitalService")
Session("DisplayAppointmentDate")=rsLastName("AppointmentDate2")

Session("Location") =rsLastName("Location")
Session("AppointmentLocation") =rsLastName("Location")

Session("HomeNumber") = rsLastName("HomeNumber")
Session("strGender") = rsLastName("Sex")
'Session("strDOB") = rsLastName("DOB")
Session("strPatientID") = rsLastName("AccountNumber")
'Session("LastName")=rsLastName("LastName")
'Session("strLastName")=rsLastName("LastName")
Session("FirstName")=rsLastName("FirstName")

'Session("strDOBYear")=Left(Session("strDOB"),4)
'Session("strDOBDay")=Right(Session("strDOB"),2)
'Session("strDOBMonth")=Mid(Session("strDOB"),5,2)

Session("strDISPLAYAPPTYear")=Left(Session("DisplayAppointmentDate"),4)
Session("strDISPLAYAPPTDay")=Mid(Session("DisplayAppointmentDate"),7,2)
Session("strDISPLAYAPPTMonth")=Mid(Session("DisplayAppointmentDate"),5,2)
Session("strDISPLAYAPPTHour")=Mid(Session("DisplayAppointmentDate"),9,2)
Session("strDISPLAYAPPTMinute")=Mid(Session("DisplayAppointmentDate"),11,2)


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



	end if


Session("Page")=1
Session("AppointmentID")=Session("PID3")
Session("TestMode")="2"
Session("Version")=924

Session("PatientsName") = Session("FirstName")&" "&strLastName
Session("PatientID")= Session("strPatientID")

dim dtnow
dtNow = now()

Session("AdministrationDateStart")= Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
Session("Gender")=Session("strGender")  
Session("OriginalGender")=Session("strGender")  

'Session("strDOB") = rsLastName("DOB")

if Session("Location")="THNE" then
	Session("SurveyVersion")="Thoracic"
else
	Session("SurveyVersion")="EPQ"
end if

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
<div id="wrapper">


<div id="formWrapper">

<div id="formBlock">
	<div id="SpecialNote">
Find Your Appointment<br>
	</div>



    <form action="kioskpage3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="2" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<br>
	<div class="QuestionBox">
We have found more than one appointment.<br>	Please confirm your Last Name and enter the last 4 digits of your Social Security Number
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
	<td><b>Last 4 of SSN</b></td>
	<td><input class="keyboardInput required" id="txtLast4SSN" type="text" size="5" maxlength="4" value="<%=strLast4SSN%>" name="txtLast4SSN"><br>
	</tr>

</table>

	</div>
</fieldset>
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