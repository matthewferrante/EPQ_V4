<%
' Title for the site.
dim i_strSiteTitle
i_strSiteTitle = ""

' Header picture for site. (Usually set this and blank out the title)
dim i_strSiteTitlePicture
dim i_HeightSiteTitlePicture
dim i_WidthSiteTitlePicture
i_strSiteTitlePicture = "../images/IMHLogo.gif"
i_HeightSiteTitlePicture = 94
i_WidthSiteTitlePicture = 217

' Title for the browser
dim i_strBrowserTitle
i_strBrowserTitle = "Primetime Instant Medical History"

' Path to store output files.
dim i_strOfficeFoldersPath
i_strOfficeFoldersPath = "c:\websites\patientcenter\officefolders"

' Id of default provider
dim i_idNoProvider
i_idNoProvider = 260
dim i_idProviderNotListed
i_idProviderNotListed = 259

' Group name for providers
dim i_strProviderGroup
i_strProviderGroup = "unknown"

' Turn on/off xml login message logging
dim i_bLogLoginMessage
i_bLogLoginMessage = true

%>