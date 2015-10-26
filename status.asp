<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- #include file="config.asp" -->
<% '$Date: 1/20/06 2:56p $ %>
<% '$Revision: 2 $ %>
<html>
<head>
	<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
	<link href="../styles/main.css" type="text/css" rel="stylesheet">
	<title><%=i_strBrowserTitle%></title>
</head>
	<body>
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
										<td class="DialogText">Status</td>
									</tr>
								</table>
								<table class="DialogContent" ID="Table5">
									<tr class="StatusDialogContent">
										<td valign="top">
											<p><b>Message</b></p>
											<p><% =Session("StatusMsg") %></p>
											<p><b>Details</b></p>
											<p><% =Session("StatusDetails") %></p>
										</td>
									</tr>
								</table>
								<table class="DialogCommands" ID="Table6">
									<tr class="StatusDialogCommands">
										<td><button class="DialogCommand" id="button4" onClick="window.opener=self; window.close();return false;">Close</button></td>
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
				<td class="SiteFooterText">&#169;2004-2006&nbsp;Primetime Medical Software, Inc. All rights reserved.</td>
			</tr>
		</table>
	</body>
</html>
