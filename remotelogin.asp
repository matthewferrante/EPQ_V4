<%@ LANGUAGE=VBScript %>
<% Option Explicit %>
<!-- #include file="cernerconfig.asp" -->
<% '$Date: 7/19/06 9:55p $ %>
<% '$Revision: 3 $ %>

<!--#include file="removesessions.asp"-->
<!--#include file="include/moduleStatusFunctions.asp"-->
<!--#include file="include/savedSessionFunctions.asp"-->

<%


' Initialize session variables
Session("StatusMsg") = ""
Session("StatusDetails") = ""

' Variables
dim strUsername
dim strPassword
dim strPatientID
dim strPatientName
dim strEMail
dim strPatientDOBMonth
dim strPatientDOBDay
dim strPatientDOBYear
dim strPatientGender
dim strReturnURL
dim strServiceURL
dim strSOAPHeaderUsername
dim strSOAPHeaderPassword
dim strSOAPHeaderDomain
dim strupin1
dim strname1
dim strupin2
dim strname2
dim strupin3
dim strname3
dim strupin4
dim strname4
dim strupin5
dim strname5
dim strProviderComment
dim strtestpage
dim strtestmode
dim strpage
dim strappointmentID
dim strappointmentLocation
dim strLastName
dim strUserToken
dim strsurveyversion

Session("Version")=924
Session("ReturnID")=0
Session("GoBackID")=0

strUsername = ""
strPassword = ""

' Parse the login message
dim xmlParams
xmlParams = Request.Form("imhdata")

'----------------------
' Log the login message
dim strLogFilename

dim strCernerLogPath
strCernerLogPath = i_strCernerLoginLogPath

if i_bLogLoginMessage then
	dim aFSO
	set aFSO = Server.CreateObject("Scripting.FileSystemObject")

	' Create output folders if necessary. This can hang IIS if you have something
	' like Norton script blocking turned on. Make sure that is off.
	if not aFSO.FolderExists(strCernerLogPath) then
		Dim aFolder
		Set aFolder = aFSO.CreateFolder(strCernerLogPath)
	end if

	' Create file name
	dim dtNow
	dtNow = now()

	dim strDateTime
	strDateTime = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow),2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)

	dim strLogFilespec
	dim iTry
	iTry = 0
	strLogFilename = strDateTime & "-" & right("0" & iTry,2)
	strLogFilespec = strCernerLogPath & "\" & strLogFilename & ".xml"
	while iTry < 100 and aFSO.FileExists(strLogFilename)
		iTry = iTry + 1
		strLogFilename = strDateTime & "-" & right("0" & iTry,2)
		strLogFilespec = strCernerLogPath & "\" & strLogFilename & ".xml"
	wend

	dim aFile
	set aFile = aFSO.OpenTextFile (strLogFilespec, 2, True)
	aFile.Write xmlParams
	aFile.Close

	set aFile = nothing
	set aFSO = nothing
end if
' Done saving login message
'--------------------------

dim xmlDoc
Set xmlDoc = Server.CreateObject("Microsoft.XMLDOM")
xmlDoc.async = False
xmlDoc.loadXML(xmlParams)

dim xmlDocErr
Set xmlDocErr = xmlDoc.parseError

'check if incoming XML is parsed successfuly
if (xmlDocErr.errorCode <> 0) then
	Session("StatusMsg") = "An unexpected initialization error has occurred. The program is unable to continue. Please contact your administrator."
	Session("StatusDetails") = "Unable to read login message. Error code:" + hex(xmlDocErr.errorCode) + " Reason:" + xmlDocErr.reason
	Response.Redirect "status.asp"
else
    'process XML document

	dim aNode
	for each aNode in xmlDoc.documentElement.childNodes

		select case aNode.nodename

			case "login"
				if aNode.haschildnodes() then
					dim aLoginChildNode
					for each aLoginChildNode in aNode.childNodes
						select case aLoginChildNode.nodename
							case "username"
								strUsername = aLoginChildNode.text
							case "password"
								strPassword = aLoginChildNode.text
						end select
					next
				end if

			case "AppointmentID"
				strappointmentID = aNode.text
			case "AppointmentLocation"
				strappointmentLocation = aNode.text

			case "LastName"
				strLastName = aNode.text
			case "UserToken"
				strUserToken = aNode.text

			case "patient"

				dim aAttribute
				for each aAttribute in aNode.attributes
					select case aAttribute.name
						case "id"
							strPatientID = aAttribute.text
					end select
				next

				if aNode.haschildnodes() then
					Dim aPatientChildNode
					for each aPatientChildNode in aNode.childNodes

						select case aPatientChildnode.nodename

							case "email"
								strEMail = aPatientChildNode.text

							case "name"
								strPatientName = aPatientChildNode.text


							case "dob"
								Dim DOBArray
								DOBArray = split (aPatientChildNode.text,"/")
								strPatientDOBMonth = DOBArray(0)
								strPatientDOBDay = DOBArray(1)
								strPatientDOBYear = DOBArray(2)

							case "gender"
								if aPatientChildNode.text = "Male" then
									strPatientGender = "M"
								else
									strPatientGender = "F"
								end if
							case "testpage"
								strtestpage = aPatientChildNode.text
							case "testmode"
								strtestmode = aPatientChildNode.text
							case "surveyversion"
								strsurveyversion = aPatientChildNode.text
							case "pagemode"
								strpage = aPatientChildNode.text


						end select
					next
				end if

			case "returnURL"
				strReturnURL = aNode.text

			case "serviceURL"
				strServiceURL = aNode.text

			case "SOAPHeaderUsername"
				strSOAPHeaderUsername = aNode.text

			case "SOAPHeaderPassword"
				strSOAPHeaderPassword = aNode.text

			case "SOAPHeaderDomain"
				strSOAPHeaderDomain = aNode.text

			case "ProviderComment"
				strProviderComment = aNode.text


			case "providers"
				if aNode.haschildnodes() then
					dim aProvidersChildNode
					for each aProvidersChildNode in aNode.childNodes
						select case aProvidersChildNode.nodename
							case "upin1"
								strUpin1 = aProvidersChildNode.text
							case "name1"
								strname1 = aProvidersChildNode.text

							case "upin2"
								strUpin2 = aProvidersChildNode.text
							case "name2"
								strname2= aProvidersChildNode.text

							case "upin3"
								strUpin3 = aProvidersChildNode.text
							case "name3"
								strname3= aProvidersChildNode.text

							case "name4"
								strname4= aProvidersChildNode.text
							case "upin4"
								strUpin4 = aProvidersChildNode.text

							case "name5"
								strname5= aProvidersChildNode.text
							case "upin5"
								strUpin5 = aProvidersChildNode.text
						end select
					next
				end if


		end select
	next
