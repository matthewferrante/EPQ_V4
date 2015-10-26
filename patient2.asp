<%@ LANGUAGE=VBScript %>
<% Option Explicit %>

<!-- #include file="config.asp" -->

<% '$Date: 1/20/06 3:03p $ %>
<%
dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=formedicmhq\sqlexpress;UID=tampa;PWD=tampa1;DATABASE=CancerRepository"

dim strFirstName
dim strMiddleName
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

set aPTQWebScreening = Nothing
	Session("PatientsName") = Session("FirstName")&Session("LastName")
Response.Redirect "nicotineaddiction1.asp"

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
		<form name="formPatient" action="patient2.asp" method="POST" id="formPatient">
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
													dim aPTQWebScreening
													Set aPTQWebScreening = Session("PTQWebScreening")
												%>
												<p>Please CONFIRM your information and click Next.</p>
												<p>
												<table>

												<tr>
													<td><b>First name</b></td>
													<td><input id="txtFirstName" type="text" size="25" value="<%=Session("FirstName")%>" name="txtFirstName">
												</tr>

												<tr>
													<td><b>Last name</b></td>
													<td><input id="txtLastName" type="text" size="25" value="<%=Session("LastName")%>" name="txtLastName">
												</tr>
												<tr>
													<td><b>Gender</b></td>
													<td><input id="txtLastName" type="text" size="25" value="<%=Session("strGender")%>" name="txtLastName">
													</tr>
												<tr>
												<tr>
													<td>DOB</td>
													<td><input id="txtDOB" type="text" size="15" value="<%=Session("strDOB")%>" name="txtDOB"></td>
												</tr>
													<td><b>User Token Value</b></td>
													<td><input id="Text2" type="text" size="10" value="<%=Session("UserToken")%>" name="txtUserToken">&nbsp;&nbsp;</td>
												</tr>
												<tr>
													<td><b>PID3 Value</b></td>
													<td><input id="Text2" type="text" size="10" value="<%=Session("PID3")%>" name="txtPatientSSN">&nbsp;&nbsp;</td>
												</tr>
												<tr>
													<td><b>PID18 Value</b></td>
													<td><input id="Text2" type="text" size="10" value="<%=Session("PID18")%>" name="txtPID18">&nbsp;&nbsp;</td>
												</tr>

												<tr>
													<td><b>PV7 Value</b></td>
													<td><input id="Text2" type="text" size="10" value="<%=Session("PV7")%>" name="txtPatientPV7">&nbsp;&nbsp;</td>
												</tr>
												<tr>
													<td><b>PV10 Value</b></td>
													<td><input id="Text2" type="text" size="10" value="<%=Session("PV10")%>" name="txtPatientPV10">&nbsp;&nbsp;</td>
												</tr>
												<tr>
																						<td><b>MessageTime Value</b></td>
																						<td><input id="Text2" type="text" size="10" value="<%=Session("MessageTime")%>" name="txtMesageTime">&nbsp;&nbsp;</td>
												</tr>
												<tr>
																									<td><b>Home Number Value</b></td>
																									<td><input id="Text2" type="text" size="10" value="<%=Session("HomeNumber")%>" name="txtHomeNumber">&nbsp;&nbsp;</td>
												</tr>
									<table class="DialogCommands" ID="Table6">
									<tr class="StatusDialogCommands">
									<td><button id="btnNext" type="submit" class="DialogCommand">Next</button></td>
									</tr>
									</table>


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
