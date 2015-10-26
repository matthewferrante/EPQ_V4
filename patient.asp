<%@ LANGUAGE=VBScript %>
<% Option Explicit %>
<!-- #include file="config.asp" -->
<% '$Date: 1/20/06 3:03p $ %>
<%
dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=formedicmhq\sqlexpress;UID=tampa;PWD=tampa1;DATABASE=CancerRepository"

dim strUserToken
dim strFirstName
dim strMiddleInitial
dim strLastName
dim strName
%>

<% '$Revision: 3 $ %>
<head>
<link rel="meta" href="http://www.ihealthinterview.com/labels.xml" type="application/rdf+xml" title="ICRA labels" />
<meta http-equiv="pics-Label" content='(pics-1.1 "http://www.icra.org/pics/vocabularyv03/" l gen true for "http://ihealthinterview.com" r (n 0 s 0 v 0 l 0 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 0) gen true for "http://www.ihealthinterview.com" r (n 0 s 0 v 0 l 0 oa 0 ob 0 oc 0 od 0 oe 0 of 0 og 0 oh 0 c 0))' />
</head>
<%

'dim enterProviderID
dim strPatientIDLabel
dim strPatientIDPrefix
dim SpanishInterviewSet
dim PID18
dim PID2
dim PV7
dim PV10

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
	Dim strError
	strError = ""

	' Patient ID
	dim strPatientID
	strPatientID = Request.Form("txtPatientID")
	Session("ProviderID")=strPatientID

	' Name


	strLastName = Request.Form("txtLastName")
	strUserToken = Request.Form("txtUserToken")
	strMiddleInitial = Request.Form("txtMiddleInitial")




														' Get all the providers from the db
														dim strSQL
														dim dbConnect



														strSQL = "select * from Moffitt WHERE LastName= '" & strLastName& "' AND UserToken= '" & strUserToken& "'"

														set dbConnect = Server.CreateObject("adodb.connection")
														dbConnect.ConnectionString = strConnection
														dbConnect.Open

														dim rsLastName
														set rsLastName = Server.CreateObject("adodb.recordset")
														rsLastName.open strSQL, dbConnect


														do until rsLastName.EOF
															dim idCustomer
															dim strItem
															idCustomer = rsLastName("ExternalID")

															strItem = rsLastName("LastName")&rsLastName("FirstName")
															strItem = strItem &rsLastName("ExternalID")&","
															strItem = strItem &rsLastName("InternalID")&","
															strItem = strItem &rsLastName("AccountNumber")&","
															strItem = strItem &rsLastName("HospitalService")&","
															strItem = strItem &rsLastName("AttendingDoctor")&","
															strItem = strItem &rsLastName("Sex")&","

															strItem = strItem &rsLastName("HomeNumber")
Session("LastName")=strLastName
Session("UserToken")=stUserToken

Session("FirstName")=rsLastName("ExternalID")
															rsLastName.MoveNext
														loop

														rsLastName.Close


														dbConnect.Close
														set rsLastName = nothing
														set dbConnect = nothing


	' Validate gender.
	dim strGender
	dim maleChecked
	dim femaleChecked




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
		end if

		Err.number = 0
		aPTQWebScreening.PatientLastName = strLastName



		if len(strError) <> 0 then
			aPTQWebScreening.Logoff
		end if
	end if


		Response.Redirect "patient2.asp"

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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<title><%=i_strBrowserTitle%></title>
		<link href="main.css" type="text/css" rel="stylesheet">
		<script type="text/javascript">
			function setFocus()
			{
				document.formPatient.txtFirstName.focus();
			}
		</script>

	</head>
	<body onload="setFocus()">
		<form name="formPatient" action="patient.asp" method="POST" id="formPatient">
		<input type="hidden" name="ispostback" value="1" ID="Hidden1">
		<table class="SiteHeader" ID="Table1">
				<tr class="SiteHeaderText">
					<%
					dim strSiteTitle
					strSiteTitle = Session("SiteHeaderText")
					if len(strSiteTitle) = 0 then
						strSiteTitle = i_strSiteTitle
					end if

					if len(strSiteTitle) > 0 then
					%>
						<td><%=strSiteTitle%></td>
					<%
					end if

					dim strSiteTitlePictureFile
					dim dxSiteTitlePicture
					dim dySiteTitlePicture

					strSiteTitlePictureFile = Session("SiteTitlePictureFile")
					dxSiteTitlePicture = Session("SiteTitlePictureWidth")
					dySiteTitlePicture = Session("SiteTitlePictureHeight")

					if len(strSiteTitlePictureFile) = 0 then
						strSiteTitlePictureFile = i_strSiteTitlePicture
						dxSiteTitlePicture = i_WidthSiteTitlePicture
						dySiteTitlePicture = i_HeightSiteTitlePicture
					end if

					if len(strSiteTitlePictureFile) > 0 then
					%>
						<td><img class="TitlePicture" height="<%=dySiteTitlePicture%>"
      					src="<%=strSiteTitlePictureFile%>" width="<%=dxSiteTitlePicture%>" border=0 alt=""></td>
					<%
					end if
					%>
				</tr>
			</table>
			<table class="SiteBody" ID="Table2">
				<tr class="SiteBody">
					<td>
						<table class="StatusDialog" align="center" cellpadding="0" cellspacing="0" ID="Table3">
							<tr>
								<td valign="top">
									<table class="DialogTitle" ID="Table4">
										<tr class="StatusDialogTitle">
											<td class="DialogText">Enter Patient Information</td>
										</tr>
									</table>
									<table class="DialogContent" ID="Table5">
										<tr class="StatusDialogContent">
											<td valign="top">
												<%
													Set aPTQWebScreening = Session("PTQWebScreening")
												%>
												<p>Please enter your information and click Next.</p>
												<p>
												<table>
												<tr>
													<td><b>User Token</b></td>
													<td><input id="txtFirstName" type="text" size="25" value="<%=strFirstName%>" name="txtFirstName">
												</tr>
												<tr>
													<td><b>Last name</b></td>
													<td><input id="txtLastName" type="text" size="25" value="<%=strLastName%>" name="txtLastName">
												</tr>
									<table class="DialogCommands" ID="Table6">
									<tr class="StatusDialogCommands">
									<td><button id="btnNext" type="submit" class="DialogCommand">Next</button></td>
									</tr>
									</table>
												<%
												if len(strError) <> 0 then
													%>
												<p class="ErrorMessage"><% =strError %></p>
												<%
												end if
												%>

												</table>
											</td>
										</tr>

								</table>

								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table class="SiteFooter" ID="Table7">
				<tr>
					<td class="SiteFooterText">&#169;2004-2010&nbsp;Primetime Medical Software, Inc. All rights reserved.</td>
				</tr>
			</table>

		</form>
	</body>
</html>
