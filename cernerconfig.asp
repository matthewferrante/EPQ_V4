<%
' Title for the site.
dim i_strSiteTitle
i_strSiteTitle = "" '"Clarian"

' Header picture for site. (Usually set this and blank out the title)
dim i_strSiteTitlePicture
dim i_HeightSiteTitlePicture
dim i_WidthSiteTitlePicture
i_strSiteTitlePicture = "moffitt.gif"
i_HeightSiteTitlePicture = 56
i_WidthSiteTitlePicture = 775

' Title for the browser
dim i_strBrowserTitle
i_strBrowserTitle = "Moffitt Cancer Center IQ Health Visit Manager"

' Default screening name for wellness survey
dim i_strDefaultWellnessSurvey
i_strDefaultWellnessSurvey = "health strengths assessment"

' Path to log SOAP messages to.
dim i_strCernerSOAPLogPath
i_strCernerSOAPLogPath = "C:\Websites\VisitManager\EPQ\Log"

' Path to log xml login packets
dim i_strCernerLoginLogPath
i_strCernerLoginLogPath = "C:\Websites\VisitManager\EPQ\Log"

' Path to store HL7 files. The OutputDirectory field from the database is appended
' to this string along with a unique HL7 filename to get the final location
dim i_strOfficeFoldersPath
i_strOfficeFoldersPath = "C:\Websites\VisitManager\EPQ\Log"

dim i_strHL7OutboxPath
i_strHL7OutboxPath = "C:\Websites\VisitManager\EPQ\Log"


' The URL for the cerner web service. This is a default. Should start coming
' in via xml login message as soon as cerner updates.
dim i_strCernerWebServiceURL
i_strCernerWebServiceURL = "http://iqhbuild.iqhealth.com/ImhWebModule/services/Imh"

' Id of default Winona provider
dim i_idNoProvider
i_idNoProvider = 814
dim i_idProviderNotListed
i_idProviderNotListed = 814

' Group name for Winona providers
dim i_strProviderGroup
i_strProviderGroup = "moffitt"

dim i_strProviderGroupEVisit
i_strProviderGroupEVisit = "moffitt"

' Turn on/off xml login message logging
dim i_bLogLoginMessage
i_bLogLoginMessage = true

' Turn on/off SOAP request/response logging
dim i_bLogSOAPMessage
i_bLogSOAPMessage = true
%>