End If

if strUsername <> "cerner" and strPassword <> "goimh2004" then
	Session("StatusMsg") = "An unexpected initialization error has occurred. The program is unable to continue. Please contact your administrator."
	Session("StatusDetails") = "Unable to logon on with the username and password supplied. Error code:" & Err.number
	Response.Redirect "status.asp"
end if

'Response.Write "<P>Name=" & strName
'Response.Write "<P>DOBMonth=" & strDOBMonth
'Response.Write "<P>DOBDay=" & strDOBDay
'Response.Write "<P>DOBYear=" & strDOBYear
'Response.Write "<P>Gender=" & strGender
'Response.Write "<P>ReturnURL=" & strReturnURL

%>

<%


if len(strTestPage) > 0 then
	strTestPage=strTestPage&".asp"
end if

if len(strTestPage) = 0 then
	strTestPage="example.asp"
end if

Session("TestPage") = strTestPage

Session("TestMode") = strTestMode
Session("Page") = strPage
Session("SurveyVersion") = strsurveyversion
Session("PatientsName") = strPatientName
Session("strEmail") = strEMail

Session("PatientID")= strPatientID
Session("Gender") = strPatientGender
Session("OriginalGender") = strPatientGender

		
Session("DOBMonth") = strPatientDOBMonth
Session("DOBDay") = strPatientDOBDay
Session("DOBYear") = strPatientDOBYear
Session("ReturnURL") = strReturnURL
Session("ServiceURL") = strServiceURL
Session("SOAPHeaderUsername") = strSOAPHeaderUsername
Session("SOAPHeaderPassword") = strSOAPHeaderPassword
Session("SOAPHeaderDomain") = strSOAPHeaderDomain
Session("ProviderComment") = strProviderComment
Session("appointmentID") = strAppointmentID
Session("appointmentLocation") = strappointmentLocation
Session("LastName") = strLastName
Session("UserToken") = strUserToken
					   
Session("AdministrationDateStart")= Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)

Session("Upin1")= strupin1
Session("name1")= strname1

'Patient Age
dim PatientAge
dim AgeCheck

AgeCheck = CStr(Session("DOBMonth")) + "/" + CStr(Session("DOBDay")) + "/" + CStr(Session("DOBYear"))
PatientAge=DateDiff("d",AgeCheck,Now())\365
Session("PatientAge")=PatientAge

Session("ProviderName")=strname1
Session("ProviderLocation")=strupin1

Session("Upin2")= strupin2
Session("name2")= strname2

Session("Upin3")= strupin3
Session("name3")= strname3

Session("Upin4")= strupin4
Session("name4")= strname4

Session("Upin5")= strupin5
Session("name5")= strname5


'--------------------------------
' Setup default session variables
'--------------------------------
' Allow patient to enter complaint
Session("AllowPatientToEnterComplaint") = 1

' Provider group
Session("ProviderGroup") = i_strProviderGroup

' Default screening !!Cerner Health Strengths Assessment
Session("PatientComplaint") = "Cerner Clinic HSA"

' Skip pick provider screen.
Session("UseDefaultProvider") = 0
Session("DefaultProviderID") = i_idProviderNotListed

' OK to send reports (only send once)
Session("OKToSendReports") = 1

' Indicate we are logged in
Session("LoggedIn") = "1"

Dim assessmentDataId, serializedSession
assessmentDataId = assessmentDataIdFromAppointmentId(strAppointmentID)

Session("assessmentDataId") = assessmentDataId
serializedSession = getSavedSession(assessmentDataId)
if (len(serializedSession) > 0) then
  loadSerializedSession(serializedSession)
  Session("sessionState") = "restored"
  Response.Redirect Session("lastPage")
else
  ' TODO move these into init function below
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

  initializeModuleStatusRecords(strAppointmentID)

  Session("sessionState") = "initialized"

  ' Redirect to first page
  Response.Redirect Session("TestPage")

  'Response.Redirect "cernerwelcomeappointment.asp"
end if

%>
