<%

'Confirm Unique
dim strSQLUnique
dim strSQLUnique2
dim dbConnectUnique


if Session("ProductionMode")="1" then 
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE LastName = '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"'"
else
strSQLUnique = "select COUNT(DISTINCT AccountNumber) AS TotalPatients from APPOINTMENTS WHERE LastName = '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"'"
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

Session("StatusMsg2") = "We find no appointment for you with this information."

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
AppointmentGap= "select DATEDIFF(day, AppointmentDate,GETDATE()) AS CheckAppointment from APPOINTMENTS WHERE LastName= '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC' AND Location = '"&strLocationID&"'"
else
AppointmentGap= "select DATEDIFF(day, AppointmentDate,GETDATE()) AS CheckAppointment from APPOINTMENTS WHERE LastName= '" & strLastName & "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST' AND Location = '"&strLocationID&"'"
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
if Session("AppointmentGap2") < -60 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooFar") = "Your Appointment is "&abs(Session("AppointmentGap2"))&" days away. We kindly ask you to complete this form within 60 days of your appointment."
Session("StatusMsg")=""
Session("StatusMsgTooClose")=""
Response.Redirect "kioskpage0.asp"

else
end if

if Session("AppointmentGap2") >  1 then
Session("DuplicateFound")=1
Session("ErrorCode")=1
Session("StatusMsgTooClose") = "Your Appointment was more than one day ago. We kindly ask you to complete this form 45 days prior to your next appointment."

Session("StatusMsg")=""
Session("StatusMsgTooFar")=""

Response.Redirect "kioskpage0.asp"

else
end if
end if

														dbConnectUnique.Close

' Get all the providers from the db
dim strSQL
dim dbConnect

if Session("ProductionMode")="1" then 
	strSQL = "select * from APPOINTMENTS WHERE LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCC'" & " AND Location = '"&strLocationID&"'"
else
	strSQL = "select * from APPOINTMENTS WHERE LastName= '" & strLastName& "' AND DOB = '" & strDOBMatch& "' AND HealthSystem = 'MCCTEST'" & " AND Location = '"&strLocationID&"'"
end if

set dbConnect = Server.CreateObject("adodb.connection")
dbConnect.ConnectionString = strConnection
dbConnect.Open
dim rsLastName
set rsLastName= Server.CreateObject("adodb.recordset")
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
Session("AppointmentType") =rsLastName("AppointmentType")

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

if Session("ProductionModeSpoke2")="GU" then
	if Session("Location")="GU" then
		Session("SurveyVersion")="GU"
	end if
	if Session("AppointmentType")="MIP GU NP" then
		Session("SurveyVersion")="GU"
	end if
end if

if Session("AppointmentType")="MIP THOR NP" then
	Session("SurveyVersion")="Thoracic"
end if
if Session("AppointmentType")="CRU THOR NP" then
	Session("SurveyVersion")="Thoracic"
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
