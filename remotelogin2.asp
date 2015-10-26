<%@ LANGUAGE=VBScript %>
<% Option Explicit %>
<% '$Date: 7/19/06 9:55p $ %>
<% '$Revision: 3 $ %>

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


%>

<%

Dim aPTQWebScreening

if len(strTestPage) > 0 then
	strTestPage=strTestPage&".asp"
end if



Session("LoggedIn") = "1"
Response.Redirect Session("TestPage")

%>
