<%@ LANGUAGE=VBScript %>
<% option explicit %>
<% on error resume next %>

<!--#include file="include/productionmode.asp"-->
<!--#include file="include/db_connection.asp"-->

<%

if Session("DemographicsSectionStatus")="Completed" AND Session("VisitBackgroundSectionStatus")="Completed" AND Session("PersonalHistoryCancerSectionStatus")= "Completed" AND Session("PastMedicalHistorySectionStatus")="Completed" AND Session("PastSurgicalHistorySectionStatus")="Completed" AND Session("FamilyHistoryCancerSectionStatus")="Completed" AND Session("FamilyHistorySectionStatus")="Completed" AND Session("CurrentSymptomsSectionStatus")="Completed" AND Session("CancerRiskSectionStatus")="Completed" AND Session("PsychosocialSectionStatus")="Completed" AND Session("QOLSectionStatus")="Completed"  then

	Session("SurveyStatus")="Completed"
else
	Session("SurveyStatus")="Incomplete"
end if



if Session("ReportStatus")="Reprocessed" then
Session("ProductionMode")="1"
Session("strDOBYear")=Session("strDOBYear2")
Session("strDOBMonth")=Session("strDOBMonth2")
Session("strDOBDay")=Session("strDOBDay2")
end if

dim hour_value
dim hourofday
hour_value=now()
hourofday=hour(hour_value)

if Session("SurveyStatus")= "Completed" then 
	dim CompletionDateStamp
	dim objCommand
	dim objRS

	if hourofday=23 then 
	CompletionDateStamp = Year(Now()+1)&"-"&Month(Now()+1)&"-"&Day(Now()+1)
	else
	CompletionDateStamp = Year(Now())&"-"&Month(Now())&"-"&Day(Now())
	end if

	if Session("ProductionMode")="1" then 


  dbAssessmentDashboardConnection.Open
  set objCommand = Server.CreateObject("ADODB.Command") 
  objCommand.ActiveConnection = dbAssessmentDashboardConnection
  objCommand.CommandText = "UPDATE Patient SET CompletionStatus = '"&Session("SurveyVersion")&"',CompletionDate = CAST ('"&CompletionDateStamp&"' AS datetime) WHERE InternalID = '"&Session("strAppointmentID")&"' AND CompletionStatus IS NULL"

  Set objRS = objCommand.Execute()
  dbAssessmentDashboardConnection.Close
	end if

	if Session("ProductionMode")<>"1" then 


  dbAssessmentDashboardConnection.Open
  set objCommand = Server.CreateObject("ADODB.Command") 
  objCommand.ActiveConnection = dbAssessmentDashboardConnection
  objCommand.CommandText = "UPDATE Patient SET CompletionStatus = '"&Session("SurveyVersion")&"Test',CompletionDate = CAST ('"&CompletionDateStamp&"' AS datetime) WHERE InternalID = '"&Session("strAppointmentID")&"' AND CompletionStatus IS NULL"

  Set objRS = objCommand.Execute()
  dbAssessmentDashboardConnection.Close
	end if

end if

If Not IsNull(Session("EPQ31011000specify")) then
	Session("EPQ31011000specify")=Server.HTMLEncode(Session("EPQ31011000specify"))
							end if 


If Not IsNull(Session("EPQ30103000_TXT")) then
	Session("EPQ30103000_TXT")=Server.HTMLEncode(Session("EPQ30103000_TXT"))
							end if 
If Not IsNull(Session("EPQ30103070_TXT")) then
	Session("EPQ30103070_TXT")=Server.HTMLEncode(Session("EPQ30103070_TXT"))
							end if 
If Not IsNull(Session("EPQ30105001")) then
	Session("EPQ30105001")=Server.HTMLEncode(Session("EPQ30105001"))
							end if 
If Not IsNull(Session("EPQ30107000")) then
	Session("EPQ30107000")=Server.HTMLEncode(Session("EPQ30107000"))
							end if 
If Not IsNull(Session("EPQ30108000")) then	Session("EPQ30108000")=Server.HTMLEncode(Session("EPQ30108000"))							end if 
If Not IsNull(Session("EPQ30109000")) then	Session("EPQ30109000")=Server.HTMLEncode(Session("EPQ30109000"))							end if 
If Not IsNull(Session("EPQ30110000")) then	Session("EPQ30110000")=Server.HTMLEncode(Session("EPQ30110000"))							end if 
If Not IsNull(Session("EPQ30111000")) then	Session("EPQ30111000")=Server.HTMLEncode(Session("EPQ30111000"))							end if 
If Not IsNull(Session("EPQ30201000")) then	Session("EPQ30201000")=Server.HTMLEncode(Session("EPQ30201000"))							end if 
If Not IsNull(Session("EPQ30202000")) then	Session("EPQ30202000")=Server.HTMLEncode(Session("EPQ30202000"))							end if 
If Not IsNull(Session("EPQ30203000")) then	Session("EPQ30203000")=Server.HTMLEncode(Session("EPQ30203000"))							end if 
If Not IsNull(Session("EPQ30204000")) then	Session("EPQ30204000")=Server.HTMLEncode(Session("EPQ30204000"))							end if 
If Not IsNull(Session("EPQ30207000specify")) then	Session("EPQ30207000specify")=Server.HTMLEncode(Session("EPQ30207000specify"))							end if 
If Not IsNull(Session("EPQ30208000")) then	Session("EPQ30208000")=Server.HTMLEncode(Session("EPQ30208000"))							end if 
If Not IsNull(Session("EPQ30209000")) then	Session("EPQ30209000")=Server.HTMLEncode(Session("EPQ30209000"))							end if 
If Not IsNull(Session("EPQ30312000")) then	Session("EPQ30312000")=Server.HTMLEncode(Session("EPQ30312000"))							end if 
If Not IsNull(Session("EPQ30313000")) then	Session("EPQ30313000")=Server.HTMLEncode(Session("EPQ30313000"))							end if 
If Not IsNull(Session("EPQ30314000")) then	Session("EPQ30314000")=Server.HTMLEncode(Session("EPQ30314000"))							end if 
If Not IsNull(Session("EPQ30315000")) then	Session("EPQ30315000")=Server.HTMLEncode(Session("EPQ30315000"))							end if 
If Not IsNull(Session("EPQ30316000")) then	Session("EPQ30316000")=Server.HTMLEncode(Session("EPQ30316000"))							end if 
If Not IsNull(Session("EPQ30317000")) then	Session("EPQ30317000")=Server.HTMLEncode(Session("EPQ30317000"))							end if 
If Not IsNull(Session("EPQ30318000")) then	Session("EPQ30318000")=Server.HTMLEncode(Session("EPQ30318000"))							end if 
If Not IsNull(Session("EPQ30319000")) then	Session("EPQ30319000")=Server.HTMLEncode(Session("EPQ30319000"))							end if 
If Not IsNull(Session("EPQ30320000")) then	Session("EPQ30320000")=Server.HTMLEncode(Session("EPQ30320000"))							end if 
If Not IsNull(Session("EPQ30321000")) then	Session("EPQ30321000")=Server.HTMLEncode(Session("EPQ30321000"))							end if 
If Not IsNull(Session("EPQ30322000")) then	Session("EPQ30322000")=Server.HTMLEncode(Session("EPQ30322000"))							end if 
If Not IsNull(Session("EPQ30323000")) then	Session("EPQ30323000")=Server.HTMLEncode(Session("EPQ30323000"))							end if 
If Not IsNull(Session("EPQ30324000")) then	Session("EPQ30324000")=Server.HTMLEncode(Session("EPQ30324000"))							end if 
If Not IsNull(Session("EPQ30325000")) then	Session("EPQ30325000")=Server.HTMLEncode(Session("EPQ30325000"))							end if 
If Not IsNull(Session("EPQ30326000")) then	Session("EPQ30326000")=Server.HTMLEncode(Session("EPQ30326000"))							end if 
If Not IsNull(Session("EPQ30327000")) then	Session("EPQ30327000")=Server.HTMLEncode(Session("EPQ30327000"))							end if 
If Not IsNull(Session("EPQ30328000")) then	Session("EPQ30328000")=Server.HTMLEncode(Session("EPQ30328000"))							end if 
If Not IsNull(Session("EPQ30329000")) then	Session("EPQ30329000")=Server.HTMLEncode(Session("EPQ30329000"))							end if 
If Not IsNull(Session("EPQ30330000")) then	Session("EPQ30330000")=Server.HTMLEncode(Session("EPQ30330000"))							end if 
If Not IsNull(Session("EPQ30331000")) then	Session("EPQ30331000")=Server.HTMLEncode(Session("EPQ30331000"))							end if 
If Not IsNull(Session("EPQ30332000")) then	Session("EPQ30332000")=Server.HTMLEncode(Session("EPQ30332000"))							end if 
If Not IsNull(Session("EPQ30333000")) then	Session("EPQ30333000")=Server.HTMLEncode(Session("EPQ30333000"))							end if 
If Not IsNull(Session("EPQ30334000")) then	Session("EPQ30334000")=Server.HTMLEncode(Session("EPQ30334000"))							end if 
If Not IsNull(Session("EPQ30335000")) then	Session("EPQ30335000")=Server.HTMLEncode(Session("EPQ30335000"))							end if 
If Not IsNull(Session("EPQ30336000")) then	Session("EPQ30336000")=Server.HTMLEncode(Session("EPQ30336000"))							end if 
If Not IsNull(Session("EPQ30337000")) then	Session("EPQ30337000")=Server.HTMLEncode(Session("EPQ30337000"))							end if 
If Not IsNull(Session("EPQ30338000")) then	Session("EPQ30338000")=Server.HTMLEncode(Session("EPQ30338000"))							end if 
If Not IsNull(Session("EPQ30339000")) then	Session("EPQ30339000")=Server.HTMLEncode(Session("EPQ30339000"))							end if 
If Not IsNull(Session("EPQ30340000")) then	Session("EPQ30340000")=Server.HTMLEncode(Session("EPQ30340000"))							end if 
If Not IsNull(Session("EPQ30341000")) then	Session("EPQ30341000")=Server.HTMLEncode(Session("EPQ30341000"))							end if 
If Not IsNull(Session("EPQ30342000")) then	Session("EPQ30342000")=Server.HTMLEncode(Session("EPQ30342000"))							end if 
If Not IsNull(Session("EPQ30343000")) then	Session("EPQ30343000")=Server.HTMLEncode(Session("EPQ30343000"))							end if 
If Not IsNull(Session("EPQ30345000")) then	Session("EPQ30345000")=Server.HTMLEncode(Session("EPQ30345000"))							end if 
If Not IsNull(Session("EPQ30401000")) then	Session("EPQ30401000")=Server.HTMLEncode(Session("EPQ30401000"))							end if 
If Not IsNull(Session("EPQ30404000")) then	Session("EPQ30404000")=Server.HTMLEncode(Session("EPQ30404000"))							end if 
If Not IsNull(Session("EPQ30405000")) then	Session("EPQ30405000")=Server.HTMLEncode(Session("EPQ30405000"))							end if 
If Not IsNull(Session("EPQ30406000")) then	Session("EPQ30406000")=Server.HTMLEncode(Session("EPQ30406000"))							end if 
If Not IsNull(Session("EPQ30407000")) then	Session("EPQ30407000")=Server.HTMLEncode(Session("EPQ30407000"))							end if 
If Not IsNull(Session("EPQ30407120")) then	Session("EPQ30407120")=Server.HTMLEncode(Session("EPQ30407120"))							end if 
If Not IsNull(Session("EPQ30407130")) then	Session("EPQ30407130")=Server.HTMLEncode(Session("EPQ30407130"))							end if 
If Not IsNull(Session("EPQ30407170")) then	Session("EPQ30407170")=Server.HTMLEncode(Session("EPQ30407170"))							end if 
If Not IsNull(Session("EPQ30407200")) then	Session("EPQ30407200")=Server.HTMLEncode(Session("EPQ30407200"))							end if 
If Not IsNull(Session("EPQ30407230")) then	Session("EPQ30407230")=Server.HTMLEncode(Session("EPQ30407230"))							end if 
If Not IsNull(Session("EPQ30407240")) then	Session("EPQ30407240")=Server.HTMLEncode(Session("EPQ30407240"))							end if 
If Not IsNull(Session("EPQ30407260")) then	Session("EPQ30407260")=Server.HTMLEncode(Session("EPQ30407260"))							end if 
If Not IsNull(Session("EPQ30407270")) then	Session("EPQ30407270")=Server.HTMLEncode(Session("EPQ30407270"))							end if 
If Not IsNull(Session("EPQ30407280")) then	Session("EPQ30407280")=Server.HTMLEncode(Session("EPQ30407280"))							end if 
If Not IsNull(Session("EPQ30408000")) then	Session("EPQ30408000")=Server.HTMLEncode(Session("EPQ30408000"))							end if 
If Not IsNull(Session("EPQ30409000")) then	Session("EPQ30409000")=Server.HTMLEncode(Session("EPQ30409000"))							end if 
If Not IsNull(Session("EPQ30410000")) then	Session("EPQ30410000")=Server.HTMLEncode(Session("EPQ30410000"))							end if 
If Not IsNull(Session("EPQ30411000")) then	Session("EPQ30411000")=Server.HTMLEncode(Session("EPQ30411000"))							end if 
If Not IsNull(Session("EPQ30412000")) then	Session("EPQ30412000")=Server.HTMLEncode(Session("EPQ30412000"))							end if 
If Not IsNull(Session("EPQ30413000")) then	Session("EPQ30413000")=Server.HTMLEncode(Session("EPQ30413000"))							end if 
If Not IsNull(Session("EPQ304130000")) then	Session("EPQ304130000")=Server.HTMLEncode(Session("EPQ304130000"))							end if 
If Not IsNull(Session("EPQ30414000")) then	Session("EPQ30414000")=Server.HTMLEncode(Session("EPQ30414000"))							end if 
If Not IsNull(Session("EPQ30415000")) then	Session("EPQ30415000")=Server.HTMLEncode(Session("EPQ30415000"))							end if 
If Not IsNull(Session("EPQ30416000")) then	Session("EPQ30416000")=Server.HTMLEncode(Session("EPQ30416000"))							end if 
If Not IsNull(Session("EPQ30417000")) then	Session("EPQ30417000")=Server.HTMLEncode(Session("EPQ30417000"))							end if 
If Not IsNull(Session("EPQ30418000")) then	Session("EPQ30418000")=Server.HTMLEncode(Session("EPQ30418000"))							end if 
If Not IsNull(Session("EPQ30421000")) then	Session("EPQ30421000")=Server.HTMLEncode(Session("EPQ30421000"))							end if 
If Not IsNull(Session("EPQ30422060")) then	Session("EPQ30422060")=Server.HTMLEncode(Session("EPQ30422060"))							end if 
If Not IsNull(Session("EPQ30504000specify")) then	Session("EPQ30504000specify")=Server.HTMLEncode(Session("EPQ30504000specify"))							end if 
If Not IsNull(Session("EPQ30507000")) then	Session("EPQ30507000")=Server.HTMLEncode(Session("EPQ30507000"))							end if 
If Not IsNull(Session("EPQ30508000")) then	Session("EPQ30508000")=Server.HTMLEncode(Session("EPQ30508000"))							end if 
If Not IsNull(Session("EPQ30510000specify")) then	Session("EPQ30510000specify")=Server.HTMLEncode(Session("EPQ30510000specify"))							end if 
If Not IsNull(Session("EPQ30513000specify")) then	Session("EPQ30513000specify")=Server.HTMLEncode(Session("EPQ30513000specify"))							end if 
If Not IsNull(Session("EPQ30514000")) then	Session("EPQ30514000")=Server.HTMLEncode(Session("EPQ30514000"))							end if 
If Not IsNull(Session("EPQ30515000")) then	Session("EPQ30515000")=Server.HTMLEncode(Session("EPQ30515000"))							end if 
If Not IsNull(Session("EPQ30516000")) then	Session("EPQ30516000")=Server.HTMLEncode(Session("EPQ30516000"))							end if 
If Not IsNull(Session("EPQ30517000")) then	Session("EPQ30517000")=Server.HTMLEncode(Session("EPQ30517000"))							end if 
If Not IsNull(Session("EPQ30518000")) then	Session("EPQ30518000")=Server.HTMLEncode(Session("EPQ30518000"))							end if 
If Not IsNull(Session("EPQ30519000")) then	Session("EPQ30519000")=Server.HTMLEncode(Session("EPQ30519000"))							end if 
If Not IsNull(Session("EPQ30520000")) then	Session("EPQ30520000")=Server.HTMLEncode(Session("EPQ30520000"))							end if 
If Not IsNull(Session("EPQ30521000")) then	Session("EPQ30521000")=Server.HTMLEncode(Session("EPQ30521000"))							end if 
If Not IsNull(Session("EPQ30525000")) then	Session("EPQ30525000")=Server.HTMLEncode(Session("EPQ30525000"))							end if 
If Not IsNull(Session("EPQ30526000")) then	Session("EPQ30526000")=Server.HTMLEncode(Session("EPQ30526000"))							end if 
If Not IsNull(Session("EPQ30527000")) then	Session("EPQ30527000")=Server.HTMLEncode(Session("EPQ30527000"))							end if 
If Not IsNull(Session("EPQ30528000")) then	Session("EPQ30528000")=Server.HTMLEncode(Session("EPQ30528000"))							end if 
If Not IsNull(Session("EPQ30529000")) then	Session("EPQ30529000")=Server.HTMLEncode(Session("EPQ30529000"))							end if 
If Not IsNull(Session("EPQ30530000")) then	Session("EPQ30530000")=Server.HTMLEncode(Session("EPQ30530000"))							end if 
If Not IsNull(Session("EPQ30531000")) then	Session("EPQ30531000")=Server.HTMLEncode(Session("EPQ30531000"))							end if 
If Not IsNull(Session("EPQ30532000portal")) then	Session("EPQ30532000portal")=Server.HTMLEncode(Session("EPQ30532000portal"))							end if 
If Not IsNull(Session("EPQ30532000specify")) then	Session("EPQ30532000specify")=Server.HTMLEncode(Session("EPQ30532000specify"))							end if 
If Not IsNull(Session("EPQ30606001")) then	Session("EPQ30606001")=Server.HTMLEncode(Session("EPQ30606001"))							end if 
If Not IsNull(Session("EPQ30607000")) then	Session("EPQ30607000")=Server.HTMLEncode(Session("EPQ30607000"))							end if 
If Not IsNull(Session("EPQ30610009")) then	Session("EPQ30610009")=Server.HTMLEncode(Session("EPQ30610009"))							end if 
If Not IsNull(Session("EPQ30611000")) then	Session("EPQ30611000")=Server.HTMLEncode(Session("EPQ30611000"))							end if 
If Not IsNull(Session("EPQ30612000")) then	Session("EPQ30612000")=Server.HTMLEncode(Session("EPQ30612000"))							end if 
If Not IsNull(Session("EPQ30614000specify")) then	Session("EPQ30614000specify")=Server.HTMLEncode(Session("EPQ30614000specify"))							end if 
If Not IsNull(Session("EPQ30615000")) then	Session("EPQ30615000")=Server.HTMLEncode(Session("EPQ30615000"))							end if 
If Not IsNull(Session("EPQ30616000")) then	Session("EPQ30616000")=Server.HTMLEncode(Session("EPQ30616000"))							end if 
If Not IsNull(Session("EPQ30624000")) then	Session("EPQ30624000")=Server.HTMLEncode(Session("EPQ30624000"))							end if 
If Not IsNull(Session("EPQ30631000")) then	Session("EPQ30631000")=Server.HTMLEncode(Session("EPQ30631000"))							end if 
If Not IsNull(Session("EPQ30709000bMM")) then	Session("EPQ30709000bMM")=Server.HTMLEncode(Session("EPQ30709000bMM"))							end if 
If Not IsNull(Session("EPQ30709000bYY")) then	Session("EPQ30709000bYY")=Server.HTMLEncode(Session("EPQ30709000bYY"))							end if 
If Not IsNull(Session("EPQ30709000lMM")) then	Session("EPQ30709000lMM")=Server.HTMLEncode(Session("EPQ30709000lMM"))							end if 
If Not IsNull(Session("EPQ30709000lYY")) then	Session("EPQ30709000lYY")=Server.HTMLEncode(Session("EPQ30709000lYY"))							end if 
If Not IsNull(Session("EPQ30709000rMM")) then	Session("EPQ30709000rMM")=Server.HTMLEncode(Session("EPQ30709000rMM"))							end if 
If Not IsNull(Session("EPQ30709000rYY")) then	Session("EPQ30709000rYY")=Server.HTMLEncode(Session("EPQ30709000rYY"))							end if 
If Not IsNull(Session("EPQ30710000bMM")) then	Session("EPQ30710000bMM")=Server.HTMLEncode(Session("EPQ30710000bMM"))							end if 
If Not IsNull(Session("EPQ30710000lMM")) then	Session("EPQ30710000lMM")=Server.HTMLEncode(Session("EPQ30710000lMM"))							end if 
If Not IsNull(Session("EPQ30710000rMM")) then	Session("EPQ30710000rMM")=Server.HTMLEncode(Session("EPQ30710000rMM"))							end if 
If Not IsNull(Session("EPQ30711000bMM")) then	Session("EPQ30711000bMM")=Server.HTMLEncode(Session("EPQ30711000bMM"))							end if 
If Not IsNull(Session("EPQ30711000bYY")) then	Session("EPQ30711000bYY")=Server.HTMLEncode(Session("EPQ30711000bYY"))							end if 
If Not IsNull(Session("EPQ30711000lMM")) then	Session("EPQ30711000lMM")=Server.HTMLEncode(Session("EPQ30711000lMM"))							end if 
If Not IsNull(Session("EPQ30711000lYY")) then	Session("EPQ30711000lYY")=Server.HTMLEncode(Session("EPQ30711000lYY"))							end if 
If Not IsNull(Session("EPQ30711000rMM")) then	Session("EPQ30711000rMM")=Server.HTMLEncode(Session("EPQ30711000rMM"))							end if 
If Not IsNull(Session("EPQ30711000rYY")) then	Session("EPQ30711000rYY")=Server.HTMLEncode(Session("EPQ30711000rYY"))							end if 
If Not IsNull(Session("EPQ30712000bMM")) then	Session("EPQ30712000bMM")=Server.HTMLEncode(Session("EPQ30712000bMM"))							end if 
If Not IsNull(Session("EPQ30712000bMMs")) then	Session("EPQ30712000bMMs")=Server.HTMLEncode(Session("EPQ30712000bMMs"))							end if 
If Not IsNull(Session("EPQ30712000bYY")) then	Session("EPQ30712000bYY")=Server.HTMLEncode(Session("EPQ30712000bYY"))							end if 
If Not IsNull(Session("EPQ30712000bYYs")) then	Session("EPQ30712000bYYs")=Server.HTMLEncode(Session("EPQ30712000bYYs"))							end if 
If Not IsNull(Session("EPQ30712000lMM")) then	Session("EPQ30712000lMM")=Server.HTMLEncode(Session("EPQ30712000lMM"))							end if 
If Not IsNull(Session("EPQ30712000lMMs")) then	Session("EPQ30712000lMMs")=Server.HTMLEncode(Session("EPQ30712000lMMs"))							end if 
If Not IsNull(Session("EPQ30712000lYY")) then	Session("EPQ30712000lYY")=Server.HTMLEncode(Session("EPQ30712000lYY"))							end if 
If Not IsNull(Session("EPQ30712000lYYs")) then	Session("EPQ30712000lYYs")=Server.HTMLEncode(Session("EPQ30712000lYYs"))							end if 
If Not IsNull(Session("EPQ30712000rMM")) then	Session("EPQ30712000rMM")=Server.HTMLEncode(Session("EPQ30712000rMM"))							end if 
If Not IsNull(Session("EPQ30712000rMMs")) then	Session("EPQ30712000rMMs")=Server.HTMLEncode(Session("EPQ30712000rMMs"))							end if 
If Not IsNull(Session("EPQ30712000rYY")) then	Session("EPQ30712000rYY")=Server.HTMLEncode(Session("EPQ30712000rYY"))							end if 
If Not IsNull(Session("EPQ30712000rYYs")) then	Session("EPQ30712000rYYs")=Server.HTMLEncode(Session("EPQ30712000rYYs"))							end if 
If Not IsNull(Session("EPQ30754020")) then	Session("EPQ30754020")=Server.HTMLEncode(Session("EPQ30754020"))							end if 
If Not IsNull(Session("EPQ30754030")) then	Session("EPQ30754030")=Server.HTMLEncode(Session("EPQ30754030"))							end if 
If Not IsNull(Session("EPQ30754040")) then	Session("EPQ30754040")=Server.HTMLEncode(Session("EPQ30754040"))							end if 
If Not IsNull(Session("EPQ30754070")) then	Session("EPQ30754070")=Server.HTMLEncode(Session("EPQ30754070"))							end if 
If Not IsNull(Session("EPQ30754080")) then	Session("EPQ30754080")=Server.HTMLEncode(Session("EPQ30754080"))							end if 
If Not IsNull(Session("EPQ30754090")) then	Session("EPQ30754090")=Server.HTMLEncode(Session("EPQ30754090"))							end if 
If Not IsNull(Session("EPQ30754120")) then	Session("EPQ30754120")=Server.HTMLEncode(Session("EPQ30754120"))							end if 
If Not IsNull(Session("EPQ30754130")) then	Session("EPQ30754130")=Server.HTMLEncode(Session("EPQ30754130"))							end if 
If Not IsNull(Session("EPQ30754140")) then	Session("EPQ30754140")=Server.HTMLEncode(Session("EPQ30754140"))							end if 
If Not IsNull(Session("EPQ30754170")) then	Session("EPQ30754170")=Server.HTMLEncode(Session("EPQ30754170"))							end if 
If Not IsNull(Session("EPQ30754180")) then	Session("EPQ30754180")=Server.HTMLEncode(Session("EPQ30754180"))							end if 
If Not IsNull(Session("EPQ30754190")) then	Session("EPQ30754190")=Server.HTMLEncode(Session("EPQ30754190"))							end if 
If Not IsNull(Session("EPQ30754220")) then	Session("EPQ30754220")=Server.HTMLEncode(Session("EPQ30754220"))							end if 
If Not IsNull(Session("EPQ30754230")) then	Session("EPQ30754230")=Server.HTMLEncode(Session("EPQ30754230"))							end if 
If Not IsNull(Session("EPQ30754240")) then	Session("EPQ30754240")=Server.HTMLEncode(Session("EPQ30754240"))							end if 
If Not IsNull(Session("EPQ30754270")) then	Session("EPQ30754270")=Server.HTMLEncode(Session("EPQ30754270"))							end if 
If Not IsNull(Session("EPQ30754280")) then	Session("EPQ30754280")=Server.HTMLEncode(Session("EPQ30754280"))							end if 
If Not IsNull(Session("EPQ30754290")) then	Session("EPQ30754290")=Server.HTMLEncode(Session("EPQ30754290"))							end if 
If Not IsNull(Session("EPQ30754320")) then	Session("EPQ30754320")=Server.HTMLEncode(Session("EPQ30754320"))							end if 
If Not IsNull(Session("EPQ30754330")) then	Session("EPQ30754330")=Server.HTMLEncode(Session("EPQ30754330"))							end if 
If Not IsNull(Session("EPQ30754340")) then	Session("EPQ30754340")=Server.HTMLEncode(Session("EPQ30754340"))							end if 
If Not IsNull(Session("EPQ30754370")) then	Session("EPQ30754370")=Server.HTMLEncode(Session("EPQ30754370"))							end if 
If Not IsNull(Session("EPQ30754380")) then	Session("EPQ30754380")=Server.HTMLEncode(Session("EPQ30754380"))							end if 
If Not IsNull(Session("EPQ30754390")) then	Session("EPQ30754390")=Server.HTMLEncode(Session("EPQ30754390"))							end if 
If Not IsNull(Session("EPQ30754420")) then	Session("EPQ30754420")=Server.HTMLEncode(Session("EPQ30754420"))							end if 
If Not IsNull(Session("EPQ30754430")) then	Session("EPQ30754430")=Server.HTMLEncode(Session("EPQ30754430"))							end if 
If Not IsNull(Session("EPQ30754440")) then	Session("EPQ30754440")=Server.HTMLEncode(Session("EPQ30754440"))							end if 
If Not IsNull(Session("EPQ30754470")) then	Session("EPQ30754470")=Server.HTMLEncode(Session("EPQ30754470"))							end if 
If Not IsNull(Session("EPQ30754480")) then	Session("EPQ30754480")=Server.HTMLEncode(Session("EPQ30754480"))							end if 
If Not IsNull(Session("EPQ30754490")) then	Session("EPQ30754490")=Server.HTMLEncode(Session("EPQ30754490"))							end if 
If Not IsNull(Session("EPQ30754520")) then	Session("EPQ30754520")=Server.HTMLEncode(Session("EPQ30754520"))							end if 
If Not IsNull(Session("EPQ30754530")) then	Session("EPQ30754530")=Server.HTMLEncode(Session("EPQ30754530"))							end if 
If Not IsNull(Session("EPQ30754540")) then	Session("EPQ30754540")=Server.HTMLEncode(Session("EPQ30754540"))							end if 
If Not IsNull(Session("EPQ30754570")) then	Session("EPQ30754570")=Server.HTMLEncode(Session("EPQ30754570"))							end if 
If Not IsNull(Session("EPQ30754580")) then	Session("EPQ30754580")=Server.HTMLEncode(Session("EPQ30754580"))							end if 
If Not IsNull(Session("EPQ30754590")) then	Session("EPQ30754590")=Server.HTMLEncode(Session("EPQ30754590"))							end if 
If Not IsNull(Session("EPQ30754620")) then	Session("EPQ30754620")=Server.HTMLEncode(Session("EPQ30754620"))							end if 
If Not IsNull(Session("EPQ30754630")) then	Session("EPQ30754630")=Server.HTMLEncode(Session("EPQ30754630"))							end if 
If Not IsNull(Session("EPQ30754640")) then	Session("EPQ30754640")=Server.HTMLEncode(Session("EPQ30754640"))							end if 
If Not IsNull(Session("EPQ30754670")) then	Session("EPQ30754670")=Server.HTMLEncode(Session("EPQ30754670"))							end if 
If Not IsNull(Session("EPQ30754680")) then	Session("EPQ30754680")=Server.HTMLEncode(Session("EPQ30754680"))							end if 
If Not IsNull(Session("EPQ30754690")) then	Session("EPQ30754690")=Server.HTMLEncode(Session("EPQ30754690"))							end if 
If Not IsNull(Session("EPQ30754720")) then	Session("EPQ30754720")=Server.HTMLEncode(Session("EPQ30754720"))							end if 
If Not IsNull(Session("EPQ30754730")) then	Session("EPQ30754730")=Server.HTMLEncode(Session("EPQ30754730"))							end if 
If Not IsNull(Session("EPQ30754740")) then	Session("EPQ30754740")=Server.HTMLEncode(Session("EPQ30754740"))							end if 
If Not IsNull(Session("EPQ30754770")) then	Session("EPQ30754770")=Server.HTMLEncode(Session("EPQ30754770"))							end if 
If Not IsNull(Session("EPQ30754780")) then	Session("EPQ30754780")=Server.HTMLEncode(Session("EPQ30754780"))							end if 
If Not IsNull(Session("EPQ30754790")) then	Session("EPQ30754790")=Server.HTMLEncode(Session("EPQ30754790"))							end if 
If Not IsNull(Session("EPQ30754820")) then	Session("EPQ30754820")=Server.HTMLEncode(Session("EPQ30754820"))							end if 
If Not IsNull(Session("EPQ30754830")) then	Session("EPQ30754830")=Server.HTMLEncode(Session("EPQ30754830"))							end if 
If Not IsNull(Session("EPQ30754840")) then	Session("EPQ30754840")=Server.HTMLEncode(Session("EPQ30754840"))							end if 
If Not IsNull(Session("EPQ30754870")) then	Session("EPQ30754870")=Server.HTMLEncode(Session("EPQ30754870"))							end if 
If Not IsNull(Session("EPQ30754880")) then	Session("EPQ30754880")=Server.HTMLEncode(Session("EPQ30754880"))							end if 
If Not IsNull(Session("EPQ30754890")) then	Session("EPQ30754890")=Server.HTMLEncode(Session("EPQ30754890"))							end if 
If Not IsNull(Session("EPQ30754920")) then	Session("EPQ30754920")=Server.HTMLEncode(Session("EPQ30754920"))							end if 
If Not IsNull(Session("EPQ30754930")) then	Session("EPQ30754930")=Server.HTMLEncode(Session("EPQ30754930"))							end if 
If Not IsNull(Session("EPQ30754940")) then	Session("EPQ30754940")=Server.HTMLEncode(Session("EPQ30754940"))							end if 
If Not IsNull(Session("EPQ30754970")) then	Session("EPQ30754970")=Server.HTMLEncode(Session("EPQ30754970"))							end if 
If Not IsNull(Session("EPQ30754980")) then	Session("EPQ30754980")=Server.HTMLEncode(Session("EPQ30754980"))							end if 
If Not IsNull(Session("EPQ30754990")) then	Session("EPQ30754990")=Server.HTMLEncode(Session("EPQ30754990"))							end if 
If Not IsNull(Session("EPQ30754990Describe")) then	Session("EPQ30754990Describe")=Server.HTMLEncode(Session("EPQ30754990Describe"))							end if 
If Not IsNull(Session("EPQ30755020")) then	Session("EPQ30755020")=Server.HTMLEncode(Session("EPQ30755020"))							end if 
If Not IsNull(Session("EPQ30755030")) then	Session("EPQ30755030")=Server.HTMLEncode(Session("EPQ30755030"))							end if 
If Not IsNull(Session("EPQ30755040")) then	Session("EPQ30755040")=Server.HTMLEncode(Session("EPQ30755040"))							end if 
If Not IsNull(Session("EPQ30755070")) then	Session("EPQ30755070")=Server.HTMLEncode(Session("EPQ30755070"))							end if 
If Not IsNull(Session("EPQ30755080")) then	Session("EPQ30755080")=Server.HTMLEncode(Session("EPQ30755080"))							end if 
If Not IsNull(Session("EPQ30755090")) then	Session("EPQ30755090")=Server.HTMLEncode(Session("EPQ30755090"))							end if 
If Not IsNull(Session("EPQ30755120")) then	Session("EPQ30755120")=Server.HTMLEncode(Session("EPQ30755120"))							end if 
If Not IsNull(Session("EPQ30755130")) then	Session("EPQ30755130")=Server.HTMLEncode(Session("EPQ30755130"))							end if 
If Not IsNull(Session("EPQ30755140")) then	Session("EPQ30755140")=Server.HTMLEncode(Session("EPQ30755140"))							end if 
If Not IsNull(Session("EPQ30755170")) then	Session("EPQ30755170")=Server.HTMLEncode(Session("EPQ30755170"))							end if 
If Not IsNull(Session("EPQ30755180")) then	Session("EPQ30755180")=Server.HTMLEncode(Session("EPQ30755180"))							end if 
If Not IsNull(Session("EPQ30755190")) then	Session("EPQ30755190")=Server.HTMLEncode(Session("EPQ30755190"))							end if 
If Not IsNull(Session("EPQ30755220")) then	Session("EPQ30755220")=Server.HTMLEncode(Session("EPQ30755220"))							end if 
If Not IsNull(Session("EPQ30755230")) then	Session("EPQ30755230")=Server.HTMLEncode(Session("EPQ30755230"))							end if 
If Not IsNull(Session("EPQ30755240")) then	Session("EPQ30755240")=Server.HTMLEncode(Session("EPQ30755240"))							end if 
If Not IsNull(Session("EPQ30755270")) then	Session("EPQ30755270")=Server.HTMLEncode(Session("EPQ30755270"))							end if 
If Not IsNull(Session("EPQ30755280")) then	Session("EPQ30755280")=Server.HTMLEncode(Session("EPQ30755280"))							end if 
If Not IsNull(Session("EPQ30755290")) then	Session("EPQ30755290")=Server.HTMLEncode(Session("EPQ30755290"))							end if 
If Not IsNull(Session("EPQ30755320")) then	Session("EPQ30755320")=Server.HTMLEncode(Session("EPQ30755320"))							end if 
If Not IsNull(Session("EPQ30755330")) then	Session("EPQ30755330")=Server.HTMLEncode(Session("EPQ30755330"))							end if 
If Not IsNull(Session("EPQ30755340")) then	Session("EPQ30755340")=Server.HTMLEncode(Session("EPQ30755340"))							end if 
If Not IsNull(Session("EPQ30755370")) then	Session("EPQ30755370")=Server.HTMLEncode(Session("EPQ30755370"))							end if 
If Not IsNull(Session("EPQ30755380")) then	Session("EPQ30755380")=Server.HTMLEncode(Session("EPQ30755380"))							end if 
If Not IsNull(Session("EPQ30755390")) then	Session("EPQ30755390")=Server.HTMLEncode(Session("EPQ30755390"))							end if 
If Not IsNull(Session("EPQ30755390Describe")) then	Session("EPQ30755390Describe")=Server.HTMLEncode(Session("EPQ30755390Describe"))							end if 
If Not IsNull(Session("EPQ30755420")) then	Session("EPQ30755420")=Server.HTMLEncode(Session("EPQ30755420"))							end if 
If Not IsNull(Session("EPQ30755430")) then	Session("EPQ30755430")=Server.HTMLEncode(Session("EPQ30755430"))							end if 
If Not IsNull(Session("EPQ30755440")) then	Session("EPQ30755440")=Server.HTMLEncode(Session("EPQ30755440"))							end if 
If Not IsNull(Session("EPQ30755470")) then	Session("EPQ30755470")=Server.HTMLEncode(Session("EPQ30755470"))							end if 
If Not IsNull(Session("EPQ30755480")) then	Session("EPQ30755480")=Server.HTMLEncode(Session("EPQ30755480"))							end if 
If Not IsNull(Session("EPQ30755490")) then	Session("EPQ30755490")=Server.HTMLEncode(Session("EPQ30755490"))							end if 
If Not IsNull(Session("EPQ30755520")) then	Session("EPQ30755520")=Server.HTMLEncode(Session("EPQ30755520"))							end if 
If Not IsNull(Session("EPQ30755530")) then	Session("EPQ30755530")=Server.HTMLEncode(Session("EPQ30755530"))							end if 
If Not IsNull(Session("EPQ30755540")) then	Session("EPQ30755540")=Server.HTMLEncode(Session("EPQ30755540"))							end if 
If Not IsNull(Session("EPQ30755570")) then	Session("EPQ30755570")=Server.HTMLEncode(Session("EPQ30755570"))							end if 
If Not IsNull(Session("EPQ30755580")) then	Session("EPQ30755580")=Server.HTMLEncode(Session("EPQ30755580"))							end if 
If Not IsNull(Session("EPQ30755590")) then	Session("EPQ30755590")=Server.HTMLEncode(Session("EPQ30755590"))							end if 
If Not IsNull(Session("EPQ30755620")) then	Session("EPQ30755620")=Server.HTMLEncode(Session("EPQ30755620"))							end if 
If Not IsNull(Session("EPQ30755630")) then	Session("EPQ30755630")=Server.HTMLEncode(Session("EPQ30755630"))							end if 
If Not IsNull(Session("EPQ30755640")) then	Session("EPQ30755640")=Server.HTMLEncode(Session("EPQ30755640"))							end if 
If Not IsNull(Session("EPQ30755670")) then	Session("EPQ30755670")=Server.HTMLEncode(Session("EPQ30755670"))							end if 
If Not IsNull(Session("EPQ30755680")) then	Session("EPQ30755680")=Server.HTMLEncode(Session("EPQ30755680"))							end if 
If Not IsNull(Session("EPQ30755690")) then	Session("EPQ30755690")=Server.HTMLEncode(Session("EPQ30755690"))							end if 
If Not IsNull(Session("EPQ30755720")) then	Session("EPQ30755720")=Server.HTMLEncode(Session("EPQ30755720"))							end if 
If Not IsNull(Session("EPQ30755730")) then	Session("EPQ30755730")=Server.HTMLEncode(Session("EPQ30755730"))							end if 
If Not IsNull(Session("EPQ30755740")) then	Session("EPQ30755740")=Server.HTMLEncode(Session("EPQ30755740"))							end if 
If Not IsNull(Session("EPQ30755770")) then	Session("EPQ30755770")=Server.HTMLEncode(Session("EPQ30755770"))							end if 
If Not IsNull(Session("EPQ30755780")) then	Session("EPQ30755780")=Server.HTMLEncode(Session("EPQ30755780"))							end if 
If Not IsNull(Session("EPQ30755790")) then	Session("EPQ30755790")=Server.HTMLEncode(Session("EPQ30755790"))							end if 
If Not IsNull(Session("EPQ30755790Describe")) then	Session("EPQ30755790Describe")=Server.HTMLEncode(Session("EPQ30755790Describe"))							end if 
If Not IsNull(Session("EPQ30755820")) then	Session("EPQ30755820")=Server.HTMLEncode(Session("EPQ30755820"))							end if 
If Not IsNull(Session("EPQ30755830")) then	Session("EPQ30755830")=Server.HTMLEncode(Session("EPQ30755830"))							end if 
If Not IsNull(Session("EPQ30755840")) then	Session("EPQ30755840")=Server.HTMLEncode(Session("EPQ30755840"))							end if 
If Not IsNull(Session("EPQ30755870")) then	Session("EPQ30755870")=Server.HTMLEncode(Session("EPQ30755870"))							end if 
If Not IsNull(Session("EPQ30755880")) then	Session("EPQ30755880")=Server.HTMLEncode(Session("EPQ30755880"))							end if 
If Not IsNull(Session("EPQ30755890")) then	Session("EPQ30755890")=Server.HTMLEncode(Session("EPQ30755890"))							end if 
If Not IsNull(Session("EPQ30755920")) then	Session("EPQ30755920")=Server.HTMLEncode(Session("EPQ30755920"))							end if 
If Not IsNull(Session("EPQ30755930")) then	Session("EPQ30755930")=Server.HTMLEncode(Session("EPQ30755930"))							end if 
If Not IsNull(Session("EPQ30755940")) then	Session("EPQ30755940")=Server.HTMLEncode(Session("EPQ30755940"))							end if 
If Not IsNull(Session("EPQ30755940Describe")) then	Session("EPQ30755940Describe")=Server.HTMLEncode(Session("EPQ30755940Describe"))							end if 
If Not IsNull(Session("EPQ30755970")) then	Session("EPQ30755970")=Server.HTMLEncode(Session("EPQ30755970"))							end if 
If Not IsNull(Session("EPQ30755980")) then	Session("EPQ30755980")=Server.HTMLEncode(Session("EPQ30755980"))							end if 
If Not IsNull(Session("EPQ30755990")) then	Session("EPQ30755990")=Server.HTMLEncode(Session("EPQ30755990"))							end if 
If Not IsNull(Session("EPQ30756020")) then	Session("EPQ30756020")=Server.HTMLEncode(Session("EPQ30756020"))							end if 
If Not IsNull(Session("EPQ30756030")) then	Session("EPQ30756030")=Server.HTMLEncode(Session("EPQ30756030"))							end if 
If Not IsNull(Session("EPQ30756040")) then	Session("EPQ30756040")=Server.HTMLEncode(Session("EPQ30756040"))							end if 
If Not IsNull(Session("EPQ30756070")) then	Session("EPQ30756070")=Server.HTMLEncode(Session("EPQ30756070"))							end if 
If Not IsNull(Session("EPQ30756080")) then	Session("EPQ30756080")=Server.HTMLEncode(Session("EPQ30756080"))							end if 
If Not IsNull(Session("EPQ30756090")) then	Session("EPQ30756090")=Server.HTMLEncode(Session("EPQ30756090"))							end if 
If Not IsNull(Session("EPQ30756120")) then	Session("EPQ30756120")=Server.HTMLEncode(Session("EPQ30756120"))							end if 
If Not IsNull(Session("EPQ30756121")) then	Session("EPQ30756121")=Server.HTMLEncode(Session("EPQ30756121"))							end if 
If Not IsNull(Session("EPQ30756122")) then	Session("EPQ30756122")=Server.HTMLEncode(Session("EPQ30756122"))							end if 
If Not IsNull(Session("EPQ30756130")) then	Session("EPQ30756130")=Server.HTMLEncode(Session("EPQ30756130"))							end if 
If Not IsNull(Session("EPQ30756131")) then	Session("EPQ30756131")=Server.HTMLEncode(Session("EPQ30756131"))							end if 
If Not IsNull(Session("EPQ30756132")) then	Session("EPQ30756132")=Server.HTMLEncode(Session("EPQ30756132"))							end if 
If Not IsNull(Session("EPQ30756170")) then	Session("EPQ30756170")=Server.HTMLEncode(Session("EPQ30756170"))							end if 
If Not IsNull(Session("EPQ30756171")) then	Session("EPQ30756171")=Server.HTMLEncode(Session("EPQ30756171"))							end if 
If Not IsNull(Session("EPQ30756172")) then	Session("EPQ30756172")=Server.HTMLEncode(Session("EPQ30756172"))							end if 
If Not IsNull(Session("EPQ30756180")) then	Session("EPQ30756180")=Server.HTMLEncode(Session("EPQ30756180"))							end if 
If Not IsNull(Session("EPQ30756181")) then	Session("EPQ30756181")=Server.HTMLEncode(Session("EPQ30756181"))							end if 
If Not IsNull(Session("EPQ30756182")) then	Session("EPQ30756182")=Server.HTMLEncode(Session("EPQ30756182"))							end if 
If Not IsNull(Session("EPQ30756220")) then	Session("EPQ30756220")=Server.HTMLEncode(Session("EPQ30756220"))							end if 
If Not IsNull(Session("EPQ30756230")) then	Session("EPQ30756230")=Server.HTMLEncode(Session("EPQ30756230"))							end if 
If Not IsNull(Session("EPQ30756240")) then	Session("EPQ30756240")=Server.HTMLEncode(Session("EPQ30756240"))							end if 
If Not IsNull(Session("EPQ30756420")) then	Session("EPQ30756420")=Server.HTMLEncode(Session("EPQ30756420"))							end if 
If Not IsNull(Session("EPQ30756430")) then	Session("EPQ30756430")=Server.HTMLEncode(Session("EPQ30756430"))							end if 
If Not IsNull(Session("EPQ30756440")) then	Session("EPQ30756440")=Server.HTMLEncode(Session("EPQ30756440"))							end if 
If Not IsNull(Session("EPQ30756470")) then	Session("EPQ30756470")=Server.HTMLEncode(Session("EPQ30756470"))							end if 
If Not IsNull(Session("EPQ30756480")) then	Session("EPQ30756480")=Server.HTMLEncode(Session("EPQ30756480"))							end if 
If Not IsNull(Session("EPQ30756490")) then	Session("EPQ30756490")=Server.HTMLEncode(Session("EPQ30756490"))							end if 
If Not IsNull(Session("EPQ30756490Describe")) then	Session("EPQ30756490Describe")=Server.HTMLEncode(Session("EPQ30756490Describe"))							end if 
If Not IsNull(Session("EPQ30756520")) then	Session("EPQ30756520")=Server.HTMLEncode(Session("EPQ30756520"))							end if 
If Not IsNull(Session("EPQ30756530")) then	Session("EPQ30756530")=Server.HTMLEncode(Session("EPQ30756530"))							end if 
If Not IsNull(Session("EPQ30756540")) then	Session("EPQ30756540")=Server.HTMLEncode(Session("EPQ30756540"))							end if 
If Not IsNull(Session("EPQ30756570")) then	Session("EPQ30756570")=Server.HTMLEncode(Session("EPQ30756570"))							end if 
If Not IsNull(Session("EPQ30756580")) then	Session("EPQ30756580")=Server.HTMLEncode(Session("EPQ30756580"))							end if 
If Not IsNull(Session("EPQ30756590")) then	Session("EPQ30756590")=Server.HTMLEncode(Session("EPQ30756590"))							end if 
If Not IsNull(Session("EPQ30756620")) then	Session("EPQ30756620")=Server.HTMLEncode(Session("EPQ30756620"))							end if 
If Not IsNull(Session("EPQ30756630")) then	Session("EPQ30756630")=Server.HTMLEncode(Session("EPQ30756630"))							end if 
If Not IsNull(Session("EPQ30756640")) then	Session("EPQ30756640")=Server.HTMLEncode(Session("EPQ30756640"))							end if 
If Not IsNull(Session("EPQ30756670")) then	Session("EPQ30756670")=Server.HTMLEncode(Session("EPQ30756670"))							end if 
If Not IsNull(Session("EPQ30756680")) then	Session("EPQ30756680")=Server.HTMLEncode(Session("EPQ30756680"))							end if 
If Not IsNull(Session("EPQ30756690")) then	Session("EPQ30756690")=Server.HTMLEncode(Session("EPQ30756690"))							end if 
If Not IsNull(Session("EPQ30756720")) then	Session("EPQ30756720")=Server.HTMLEncode(Session("EPQ30756720"))							end if 
If Not IsNull(Session("EPQ30756730")) then	Session("EPQ30756730")=Server.HTMLEncode(Session("EPQ30756730"))							end if 
If Not IsNull(Session("EPQ30756740")) then	Session("EPQ30756740")=Server.HTMLEncode(Session("EPQ30756740"))							end if 
If Not IsNull(Session("EPQ30756770")) then	Session("EPQ30756770")=Server.HTMLEncode(Session("EPQ30756770"))							end if 
If Not IsNull(Session("EPQ30756780")) then	Session("EPQ30756780")=Server.HTMLEncode(Session("EPQ30756780"))							end if 
If Not IsNull(Session("EPQ30756790")) then	Session("EPQ30756790")=Server.HTMLEncode(Session("EPQ30756790"))							end if 
If Not IsNull(Session("EPQ30756820")) then	Session("EPQ30756820")=Server.HTMLEncode(Session("EPQ30756820"))							end if 
If Not IsNull(Session("EPQ30756830")) then	Session("EPQ30756830")=Server.HTMLEncode(Session("EPQ30756830"))							end if 
If Not IsNull(Session("EPQ30756840")) then	Session("EPQ30756840")=Server.HTMLEncode(Session("EPQ30756840"))							end if 
If Not IsNull(Session("EPQ30756870")) then	Session("EPQ30756870")=Server.HTMLEncode(Session("EPQ30756870"))							end if 
If Not IsNull(Session("EPQ30756880")) then	Session("EPQ30756880")=Server.HTMLEncode(Session("EPQ30756880"))							end if 
If Not IsNull(Session("EPQ30756890")) then	Session("EPQ30756890")=Server.HTMLEncode(Session("EPQ30756890"))							end if 
If Not IsNull(Session("EPQ30756890Describe")) then	Session("EPQ30756890Describe")=Server.HTMLEncode(Session("EPQ30756890Describe"))							end if 
If Not IsNull(Session("EPQ30756920")) then	Session("EPQ30756920")=Server.HTMLEncode(Session("EPQ30756920"))							end if 
If Not IsNull(Session("EPQ30756930")) then	Session("EPQ30756930")=Server.HTMLEncode(Session("EPQ30756930"))							end if 
If Not IsNull(Session("EPQ30756940")) then	Session("EPQ30756940")=Server.HTMLEncode(Session("EPQ30756940"))							end if 
If Not IsNull(Session("EPQ30756970")) then	Session("EPQ30756970")=Server.HTMLEncode(Session("EPQ30756970"))							end if 
If Not IsNull(Session("EPQ30756980")) then	Session("EPQ30756980")=Server.HTMLEncode(Session("EPQ30756980"))							end if 
If Not IsNull(Session("EPQ30756990")) then	Session("EPQ30756990")=Server.HTMLEncode(Session("EPQ30756990"))							end if 
If Not IsNull(Session("EPQ30757020")) then	Session("EPQ30757020")=Server.HTMLEncode(Session("EPQ30757020"))							end if 
If Not IsNull(Session("EPQ30757030")) then	Session("EPQ30757030")=Server.HTMLEncode(Session("EPQ30757030"))							end if 
If Not IsNull(Session("EPQ30757040")) then	Session("EPQ30757040")=Server.HTMLEncode(Session("EPQ30757040"))							end if 
If Not IsNull(Session("EPQ30757070")) then	Session("EPQ30757070")=Server.HTMLEncode(Session("EPQ30757070"))							end if 
If Not IsNull(Session("EPQ30757080")) then	Session("EPQ30757080")=Server.HTMLEncode(Session("EPQ30757080"))							end if 
If Not IsNull(Session("EPQ30757090")) then	Session("EPQ30757090")=Server.HTMLEncode(Session("EPQ30757090"))							end if 
If Not IsNull(Session("EPQ30757220")) then	Session("EPQ30757220")=Server.HTMLEncode(Session("EPQ30757220"))							end if 
If Not IsNull(Session("EPQ30757230")) then	Session("EPQ30757230")=Server.HTMLEncode(Session("EPQ30757230"))							end if 
If Not IsNull(Session("EPQ30757240")) then	Session("EPQ30757240")=Server.HTMLEncode(Session("EPQ30757240"))							end if 
If Not IsNull(Session("EPQ30757270")) then	Session("EPQ30757270")=Server.HTMLEncode(Session("EPQ30757270"))							end if 
If Not IsNull(Session("EPQ30757280")) then	Session("EPQ30757280")=Server.HTMLEncode(Session("EPQ30757280"))							end if 
If Not IsNull(Session("EPQ30757290")) then	Session("EPQ30757290")=Server.HTMLEncode(Session("EPQ30757290"))							end if 
If Not IsNull(Session("EPQ30757320")) then	Session("EPQ30757320")=Server.HTMLEncode(Session("EPQ30757320"))							end if 
If Not IsNull(Session("EPQ30757330")) then	Session("EPQ30757330")=Server.HTMLEncode(Session("EPQ30757330"))							end if 
If Not IsNull(Session("EPQ30757340")) then	Session("EPQ30757340")=Server.HTMLEncode(Session("EPQ30757340"))							end if 
If Not IsNull(Session("EPQ30757370")) then	Session("EPQ30757370")=Server.HTMLEncode(Session("EPQ30757370"))							end if 
If Not IsNull(Session("EPQ30757380")) then	Session("EPQ30757380")=Server.HTMLEncode(Session("EPQ30757380"))							end if 
If Not IsNull(Session("EPQ30757390")) then	Session("EPQ30757390")=Server.HTMLEncode(Session("EPQ30757390"))							end if 
If Not IsNull(Session("EPQ30757420")) then	Session("EPQ30757420")=Server.HTMLEncode(Session("EPQ30757420"))							end if 
If Not IsNull(Session("EPQ30757430")) then	Session("EPQ30757430")=Server.HTMLEncode(Session("EPQ30757430"))							end if 
If Not IsNull(Session("EPQ30757440")) then	Session("EPQ30757440")=Server.HTMLEncode(Session("EPQ30757440"))							end if 
If Not IsNull(Session("EPQ30757440Describe")) then	Session("EPQ30757440Describe")=Server.HTMLEncode(Session("EPQ30757440Describe"))							end if 
If Not IsNull(Session("EPQ30757470")) then	Session("EPQ30757470")=Server.HTMLEncode(Session("EPQ30757470"))							end if 
If Not IsNull(Session("EPQ30757480")) then	Session("EPQ30757480")=Server.HTMLEncode(Session("EPQ30757480"))							end if 
If Not IsNull(Session("EPQ30757490")) then	Session("EPQ30757490")=Server.HTMLEncode(Session("EPQ30757490"))							end if 
If Not IsNull(Session("EPQ30757520")) then	Session("EPQ30757520")=Server.HTMLEncode(Session("EPQ30757520"))							end if 
If Not IsNull(Session("EPQ30757530")) then	Session("EPQ30757530")=Server.HTMLEncode(Session("EPQ30757530"))							end if 
If Not IsNull(Session("EPQ30757540")) then	Session("EPQ30757540")=Server.HTMLEncode(Session("EPQ30757540"))							end if 
If Not IsNull(Session("EPQ30757570")) then	Session("EPQ30757570")=Server.HTMLEncode(Session("EPQ30757570"))							end if 
If Not IsNull(Session("EPQ30757580")) then	Session("EPQ30757580")=Server.HTMLEncode(Session("EPQ30757580"))							end if 
If Not IsNull(Session("EPQ30757590")) then	Session("EPQ30757590")=Server.HTMLEncode(Session("EPQ30757590"))							end if 
If Not IsNull(Session("EPQ30757620")) then	Session("EPQ30757620")=Server.HTMLEncode(Session("EPQ30757620"))							end if 
If Not IsNull(Session("EPQ30757630")) then	Session("EPQ30757630")=Server.HTMLEncode(Session("EPQ30757630"))							end if 
If Not IsNull(Session("EPQ30757640")) then	Session("EPQ30757640")=Server.HTMLEncode(Session("EPQ30757640"))							end if 
If Not IsNull(Session("EPQ30757670")) then	Session("EPQ30757670")=Server.HTMLEncode(Session("EPQ30757670"))							end if 
If Not IsNull(Session("EPQ30757680")) then	Session("EPQ30757680")=Server.HTMLEncode(Session("EPQ30757680"))							end if 
If Not IsNull(Session("EPQ30757690")) then	Session("EPQ30757690")=Server.HTMLEncode(Session("EPQ30757690"))							end if 
If Not IsNull(Session("EPQ30757720")) then	Session("EPQ30757720")=Server.HTMLEncode(Session("EPQ30757720"))							end if 
If Not IsNull(Session("EPQ30757730")) then	Session("EPQ30757730")=Server.HTMLEncode(Session("EPQ30757730"))							end if 
If Not IsNull(Session("EPQ30757740")) then	Session("EPQ30757740")=Server.HTMLEncode(Session("EPQ30757740"))							end if 
If Not IsNull(Session("EPQ30757770")) then	Session("EPQ30757770")=Server.HTMLEncode(Session("EPQ30757770"))							end if 
If Not IsNull(Session("EPQ30757780")) then	Session("EPQ30757780")=Server.HTMLEncode(Session("EPQ30757780"))							end if 
If Not IsNull(Session("EPQ30757790")) then	Session("EPQ30757790")=Server.HTMLEncode(Session("EPQ30757790"))							end if 
If Not IsNull(Session("EPQ30757820")) then	Session("EPQ30757820")=Server.HTMLEncode(Session("EPQ30757820"))							end if 
If Not IsNull(Session("EPQ30757830")) then	Session("EPQ30757830")=Server.HTMLEncode(Session("EPQ30757830"))							end if 
If Not IsNull(Session("EPQ30757840")) then	Session("EPQ30757840")=Server.HTMLEncode(Session("EPQ30757840"))							end if 
If Not IsNull(Session("EPQ30757870")) then	Session("EPQ30757870")=Server.HTMLEncode(Session("EPQ30757870"))							end if 
If Not IsNull(Session("EPQ30757880")) then	Session("EPQ30757880")=Server.HTMLEncode(Session("EPQ30757880"))							end if 
If Not IsNull(Session("EPQ30757890")) then	Session("EPQ30757890")=Server.HTMLEncode(Session("EPQ30757890"))							end if 
If Not IsNull(Session("EPQ30757920")) then	Session("EPQ30757920")=Server.HTMLEncode(Session("EPQ30757920"))							end if 
If Not IsNull(Session("EPQ30757930")) then	Session("EPQ30757930")=Server.HTMLEncode(Session("EPQ30757930"))							end if 
If Not IsNull(Session("EPQ30757940")) then	Session("EPQ30757940")=Server.HTMLEncode(Session("EPQ30757940"))							end if 
If Not IsNull(Session("EPQ30757970")) then	Session("EPQ30757970")=Server.HTMLEncode(Session("EPQ30757970"))							end if 
If Not IsNull(Session("EPQ30757980")) then	Session("EPQ30757980")=Server.HTMLEncode(Session("EPQ30757980"))							end if 
If Not IsNull(Session("EPQ30757990")) then	Session("EPQ30757990")=Server.HTMLEncode(Session("EPQ30757990"))							end if 
If Not IsNull(Session("EPQ30758020")) then	Session("EPQ30758020")=Server.HTMLEncode(Session("EPQ30758020"))							end if 
If Not IsNull(Session("EPQ30758030")) then	Session("EPQ30758030")=Server.HTMLEncode(Session("EPQ30758030"))							end if 
If Not IsNull(Session("EPQ30758040")) then	Session("EPQ30758040")=Server.HTMLEncode(Session("EPQ30758040"))							end if 
If Not IsNull(Session("EPQ30758070")) then	Session("EPQ30758070")=Server.HTMLEncode(Session("EPQ30758070"))							end if 
If Not IsNull(Session("EPQ30758080")) then	Session("EPQ30758080")=Server.HTMLEncode(Session("EPQ30758080"))							end if 
If Not IsNull(Session("EPQ30758090")) then	Session("EPQ30758090")=Server.HTMLEncode(Session("EPQ30758090"))							end if 
If Not IsNull(Session("EPQ30758120")) then	Session("EPQ30758120")=Server.HTMLEncode(Session("EPQ30758120"))							end if 
If Not IsNull(Session("EPQ30758130")) then	Session("EPQ30758130")=Server.HTMLEncode(Session("EPQ30758130"))							end if 
If Not IsNull(Session("EPQ30758140")) then	Session("EPQ30758140")=Server.HTMLEncode(Session("EPQ30758140"))							end if 
If Not IsNull(Session("EPQ30758140Describe")) then	Session("EPQ30758140Describe")=Server.HTMLEncode(Session("EPQ30758140Describe"))							end if 
If Not IsNull(Session("EPQ30758170")) then	Session("EPQ30758170")=Server.HTMLEncode(Session("EPQ30758170"))							end if 
If Not IsNull(Session("EPQ30758180")) then	Session("EPQ30758180")=Server.HTMLEncode(Session("EPQ30758180"))							end if 
If Not IsNull(Session("EPQ30758190")) then	Session("EPQ30758190")=Server.HTMLEncode(Session("EPQ30758190"))							end if 
If Not IsNull(Session("EPQ30758220")) then	Session("EPQ30758220")=Server.HTMLEncode(Session("EPQ30758220"))							end if 
If Not IsNull(Session("EPQ30758230")) then	Session("EPQ30758230")=Server.HTMLEncode(Session("EPQ30758230"))							end if 
If Not IsNull(Session("EPQ30758240")) then	Session("EPQ30758240")=Server.HTMLEncode(Session("EPQ30758240"))							end if 
If Not IsNull(Session("EPQ30758270")) then	Session("EPQ30758270")=Server.HTMLEncode(Session("EPQ30758270"))							end if 
If Not IsNull(Session("EPQ30758280")) then	Session("EPQ30758280")=Server.HTMLEncode(Session("EPQ30758280"))							end if 
If Not IsNull(Session("EPQ30758290")) then	Session("EPQ30758290")=Server.HTMLEncode(Session("EPQ30758290"))							end if 
If Not IsNull(Session("EPQ30758320")) then	Session("EPQ30758320")=Server.HTMLEncode(Session("EPQ30758320"))							end if 
If Not IsNull(Session("EPQ30758330")) then	Session("EPQ30758330")=Server.HTMLEncode(Session("EPQ30758330"))							end if 
If Not IsNull(Session("EPQ30758340")) then	Session("EPQ30758340")=Server.HTMLEncode(Session("EPQ30758340"))							end if 
If Not IsNull(Session("EPQ30758370")) then	Session("EPQ30758370")=Server.HTMLEncode(Session("EPQ30758370"))							end if 
If Not IsNull(Session("EPQ30758380")) then	Session("EPQ30758380")=Server.HTMLEncode(Session("EPQ30758380"))							end if 
If Not IsNull(Session("EPQ30758390")) then	Session("EPQ30758390")=Server.HTMLEncode(Session("EPQ30758390"))							end if 
If Not IsNull(Session("EPQ30758420")) then	Session("EPQ30758420")=Server.HTMLEncode(Session("EPQ30758420"))							end if 
If Not IsNull(Session("EPQ30758430")) then	Session("EPQ30758430")=Server.HTMLEncode(Session("EPQ30758430"))							end if 
If Not IsNull(Session("EPQ30758440")) then	Session("EPQ30758440")=Server.HTMLEncode(Session("EPQ30758440"))							end if 
If Not IsNull(Session("EPQ30758470")) then	Session("EPQ30758470")=Server.HTMLEncode(Session("EPQ30758470"))							end if 
If Not IsNull(Session("EPQ30758480")) then	Session("EPQ30758480")=Server.HTMLEncode(Session("EPQ30758480"))							end if 
If Not IsNull(Session("EPQ30758490")) then	Session("EPQ30758490")=Server.HTMLEncode(Session("EPQ30758490"))							end if 
If Not IsNull(Session("EPQ30758520")) then	Session("EPQ30758520")=Server.HTMLEncode(Session("EPQ30758520"))							end if 
If Not IsNull(Session("EPQ30758530")) then	Session("EPQ30758530")=Server.HTMLEncode(Session("EPQ30758530"))							end if 
If Not IsNull(Session("EPQ30758540")) then	Session("EPQ30758540")=Server.HTMLEncode(Session("EPQ30758540"))							end if 
If Not IsNull(Session("EPQ30758570")) then	Session("EPQ30758570")=Server.HTMLEncode(Session("EPQ30758570"))							end if 
If Not IsNull(Session("EPQ30758580")) then	Session("EPQ30758580")=Server.HTMLEncode(Session("EPQ30758580"))							end if 
If Not IsNull(Session("EPQ30758590")) then	Session("EPQ30758590")=Server.HTMLEncode(Session("EPQ30758590"))							end if 
If Not IsNull(Session("EPQ30758590Describe")) then	Session("EPQ30758590Describe")=Server.HTMLEncode(Session("EPQ30758590Describe"))							end if 
If Not IsNull(Session("EPQ30758620")) then	Session("EPQ30758620")=Server.HTMLEncode(Session("EPQ30758620"))							end if 
If Not IsNull(Session("EPQ30758630")) then	Session("EPQ30758630")=Server.HTMLEncode(Session("EPQ30758630"))							end if 
If Not IsNull(Session("EPQ30758640")) then	Session("EPQ30758640")=Server.HTMLEncode(Session("EPQ30758640"))							end if 
If Not IsNull(Session("EPQ30758670")) then	Session("EPQ30758670")=Server.HTMLEncode(Session("EPQ30758670"))							end if 
If Not IsNull(Session("EPQ30758680")) then	Session("EPQ30758680")=Server.HTMLEncode(Session("EPQ30758680"))							end if 
If Not IsNull(Session("EPQ30758690")) then	Session("EPQ30758690")=Server.HTMLEncode(Session("EPQ30758690"))							end if 
If Not IsNull(Session("EPQ30758720")) then	Session("EPQ30758720")=Server.HTMLEncode(Session("EPQ30758720"))							end if 
If Not IsNull(Session("EPQ30758730")) then	Session("EPQ30758730")=Server.HTMLEncode(Session("EPQ30758730"))							end if 
If Not IsNull(Session("EPQ30758740")) then	Session("EPQ30758740")=Server.HTMLEncode(Session("EPQ30758740"))							end if 
If Not IsNull(Session("EPQ30758770")) then	Session("EPQ30758770")=Server.HTMLEncode(Session("EPQ30758770"))							end if 
If Not IsNull(Session("EPQ30758780")) then	Session("EPQ30758780")=Server.HTMLEncode(Session("EPQ30758780"))							end if 
If Not IsNull(Session("EPQ30758790")) then	Session("EPQ30758790")=Server.HTMLEncode(Session("EPQ30758790"))							end if 
If Not IsNull(Session("EPQ30758820")) then	Session("EPQ30758820")=Server.HTMLEncode(Session("EPQ30758820"))							end if 
If Not IsNull(Session("EPQ30758830")) then	Session("EPQ30758830")=Server.HTMLEncode(Session("EPQ30758830"))							end if 
If Not IsNull(Session("EPQ30758840")) then	Session("EPQ30758840")=Server.HTMLEncode(Session("EPQ30758840"))							end if 
If Not IsNull(Session("EPQ30758870")) then	Session("EPQ30758870")=Server.HTMLEncode(Session("EPQ30758870"))							end if 
If Not IsNull(Session("EPQ30758880")) then	Session("EPQ30758880")=Server.HTMLEncode(Session("EPQ30758880"))							end if 
If Not IsNull(Session("EPQ30758890")) then	Session("EPQ30758890")=Server.HTMLEncode(Session("EPQ30758890"))							end if 
If Not IsNull(Session("EPQ30758920")) then	Session("EPQ30758920")=Server.HTMLEncode(Session("EPQ30758920"))							end if 
If Not IsNull(Session("EPQ30758930")) then	Session("EPQ30758930")=Server.HTMLEncode(Session("EPQ30758930"))							end if 
If Not IsNull(Session("EPQ30758940")) then	Session("EPQ30758940")=Server.HTMLEncode(Session("EPQ30758940"))							end if 
If Not IsNull(Session("EPQ30758970")) then	Session("EPQ30758970")=Server.HTMLEncode(Session("EPQ30758970"))							end if 
If Not IsNull(Session("EPQ30758980")) then	Session("EPQ30758980")=Server.HTMLEncode(Session("EPQ30758980"))							end if 
If Not IsNull(Session("EPQ30758990")) then	Session("EPQ30758990")=Server.HTMLEncode(Session("EPQ30758990"))							end if 
If Not IsNull(Session("EPQ30758990Describe")) then	Session("EPQ30758990Describe")=Server.HTMLEncode(Session("EPQ30758990Describe"))							end if 
If Not IsNull(Session("EPQ30759070")) then	Session("EPQ30759070")=Server.HTMLEncode(Session("EPQ30759070"))							end if 
If Not IsNull(Session("EPQ30759080")) then	Session("EPQ30759080")=Server.HTMLEncode(Session("EPQ30759080"))							end if 
If Not IsNull(Session("EPQ30759090")) then	Session("EPQ30759090")=Server.HTMLEncode(Session("EPQ30759090"))							end if 
If Not IsNull(Session("EPQ30759220")) then	Session("EPQ30759220")=Server.HTMLEncode(Session("EPQ30759220"))							end if 
If Not IsNull(Session("EPQ30759230")) then	Session("EPQ30759230")=Server.HTMLEncode(Session("EPQ30759230"))							end if 
If Not IsNull(Session("EPQ30759240")) then	Session("EPQ30759240")=Server.HTMLEncode(Session("EPQ30759240"))							end if 
If Not IsNull(Session("EPQ30759270")) then	Session("EPQ30759270")=Server.HTMLEncode(Session("EPQ30759270"))							end if 
If Not IsNull(Session("EPQ30759280")) then	Session("EPQ30759280")=Server.HTMLEncode(Session("EPQ30759280"))							end if 
If Not IsNull(Session("EPQ30759290")) then	Session("EPQ30759290")=Server.HTMLEncode(Session("EPQ30759290"))							end if 
If Not IsNull(Session("EPQ30759320")) then	Session("EPQ30759320")=Server.HTMLEncode(Session("EPQ30759320"))							end if 
If Not IsNull(Session("EPQ30759330")) then	Session("EPQ30759330")=Server.HTMLEncode(Session("EPQ30759330"))							end if 
If Not IsNull(Session("EPQ30759340")) then	Session("EPQ30759340")=Server.HTMLEncode(Session("EPQ30759340"))							end if 
If Not IsNull(Session("EPQ30759370")) then	Session("EPQ30759370")=Server.HTMLEncode(Session("EPQ30759370"))							end if 
If Not IsNull(Session("EPQ30759380")) then	Session("EPQ30759380")=Server.HTMLEncode(Session("EPQ30759380"))							end if 
If Not IsNull(Session("EPQ30759390")) then	Session("EPQ30759390")=Server.HTMLEncode(Session("EPQ30759390"))							end if 
If Not IsNull(Session("EPQ30759420")) then	Session("EPQ30759420")=Server.HTMLEncode(Session("EPQ30759420"))							end if 
If Not IsNull(Session("EPQ30759430")) then	Session("EPQ30759430")=Server.HTMLEncode(Session("EPQ30759430"))							end if 
If Not IsNull(Session("EPQ30759440")) then	Session("EPQ30759440")=Server.HTMLEncode(Session("EPQ30759440"))							end if 
If Not IsNull(Session("EPQ30759470")) then	Session("EPQ30759470")=Server.HTMLEncode(Session("EPQ30759470"))							end if 
If Not IsNull(Session("EPQ30759480")) then	Session("EPQ30759480")=Server.HTMLEncode(Session("EPQ30759480"))							end if 
If Not IsNull(Session("EPQ30759490")) then	Session("EPQ30759490")=Server.HTMLEncode(Session("EPQ30759490"))							end if 
If Not IsNull(Session("EPQ30759520")) then	Session("EPQ30759520")=Server.HTMLEncode(Session("EPQ30759520"))							end if 
If Not IsNull(Session("EPQ30759530")) then	Session("EPQ30759530")=Server.HTMLEncode(Session("EPQ30759530"))							end if 
If Not IsNull(Session("EPQ30759540")) then	Session("EPQ30759540")=Server.HTMLEncode(Session("EPQ30759540"))							end if 
If Not IsNull(Session("EPQ30759540Describe")) then	Session("EPQ30759540Describe")=Server.HTMLEncode(Session("EPQ30759540Describe"))							end if 
If Not IsNull(Session("EPQ30759570")) then	Session("EPQ30759570")=Server.HTMLEncode(Session("EPQ30759570"))							end if 
If Not IsNull(Session("EPQ30759580")) then	Session("EPQ30759580")=Server.HTMLEncode(Session("EPQ30759580"))							end if 
If Not IsNull(Session("EPQ30759590")) then	Session("EPQ30759590")=Server.HTMLEncode(Session("EPQ30759590"))							end if 
If Not IsNull(Session("EPQ30759620")) then	Session("EPQ30759620")=Server.HTMLEncode(Session("EPQ30759620"))							end if 
If Not IsNull(Session("EPQ30759630")) then	Session("EPQ30759630")=Server.HTMLEncode(Session("EPQ30759630"))							end if 
If Not IsNull(Session("EPQ30759640")) then	Session("EPQ30759640")=Server.HTMLEncode(Session("EPQ30759640"))							end if 
If Not IsNull(Session("EPQ30759670")) then	Session("EPQ30759670")=Server.HTMLEncode(Session("EPQ30759670"))							end if 
If Not IsNull(Session("EPQ30759680")) then	Session("EPQ30759680")=Server.HTMLEncode(Session("EPQ30759680"))							end if 
If Not IsNull(Session("EPQ30759690")) then	Session("EPQ30759690")=Server.HTMLEncode(Session("EPQ30759690"))							end if 
If Not IsNull(Session("EPQ30759690Describe")) then	Session("EPQ30759690Describe")=Server.HTMLEncode(Session("EPQ30759690Describe"))							end if 
If Not IsNull(Session("EPQ30759720")) then	Session("EPQ30759720")=Server.HTMLEncode(Session("EPQ30759720"))							end if 
If Not IsNull(Session("EPQ30759730")) then	Session("EPQ30759730")=Server.HTMLEncode(Session("EPQ30759730"))							end if 
If Not IsNull(Session("EPQ30759740")) then	Session("EPQ30759740")=Server.HTMLEncode(Session("EPQ30759740"))							end if 
If Not IsNull(Session("EPQ30759770")) then	Session("EPQ30759770")=Server.HTMLEncode(Session("EPQ30759770"))							end if 
If Not IsNull(Session("EPQ30759780")) then	Session("EPQ30759780")=Server.HTMLEncode(Session("EPQ30759780"))							end if 
If Not IsNull(Session("EPQ30759790")) then	Session("EPQ30759790")=Server.HTMLEncode(Session("EPQ30759790"))							end if 
If Not IsNull(Session("EPQ30759820")) then	Session("EPQ30759820")=Server.HTMLEncode(Session("EPQ30759820"))							end if 
If Not IsNull(Session("EPQ30759830")) then	Session("EPQ30759830")=Server.HTMLEncode(Session("EPQ30759830"))							end if 
If Not IsNull(Session("EPQ30759840")) then	Session("EPQ30759840")=Server.HTMLEncode(Session("EPQ30759840"))							end if 
If Not IsNull(Session("EPQ30759870")) then	Session("EPQ30759870")=Server.HTMLEncode(Session("EPQ30759870"))							end if 
If Not IsNull(Session("EPQ30759880")) then	Session("EPQ30759880")=Server.HTMLEncode(Session("EPQ30759880"))							end if 
If Not IsNull(Session("EPQ30759890")) then	Session("EPQ30759890")=Server.HTMLEncode(Session("EPQ30759890"))							end if 
If Not IsNull(Session("EPQ30759920")) then	Session("EPQ30759920")=Server.HTMLEncode(Session("EPQ30759920"))							end if 
If Not IsNull(Session("EPQ30759930")) then	Session("EPQ30759930")=Server.HTMLEncode(Session("EPQ30759930"))							end if 
If Not IsNull(Session("EPQ30759940")) then	Session("EPQ30759940")=Server.HTMLEncode(Session("EPQ30759940"))							end if 
If Not IsNull(Session("EPQ30759940Describe")) then	Session("EPQ30759940Describe")=Server.HTMLEncode(Session("EPQ30759940Describe"))							end if 
If Not IsNull(Session("EPQ30759970")) then	Session("EPQ30759970")=Server.HTMLEncode(Session("EPQ30759970"))							end if 
If Not IsNull(Session("EPQ30759980")) then	Session("EPQ30759980")=Server.HTMLEncode(Session("EPQ30759980"))							end if 
If Not IsNull(Session("EPQ30759990")) then	Session("EPQ30759990")=Server.HTMLEncode(Session("EPQ30759990"))							end if 
If Not IsNull(Session("EPQ30760020")) then	Session("EPQ30760020")=Server.HTMLEncode(Session("EPQ30760020"))							end if 
If Not IsNull(Session("EPQ30760030")) then	Session("EPQ30760030")=Server.HTMLEncode(Session("EPQ30760030"))							end if 
If Not IsNull(Session("EPQ30760040")) then	Session("EPQ30760040")=Server.HTMLEncode(Session("EPQ30760040"))							end if 
If Not IsNull(Session("EPQ30760070")) then	Session("EPQ30760070")=Server.HTMLEncode(Session("EPQ30760070"))							end if 
If Not IsNull(Session("EPQ30760080")) then	Session("EPQ30760080")=Server.HTMLEncode(Session("EPQ30760080"))							end if 
If Not IsNull(Session("EPQ30760090")) then	Session("EPQ30760090")=Server.HTMLEncode(Session("EPQ30760090"))							end if 
If Not IsNull(Session("EPQ30760120")) then	Session("EPQ30760120")=Server.HTMLEncode(Session("EPQ30760120"))							end if 
If Not IsNull(Session("EPQ30760130")) then	Session("EPQ30760130")=Server.HTMLEncode(Session("EPQ30760130"))							end if 
If Not IsNull(Session("EPQ30760140")) then	Session("EPQ30760140")=Server.HTMLEncode(Session("EPQ30760140"))							end if 
If Not IsNull(Session("EPQ30760170")) then	Session("EPQ30760170")=Server.HTMLEncode(Session("EPQ30760170"))							end if 
If Not IsNull(Session("EPQ30760180")) then	Session("EPQ30760180")=Server.HTMLEncode(Session("EPQ30760180"))							end if 
If Not IsNull(Session("EPQ30760190")) then	Session("EPQ30760190")=Server.HTMLEncode(Session("EPQ30760190"))							end if 
If Not IsNull(Session("EPQ30760220")) then	Session("EPQ30760220")=Server.HTMLEncode(Session("EPQ30760220"))							end if 
If Not IsNull(Session("EPQ30760230")) then	Session("EPQ30760230")=Server.HTMLEncode(Session("EPQ30760230"))							end if 
If Not IsNull(Session("EPQ30760240")) then	Session("EPQ30760240")=Server.HTMLEncode(Session("EPQ30760240"))							end if 
If Not IsNull(Session("EPQ30760270")) then	Session("EPQ30760270")=Server.HTMLEncode(Session("EPQ30760270"))							end if 
If Not IsNull(Session("EPQ30760280")) then	Session("EPQ30760280")=Server.HTMLEncode(Session("EPQ30760280"))							end if 
If Not IsNull(Session("EPQ30760290")) then	Session("EPQ30760290")=Server.HTMLEncode(Session("EPQ30760290"))							end if 
If Not IsNull(Session("EPQ30760290Describe")) then	Session("EPQ30760290Describe")=Server.HTMLEncode(Session("EPQ30760290Describe"))							end if 
If Not IsNull(Session("EPQ30760320")) then	Session("EPQ30760320")=Server.HTMLEncode(Session("EPQ30760320"))							end if 
If Not IsNull(Session("EPQ30760330")) then	Session("EPQ30760330")=Server.HTMLEncode(Session("EPQ30760330"))							end if 
If Not IsNull(Session("EPQ30760340")) then	Session("EPQ30760340")=Server.HTMLEncode(Session("EPQ30760340"))							end if 
If Not IsNull(Session("EPQ30760340Describe")) then	Session("EPQ30760340Describe")=Server.HTMLEncode(Session("EPQ30760340Describe"))							end if 
If Not IsNull(Session("EPQ30901180")) then	Session("EPQ30901180")=Server.HTMLEncode(Session("EPQ30901180"))							end if 
If Not IsNull(Session("EPQ31101000")) then	Session("EPQ31101000")=Server.HTMLEncode(Session("EPQ31101000"))							end if 
If Not IsNull(Session("EPQ31101000b")) then	Session("EPQ31101000b")=Server.HTMLEncode(Session("EPQ31101000b"))							end if 
If Not IsNull(Session("EPQ31102000")) then	Session("EPQ31102000")=Server.HTMLEncode(Session("EPQ31102000"))							end if 
If Not IsNull(Session("EPQ31103000")) then	Session("EPQ31103000")=Server.HTMLEncode(Session("EPQ31103000"))							end if 
If Not IsNull(Session("EPQ31104000")) then	Session("EPQ31104000")=Server.HTMLEncode(Session("EPQ31104000"))							end if 
If Not IsNull(Session("EPQ31105000")) then	Session("EPQ31105000")=Server.HTMLEncode(Session("EPQ31105000"))							end if 
If Not IsNull(Session("EPQ31105000b")) then	Session("EPQ31105000b")=Server.HTMLEncode(Session("EPQ31105000b"))							end if 
If Not IsNull(Session("EPQ31106000")) then	Session("EPQ31106000")=Server.HTMLEncode(Session("EPQ31106000"))							end if 
If Not IsNull(Session("EPQ31107000")) then	Session("EPQ31107000")=Server.HTMLEncode(Session("EPQ31107000"))							end if 
If Not IsNull(Session("EPQ31107000b")) then	Session("EPQ31107000b")=Server.HTMLEncode(Session("EPQ31107000b"))							end if 
If Not IsNull(Session("EPQ31108000")) then	Session("EPQ31108000")=Server.HTMLEncode(Session("EPQ31108000"))							end if 
If Not IsNull(Session("EPQ31109000")) then	Session("EPQ31109000")=Server.HTMLEncode(Session("EPQ31109000"))							end if 
If Not IsNull(Session("EPQ31109000b")) then	Session("EPQ31109000b")=Server.HTMLEncode(Session("EPQ31109000b"))							end if 
If Not IsNull(Session("EPQ31110000")) then	Session("EPQ31110000")=Server.HTMLEncode(Session("EPQ31110000"))							end if 
If Not IsNull(Session("EPQ31110000b")) then	Session("EPQ31110000b")=Server.HTMLEncode(Session("EPQ31110000b"))							end if 
If Not IsNull(Session("EPQ31115000")) then	Session("EPQ31115000")=Server.HTMLEncode(Session("EPQ31115000"))							end if 
If Not IsNull(Session("EPQ31118000")) then	Session("EPQ31118000")=Server.HTMLEncode(Session("EPQ31118000"))							end if 
If Not IsNull(Session("EPQ31137050")) then	Session("EPQ31137050")=Server.HTMLEncode(Session("EPQ31137050"))							end if 
If Not IsNull(Session("EPQ31150000")) then	Session("EPQ31150000")=Server.HTMLEncode(Session("EPQ31150000"))							end if 
If Not IsNull(Session("EPQ31151000")) then	Session("EPQ31151000")=Server.HTMLEncode(Session("EPQ31151000"))							end if 
If Not IsNull(Session("EPQ31152000")) then	Session("EPQ31152000")=Server.HTMLEncode(Session("EPQ31152000"))							end if 
If Not IsNull(Session("EPQ31161090")) then	Session("EPQ31161090")=Server.HTMLEncode(Session("EPQ31161090"))							end if 
If Not IsNull(Session("EPQ31161100")) then	Session("EPQ31161100")=Server.HTMLEncode(Session("EPQ31161100"))							end if 
If Not IsNull(Session("EPQ31205017specify")) then	Session("EPQ31205017specify")=Server.HTMLEncode(Session("EPQ31205017specify"))							end if 
If Not IsNull(Session("THRC30117000")) then	Session("THRC30117000")=Server.HTMLEncode(Session("THRC30117000"))							end if 
If Not IsNull(Session("THRC30118000")) then	Session("THRC30118000")=Server.HTMLEncode(Session("THRC30118000"))							end if 
If Not IsNull(Session("THRC30119000")) then	Session("THRC30119000")=Server.HTMLEncode(Session("THRC30119000"))							end if 
If Not IsNull(Session("THRC30120000")) then	Session("THRC30120000")=Server.HTMLEncode(Session("THRC30120000"))							end if 
If Not IsNull(Session("THRC30121000")) then	Session("THRC30121000")=Server.HTMLEncode(Session("THRC30121000"))							end if 
If Not IsNull(Session("THRC30122000")) then	Session("THRC30122000")=Server.HTMLEncode(Session("THRC30122000"))							end if 
If Not IsNull(Session("THRC30123000")) then	Session("THRC30123000")=Server.HTMLEncode(Session("THRC30123000"))							end if 
If Not IsNull(Session("THRC30124000")) then	Session("THRC30124000")=Server.HTMLEncode(Session("THRC30124000"))							end if 
If Not IsNull(Session("THRC30125000")) then	Session("THRC30125000")=Server.HTMLEncode(Session("THRC30125000"))							end if 
If Not IsNull(Session("THRC30126000")) then	Session("THRC30126000")=Server.HTMLEncode(Session("THRC30126000"))							end if 
If Not IsNull(Session("THRC30128000")) then	Session("THRC30128000")=Server.HTMLEncode(Session("THRC30128000"))							end if 
If Not IsNull(Session("THRC30129000")) then	Session("THRC30129000")=Server.HTMLEncode(Session("THRC30129000"))							end if 
If Not IsNull(Session("THRC30130000")) then	Session("THRC30130000")=Server.HTMLEncode(Session("THRC30130000"))							end if 
If Not IsNull(Session("THRC30131000")) then	Session("THRC30131000")=Server.HTMLEncode(Session("THRC30131000"))							end if 
If Not IsNull(Session("THRC30300000")) then	Session("THRC30300000")=Server.HTMLEncode(Session("THRC30300000"))							end if 
If Not IsNull(Session("THRC30500000")) then	Session("THRC30500000")=Server.HTMLEncode(Session("THRC30500000"))							end if 
If Not IsNull(Session("THRC30605300")) then	Session("THRC30605300")=Server.HTMLEncode(Session("THRC30605300"))							end if 
If Not IsNull(Session("THRC30605400")) then	Session("THRC30605400")=Server.HTMLEncode(Session("THRC30605400"))							end if 
If Not IsNull(Session("THRC30605500")) then	Session("THRC30605500")=Server.HTMLEncode(Session("THRC30605500"))							end if 
If Not IsNull(Session("THRC30606300")) then	Session("THRC30606300")=Server.HTMLEncode(Session("THRC30606300"))							end if 
If Not IsNull(Session("THRC30606500")) then	Session("THRC30606500")=Server.HTMLEncode(Session("THRC30606500"))							end if 
If Not IsNull(Session("THRC30606700")) then	Session("THRC30606700")=Server.HTMLEncode(Session("THRC30606700"))							end if 
If Not IsNull(Session("THRC30606900")) then	Session("THRC30606900")=Server.HTMLEncode(Session("THRC30606900"))							end if 
If Not IsNull(Session("THRC31103300")) then	Session("THRC31103300")=Server.HTMLEncode(Session("THRC31103300"))							end if 
If Not IsNull(Session("THRC31103400")) then	Session("THRC31103400")=Server.HTMLEncode(Session("THRC31103400"))							end if 
If Not IsNull(Session("THRC31103500")) then	Session("THRC31103500")=Server.HTMLEncode(Session("THRC31103500"))							end if 
If Not IsNull(Session("THRC31103600")) then	Session("THRC31103600")=Server.HTMLEncode(Session("THRC31103600"))							end if 
If Not IsNull(Session("THRC31103700")) then	Session("THRC31103700")=Server.HTMLEncode(Session("THRC31103700"))							end if 
If Not IsNull(Session("THRC31103800")) then	Session("THRC31103800")=Server.HTMLEncode(Session("THRC31103800"))							end if 
If Not IsNull(Session("THRC31103900")) then	Session("THRC31103900")=Server.HTMLEncode(Session("THRC31103900"))							end if 
If Not IsNull(Session("THRC31104000")) then	Session("THRC31104000")=Server.HTMLEncode(Session("THRC31104000"))							end if 
If Not IsNull(Session("THRC31104100")) then	Session("THRC31104100")=Server.HTMLEncode(Session("THRC31104100"))							end if 
If Not IsNull(Session("THRC31104200")) then	Session("THRC31104200")=Server.HTMLEncode(Session("THRC31104200"))							end if 
If Not IsNull(Session("THRC31104300")) then	Session("THRC31104300")=Server.HTMLEncode(Session("THRC31104300"))							end if 
If Not IsNull(Session("THRC39500000")) then	Session("THRC39500000")=Server.HTMLEncode(Session("THRC39500000"))							end if 
If Not IsNull(Session("THRC39600000")) then	Session("THRC39600000")=Server.HTMLEncode(Session("THRC39600000"))							end if 
If Not IsNull(Session("THRC39700000")) then	Session("THRC39700000")=Server.HTMLEncode(Session("THRC39700000"))							end if 
If Not IsNull(Session("THRC39800000")) then	Session("THRC39800000")=Server.HTMLEncode(Session("THRC39800000"))							end if 
If Not IsNull(Session("THRC39900000")) then	Session("THRC39900000")=Server.HTMLEncode(Session("THRC39900000"))							end if 
If Not IsNull(Session("THRC39910000")) then	Session("THRC39910000")=Server.HTMLEncode(Session("THRC39910000"))							end if 



If Not IsNull(Session("GU11301001")) then
Session("GU11301001")=Server.HTMLEncode(Session("GU11301001"))						
end if 


'HERE
If Not IsNull(Session("GI10401060_TXT")) then
Session("GI10401060_TXT")=Server.HTMLEncode(Session("GI10401060_TXT"))						
end if 

If Not IsNull(Session("GI10402010")) then
Session("GI10402010")=Server.HTMLEncode(Session("GI10402010"))
end if 

If Not IsNull(Session("GI10403010")) then
Session("GI10403010")=Server.HTMLEncode(Session("GI10403010"))
end if
 
If Not IsNull(Session("GI10404010")) then
Session("GI10404010")=Server.HTMLEncode(Session("GI10404010"))
end if 

If Not IsNull(Session("GI10405010")) then
Session("GI10405010")=Server.HTMLEncode(Session("GI10405010"))
end if 

If Not IsNull(Session("GI10406000_TXT")) then
Session("GI10406000_TXT")=Server.HTMLEncode(Session("GI10406000_TXT"))
end if 

If Not IsNull(Session("GI10907000_TXT")) then
Session("GI10907000_TXT")=Server.HTMLEncode(Session("GI10907000_TXT"))
end if 

If Not IsNull(Session("GI10914000")) then
Session("GI10914000")=Server.HTMLEncode(Session("GI10914000"))
end if 

If Not IsNull(Session("GI10969000_TXT")) then
Session("GI10969000_TXT")=Server.HTMLEncode(Session("GI10969000_TXT"))
end if 

If Not IsNull(Session("GI10971000_TXT")) then
Session("GI10971000_TXT")=Server.HTMLEncode(Session("GI10971000_TXT"))
end if 

If Not IsNull(Session("GI11101400")) then
Session("GI11101400")=Server.HTMLEncode(Session("GI11101400"))
end if 
If Not IsNull(Session("GI11101500")) then
Session("GI11101500")=Server.HTMLEncode(Session("GI11101500"))
end if 
If Not IsNull(Session("GI11101600")) then
Session("GI11101600")=Server.HTMLEncode(Session("GI11101600"))
end if 

dim myoutput
dim remainingsize

Dim columnLength
columnlength = 55

Dim columnLength2
columnlength2 = 50

Dim columnLength2b
columnlength2b = 51

Dim columnLength3
columnLength3 = 83

Dim columnLength4
columnLength4 = 90

Dim myString
dim column
dim column2
dim column3
dim column4
dim column5
dim column6
dim column7
dim column8
dim column9
dim column10
dim column11
dim column12

dim lastSpaceInColumn
dim firstSpaceInRemaining

function FormatStringforSummary (myString)
column=""
column2=""
column3=""
column4=""
column5=""
column6=""
column7=""
column8=""
column9=""
column10=""
column11=""
column12=""


if len(myString) < columnLength then
	strpayload2=mystring
end if
if len(myString) = columnLength then
	strpayload2=mystring
end if

if len(myString)> columnLength then
	column = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnLength - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnLength then

	column2 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnLength - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column3 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column3, " " )
	firstSpaceInRemaining = InStr(column3, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column3 = RTrim( column3)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column3, columnLength - lastSpaceInColumn ) + myString
	column3 = Left( column3, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column4 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column4, " " )
	firstSpaceInRemaining = InStr(column4, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnLength - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column5 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnLength - lastSpaceInColumn ) + myString
	column5 = Left( column5, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column6 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column6, " " )
	firstSpaceInRemaining = InStr(column6, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column6 = RTrim( column6)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column6, columnLength - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnLength then
	column7 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnLength - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column8 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnLength - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column9 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnLength - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column10 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column10, " " )
	firstSpaceInRemaining = InStr(column10, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column10 = RTrim( column10)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column10, columnLength - lastSpaceInColumn ) + myString
	column10 = Left( column10, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column11 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column11, " " )
	firstSpaceInRemaining = InStr(column11, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column11 = RTrim( column11)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column11, columnLength - lastSpaceInColumn ) + myString
	column11 = Left( column11, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength then
	column12 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column12, " " )
	firstSpaceInRemaining = InStr(column12, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column12 = RTrim( column12)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column12, columnLength - lastSpaceInColumn ) + myString
	column12 = Left( column12, lastSpaceInColumn )

	end if
	end if

	myoutput=column
	if len(column2) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab "&mystring
	end if

	strpayload2=myoutput
end if

end function



function FormatStringforSummary2 (myString)
column=""
column2=""

if len(myString) < columnLength then
	strpayload2=mystring
end if
if len(myString) = columnLength then
	strpayload2=mystring
end if

if len(myString)> columnLength then
	column = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnLength - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnLength then

	column2 = Left( myString, columnLength )
	remainingSize = Len( myString ) - columnLength
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnLength ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnLength - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if


	myoutput=column
	if len(column2) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column2
	end if
	if len(mystring) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&mystring
	end if

	strpayload2=myoutput

end if

end function

function FormatStringforSummary2b (myString)
column=""
column2=""
column3=""
column4=""
column5=""
column6=""
column7=""
column8=""
column9=""
column10=""
column11=""
column12=""


if len(myString) < columnlength2b then
	strpayload2=mystring
end if
if len(myString) = columnlength2b then
	strpayload2=mystring
end if

if len(myString)> columnlength2b then
	column = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnlength2b - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnlength2b then

	column2 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnlength2b - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column3 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column3, " " )
	firstSpaceInRemaining = InStr(column3, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column3 = RTrim( column3)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column3, columnlength2b - lastSpaceInColumn ) + myString
	column3 = Left( column3, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column4 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column4, " " )
	firstSpaceInRemaining = InStr(column4, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnlength2b - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column5 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnlength2b - lastSpaceInColumn ) + myString
	column5 = Left( column5, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column6 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column6, " " )
	firstSpaceInRemaining = InStr(column6, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column6 = RTrim( column6)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column6, columnlength2b - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnlength2b then
	column7 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnlength2b - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column8 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnlength2b - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column9 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnlength2b - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column10 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column10, " " )
	firstSpaceInRemaining = InStr(column10, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column10 = RTrim( column10)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column10, columnlength2b - lastSpaceInColumn ) + myString
	column10 = Left( column10, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column11 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column11, " " )
	firstSpaceInRemaining = InStr(column11, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column11 = RTrim( column11)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column11, columnlength2b - lastSpaceInColumn ) + myString
	column11 = Left( column11, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2b then
	column12 = Left( myString, columnlength2b )
	remainingSize = Len( myString ) - columnlength2b
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column12, " " )
	firstSpaceInRemaining = InStr(column12, " " )

	if ( lastSpaceInColumn = columnlength2b ) then
		column12 = RTrim( column12)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column12, columnlength2b - lastSpaceInColumn ) + myString
	column12 = Left( column12, lastSpaceInColumn )

	end if
	end if

	myoutput=column
	if len(column2) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&mystring
	end if

	strpayload2=myoutput
end if

end function

function FormatStringforSummary3 (myString)
column=""
column2=""
column3=""
column4=""
column5=""
column6=""
column7=""
column8=""
column9=""
column10=""
column11=""
column12=""


if len(myString) < columnLength2 then
	strpayload2=mystring
end if
if len(myString) = columnLength2 then
	strpayload2=mystring
end if

if len(myString)> columnLength2 then
	column = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnLength2 - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnLength2 then

	column2 = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnLength2 - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength2 then
	column3 = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column3, " " )
	firstSpaceInRemaining = InStr(column3, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column3 = RTrim( column3)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column3, columnLength2 - lastSpaceInColumn ) + myString
	column3 = Left( column3, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength2 then
	column4 = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column4, " " )
	firstSpaceInRemaining = InStr(column4, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnlength2 - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2 then
	column5 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnlength2 - lastSpaceInColumn ) + myString
	column5 = Left( column5, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2 then
	column6 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column6, " " )
	firstSpaceInRemaining = InStr(column6, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column6 = RTrim( column6)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column6, columnlength2 - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnlength2 then
	column7 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnlength2 - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2 then
	column8 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnlength2 - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2 then
	column9 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnlength2 ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnlength2 - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength2 then
	column10 = Left( myString, columnlength2 )
	remainingSize = Len( myString ) - columnlength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column10, " " )
	firstSpaceInRemaining = InStr(column10, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column10 = RTrim( column10)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column10, columnLength2 - lastSpaceInColumn ) + myString
	column10 = Left( column10, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength2 then
	column11 = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column11, " " )
	firstSpaceInRemaining = InStr(column11, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column11 = RTrim( column11)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column11, columnLength2 - lastSpaceInColumn ) + myString
	column11 = Left( column11, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength2 then
	column12 = Left( myString, columnLength2 )
	remainingSize = Len( myString ) - columnLength2
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column12, " " )
	firstSpaceInRemaining = InStr(column12, " " )

	if ( lastSpaceInColumn = columnLength2 ) then
		column12 = RTrim( column12)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column12, columnLength2 - lastSpaceInColumn ) + myString
	column12 = Left( column12, lastSpaceInColumn )

	end if
	end if

	myoutput=column
	if len(column2) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&" \par \tab\tab\tab\tab\tab "&mystring
	end if

	strpayload2=myoutput
end if

end function

'HERE
function FormatStringforSummary4 (myString)

column=""
column2=""
column3=""
column4=""
column5=""
column6=""
column7=""
column8=""
column9=""
column10=""
column11=""
column12=""


if len(myString) < columnLength3 then
	strpayload2=mystring
end if
if len(myString) = columnLength3 then
	strpayload2=mystring
end if

if len(myString)> columnLength3 then
	column = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnLength3 - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnLength3 then

	column2 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnLength3 - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column3 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column3, " " )
	firstSpaceInRemaining = InStr(column3, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column3 = RTrim( column3)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column3, columnLength3 - lastSpaceInColumn ) + myString
	column3 = Left( column3, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column4 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column4, " " )
	firstSpaceInRemaining = InStr(column4, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnLength3 - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column5 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnLength3 - lastSpaceInColumn ) + myString
	column5 = Left( column5, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column6 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column6, " " )
	firstSpaceInRemaining = InStr(column6, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column6 = RTrim( column6)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column6, columnLength3 - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnLength3 then
	column7 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnLength3 - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column8 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnLength3 - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column9 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnLength3 - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column10 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column10, " " )
	firstSpaceInRemaining = InStr(column10, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column10 = RTrim( column10)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column10, columnLength3 - lastSpaceInColumn ) + myString
	column10 = Left( column10, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column11 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column11, " " )
	firstSpaceInRemaining = InStr(column11, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column11 = RTrim( column11)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column11, columnLength3 - lastSpaceInColumn ) + myString
	column11 = Left( column11, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column12 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnLength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column12, " " )
	firstSpaceInRemaining = InStr(column12, " " )

	if ( lastSpaceInColumn = columnLength3 ) then
		column12 = RTrim( column12)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column12, columnLength3 - lastSpaceInColumn ) + myString
	column12 = Left( column12, lastSpaceInColumn )

	end if
	end if

	myoutput=column&"\par "
	if len(column2) > 0 then
		myoutput=myoutput&"\tab "&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&"\tab "&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&"\tab "&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&"\tab "&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&"\tab "&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&"\tab "&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&"\tab "&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&"\tab "&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&"\tab "&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&"\tab "&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&"\tab "&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&"\tab "&mystring
	end if

	strpayload2=myoutput
end if

end function

function FormatStringforSummary5 (myString)
column=""
column2=""
column3=""
column4=""
column5=""
column6=""
column7=""
column8=""
column9=""
column10=""
column11=""
column12=""


if len(myString) < columnLength4 then
	strpayload2=mystring
end if
if len(myString) = columnLength4 then
	strpayload2=mystring
end if

if len(myString)> columnLength4 then
	column = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column, " " )
	firstSpaceInRemaining = InStr(column, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column = RTrim( column )
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column, columnLength4 - lastSpaceInColumn ) + myString
	column = Left( column, lastSpaceInColumn )
	end if


	if len(myString)> columnLength4 then

	column2 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column2, " " )
	firstSpaceInRemaining = InStr(column2, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column2 = RTrim( column2)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else
	myString = Right( column2, columnLength4 - lastSpaceInColumn ) + myString
	column2 = Left( column2, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column3 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column3, " " )
	firstSpaceInRemaining = InStr(column3, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column3 = RTrim( column3)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column3, columnLength4 - lastSpaceInColumn ) + myString
	column3 = Left( column3, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column4 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column4, " " )
	firstSpaceInRemaining = InStr(column4, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnLength4 - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column5 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnLength4 - lastSpaceInColumn ) + myString
	column5 = Left( column5, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column6 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column6, " " )
	firstSpaceInRemaining = InStr(column6, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column6 = RTrim( column6)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column6, columnLength4 - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnLength4 then
	column7 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnLength4 - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column8 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnLength4 - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column9 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnLength4 - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column10 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column10, " " )
	firstSpaceInRemaining = InStr(column10, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column10 = RTrim( column10)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column10, columnLength4 - lastSpaceInColumn ) + myString
	column10 = Left( column10, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column11 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column11, " " )
	firstSpaceInRemaining = InStr(column11, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column11 = RTrim( column11)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column11, columnLength4 - lastSpaceInColumn ) + myString
	column11 = Left( column11, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength4 then
	column12 = Left( myString, columnLength4 )
	remainingSize = Len( myString ) - columnLength4
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column12, " " )
	firstSpaceInRemaining = InStr(column12, " " )

	if ( lastSpaceInColumn = columnLength4 ) then
		column12 = RTrim( column12)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column12, columnLength4 - lastSpaceInColumn ) + myString
	column12 = Left( column12, lastSpaceInColumn )

	end if
	end if

	myoutput=column&"\par "
	if len(column2) > 0 then
		myoutput=myoutput&""&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&""&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&""&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&""&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&""&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&""&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&""&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&""&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&""&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&""&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&""&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&""&mystring
	end if

	strpayload2=myoutput
end if

end function

dim strReportTemplate
dim strReport
dim strMoffittHL7Report
dim strMoffittXMLReport
dim aFSOHL7
dim aFSOXML
dim strDateTime
dim dtNow
dim dtHours
dim strT

dim strpayload2
dim strpayload3

dim CurrentExposuresPositive
dim PastExposuresPositive
dim ExposuresNegative

dim MedicalHistoryPositive
dim MedicalHistoryNegative

dim ReviewSystemsPositive
dim ReviewSystemsNegative
dim ReviewSystemsUnknown

dim SecondHandSmokePositive
dim SecondHandSmokeNegative

dim NicotineAddictionPositive
dim NicotineAddictionNegative

dim ParentsPositive
dim ParentsNegative

MedicalHistoryPositive= ""
MedicalHistoryNegative= ""

ReviewSystemsPositive= ""
ReviewSystemsNegative= ""
ReviewSystemsUnknown= ""

SecondHandSmokePositive= ""
SecondHandSmokeNegative= ""

NicotineAddictionPositive= ""
NicotineAddictionNegative= ""

ParentsPositive= ""
ParentsNegative= ""


dim RemoteAddr
dim RemoteHost

if len (Session("MachineID")) = 0 then
	session("MachineID") = Request.ServerVariables("REMOTE_ADDR")
end if


if len (Session("MachineID")) = 0 then
	session("MachineID") = Request.ServerVariables("REMOTE_USER")
end if


'Pad DOB to Two Digits

		strT = Session("DOBMonth")
		if len(strT) = 1 then
			strT = "0" & strT
		end if

		Session("DOBMonth") = strT

		strT = Session("DOBDay")
		if len(strT) = 1 then
			strT = "0" & strT
		end if

		Session("DOBDay") = strT


' Write report to HL7 file

	' Create a unique output filename
	dim strHL7ReportFilename

	dim strReportPath
if Session("ProductionMode")="1" then 
	strReportPath = "c:\cernerclinicHL7outbox\moffittprod\sent"
else
	strReportPath = "c:\cernerclinicHL7outbox\moffitcert\sent"

end if			     
	' File extension
	dim strHL7ReportFileExt

	strHL7ReportFileExt = ".hl7"
	dim strHL7ReportFileExt2
	strHL7ReportFileExt2 = ".rtf"


	set aFSOHL7 = Server.CreateObject("Scripting.FileSystemObject")

	' Create file name
	dtNow = now()
	

if hourofday=23 then 
	strDateTime = Year(dtNow) & right("0" & Month(dtNow+1),2) & right("0" & Day(dtNow+1),2) & right("00",2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)

else
	strDateTime = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
end if




	dim strHL7ReportFilespec
	dim strHL7ReportFilespec2

	dim iTry
	iTry = 0
	strHL7ReportFilename = Session("PatientID")& "MRN "& strDateTime & "-" & right("0" & iTry,2)
	strHL7ReportFilespec = strReportPath & "\" & strHL7ReportFilename & strHL7ReportFileExt
	strHL7ReportFilespec2 = strReportPath & "\" & strHL7ReportFilename & strHL7ReportFileExt2

	while iTry < 100 and aFSOHL7.FileExists(strHL7ReportFilespec)
		iTry = iTry + 1
		strReportHL7Filename = strDateTime & "-" & right("0" & iTry,2)
		strReportHL7Filespec = strReportPath & "\" & strHL7ReportFilename & strHL7ReportFileExt
	wend

		dim strHL7DateTime
		dim strHL7Content

if hourofday=23 then 
	strHL7DateTime = Year(dtNow) & right("0" & Month(dtNow+1),2) & right("0" & Day(dtNow+1),2) & right("00",2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)

else
	strHL7DateTime = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)
end if

		dim strPayLoad
		strPayload="ZZZ1\rtf1\ansi\ansicpg1252\deff0\deflang1033ZZZ1\fonttblZZZ1\f0\fswiss\fcharset0 Arial;ZZZ2ZZZ2"
		strPayload=strPayload&"ZZZ1\*\generator Msftedit 5.41.21.2509;ZZZ2\viewkind4\uc1\pard\qc\b\f0\fs28 Patient Questionnaire Responses \par \par"

if Session("Gender")="F" then
	Session("strGenderString") =" Female "
else
	Session("strGenderString") =" Male "
end if

dim PatientAge
dim DateCheck

DateCheck = CStr(Session("strDOBMonth")) + "/" + CStr(Session("strDOBDay")) + "/" + CStr(Session("strDOBYear"))

dim AgeYears
dim ageDate
ageDate=now()

AgeYears= Year(ageDate) - Year(DateCheck)

if Month(ageDate) < Month(DateCheck) then
	AgeYears= AgeYears- 1 

elseif Month(ageDate) = Month(DateCheck) then 
	if Day(ageDate) < Day(DateCheck) then
	AgeYears= AgeYears- 1
	end if
end if

PatientAge = AgeYears

strPayload=strPayload&"\ul\pard\b\fs24 Demographics \par"


dim strPayloadbuild
strPayloadbuild = ""
'Session("DOBMonth") = strPatientDOBMonth
'Session("DOBDay") = strPatientDOBDay
'Session("DOBYear") = strPatientDOBYear
		


		strPayload=strPayload&"\b0\ulnone\pard\par\fs20 Demographics\tab\tab\tab\b0 "

strPayloadbuild=PatientAge&"Y, "&Session("EPQ30103000string")&", "&Session("EPQ30102000string")&","&Session("strGenderString")

FormatStringforSummary (strPayloadbuild)
strpayload=strpayload&strpayload2&" \par\par "
strPayloadbuild=""

if Session("EPQ30103010") ="1" OR Session("EPQ30103020") ="1" OR Session("EPQ30103030") ="1" OR Session("EPQ30103040") ="1" OR Session("EPQ30103050") ="1" OR Session("EPQ30103060") ="1" then
strPayload=strPayload&"\b0 Additional Hispanic Descent\tab\b0 "
strPayload2=""

	if Session("EPQ30103010") ="1" then
	strPayloadbuild=strPayloadbuild&", Puerto Rican"
	end if
	if Session("EPQ30103020") ="1" then
	strPayloadbuild=strPayloadbuild&", Cuban"
	end if
	if Session("EPQ30103030") ="1" then
	strPayloadbuild=strPayloadbuild&", Dominican Republic"
	end if
	if Session("EPQ30103040") ="1" then
	strPayloadbuild=strPayloadbuild&", Mexican/Mexican American/Chicano"
	end if
	if Session("EPQ30103050") ="1" then
	strPayloadbuild=strPayloadbuild&", Central or South American other than Brazilian"
	end if
	if Session("EPQ30103060") ="1" then
	strPayloadbuild=strPayloadbuild&", "&session("EPQ30103070_TXT")
	end if

strPayloadbuild = Right(strPayloadbuild, Len(strPayloadbuild) - 2)

FormatStringforSummary (strPayloadbuild)
strpayload=strpayload&strpayload2&" \par "

end if


		strPayload=strPayload&"\par Chief Complaint\tab\tab\b0 "&Session("EPQ30201000")&" \par \par"

		strPayload=strPayload&"_____________________________________________________________________________ \par \par"

if len(Session("EPQ30532000portal")) > 0 then
		strPayload=strPayload&"\ul\b\fs24 History of Present Illness \par "
		strPayload=strPayload&"\ulnone\b0\fs20\tab " &""&" \par "
		strpayload=strpayload & Session("EPQ30532000portal") & " \par\par\par "
else
		strPayload=strPayload&"\ul\b\fs24 History of Present Illness \par"
		strPayload=strPayload&" \ulnone\b0\fs20\tab " &" "&" \par "
		strpayload=strpayload & "Patient did not complete this section" & " \par\par\par "
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then

		strPayload=strPayload&"\ul\b\fs24 Skin Lesion History \ulnone\b0\fs20\ "


	if Session("CUTA10503000") = "2" then
		strPayload=strPayload&" \tab Skin lesion is absent"&" \par "
	end if
	if Session("CUTA10503000") = "1" then
		strPayload=strPayload&" \par\par Skin lesion is present "&""
	end if
	if Session("CUTA10504000") = "1" then
		strPayload=strPayload&"for less than 6 months"&""
	end if
	if Session("CUTA10504000") = "2" then
		strPayload=strPayload&"for 6 - 12 months"&""
	end if
	if Session("CUTA10504000") = "3" then
		strPayload=strPayload&"for 13 months - 2 years"&""
	end if
	if Session("CUTA10504000") = "4" then
		strPayload=strPayload&"for more than 2 years"&""
	end if
		strPayload=strPayload&""&"\par "


	strPayload2=""
	if Session("CUTA10506000") = "1" then
		strpayload2=strpayload2&", Mole present at birth"&""
	end if
	if Session("CUTA10506000") = "2" then
		strpayload2=strpayload2&", Mole absent at birth"&""
	end if
	if Session("CUTA10506000") = "3" then
		strpayload2=strpayload2&", Mole unknown if present at birth"&""
	end if

	if Session("CUTA10505000") = "1" then
		strpayload2=strpayload2&", Lesion began as a mole"&""
	end if

	if Session("CUTA10505000") = "2" then
		strpayload2=strpayload2&", Lesion did not begin as a mole"&""
	end if
	if Session("CUTA10505000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if began as a mole"&""
	end if

	if Session("CUTA10507000") = "1" then
		strpayload2=strpayload2&", Lesion changed in color"&""
	end if
	if Session("CUTA10507000") = "2" then
		strpayload2=strpayload2&", Lesion did not change in color"&""
	end if
	if Session("CUTA10507000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if changed in color"&""
	end if
	if Session("CUTA10508000") = "1" then
		strpayload2=strpayload2&", Lesion changed in size"&""
	if Session("CUTA10509000") = "1" then
		strpayload2=strpayload2&", Lesion became larger"&""
	end if
	if Session("CUTA10509000") = "2" then
		strpayload2=strpayload2&", Lesion did not become larger"&""
	end if
	if Session("CUTA10509000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if it became larger"
	end if
		strpayload2=strpayload2&""

	end if
	if Session("CUTA10508000") = "2" then
		strpayload2=strpayload2&", Lesion did not change in size"&""
	end if
	if Session("CUTA10508000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if changed in size"&""
	end if

	if Session("CUTA10510000") = "1" then
		strpayload2=strpayload2&", Lesion changed in shape"&""
	end if
	if Session("CUTA10510000") = "2" then
		strpayload2=strpayload2&", Lesion did not change in shape"&""
	end if
	if Session("CUTA10510000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if changed in shape"&""
	end if
	if Session("CUTA10511000") = "1" then
		strpayload2=strpayload2&", Lesion changed in elevation"&""
	end if
	if Session("CUTA10511000") = "2" then
		strpayload2=strpayload2&", Lesion did not change in elevation"&""
	end if
	if Session("CUTA10511000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if changed in elevation"&""
	end if
	if Session("CUTA10512000") = "1" then
		strpayload2=strpayload2&", Lesion became scaly or crusty"&""
	end if
	if Session("CUTA10512000") = "2" then
		strpayload2=strpayload2&", Lesion did not become scaly or crusty"&""
	end if
	if Session("CUTA10512000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if it became scaly or crusty"&""
	end if

	if Session("CUTA10513000") = "1" then
		strpayload2=strpayload2&", Lesion opened or bled"&""
	end if
	if Session("CUTA10513000") = "2" then
		strpayload2=strpayload2&", Lesion did not open or bleed"&""
	end if
	if Session("CUTA10513000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if opened or bled"&""
	end if

	if Session("CUTA10514000") = "1" then
		strpayload2=strpayload2&", Lesion became tender or painful"&""
	end if
	if Session("CUTA10514000") = "2" then
		strpayload2=strpayload2&", Lesion did not become tender or painful"&""
	end if
	if Session("CUTA10514000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if it became tender or painful"&""
	end if
	if Session("CUTA10515000") = "1" then
		strpayload2=strpayload2&", Lesion was traumatized"&""
	end if
	if Session("CUTA10515000") = "2" then
		strpayload2=strpayload2&", Lesion was not traumatized"&""
	end if
	if Session("CUTA10515000") = "3" then
		strpayload2=strpayload2&", Lesion unknown if traumatized"&""
	end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary5 (strpayload2)
'strpayload2= Replace(strpayload2,"\tab\tab\tab\tab","\tab")
strpayload=strpayload&""&strpayload2&" \par\par "


end if
end if

'SKIN LESION IF LOOP ERROR
		strPayload=strPayload&"\ul\b\fs24 Past Medical History \par"

		strPayload=strPayload&"\ul\b\fs24 Personal History Cancer \par\par"

dim strPHCGroup
strPHCGroup=""


if Session("EPQ30310000")= "0" or Session("EPQ30310000")= "2" then
		strPayload=strPayload&" \ulnone\b0\fs20\tab  "&Session("EPQ30310000string")&" \par "
end if
if Session("EPQ30310010")= "1" then
		strPayload=strPayload&" \ulnone\b0\fs20\tab PT coming to Moffitt because may have cancer \par "
end if

	strPayload=strPayload&" \ulnone\b0\fs20 "

if Session("EPQ30311010")="1" then
strpayload=strpayload & strPHCGroup & " \tab Anal Cancer  \tab\tab\tab "&Session("EPQ30312000")&"Y"
if Session("EPQ30312010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30312020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30312030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30312040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30312050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311011")="1" then
strpayload=strpayload & strPHCGroup & " \tab Bladder Cancer  \tab\tab "&Session("EPQ30313000")&"Y"
if Session("EPQ30313010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30313020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30313030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30313040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30313050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311012")="1" then
strpayload=strpayload & strPHCGroup & " \tab Brain Cancer  \tab\tab\tab "&Session("EPQ30314000")&"Y"
if Session("EPQ30314010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30314020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30314030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30314040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30314050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311013")="1" then
strpayload=strpayload & strPHCGroup & " \tab Breast Cancer  \tab\tab\tab "&Session("EPQ30315000")&"Y"
if Session("EPQ30315010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30315020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30315030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30315040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30315050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311014")="1" then
strpayload=strpayload & strPHCGroup & " \tab Carcinoid Tumor or \par "
strpayload=strpayload & strPHCGroup & " \tab Neuroendocrine Cancer \tab "&Session("EPQ30316000")&"Y"
if Session("EPQ30316010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30316020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30316030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30316040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30316050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311015")="1" then
strpayload=strpayload & strPHCGroup & " \tab Cervical Cancer  \tab\tab "&Session("EPQ30317000")&"Y"
if Session("EPQ30317010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30317020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30317030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30317040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30317050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311016")="1" then
strpayload=strpayload & strPHCGroup & " \tab Colon Cancer  \tab\tab\tab "&Session("EPQ30318000")&"Y"
if Session("EPQ30318010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30318020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30318030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30318040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30318050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311017")="1" then
strpayload=strpayload & strPHCGroup & " \tab Endometrial or \par"
strpayload=strpayload & strPHCGroup & " \tab Uterine Cancer  \tab\tab "&Session("EPQ30319000")&"Y"

if Session("EPQ30319010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30319020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30319030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30319040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30319050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311018")="1" then
strpayload=strpayload & strPHCGroup & " \tab Esophageal Cancer  \tab\tab "&Session("EPQ30320000")&"Y"
if Session("EPQ30320010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30320020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30320030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30320040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30320050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311019")="1" then
strpayload=strpayload & strPHCGroup & " \tab Gall Bladder Cancer  \tab\tab "&Session("EPQ30321000")&"Y"
if Session("EPQ30321010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30321020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30321030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30321040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30321050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311020")="1" then
strpayload=strpayload & strPHCGroup & " \tab GIST   \tab\tab\tab\tab "&Session("EPQ30322000")&"Y"
if Session("EPQ30322010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30322020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30322030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30322040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30322050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311021")="1" then
strpayload=strpayload & strPHCGroup & " \tab Hodgkin's Lymphoma  \tab\tab "&Session("EPQ30323000")&"Y"
if Session("EPQ30323010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30323020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30323030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30323040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30323050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311022")="1" then
strpayload=strpayload & strPHCGroup & " \tab Kidney (renal cell) Cancer   \tab "&Session("EPQ30324000")&"Y"

if Session("EPQ30324010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30324020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30324030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30324040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30324050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311023")="1" then
strpayload=strpayload & strPHCGroup & " \tab Leukemia   \tab\tab\tab "&Session("EPQ30325000")&"Y"
if Session("EPQ30325010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30325020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30325030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30325040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30325050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if

if Session("EPQ30311024")="1" then
strpayload=strpayload & strPHCGroup & " \tab Liver Cancer   \tab\tab\tab "&Session("EPQ30326000")&"Y"
if Session("EPQ30326010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30326020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30326030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30326040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30326050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if

if Session("EPQ30311025")="1" then
strpayload=strpayload & strPHCGroup & " \tab Lung Cancer   \tab\tab\tab "&Session("EPQ30327000")&"Y"
if Session("EPQ30327010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30327020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30327030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30327040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30327050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311026")="1" then
strpayload=strpayload & strPHCGroup & " \tab Melanoma Cancer   \tab\tab "&Session("EPQ30328000")&"Y"
if Session("EPQ30328010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30328020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30328030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30328040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30328050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if

if len(Session("CUTA10302000")) > 0 then
strpayload=strpayload & strPHCGroup & " \tab Melanoma, Age at first dx \tab "&Session("CUTA10302000string")&""& "  \par "
end if

if Session("EPQ30311027")="1" then
strpayload=strpayload & strPHCGroup & " \tab Plasma Cell Tumor or \par"
strpayload=strpayload & strPHCGroup & " \tab Multiple Myeloma  \tab\tab "&Session("EPQ30329000")&"Y"

if Session("EPQ30329010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30329020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30329030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30329040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30329050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "

if Session("HM10301000")="1" OR Session("HM10302000")="1" OR Session("HM10303000")="1" OR Session("HM10304000")="1" OR Session("HM10305000")="1" then
dim strMultipleMyelomaGroup
if Session("HM10301000")="1" then
 strMultipleMyelomaGroup=strMultipleMyelomaGroup & "Amyloidosis, "
end if
if Session("HM10302000")="1" then
 strMultipleMyelomaGroup=strMultipleMyelomaGroup & "MGUS (Monoclonal Gammopathy of Undetermined Significance), "
end if
if Session("HM10303000")="1" then
 strMultipleMyelomaGroup=strMultipleMyelomaGroup & "Multiple Myeloma, "
end if
if Session("HM10304000")="1" then
 strMultipleMyelomaGroup=strMultipleMyelomaGroup & "Plasma cell leukemia, "
end if
if Session("HM10305000")="1" then
 strMultipleMyelomaGroup=strMultipleMyelomaGroup & "Plasmacytoma, "
end if
strMultipleMyelomaGroup = left(strMultipleMyelomaGroup, Len(strMultipleMyelomaGroup) - 2)
FormatStringforSummary2 (strMultipleMyelomaGroup)

strpayload=strpayload & "\tab\tab\tab\tab\tab "& strpayload2 & "  \par "
strpayload2=""
end if
end if

if Session("EPQ30311028")="1" then
strpayload=strpayload & strPHCGroup & " \tab Non-Hodgkin's Lymphoma  \tab "&Session("EPQ30330000")&"Y"
if Session("EPQ30330010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30330020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30330030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30330040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30330050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311029")="1" then
strpayload=strpayload & strPHCGroup & " \tab Oral Cavity or Throat Cancer  \tab "&Session("EPQ30331000")&"Y"
if Session("EPQ30331010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30331020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30331030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30331040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30331050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311030")="1" then
strpayload=strpayload & strPHCGroup & " \tab Ovarian Cancer  \tab\tab "&Session("EPQ30332000")&"Y"
if Session("EPQ30332010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30332020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30332030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30332040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30332050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311031")="1" then
strpayload=strpayload & strPHCGroup & " \tab Pancreatic Cancer  \tab\tab "&Session("EPQ30333000")&"Y"
if Session("EPQ30333010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30333020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30333030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30333040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30333050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311032")="1" then
strpayload=strpayload & strPHCGroup & " \tab Prostate Cancer   \tab\tab "&Session("EPQ30334000")&"Y"
if Session("EPQ30334010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30334020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30334030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30334040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30334050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311033")="1" then
strpayload=strpayload & strPHCGroup & " \tab Rectal Cancer  \tab\tab\tab "&Session("EPQ30335000")&"Y"
if Session("EPQ30335010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30335020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30335030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30335040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30335050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311034")="1" then
strpayload=strpayload & strPHCGroup & " \tab Sarcoma  \tab\tab\tab "&Session("EPQ30336000")&"Y"
if Session("EPQ30336010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30336020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30336030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30336040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30336050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311035")="1" then
strpayload=strpayload & strPHCGroup & " \tab Skin Cancer \tab\tab\tab "&Session("EPQ30337000")&"Y"
if Session("EPQ30337010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30337020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30337030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30337040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30337050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if

if Session("SurveyVersion")="Cutaneous" then
if len(Session("CUTA10303000")) > 0 then
strpayload=strpayload & strPHCGroup & " \tab Non-melanoma, Age at first dx \tab "&Session("CUTA10303000string")&""& "  \par "
end if
end if

if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311035")="1" then
		dim NonMelanoma
		strPayload=strPayload&" \tab Non-melanoma conditions:  \tab "
if Session("CUTA10304010")="1" then
NonMelanoma=NonMelanoma & ", Basal cell carcinoma (BCC)"
end if
if Session("CUTA10304020")="1" then
NonMelanoma=NonMelanoma & ", Merkel cell carcinoma"
end if
if Session("CUTA10304030")="1" then
NonMelanoma=NonMelanoma & ", Mycosis fungoides/Cutaneous Lymphoma (like CTCL)"
end if
if Session("CUTA10304040")="1" then
NonMelanoma=NonMelanoma & ", Squamous cell carcinoma (SCC)"
end if
if Session("CUTA10304050")="1" then
NonMelanoma=NonMelanoma & ", Other non-melanoma skin cancer "
end if

NonMelanoma = Right(NonMelanoma, Len(NonMelanoma) - 2)
strpayload2=NonMelanoma
FormatStringforSummary2b (strpayload2)
strpayload=strpayload & strpayload2 &" \par "
end if
end if 
'HERE
if Session("EPQ30311036")="1" then
strpayload=strpayload & strPHCGroup & " \tab Stomach Cancer  \tab\tab "&Session("EPQ30338000")&"Y"
if Session("EPQ30338010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30338020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30338030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30338040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30338050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311037")="1" then
strpayload=strpayload & strPHCGroup & " \tab Testicular Cancer   \tab\tab "&Session("EPQ30339000")&"Y"
if Session("EPQ30339010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30339020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30339030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30339040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30339050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311038")="1" then
strpayload=strpayload & strPHCGroup & " \tab Thyroid Cancer  \tab\tab "&Session("EPQ30340000")&"Y"
if Session("EPQ30340010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30340020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30340030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30340040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30340050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
end if
if Session("EPQ30311039")="1" then
strpayload=strpayload & strPHCGroup & " \tab Other Cancer \tab\tab "&Session("EPQ30342000")&"Y"
if Session("EPQ30342010")="1" then
strpayload=strpayload & ", Radiation"
end if
if Session("EPQ30342020")="1" then
strpayload=strpayload & ", Chemo"
end if
if Session("EPQ30342030")="1" then
strpayload=strpayload & ", Surgery"
end if
if Session("EPQ30342040")="1" then
strpayload=strpayload & ", Other TX"
end if
if Session("EPQ30342050")="1" then
strpayload=strpayload & ", No TX"
end if
strpayload=strpayload & "  \par "
strpayload=strpayload & strPHCGroup & " \tab "&Session("EPQ30341000")& "  \par "


end if

if len(Session("EPQ30343000")) > 0 then
		strPayload=strPayload&"\par\tab Other Cancer Treatment \tab "&Session("EPQ30343000") &" \par"
end if


if Session("EPQ30344000") ="2" then
		strPayload=strPayload&" \tab Metastases \tab\tab\tab Patient referred for evaluation"
end if

if Session("EPQ30344000") ="1" then
		dim metastases
		strPayload=strPayload&" \tab Metastases \tab\tab\tab "
if Session("EPQ30345010")="1" then
metastases=metastases & ", Liver"
end if
if Session("EPQ30345020")="1" then
metastases=metastases & ", Lung"
end if
if Session("EPQ30345040")="1" then
metastases=metastases & ", Brain"
end if
if Session("EPQ30345030")="1" then
metastases=metastases & ", Bone or spine"
end if
if Session("EPQ30345060")="1" then
metastases=metastases & ", Lymph nodes"
end if

if Session("EPQ30345050")="1" then
metastases=metastases & ", "&Session("EPQ30345000")
end if

metastases = Right(metastases, Len(metastases) - 2)
strpayload2=metastases

FormatStringforSummary2 (strpayload2)
strpayload=strpayload & strpayload2 &" \par "
end if

if Session("EPQ30344000") ="77" then
		strPayload=strPayload&" \tab Metastases \tab\tab\tab Pt needs help answering hx of metastases "&" \par"
end if

strpayload=strpayload & " \par "

		strPayload=strPayload&"\ulnone\b\fs24 Non-Cancer Diagnoses \ulnone\b0\fs20\ \par "
	if Session("CUTA10401000") = "1" then
		strPayload=strPayload&" \tab Diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10401000") = "2" then
		strPayload=strPayload&" \tab Not diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10401000") = "3" then
		strPayload=strPayload&" \tab Unknown if diagnosed with Xeroderma Pigmentosa"&" \par "
	end if
	if Session("CUTA10402000") = "1" then
		strPayload=strPayload&" \tab Photosensitive"&" \par "
	end if
	if Session("CUTA10402000") = "2" then
		strPayload=strPayload&" \tab Not photosensitive"&" \par "
	end if
	if Session("CUTA10402000") = "3" then
		strPayload=strPayload&" \tab Unknown if photosensitive"&" \par "
	end if
	if Session("CUTA10403000") = "1" then
		strPayload=strPayload&" \tab Had an organ transplant"&" \par "
	end if
	if Session("CUTA10403000") = "2" then
		strPayload=strPayload&" \tab Did not have an organ transplant"&" \par "
	end if


	if Session("EPQ30401002") = "1" then
		strPayload=strPayload&" \tab AIDS/HIV"&" \par "
	end if


	if Session("EPQ30401003") = "1" then
		strPayload=strPayload&" \tab Hepatitis"&" \par "
	end if

	if Session("GI10401010") = "1" then
		strPayload=strPayload&" \tab Hepatitis A"&" \par "
	end if
	if Session("GI10401020") = "1" then
		strPayload=strPayload&" \tab Hepatitis B"&" \par "
	end if
	if Session("GI10401030") = "1" then
		strPayload=strPayload&" \tab Hepatitis C"&" \par "
	end if

	if Session("GI10401040") = "1" then
		strPayload=strPayload&" \tab Hepatitis, "&Session("GI10401060_TXT")&" \par "
	end if



	if Session("EPQ30401001") = "1" then
		strPayload=strPayload&" \tab H. pylori"&" \par "
	end if
	if Session("EPQ30401004") = "1" then
		strPayload=strPayload&" \tab "&	Session("EPQ30401000")&" \par "
	end if

	if Session("EPQ30401005") = "1" and Session("EPQ30402160")= "1" then
		strPayload=strPayload&" \tab None reported"&" \par "
	end if

	if Session("EPQ30401006") = "77" then
		strPayload=strPayload&" \tab PT needs help answering previous infections"&" \par "
	end if


'if Session("EPQ30402010")="1" then
'	strPayload=strPayload&"  \tab Stomach, colon, bowels, liver, gallbladder or other part of digestive tract  \par "
'	end if


	if Session("GI10408000") = "1" then
		strPayload=strPayload&" \tab Hemochromatosis \par "
	end if


if Session("EPQ30403010")="1" then
strPayload=strPayload&"  \tab Ulcerative colitis  \par "
end if
if Session("EPQ30403020")="1" then
strPayload=strPayload&"  \tab Ulcer  \par "
end if
if Session("EPQ30403030")="1" then
strPayload=strPayload&"  \tab Reflux  \par "
end if
if Session("EPQ30403040")="1" then
strPayload=strPayload&"  \tab Pancreatitis  \par "
end if

	if Session("GI10402000") = "1" then
		strPayload=strPayload&" \tab Acute Pancreatitis at age "&Session("GI10402010")&"\par "
	end if
	if Session("GI10403000") = "1" then
		strPayload=strPayload&" \tab Chronic Pancreatitis at age "&Session("GI10403010")&"\par "
	end if

	if Session("GI10404000") = "1" then
		strPayload=strPayload&" \tab Pancreatic cyst, lesion, or mass at age "&Session("GI10404010")&"\par "
	end if

	if Session("GI10405000") = "1" then
		strPayload=strPayload&" \tab "&Session("GI10406000_TXT")&" at age "&Session("GI10405010")&"\par "
	end if

if Session("EPQ30403050")="1" then
strPayload=strPayload&"  \tab Adrenal Tumor  \par "
end if
if Session("EPQ30403060")="1" then
strPayload=strPayload&"  \tab Gallbladder disease/gallstones  \par "
end if
if Session("EPQ30403090")="1" then
strPayload=strPayload&"  \tab FAP  \par "
end if
if Session("EPQ30403120")="1" then
strPayload=strPayload&"  \tab Cirrhosis  \par "
end if
if Session("EPQ30403110")="1" then
strPayload=strPayload&"  \tab Juvenile polyposis syndrome  \par "
end if
if Session("EPQ30403130")="1" then
strPayload=strPayload&"  \tab Colon polyps (Age:"&Session("EPQ30404000")&", Total polyps found:"&Session("EPQ30405000")&") \par "
end if
if Session("EPQ30403070")="1" then
strPayload=strPayload&"  \tab IBS  \par "
end if
if Session("EPQ30403080")="1" then
strPayload=strPayload&"  \tab Barrett's esophagus  \par "
end if
if Session("EPQ30403100")="1" then
strPayload=strPayload&"  \tab Diverticulitis/diverticulosis  \par "
end if
if Session("EPQ30403160")="1" then
strPayload=strPayload&"  \tab Hemorrhoids  \par "
end if
if Session("EPQ30403170")="1" then
strPayload=strPayload&"  \tab Hiatal hernia  \par "
end if
if Session("EPQ30403180")="1" then
strPayload=strPayload&"  \tab Fatty liver  \par "
end if

if Session("EPQ30403140")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30406000")&" \par "
end if


if Session("EPQ30407100")="1" then
strPayload=strPayload&"  \tab Diabetes "
if Session("SurveyVersion")="Thoracic" OR Session("SurveyVersion")="GI" then
if len(Session("EPQ30407120") ) >0 then 
strPayload=strPayload&" (Age at onset "&Session("EPQ30407120")&"Y);"
end if
if len(Session("EPQ30407130") ) >0 then 
strPayload=strPayload&" (Onset in "&Session("EPQ30407130")&");"
end if

if Session("EPQ30407150") ="1" then 
strPayload=strPayload&"\par\tab\tab Insulin"
end if
if Session("EPQ30407220") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407270") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407270")&"Y"
end if
if len(Session("EPQ30407230") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407230")&" years"
end if

if Session("EPQ30407140") ="1" then 
strPayload=strPayload&"\par\tab\tab Metformin"
end if
if Session("EPQ30407190") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407280") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407280")&"Y"
end if
if len(Session("EPQ30407200") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407200")&" years"
end if

if Session("EPQ30407160") ="1" then 
strPayload=strPayload&"\par\tab\tab "&Session("EPQ30407170")
end if
if Session("EPQ30407250") ="1" then 
strPayload=strPayload&" current"
end if
if len(Session("EPQ30407240") )>0 then 
strPayload=strPayload&", began at age "&session("EPQ30407240")&"Y"
end if
if len(Session("EPQ30407260") )>0 then 
strPayload=strPayload&", used for "&session("EPQ30407260")&" years"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30407110")="1" then
strPayload=strPayload&"  \tab Hashimoto’s thyroiditis  \par "
end if

if Session("EPQ30407030")="1" then
strPayload=strPayload&"  \tab Gestational diabetes  \par "
end if
if Session("EPQ30407040")="1" then
strPayload=strPayload&"  \tab Graves Disease/hyperthyroidism  \par "
end if
if Session("EPQ30407050")="1" then
strPayload=strPayload&"  \tab Hypothyroidism  \par "
end if
if Session("EPQ30407060")="1" then
strPayload=strPayload&"  \tab Goiter  \par "
end if
if Session("EPQ30407070")="1" then
strPayload=strPayload&"  \tab Thyroid mass  \par "
end if
if Session("EPQ30407080")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30407000")&" \par "
end if

'if Session("EPQ30402030")="1" then
'	strPayload=strPayload&"  \tab Gynecological or female part, including uterus, ovaries, vagina, vulva and  cervix  \par "
'	end if

if Session("EPQ30408010")="1" then
strPayload=strPayload&"  \tab Polycystic ovaries or Stein-Leventhal syndrome  \par "
end if
if Session("EPQ30408030")="1" then
strPayload=strPayload&"  \tab Endometriosis  \par "
end if
if Session("EPQ30408050")="1" then
strPayload=strPayload&"  \tab Irregular menstrual bleeding  \par "
end if
if Session("EPQ30408020")="1" then
strPayload=strPayload&"  \tab Ovarian cysts  \par "
end if
if Session("EPQ30408070")="1" then
strPayload=strPayload&"  \tab PID  \par "
end if
if Session("EPQ30408060")="1" then
strPayload=strPayload&"  \tab Benign uterine tumor  \par "
end if
if Session("EPQ30408090")="1" then
strPayload=strPayload&"  \tab Abnormal Pap  \par "
end if
if Session("EPQ30408080")="1" then
strPayload=strPayload&"  \tab Uterine fibroids  \par "
end if
if Session("EPQ30408130")="1" then
strPayload=strPayload&"  \tab Uterine prolapse \par "
end if

if Session("EPQ30408110")="1" then
strPayload=strPayload&"  \tab HPV  \par "
end if
if Session("EPQ30408040")="1" then
strPayload=strPayload&"  \tab Infertility  \par "
end if
if Session("EPQ30408100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30408000") &" \par "
end if
if Session("EPQ30408120")="77" then
strPayload=strPayload&"  \tab PT needs help answering gynecological PMH  \par "
end if

if Session("EPQ30409010")="1" then
strPayload=strPayload&"  \tab Bladder/kidney stones  \par "
end if
if Session("EPQ30409020")="1" then
strPayload=strPayload&"  \tab Abnormal kidney function (creatinine level)  \par "
end if
if Session("EPQ30409030")="1" then
strPayload=strPayload&"  \tab Kidney failure  \par "
end if
if Session("EPQ30409040")="1" then
strPayload=strPayload&"  \tab Hematuria  \par "
end if

if Session("EPQ30409080")="1" then
strPayload=strPayload&"  \tab UTI  \par "
end if
if Session("EPQ30409050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30409000")&" \par "
end if
if Session("EPQ30409090")="1" then
strPayload=strPayload&"  \tab Urinary incontinence \par "
end if
if Session("EPQ30409100")="1" then
strPayload=strPayload&"  \tab Kidney infection (includes pyelonephritis)  \par "
end if

'if Session("EPQ30402060")="1" then
'	strPayload=strPayload&"  \tab Breast or nipple problems  \par "
'	end if
if Session("EPQ30410010")="1" then
strPayload=strPayload&"  \tab Abnormal mammogram, sonogram, ultrasound or breast MRI  \par "
end if
if Session("EPQ30410020")="1" then
strPayload=strPayload&"  \tab Benign breast lump or cyst  \par "
end if
if Session("EPQ30410030")="1" then
strPayload=strPayload&"  \tab Benign fibrocystic breasts or breast changes  \par "
end if
if Session("EPQ30410040")="1" then
strPayload=strPayload&"  \tab DCIS  \par "
end if
if Session("EPQ30410050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30410000")&" \par "
end if
if Session("EPQ30410060")="77" then
strPayload=strPayload&"  \tab PT needs help answering breast PMH  \par "
end if

'if Session("EPQ30402070")="1" then
'	strPayload=strPayload&"  \tab STD  \par "
'	end if
if Session("EPQ30411010")="1" then
strPayload=strPayload&"  \tab HPV  \par "
end if
if Session("EPQ30411020")="1" then
strPayload=strPayload&"  \tab Chlamydia  \par "
end if
if Session("EPQ30411030")="1" then
strPayload=strPayload&"  \tab Herpes  \par "
end if
if Session("EPQ30411040")="1" then
strPayload=strPayload&"  \tab Trichomoniasis  \par "
end if
if Session("EPQ30411050")="1" then
strPayload=strPayload&"  \tab Genital Warts  \par "
end if
if Session("EPQ30411060")="1" then
strPayload=strPayload&"  \tab Gonorrhea  \par "
end if
if Session("EPQ30411070")="1" then
strPayload=strPayload&"  \tab Syphilis  \par "
end if
if Session("EPQ30411100")="1" then
strPayload=strPayload&"  \tab HIV/AIDS \par "
end if

if Session("EPQ30411080")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30411000")&" \par "
end if
if Session("EPQ30411090")="77" then
strPayload=strPayload&"  \tab PT needs help with answering STD PMH  \par "
end if

'if Session("EPQ30402050")="1" then
'	strPayload=strPayload&"  \tab Stroke, migraine headaches, seizures or other problem with your brain or nervous system  \par "
'	end if
if Session("EPQ30412010")="1" then
strPayload=strPayload&"  \tab Migraines   \par "
end if
if Session("EPQ30412020")="1" then
strPayload=strPayload&"  \tab MS   \par "
end if
if Session("EPQ30412030")="1" then
strPayload=strPayload&"  \tab Epilepsy or seizure disorder   \par "
end if
if Session("EPQ30412040")="1" then
strPayload=strPayload&"  \tab Peripheral neuropathy   \par "
end if
if Session("EPQ30412050")="1" then
strPayload=strPayload&"  \tab TIA   \par "
end if
if Session("EPQ30412060")="1" then
strPayload=strPayload&"  \tab Parkinson's   \par "
end if
if Session("EPQ30412070")="1" then
strPayload=strPayload&"  \tab CVA/brain hemorrhage   \par "
end if

dim DementiaSeverity
if Session("HM10401000")="1" then
DementiaSeverity="Mild "
end if
if Session("HM10401000")="2" then
DementiaSeverity="Moderate "
end if
if Session("HM10401000")="3" then
DementiaSeverity="Severe "
end if


if Session("EPQ30412090")="1" then
strPayload=strPayload&"  \tab "&DementiaSeverity&"Dementia including Alzheimer's   \par "
end if
if Session("EPQ30412120")="1" then
strPayload=strPayload&"  \tab Headaches other than migraine   \par "
end if
if Session("EPQ30412130")="1" then
strPayload=strPayload&"  \tab Benign brain tumor   \par "
end if

if Session("EPQ30412100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30412000")&"  \par "
end if


'if Session("EPQ30402040")="1" then
'	strPayload=strPayload&"  \tab Arthritis or immune system  \par "
'	end if
if Session("EPQ30413010")="1" then
strPayload=strPayload&"  \tab Osteoarthritis   \par "
end if
if Session("EPQ30413020")="1" then
strPayload=strPayload&"  \tab SLE   \par "
end if
if Session("EPQ30413030")="1" then
strPayload=strPayload&"  \tab Scleroderma   \par "
end if
if Session("EPQ30413040")="1" then
strPayload=strPayload&"  \tab JRA   \par "
end if
if Session("EPQ30413050")="1" then
strPayload=strPayload&"  \tab Ankylosing Spondylitis   \par "
end if
if Session("EPQ30413060")="1" then
strPayload=strPayload&"  \tab Polymyalgia rheumatica   \par "
end if
if Session("EPQ30413080")="1" then
strPayload=strPayload&"  \tab Fibromyalgia   \par "
end if
if Session("EPQ30413090")="1" then
strPayload=strPayload&"  \tab Rheumatoid arthritis   \par "
end if
if Session("EPQ30413120")="1" then
strPayload=strPayload&"  \tab Gout   \par "
end if
if Session("EPQ30413130")="1" then
strPayload=strPayload&"  \tab Arthritis, Other or unknown   \par "
end if

if Session("EPQ30413070")="1" then
strPayload=strPayload&"  \tab Hip/joint replacement   \par "
end if
if Session("EPQ30413100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30413000")&"  \par "
end if

if Session("EPQ304130010")="1" then
strPayload=strPayload&"  \tab Prostatitis   \par "
end if
if Session("EPQ304130020")="1" then
strPayload=strPayload&"  \tab Enlarged prostate or BPH  \par "
end if
if Session("EPQ304130030")="1" then
strPayload=strPayload&"  \tab Needed prostate biopsy  \par "
end if
if Session("EPQ304130040")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ304130000")&" \par "
end if
if Session("EPQ304140000")="1" then
strPayload=strPayload&"  \tab Normal PSA \par "
end if
if Session("EPQ304140000")="2" then
strPayload=strPayload&"  \tab Abnormal PSA \par "
end if
if Session("EPQ304140000")="3" then
strPayload=strPayload&"  \tab PT unsure about PSA results \par "
end if



if Session("EPQ30414010")="1" then
strPayload=strPayload&"  \tab Depression   \par "
end if
if Session("EPQ30414020")="1" then
strPayload=strPayload&"  \tab Bipolar   \par "
end if
if Session("EPQ30414050")="1" then
strPayload=strPayload&"  \tab "&DementiaSeverity&"Dementia   \par "
end if
if Session("EPQ30414040")="1" then
strPayload=strPayload&"  \tab OCD   \par "
end if
if Session("EPQ30414070")="1" then
strPayload=strPayload&"  \tab ADD/ADHD   \par "
end if
if Session("EPQ30414090")="1" then
strPayload=strPayload&"  \tab Schizophrenia   \par "
end if
if Session("EPQ30414100")="1" then
strPayload=strPayload&"  \tab Post-Traumatic Stress Disorder \par "
end if

if Session("EPQ30414030")="1" then
strPayload=strPayload&"  \tab Anxiety   \par "
end if
if Session("EPQ30414060")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30414000")&" \par "
end if
if Session("EPQ30414080")="77" then
strPayload=strPayload&"  \tab PT needs help answering psychological PMH   \par "
end if

'if Session("EPQ30402130")="1" then
'	strPayload=strPayload&"  \tab Lungs or other breathing problems  \par "
'	end if
if Session("EPQ30415010")="1" then
strPayload=strPayload&"  \tab Pulmonary embolism   \par "
end if
if Session("EPQ30415120")="1" then
strPayload=strPayload&"  \tab COPD "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30119000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30119000")&"Y)"
end if
if len(Session("THRC30120000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30120000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415130")="1" then
strPayload=strPayload&"  \tab Asbestosis   \par "
end if
if Session("EPQ30415140")="1" then
strPayload=strPayload&"  \tab Plural Effusion   \par "
end if

if Session("EPQ30415020")="1" then
strPayload=strPayload&"  \tab TB   \par "
end if

if Session("EPQ30415080")="1" then
strPayload=strPayload&"  \tab Asthma "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30117000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30117000")&"Y)"
end if
if len(Session("THRC30118000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30118000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415070")="1" then
strPayload=strPayload&"  \tab Emphysema "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30121000") )>0 then 
strPayload=strPayload&"(Age at onset "&Session("THRC30121000")&"Y)"
end if

if len(Session("THRC30122000") )>0 then 
strPayload=strPayload&"(Onset in "&Session("THRC30122000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30415100")="1" then
strPayload=strPayload&"  \tab Chronic bronchitis "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30123000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30123000")&"Y)"
end if
if len(Session("THRC30124000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30124000")&")"
end if
end if
strPayload=strPayload&" \par "

end if
if Session("EPQ30415030")="1" then
strPayload=strPayload&"  \tab Pleurisy   \par "
end if



if Session("EPQ30415040")="1" then
strPayload=strPayload&"  \tab Pneumonia "
if Session("SurveyVersion")<> "Thoracic" then
strPayload=strPayload&" \par "
end if
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30125000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30125000")&"Y)"
end if
if len(Session("THRC30126000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30126000")&")"
end if
if Session("THRC30127000") ="1" then 
strPayload=strPayload&"; 1 time"
end if
if Session("THRC30127000") ="2" then 
strPayload=strPayload&"; 2 times"
end if
if Session("THRC30127000") ="3" then 
strPayload=strPayload&"; 3 times"
end if
if Session("THRC30127000") ="4" then 
strPayload=strPayload&"; 4 times"
end if
if Session("THRC30127000") ="5" then 
strPayload=strPayload&"; 5 or more times"
end if
if Session("THRC30127000") ="6" then 
strPayload=strPayload&"; unknown times"
end if
strPayload=strPayload&" \par "
end if
end if




if Session("EPQ30415050")="1" then
strPayload=strPayload&"  \tab Sleep apnea   \par "
end if
if Session("EPQ30415060")="1" then
strPayload=strPayload&"  \tab Sarcoidosis   \par "
end if
if Session("EPQ30415090")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30415000")&" \par "
end if
if Session("EPQ30415110")="1" then
strPayload=strPayload&"  \tab PT needs help answering pulmonary PMH   \par "
end if

if Session("EPQ30416010")="1" then
strPayload=strPayload&"  \tab Angina   \par "
end if
if Session("EPQ30416020")="1" then
strPayload=strPayload&"  \tab Elevated cholesterol/triglycerides   \par "
end if
if Session("EPQ30416030")="1" then
strPayload=strPayload&"  \tab HTN   \par "
end if
if Session("EPQ30416040")="1" then
strPayload=strPayload&"  \tab Deep vein thrombosis   \par "
end if
if Session("EPQ30416050")="1" then
strPayload=strPayload&"  \tab Arrhythmia   \par "
end if
if Session("EPQ30416060")="1" then
strPayload=strPayload&"  \tab MI   \par "
end if
if Session("EPQ30416090")="1" then
strPayload=strPayload&"  \tab Heart murmur   \par "
end if
if Session("EPQ30416070")="1" then
strPayload=strPayload&"  \tab Atrial fibrillation  \par "
end if
if Session("EPQ30416080")="1" then
strPayload=strPayload&"  \tab MVP   \par "
end if
if Session("EPQ30416110")="1" then
strPayload=strPayload&"  \tab Hypotension   \par "
end if
if Session("EPQ30416100")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30416000")&" \par "
end if
'PLURAL EFFUSION
if Session("EPQ30416130")="1" then
strPayload=strPayload&"  \tab Coronary Artery Disease or athersclerosis \par "
end if

'if Session("EPQ30402140")="1" then
'	strPayload=strPayload&"  \tab Bleeding, clotting or other blood problems  \par "
'	end if
if Session("EPQ30417010")="1" then
strPayload=strPayload&"  \tab Polycythemia vera   \par "
end if
if Session("EPQ30417020")="1" then
strPayload=strPayload&"  \tab Blood transfusion   \par "
end if
if Session("EPQ30417030")="1" then
strPayload=strPayload&"  \tab Anemia   \par "
end if
if Session("EPQ30417050")="1" then
strPayload=strPayload&"  \tab Sickle cell   \par "
end if
if Session("EPQ30417070")="1" then
strPayload=strPayload&"  \tab Varicose Veins   \par "
end if
if Session("EPQ30417080")="1" then
strPayload=strPayload&"  \tab Low platelets or any thrombocytopenia  \par "
end if
if Session("EPQ30417090")="1" then
strPayload=strPayload&"  \tab Blood clots (includes PE or DVT)  \par "
end if

if Session("EPQ30417040")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30417000")&" \par "
end if
if Session("EPQ30417060")="77" then
strPayload=strPayload&"  \tab PT needs help answering circulatory PMH   \par "
end if


'if Session("EPQ30402080")="1" then
'	strPayload=strPayload&"  \tab Skin or mole related problems  \par "
'	end if
if Session("EPQ30418010")="1" then
strPayload=strPayload&"  \tab Vitiligo   \par "
end if
if Session("EPQ30418020")="1" then
strPayload=strPayload&"  \tab Dysplastic nevus syndrome   \par "
end if
if Session("EPQ30418030")="1" then
strPayload=strPayload&"  \tab Psoriasis   \par "
end if
if Session("EPQ30418040")="1" then
strPayload=strPayload&"  \tab Chronic or recurring skin condition   \par "
end if
if Session("EPQ30418050")="1" then
strPayload=strPayload&"  \tab Eczema "
if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30128000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30128000")&"Y)"
end if
if len(Session("THRC30129000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30129000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30418080")="1" then
strPayload=strPayload&"  \tab Precancerous mole  \par "
end if
if Session("EPQ30418090")="1" then
strPayload=strPayload&"  \tab Actinic keratosis (AK) \par "
end if
if Session("EPQ30418100")="1" then
strPayload=strPayload&"  \tab Basal or Squamous skin cancer \par "
end if
if Session("EPQ30418110")="1" then
strPayload=strPayload&"  \tab Acne or rosacea \par "
end if

if Session("EPQ30418060")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30418000")&" \par "
end if
if Session("EPQ30418070")="77" then
strPayload=strPayload&"  \tab PT needs help answering skin PMH   \par "
end if

if Session("EPQ30422010")="1" then
strPayload=strPayload&"  \tab Chronic or recurring sinusitis (longer than 8 weeks or more than 4 times per year)  \par "
end if
if Session("EPQ30422020")="1" then
strPayload=strPayload&"  \tab Environmental allergies (such as to pollen, mold or animals)  \par "
end if
if Session("EPQ30422070")="1" then
strPayload=strPayload&"  \tab Food or medical allergies  \par "
end if
if Session("EPQ30422040")="1" then
strPayload=strPayload&"  \tab Nasal polyps   \par "
end if
if Session("EPQ30422030")="1" then
strPayload=strPayload&"  \tab Hay fever or allergic rhinitis "

if Session("SurveyVersion")="Thoracic" then
if len(Session("THRC30130000") )>0 then 
strPayload=strPayload&" (Age at onset "&Session("THRC30130000")&"Y)"
end if
if len(Session("THRC30131000") )>0 then 
strPayload=strPayload&" (Onset in "&Session("THRC30131000")&")"
end if
end if
strPayload=strPayload&" \par "
end if

if Session("EPQ30422050")="1" then
strPayload=strPayload&"  \tab "&Session("EPQ30422060")&" \par "
end if


if Session("EPQ30419000")="1" then
strPayload=strPayload&"  \tab Mole or freckle removed   \par "
end if


'if Session("EPQ30402090")="1" then
'	strPayload=strPayload&"  \tab Kidneys, bladder or urinary tract  \par "
'	end if

'if Session("EPQ30402100")="1" then
'	strPayload=strPayload&"  \tab Psychiatric (mental health) problems, anxiety  \par "
'	end if
'if Session("EPQ30402110")="1" then
'	strPayload=strPayload&"  \tab Prostate problems  \par "
'	end if
'if Session("EPQ30402120")="1" then
'	strPayload=strPayload&"  \tab Heart problems or high blood pressure  \par "
'	end if


if Session("EPQ30402150")="1" then
	strPayload=strPayload&"  \tab Other PMH Problems  \par "

	if len(Session("EPQ30421000"))>0 then
	strPayloadbuild=Session("EPQ30421000")
	FormatStringforSummary4 (strPayloadbuild)
	strPayload=strPayload&"  \tab "&strpayload2&" \par "
	strPayloadbuild=""
	end if
end if

'if Session("EPQ30402160")="1" AND Session("EPQ30401005") <> 1 then
'	strPayload=strPayload&"  \tab None Reported \par "
'end if

'here

strPayload=strPayload&" \ul\b\fs24\par Surgical History \par"

strPayload=strPayload&"\ulnone\b0\fs20\tab \ul Surgeries\ulnone \tab\tab\tab\tab\tab\tab \ul Notes\ulnone \tab\tab\tab \ul Date\ulnone \par "
strpayload2=""

if Session("EPQ30701010")="0" then
strPayload2=strPayload2&"  \tab None Reported   \par "
end if
if Session("EPQ30701020")="0" then
strPayload2=strPayload2&"  \tab None Reported   \par "
end if

'PARKING LOT

if Session("EPQ30754000") = "1" then
strPayload2=strPayload2&" \tab Adrenal Surgery \tab\tab\tab\tab\tab "&Session("EPQ30754040") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754020") & "/"&Session("EPQ30754030")&" \par "
end if

if Session("EPQ30754050") = "1" then
strPayload2=strPayload2&" \tab Appendectomy (removal of appendix) \tab\tab\tab "&Session("EPQ30754090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754070") & "/"&Session("EPQ30754080")&" \par "
end if

if Session("EPQ30754100") = "1" then
strPayload2=strPayload2&" \tab Colon or bowel resection (removal) \tab\tab\tab "&Session("EPQ30754140") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754120") & "/"&Session("EPQ30754130")&" \par "
end if

if Session("EPQ30754150") = "1" then
strPayload2=strPayload2&" \tab Colonoscopy (with or without polyp removal) \tab\tab "&Session("EPQ30754190") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754170") & "/"&Session("EPQ30754180")&" \par "
end if

if Session("EPQ30754200") = "1" then
strPayload2=strPayload2&" \tab Colostomy \tab\tab\tab\tab\tab\tab "&Session("EPQ30754240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754220") & "/"&Session("EPQ30754230")&" \par "
end if

if Session("EPQ30754250") = "1" then
strPayload2=strPayload2&" \tab Colostomy Reversal \tab\tab\tab\tab\tab "&Session("EPQ30754290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754270") & "/"&Session("EPQ30754280")&" \par "
end if

if Session("EPQ30754300") = "1" then
strPayload2=strPayload2&" \tab Dialysis catheter placement \tab\tab\tab\tab "&Session("EPQ30754340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754320") & "/"&Session("EPQ30754330")&" \par "
end if

if Session("EPQ30754350") = "1" then
strPayload2=strPayload2&" \tab Exploratory Surgery \tab\tab\tab\tab\tab "&Session("EPQ30754390") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754370") & "/"&Session("EPQ30754380")&" \par "
end if

if Session("EPQ30754400") = "1" then
strPayload2=strPayload2&" \tab Cholecystectomy (removal of the gallbladder) \tab\tab "&Session("EPQ30754440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754420") & "/"&Session("EPQ30754430")&" \par "
end if

if Session("EPQ30754450") = "1" then
strPayload2=strPayload2&" \tab Colectomy (removal of all or part of the colon) \tab\tab "&Session("EPQ30754490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754470") & "/"&Session("EPQ30754480")&" \par "
end if

if Session("EPQ30754500") = "1" then
strPayload2=strPayload2&" \tab Hemorrhoid Surgery \tab\tab\tab\tab\tab "&Session("EPQ30754540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754520") & "/"&Session("EPQ30754530")&" \par "
end if

if Session("EPQ30754550") = "1" then
strPayload2=strPayload2&" \tab Hernia repair (including abdominal, belly button, groin) \tab "&Session("EPQ30754590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754570") & "/"&Session("EPQ30754580")&" \par "
end if

if Session("EPQ30754600") = "1" then
strPayload2=strPayload2&" \tab Liver resection (removal of part of the liver) \tab\tab "&Session("EPQ30754640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754620") & "/"&Session("EPQ30754630")&" \par "
end if

if Session("EPQ30754650") = "1" then
strPayload2=strPayload2&" \tab Plastic surgery (including tummy tucks and liposuction) \tab "&Session("EPQ30754690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754670") & "/"&Session("EPQ30754680")&" \par "
end if

if Session("EPQ30754700") = "1" then
strPayload2=strPayload2&" \tab Rectal Surgery (including fistula repair) \tab\tab\tab "&Session("EPQ30754740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754720") & "/"&Session("EPQ30754730")&" \par "
end if

if Session("EPQ30754750") = "1" then
strPayload2=strPayload2&" \tab Splenectomy (removal of the spleen) \tab\tab\tab "&Session("EPQ30754790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754770") & "/"&Session("EPQ30754780")&" \par "
end if

if Session("EPQ30754800") = "1" then
strPayload2=strPayload2&" \tab Stomach ulcer surgery \tab\tab\tab\tab\tab "&Session("EPQ30754840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754820") & "/"&Session("EPQ30754830")&" \par "
end if

if Session("EPQ30754850") = "1" then
strPayload2=strPayload2&" \tab Weight loss surgery (bariatric surgery including \par\tab gastric bypass or lapband) \tab\tab\tab\tab "&Session("EPQ30754890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754870") & "/"&Session("EPQ30754880")&" \par "
end if

if Session("EPQ30754900") = "1" then
strPayload2=strPayload2&" \tab Whipple \tab\tab\tab\tab\tab\tab "&Session("EPQ30754940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754920") & "/"&Session("EPQ30754930")&" \par "
end if

if Session("EPQ30754950") = "1" then
strPayload2=strPayload2&" \tab Other abdominal surgery"&" \tab\tab\tab\tab "&Session("EPQ30754990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30754970") & "/"&Session("EPQ30754980")&" \par "
end if

if Session("EPQ30755000") = "1" then
strPayload2=strPayload2&" \tab Bladder Biopsy \tab\tab\tab\tab\tab\tab "&Session("EPQ30755040") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755020") & "/"&Session("EPQ30755030")&" \par "
end if

if Session("EPQ30755050") = "1" then
strPayload2=strPayload2&" \tab Bone Marrow Biopsy \tab\tab\tab\tab\tab "&Session("EPQ30755090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755070") & "/"&Session("EPQ30755080")&" \par "
end if

if Session("EPQ30755100") = "1" then
strPayload2=strPayload2&" \tab Breast Biopsy \tab\tab\tab\tab\tab\tab "&Session("EPQ30755140") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755120") & "/"&Session("EPQ30755130")&" \par "
end if

if Session("EPQ30755150") = "1" then
strPayload2=strPayload2&" \tab Liver Biopsy \tab\tab\tab\tab\tab\tab "&Session("EPQ30755190") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755170") & "/"&Session("EPQ30755180")&" \par "
end if

if Session("EPQ30755200") = "1" then
strPayload2=strPayload2&" \tab Lymph node biopsy or sentinel lymph node biopsy \tab "&Session("EPQ30755240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755220") & "/"&Session("EPQ30755230")&" \par "
end if

if Session("EPQ30755250") = "1" then
strPayload2=strPayload2&" \tab Prostate Biopsy \tab\tab\tab\tab\tab "&Session("EPQ30755290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755270") & "/"&Session("EPQ30755280")&" \par "
end if

if Session("EPQ30755300") = "1" then
strPayload2=strPayload2&" \tab Skin Biopsy \tab\tab\tab\tab\tab\tab "&Session("EPQ30755340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755320") & "/"&Session("EPQ30755330")&" \par "
end if

if Session("EPQ30755350") = "1" then
strPayload2=strPayload2&" \tab Other biopsy \tab\tab\tab\tab\tab\tab "&Session("EPQ30755390") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755370") & "/"&Session("EPQ30755380")&" \par "
end if

if Session("EPQ30755400") = "1" then
strPayload2=strPayload2&" \tab Back or spine surgery (including discectomy,\par\tab laminectomy) \tab\tab\tab\tab\tab\tab "&Session("EPQ30755440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755420") & "/"&Session("EPQ30755430")&" \par "
end if

if Session("EPQ30755450") = "1" then
strPayload2=strPayload2&" \tab Foot Surgery (including bunions)\tab\tab\tab\tab "&Session("EPQ30755490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755470") & "/"&Session("EPQ30755480")&" \par "
end if

if Session("EPQ30755500") = "1" then
strPayload2=strPayload2&" \tab Fractures or broken bones requiring surgery  \tab\tab "&Session("EPQ30755540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755520") & "/"&Session("EPQ30755530")&" \par "
end if

if Session("EPQ30755550") = "1" then
strPayload2=strPayload2&" \tab Hand surgery (including carpal tunnel) \tab\tab\tab "&Session("EPQ30755590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755570") & "/"&Session("EPQ30755580")&" \par "
end if

if Session("EPQ30755600") = "1" then
strPayload2=strPayload2&" \tab Hip Surgery (including replacement) \tab\tab\tab "&Session("EPQ30755640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755620") & "/"&Session("EPQ30755630")&" \par "
end if

if Session("EPQ30755650") = "1" then
strPayload2=strPayload2&" \tab Knee Surgery (including replacement \par\tab and arthroscopic procedures) \tab\tab\tab\tab "&Session("EPQ30755690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755670") & "/"&Session("EPQ30755680")&" \par "
end if

if Session("EPQ30755700") = "1" then
strPayload2=strPayload2&" \tab Shoulder surgery (including arthroscopic procedures) \tab "&Session("EPQ30755740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755720") & "/"&Session("EPQ30755730")&" \par "
end if

if Session("EPQ30755750") = "1" then
strPayload2=strPayload2&" \tab Other orthopedic surgery \tab\tab\tab\tab "&Session("EPQ30755790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755770") & "/"&Session("EPQ30755780")&" \par "
end if

if Session("EPQ30755800") = "1" then
strPayload2=strPayload2&" \tab Brain tumor resection (removal or reduction of brain tumor) "&Session("EPQ30755840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755820") & "/"&Session("EPQ30755830")&" \par "
end if

if Session("EPQ30755850") = "1" then
strPayload2=strPayload2&" \tab Skull surgery (including craniotomy) \tab\tab\tab "&Session("EPQ30755890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755870") & "/"&Session("EPQ30755880")&" \par "
end if

if Session("EPQ30755900") = "1" then
strPayload2=strPayload2&" \tab Other brain surgery \tab\tab\tab\tab\tab "&Session("EPQ30755940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755920") & "/"&Session("EPQ30755930")&" \par "
end if

if Session("EPQ30755950") = "1" then
strPayload2=strPayload2&" \tab Axillary node dissection (or lymph node removal)  \tab "&Session("EPQ30755990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30755970") & "/"&Session("EPQ30755980")&" \par "
end if

if Session("EPQ30756000") = "1" then
strPayload2=strPayload2&" \tab Breast augmentation (implants) \tab\tab\tab\tab "&Session("EPQ30756040") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756020") & "/"&Session("EPQ30756030")&" \par "
end if

if Session("EPQ30756050") = "1" then
strPayload2=strPayload2&" \tab Breast lift (mastopexy) \tab\tab\tab\tab\tab "&Session("EPQ30756090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756070") & "/"&Session("EPQ30756080")&" \par "
end if


if Session("EPQ30756200") = "1" then
strPayload2=strPayload2&" \tab Breast reduction (reduction mammoplasty) \tab\tab "&Session("EPQ30756240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756220") & "/"&Session("EPQ30756230")&" \par "
end if


if Session("EPQ30756400") = "1" then
strPayload2=strPayload2&" \tab Sentinel lymph node biopsy \tab\tab\tab\tab "&Session("EPQ30756440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756420") & "/"&Session("EPQ30756430")&" \par "
end if

if Session("EPQ30756450") = "1" then
strPayload2=strPayload2&" \tab Other breast surgery \tab\tab\tab\tab\tab "&Session("EPQ30756490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756470") & "/"&Session("EPQ30756480")&" \par "
end if

if Session("EPQ30756500") = "1" then
strPayload2=strPayload2&" \tab Bronchoscopy or Thoracoscopy (a tube with \par\tab a camera is inserted into the lungs) \tab\tab\tab "&Session("EPQ30756540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756520") & "/"&Session("EPQ30756530")&" \par "
end if

if Session("EPQ30756550") = "1" then
strPayload2=strPayload2&" \tab Laproscopic lung surgery \tab\tab\tab\tab "&Session("EPQ30756590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756570") & "/"&Session("EPQ30756580")&" \par "
end if

if Session("EPQ30756600") = "1" then
strPayload2=strPayload2&" \tab Mediastinoscopy (usually done to obtain a biopsy) \tab "&Session("EPQ30756640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756620") & "/"&Session("EPQ30756630")&" \par "
end if

if Session("EPQ30756650") = "1" then
strPayload2=strPayload2&" \tab Open lung surgery (including thoracotomy) \tab\tab "&Session("EPQ30756690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756670") & "/"&Session("EPQ30756680")&" \par "
end if

if Session("EPQ30756700") = "1" then
strPayload2=strPayload2&" \tab Pericardial window (to drain fluid around the heart) \tab "&Session("EPQ30756740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756720") & "/"&Session("EPQ30756730")&" \par "
end if

if Session("EPQ30756750") = "1" then
strPayload2=strPayload2&" \tab Pleurodesis / Thoracentesis (removal of fluid \par\tab from space between chest and lung) \tab\tab\tab "&Session("EPQ30756790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756770") & "/"&Session("EPQ30756780")&" \par "
end if

if Session("EPQ30756800") = "1" then
strPayload2=strPayload2&" \tab Tracheotomy \tab\tab\tab\tab\tab\tab "&Session("EPQ30756840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756820") & "/"&Session("EPQ30756830")&" \par "
end if

if Session("EPQ30756850") = "1" then
strPayload2=strPayload2&" \tab Other lung surgery \tab\tab\tab\tab\tab "&Session("EPQ30756890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756870") & "/"&Session("EPQ30756880")&" \par "
end if

if Session("EPQ30756900") = "1" then
strPayload2=strPayload2&" \tab Biopsy of Vulva, Vagina, Cervix, Uterus, or Lymph Node \tab "&Session("EPQ30756940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756920") & "/"&Session("EPQ30756930")&" \par "
end if

if Session("EPQ30756950") = "1" then
strPayload2=strPayload2&" \tab Cesarean section  \tab\tab\tab\tab\tab "&Session("EPQ30756990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30756970") & "/"&Session("EPQ30756980")&" \par "
end if

if Session("EPQ30757000") = "1" then
strPayload2=strPayload2&" \tab D&C  \tab\tab\tab\tab\tab\tab\tab "&Session("EPQ30757040") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757020") & "/"&Session("EPQ30757030")&" \par "
end if

if Session("EPQ30757050") = "1" then
strPayload2=strPayload2&" \tab Laparoscopy (exploratory surgery) \tab\tab\tab "&Session("EPQ30757090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757070") & "/"&Session("EPQ30757080")&" \par "
end if


if Session("EPQ30757200") = "1" then
strPayload2=strPayload2&" \tab Hysterectomy or Partial Hysterectomy \tab\tab\tab "&Session("EPQ30757240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757220") & "/"&Session("EPQ30757230")&" \par "
end if

if Session("EPQ30757250") = "1" then
strPayload2=strPayload2&" \tab Prolapse surgery (for pelvic support problems) \tab\tab "&Session("EPQ30757290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757270") & "/"&Session("EPQ30757280")&" \par "
end if

if Session("EPQ30757300") = "1" then
strPayload2=strPayload2&" \tab Tubal ligation (tying the tubes to prevent pregnancy) \tab "&Session("EPQ30757340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757320") & "/"&Session("EPQ30757330")&" \par "
end if

if Session("EPQ30757350") = "1" then
strPayload2=strPayload2&" \tab Urinary leakage surgery (for bladder control) \tab\tab "&Session("EPQ30757390") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757370") & "/"&Session("EPQ30757380")&" \par "
end if

if Session("EPQ30757400") = "1" then
strPayload2=strPayload2&" \tab Other female reproductive surgery \tab\tab\tab "&Session("EPQ30757440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757420") & "/"&Session("EPQ30757430")&" \par "
end if

if Session("EPQ30757450") = "1" then
strPayload2=strPayload2&" \tab Bronchoscopy (a test to see inside the lungs) \tab\tab "&Session("EPQ30757490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757470") & "/"&Session("EPQ30757480")&" \par "
end if

if Session("EPQ30757500") = "1" then
strPayload2=strPayload2&" \tab Dental or Oral surgery (including the removal \par\tab of your wisdom teeth) \tab\tab\tab\tab\tab "&Session("EPQ30757540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757520") & "/"&Session("EPQ30757530")&" \par "
end if

if Session("EPQ30757550") = "1" then
strPayload2=strPayload2&" \tab Eye surgery (including the removal of cataracts \par\tab and laser surgery such as LASIK) \tab\tab\tab "&Session("EPQ30757590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757570") & "/"&Session("EPQ30757580")&" \par "
end if

if Session("EPQ30757600") = "1" then
strPayload2=strPayload2&" \tab Ear surgery (including tubes) \tab\tab\tab\tab "&Session("EPQ30757640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757620") & "/"&Session("EPQ30757630")&" \par "
end if

if Session("EPQ30757650") = "1" then
strPayload2=strPayload2&" \tab Laryngoscopy (a test to see inside the back \par\tab of the throat or vocal cords) \tab\tab\tab\tab "&Session("EPQ30757690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757670") & "/"&Session("EPQ30757680")&" \par "
end if

if Session("EPQ30757700") = "1" then
strPayload2=strPayload2&" \tab Nasal or sinus surgery (including deviated septum) \tab "&Session("EPQ30757740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757720") & "/"&Session("EPQ30757730")&" \par "
end if

if Session("EPQ30757750") = "1" then
strPayload2=strPayload2&" \tab Neck or spine surgery \tab\tab\tab\tab\tab "&Session("EPQ30757790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757770") & "/"&Session("EPQ30757780")&" \par "
end if

if Session("EPQ30757800") = "1" then
strPayload2=strPayload2&" \tab Parathyroid Surgery \tab\tab\tab\tab\tab "&Session("EPQ30757840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757820") & "/"&Session("EPQ30757830")&" \par "
end if

if Session("EPQ30757850") = "1" then
strPayload2=strPayload2&" \tab Plastic surgery (including facelifts and rhinoplasty) \tab "&Session("EPQ30757890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757870") & "/"&Session("EPQ30757880")&" \par "
end if

if Session("EPQ30757900") = "1" then
strPayload2=strPayload2&" \tab Thyroid Surgery (including removal of thyroid) \tab\tab "&Session("EPQ30757940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757920") & "/"&Session("EPQ30757930")&" \par "
end if

if Session("EPQ30757950") = "1" then
strPayload2=strPayload2&" \tab Tonsillectomy or Adenoidectomy (removal of \par\tab your tonsils  and/or adenoids) \tab\tab\tab\tab "&Session("EPQ30757990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30757970") & "/"&Session("EPQ30757980")&" \par "
end if

if Session("EPQ30758050") = "1" then
strPayload2=strPayload2&" \tab Upper endoscopy or EGD (a test to see inside \par\tab the esophagus, stomach, or duodenum) \tab\tab\tab "&Session("EPQ30758090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758070") & "/"&Session("EPQ30758080")&" \par "
end if

if Session("EPQ30758100") = "1" then
strPayload2=strPayload2&" \tab Other ENT, oral, eye surgery  \tab\tab\tab\tab "&Session("EPQ30758140") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758120") & "/"&Session("EPQ30758130")&" \par "
end if

if Session("EPQ30758150") = "1" then
strPayload2=strPayload2&" \tab Aneurysm Repair \tab\tab\tab\tab\tab "&Session("EPQ30758190") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758170") & "/"&Session("EPQ30758180")&" \par "
end if

if Session("EPQ30758200") = "1" then
strPayload2=strPayload2&" \tab Angioplasty (placement of a stent in your artery) \tab\tab "&Session("EPQ30758240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758220") & "/"&Session("EPQ30758230")&" \par "
end if

if Session("EPQ30758250") = "1" then
strPayload2=strPayload2&" \tab Cardiac catherization (passing a small tube \par\tab from your leg or arm into your heart) \tab\tab\tab "&Session("EPQ30758290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758270") & "/"&Session("EPQ30758280")&" \par "
end if

if Session("EPQ30758300") = "1" then
strPayload2=strPayload2&" \tab Carotid endarterectomy (removal of plaque \par\tab from your arteries) \tab\tab\tab\tab\tab "&Session("EPQ30758340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758320") & "/"&Session("EPQ30758330")&" \par "
end if

if Session("EPQ30758350") = "1" then
strPayload2=strPayload2&" \tab Heart bypass surgery (also called coronary artery \par\tab bypass surgery or CABG) \tab\tab\tab\tab "&Session("EPQ30758390") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758370") & "/"&Session("EPQ30758380")&" \par "
end if

if Session("EPQ30758400") = "1" then
strPayload2=strPayload2&" \tab Pacemaker or ICD (placement of a life saving \par\tab device into your heart) \tab\tab\tab\tab\tab "&Session("EPQ30758440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758420") & "/"&Session("EPQ30758430")&" \par "
end if

if Session("EPQ30758450") = "1" then
strPayload2=strPayload2&" \tab Valve replacement or repair \tab\tab\tab\tab "&Session("EPQ30758490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758470") & "/"&Session("EPQ30758480")&" \par "
end if

if Session("EPQ30758500") = "1" then
strPayload2=strPayload2&" \tab Varicose Veins \tab\tab\tab\tab\tab\tab "&Session("EPQ30758540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758520") & "/"&Session("EPQ30758530")&" \par "
end if


if Session("EPQ30758550") = "1" then
strPayload2=strPayload2&" \tab Other cardiac surgery \tab\tab\tab\tab\tab "&Session("EPQ30758590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758570") & "/"&Session("EPQ30758580")&" \par "
end if

if Session("EPQ30758600") = "1" then
strPayload2=strPayload2&" \tab Biopsy of testicle or penis \tab\tab\tab\tab "&Session("EPQ30758640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758620") & "/"&Session("EPQ30758630")&" \par "
end if

if Session("EPQ30758650") = "1" then
strPayload2=strPayload2&" \tab Biopsy of prostate \tab\tab\tab\tab\tab "&Session("EPQ30758690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758670") & "/"&Session("EPQ30758680")&" \par "
end if

if Session("EPQ30758700") = "1" then
strPayload2=strPayload2&" \tab TURP or Transurethral Resection of the Prostate\tab\tab "&Session("EPQ30758740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758720") & "/"&Session("EPQ30758730")&" \par "
end if

if Session("EPQ30758750") = "1" then
strPayload2=strPayload2&" \tab Radical prostatectomy  \tab\tab\tab\tab\tab "&Session("EPQ30758790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758770") & "/"&Session("EPQ30758780")&" \par "
end if

if Session("EPQ30758800") = "1" then
strPayload2=strPayload2&" \tab Orchiectomy (removal of the testicle or testes) \tab\tab "&Session("EPQ30758840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758820") & "/"&Session("EPQ30758830")&" \par "
end if

if Session("EPQ30758850") = "1" then
strPayload2=strPayload2&" \tab Penectomy (removal of the penis) \tab\tab\tab "&Session("EPQ30758890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758870") & "/"&Session("EPQ30758880")&" \par "
end if

if Session("EPQ30758900") = "1" then
strPayload2=strPayload2&" \tab Vasectomy (to prevent pregnancy) \tab\tab\tab "&Session("EPQ30758940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758920") & "/"&Session("EPQ30758930")&" \par "
end if

if Session("EPQ30758950") = "1" then
strPayload2=strPayload2&" \tab Other male reproductive surgery  \tab\tab\tab "&Session("EPQ30758990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30758970") & "/"&Session("EPQ30758980")&" \par "
end if

if Session("EPQ30759050") = "1" then
strPayload2=strPayload2&" \tab Body lift (post-bariatric surgery) \tab\tab\tab\tab "&Session("EPQ30759090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759070") & "/"&Session("EPQ30759080")&" \par "
end if

if Session("EPQ30759200") = "1" then
strPayload2=strPayload2&" \tab Ear surgery (otoplasty) \tab\tab\tab\tab\tab "&Session("EPQ30759240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759220") & "/"&Session("EPQ30759230")&" \par "
end if

if Session("EPQ30759250") = "1" then
strPayload2=strPayload2&" \tab Eyelid (blepharoplasty) \tab\tab\tab\tab\tab "&Session("EPQ30759290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759270") & "/"&Session("EPQ30759280")&" \par "
end if

if Session("EPQ30759300") = "1" then
strPayload2=strPayload2&" \tab Face lift \tab\tab\tab\tab\tab\tab "&Session("EPQ30759340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759320") & "/"&Session("EPQ30759330")&" \par "
end if

if Session("EPQ30759350") = "1" then
strPayload2=strPayload2&" \tab Liposuction \tab\tab\tab\tab\tab\tab "&Session("EPQ30759390") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759370") & "/"&Session("EPQ30759380")&" \par "
end if

if Session("EPQ30759400") = "1" then
strPayload2=strPayload2&" \tab Neck lift (cervicoplasty and/or platysmaplasty) \tab\tab "&Session("EPQ30759440") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759420") & "/"&Session("EPQ30759430")&" \par "
end if

if Session("EPQ30759450") = "1" then
strPayload2=strPayload2&" \tab Tummy tuck (abdominoplasty) \tab\tab\tab\tab "&Session("EPQ30759490") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759470") & "/"&Session("EPQ30759480")&" \par "
end if

if Session("EPQ30759500") = "1" then
strPayload2=strPayload2&" \tab Other plastic surgery  \tab\tab\tab\tab\tab "&Session("EPQ30759540") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759520") & "/"&Session("EPQ30759530")&" \par "
end if

if Session("EPQ30759550") = "1" then
strPayload2=strPayload2&" \tab Placement of port \tab\tab\tab\tab\tab "&Session("EPQ30759590") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759570") & "/"&Session("EPQ30759580")&" \par "
end if

if Session("EPQ30759600") = "1" then
strPayload2=strPayload2&" \tab Removal of port   \tab\tab\tab\tab\tab "&Session("EPQ30759640") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759620") & "/"&Session("EPQ30759630")&" \par "
end if

if Session("EPQ30759650") = "1" then
strPayload2=strPayload2&" \tab Other port surgery \tab\tab\tab\tab\tab "&Session("EPQ30759690") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759670") & "/"&Session("EPQ30759680")&" \par "
end if
'MARK

if Session("EPQ30759700") = "1" then
strPayload2=strPayload2&" \tab Cyst removal \tab\tab\tab\tab\tab\tab "&Session("EPQ30759740") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759720") & "/"&Session("EPQ30759730")&" \par "
end if

if Session("EPQ30759750") = "1" then
strPayload2=strPayload2&" \tab Mohs surgery (removal of a skin \par\tab cancer using a special technique) \tab\tab\tab "&Session("EPQ30759790") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759770") & "/"&Session("EPQ30759780")&" \par "
end if

if Session("EPQ30759800") = "1" then
strPayload2=strPayload2&" \tab Excision of a skin cancer (removal \par\tab of a skin cancer) \tab\tab\tab\tab\tab "&Session("EPQ30759840") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759820") & "/"&Session("EPQ30759830")&" \par "
end if

if Session("EPQ30759850") = "1" then
strPayload2=strPayload2&" \tab Sentinel lymph node biopsy \tab\tab\tab\tab "&Session("EPQ30759890") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759870") & "/"&Session("EPQ30759880")&" \par "
end if

if Session("EPQ30759900") = "1" then
strPayload2=strPayload2&" \tab Other skin surgery \tab\tab\tab\tab\tab "&Session("EPQ30759940") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759920") & "/"&Session("EPQ30759930")&" \par "
end if

if Session("EPQ30759950") = "1" then
strPayload2=strPayload2&" \tab Cystoscopy (placement of a tube into the bladder) \tab "&Session("EPQ30759990") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30759970") & "/"&Session("EPQ30759980")&" \par "
end if

if Session("EPQ30760000") = "1" then
strPayload2=strPayload2&" \tab Cystectomy (removal of all or part of the bladder)\tab\tab "&Session("EPQ30760040") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760020") & "/"&Session("EPQ30760030")&" \par "
end if

if Session("EPQ30760050") = "1" then
strPayload2=strPayload2&" \tab Ileostomy or urostomy  \tab\tab\tab\tab\tab "&Session("EPQ30760090") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760070") & "/"&Session("EPQ30760080")&" \par "
end if

if Session("EPQ30760100") = "1" then
strPayload2=strPayload2&" \tab Nephrectomy (kidney removal) \tab\tab\tab\tab "&Session("EPQ30760140") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760120") & "/"&Session("EPQ30760130")&" \par "
end if

if Session("EPQ30760150") = "1" then
strPayload2=strPayload2&" \tab Kidney stone surgery \tab\tab\tab\tab\tab "&Session("EPQ30760190") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760170") & "/"&Session("EPQ30760180")&" \par "
end if

if Session("EPQ30760200") = "1" then
strPayload2=strPayload2&" \tab Kidney stent \tab\tab\tab\tab\tab\tab "&Session("EPQ30760240") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760220") & "/"&Session("EPQ30760230")&" \par "
end if

if Session("EPQ30760250") = "1" then
strPayload2=strPayload2&" \tab Other urinary surgical \tab\tab\tab\tab\tab "&Session("EPQ30760290") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760270") & "/"&Session("EPQ30760280")&" \par "
end if

if Session("EPQ30760300") = "1" then
strPayload2=strPayload2&" \tab Other type of surgery  \tab\tab\tab\tab\tab "&Session("EPQ30760340") & " time(s) "
strPayload2=strPayload2&" \tab\tab "&Session("EPQ30760320") & "/"&Session("EPQ30760330")&" \par "
end if

'BILATERALS

if Session("EPQ30756142")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with implants (after a mastectomy) \tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30756122")&   "/"&Session("EPQ30756132")&"  \par "
end if
if Session("EPQ30756141")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with implants (after a mastectomy) \tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30756121")&   "/"&Session("EPQ30756131")&"  \par "
end if
if Session("EPQ30756140")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with implants (after a mastectomy) \tab Bilateral   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30756120")&   "/"&Session("EPQ30756130")&"  \par "
end if

if Session("EPQ30756192")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with tissue (after a mastectomy) \tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30756172")&   "/"&Session("EPQ30756182")&"  \par "
end if
if Session("EPQ30756191")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with tissue (after a mastectomy) \tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30756171")&   "/"&Session("EPQ30756181")&"  \par "
end if
if Session("EPQ30756190")="1" then
strPayload2=strPayload2&"  \tab Breast reconstruction with tissue (after a mastectomy) \tab Bilateral   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30756170")&   "/"&Session("EPQ30756180")&"  \par "
end if




if Session("EPQ30710020")="1" then
strPayload2=strPayload2&"  \tab Lumpectomy or partial mastectomy \tab\tab\tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30710000lMM")&   "/"&Session("EPQ30710000lYY")&"  \par "
end if
if Session("EPQ30710010")="1" then
strPayload2=strPayload2&"  \tab Lumpectomy or partial mastectomy \tab\tab\tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30710000rMM")&   "/"&Session("EPQ30710000rYY")&"  \par "
end if
if Session("EPQ30710030")="1" then
strPayload2=strPayload2&"  \tab Lumpectomy or partial mastectomy \tab\tab\tab Bilateral  "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30710000bMM")&   "/"&Session("EPQ30710000bYY")&"  \par "
end if

if Session("EPQ30711020")="1" then
strPayload2=strPayload2&"  \tab Mastectomy \tab\tab\tab\tab\tab\tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30711000lMM")&   "/"&Session("EPQ30711000lYY")&"  \par "
end if
if Session("EPQ30711010")="1" then
strPayload2=strPayload2&"  \tab Mastectomy \tab\tab\tab\tab\tab\tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30711000rMM")&   "/"&Session("EPQ30711000rYY")&"  \par "
end if
if Session("EPQ30711030")="1" then
strPayload2=strPayload2&"  \tab Mastectomy \tab\tab\tab\tab\tab\tab Bilateral  "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30711000bMM")&   "/"&Session("EPQ30711000bYY")&"  \par "
end if

if Session("EPQ30712010")="1" then
strPayload2=strPayload2&"  \tab Oophorectomy \tab\tab\tab\tab\tab\tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30712000lMM")&   "/"&Session("EPQ30712000lYY")&"  \par "
end if
if Session("EPQ30712020")="1" then
strPayload2=strPayload2&"  \tab Oophorectomy \tab\tab\tab\tab\tab\tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30712000rMM")&   "/"&Session("EPQ30712000rYY")&"  \par "
end if
if Session("EPQ30712030")="1" then
strPayload2=strPayload2&"  \tab Oophorectomy \tab\tab\tab\tab\tab\tab Bilateral  "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30712000bMM")&   "/"&Session("EPQ30712000bYY")&"  \par  "
end if


if Session("EPQ30712010s")="1" then
strPayload2=strPayload2&"  \tab Salpingo-Oophorectomy \tab\tab\tab\tab\tab Left   "
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30712000lMMs")&   "/"&Session("EPQ30712000lYYs")&"  \par "
end if
if Session("EPQ30712020s")="1" then
strPayload2=strPayload2&"  \tab Salpingo-Oophorectomy \tab\tab\tab\tab\tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30712000rMMs")&   "/"&Session("EPQ30712000rYYs")&"  \par "
end if
if Session("EPQ30712030s")="1" then
strPayload2=strPayload2&"  \tab Salpingo-Oophorectomy \tab\tab\tab\tab\tab Bilateral  "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30712000bMMs")&   "/"&Session("EPQ30712000bYYs")&"  \par  "
end if

if Session("EPQ30709020")="1" then
strPayload2=strPayload2&"  \tab Removal of Breast Implant \tab\tab\tab\tab Left   "
end if

if Session("EPQ30709020")="1" then
strPayload2=strPayload2&"  \tab\tab\tab "&Session("EPQ30709000lMM")&   "/"&Session("EPQ30709000lYY")&"  \par "
end if

if Session("EPQ30709010")="1" then
strPayload2=strPayload2&"  \tab Removal of Breast Implant  \tab\tab\tab\tab Right   "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30709000rMM")&   "/"&Session("EPQ30709000rYY")&"  \par "
end if

if Session("EPQ30709030")="1" then
strPayload2=strPayload2&"  \tab Removal of Breast Implant \tab\tab\tab\tab Bilateral  "
strPayload2=strPayload2&"  \tab\tab "&Session("EPQ30709000bMM")&   "/"&Session("EPQ30709000bYY")&"  \par "
end if

'parking lot ends

if Session("EPQ30704000")="1" then
strPayload2=strPayload2&" \tab Breast biopsies \tab\tab\tab\tab 1 "
end if

if Session("EPQ30704000")="2" then
strPayload2=strPayload2&" \tab Breast biopsies \tab\tab\tab >1 "
end if

if Session("EPQ30703000")="77" then
strPayload2=strPayload2&" \tab Breast biopsies \tab\tab PT needs help with breast biopsy hx \par"
end if

if Session("EPQ30703000")="1" then
strPayload2=strPayload2&" \tab Breast biopsy results \tab\tab\tab Breast Bx"
end if

if Session("EPQ30705000")="1" then
strPayload2=strPayload2&" \tab with cancer Dx \par"
end if
if Session("EPQ30705000")<> "1" then
strPayload2=strPayload2&" \par"
end if

if Session("EPQ30705000")="0" then
strPayload2=strPayload2&" \tab with no cancer Dx \par"
end if

if Session("EPQ30707000")="1" then
strPayload2=strPayload2&" \tab Breast implant type \tab\tab Silicone   \par "
end if

if Session("EPQ30707000")="2" then
strPayload2=strPayload2&" \tab Breast implant type \tab\tab Saline   \par "
end if
if Session("EPQ30707000")="88" then
strPayload2=strPayload2&" \tab Breast implant type \tab\tab PT unsure about type of breast implant   \par "
end if

if Session("EPQ30707000")="77" then
strPayload2=strPayload2&" \tab Breast implant type \tab\tab PT needs help with breast implant Hx   \par "
end if
if Session("EPQ30708000")="1" then
strPayload2=strPayload2&" \tab Breast implant placement \tab Subpectoral   \par "
end if
if Session("EPQ30708000")="2" then
strPayload2=strPayload2&" \tab Breast implant placement \tab Subglandular   \par "
end if
if Session("EPQ30708000")="88" then
strPayload2=strPayload2&" \tab Breast implant placement \tab PT unsure about placement   \par "
end if
if Session("EPQ30708000")="77" then
strPayload2=strPayload2&" \tab Breast implant placement \tab PT needs help with breast implant Hx   \par "
end if

if Session("EPQ30753000")="0" then
strPayload2=strPayload2&" \tab Other hospitalizations \tab\tab no"
end if
if Session("EPQ30753000")="1" then
strPayload2=strPayload2&" \tab Other hospitalizations \tab\tab yes"
end if



strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ul\b\fs24\par Reproductive History \ulnone\par "

If session("Gender")="M" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Section not taken by male patients \tab\tab "
end if

If session("Gender")="F" then


strPayload=strPayload&"\ulnone\b0\fs20\tab Pregnancies \tab\tab\tab "
strpayload2=""
if Session("EPQ30619000")="0" then
strPayload2=strPayload2&", G0"
end if
if Session("EPQ30620000")="1" then
strPayload2=strPayload2&", G1"
end if
if Session("EPQ30620000")="2" then
strPayload2=strPayload2&", G2"
end if
if Session("EPQ30620000")="3" then
strPayload2=strPayload2&", G3"
end if
if Session("EPQ30620000")="4" then
strPayload2=strPayload2&", G4"
end if
if Session("EPQ30620000")="5" then
strPayload2=strPayload2&", G>=5"
end if

if Session("EPQ30619000")<>"0" then
if Session("EPQ30621000")="0" then
strPayload2=strPayload2&", P0"
end if
if Session("EPQ30621000")="1" then
strPayload2=strPayload2&", P1"
end if
if Session("EPQ30621000")="2" then
strPayload2=strPayload2&", P2"
end if
if Session("EPQ30621000")="3" then
strPayload2=strPayload2&", P3"
end if
if Session("EPQ30621000")="4" then
strPayload2=strPayload2&", P4"
end if
if Session("EPQ30621000")="5" then
strPayload2=strPayload2&", P>=5"
end if

dim ABScore
Session("ABScore")=CInt(Session("EPQ30622000")) + CInt(Session("EPQ30623000"))

if Session("ABScore")=0 then
strPayload2=strPayload2&", AB0"
end if
if Session("ABScore")=1 then
strPayload2=strPayload2&", AB1"
end if
if Session("ABScore")=2 then
strPayload2=strPayload2&", AB2"
end if
if Session("ABScore")=3 then
strPayload2=strPayload2&", AB3"
end if
if Session("ABScore")=4 then
strPayload2=strPayload2&", AB4"
end if
if Session("ABScore")=5 then
strPayload2=strPayload2&", AB5"
end if
if Session("ABScore") > 5 then
strPayload2=strPayload2&", AB5+"
end if

if Session("EPQ30623000")="77" or Session("EPQ30622000")="77" then
strPayload2=strPayload2&", PT needs help with reproductive history "
end if

if len(Session("EPQ30624000")) > 1 then
strPayload2=strPayload2&", First live birth:"&Session("EPQ30624000")
end if

end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
strpayload=strpayload&strpayload2&" \par"

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then

	strPayload=strPayload&"\ulnone\b0\fs20\tab\tab\tab\tab\tab "

	if Session("CUTA10301000")="1" then
	strPayload=strPayload&"Pregnant when diagnosed with melanoma"
	end if
	if Session("CUTA10301000")="2" then
	strPayload=strPayload&"Not pregnant when diagnosed with melanoma"
	end if
	if Session("CUTA10301000")="88" then
	strPayload=strPayload&"Unknown if pregnant when diagnosed with melanoma"
	end if
	strPayload=strPayload&" \par "

end if
end if

strPayload=strPayload&" \ulnone\b0\fs20\tab Menses \tab\tab\tab "
strpayload2=""
if Session("EPQ30601000")="1" then
strPayload2=strPayload2&", Never menstruated "
end if
if Session("EPQ30601000")="9" then
strPayload2=strPayload2&", Menarche <=9Y"
end if
if Session("EPQ30601000")="10" then
strPayload2=strPayload2&", Menarche 10Y"
end if
if Session("EPQ30601000")="11" then
strPayload2=strPayload2&", Menarche 11Y"
end if
if Session("EPQ30601000")="12" then
strPayload2=strPayload2&", Menarche 12Y"
end if
if Session("EPQ30601000")="13" then
strPayload2=strPayload2&", Menarche 13Y"
end if
if Session("EPQ30601000")="14" then
strPayload2=strPayload2&", Menarche 14Y"
end if
if Session("EPQ30601000")="15" then
strPayload2=strPayload2&", Menarche 15Y"
end if
if Session("EPQ30601000")="16" then
strPayload2=strPayload2&", Menarche >=16Y"
end if
if Session("EPQ30601000")="88" then
strPayload2=strPayload2&", PT unsure about age of menarche"
end if

if Session("EPQ30602001")="3" then
strPayload2=strPayload2&", Menopausal"
end if
if Session("EPQ30602001")="1" then
strPayload2=strPayload2&", Pre-menopausal"
end if
if Session("EPQ30602001")="2" then
strPayload2=strPayload2&", Possibly menopausal"
end if
if Session("EPQ30602001")="4" then
strPayload2=strPayload2&", Pregnant or Nursing"
end if

if Session("EPQ30602000")="0" then
strPayload2=strPayload2&", No menses with last yr"
end if
if Session("EPQ30606000")="1" then
strPayload2=strPayload2&", Natural menopause"
end if
if Session("EPQ30606000")="2" then
strPayload2=strPayload2&", Surgical menopause"
end if
if Session("EPQ30606000")="3" then
strPayload2=strPayload2&", Chemo induced menopause"
end if
if Session("EPQ30606000")="5" then
strPayload2=strPayload2&", Pregnant or breastfeeding, stopped temporarily"
end if
if Session("EPQ30606000")="6" then
strPayload2=strPayload2&", Birth Control, stopped temporarily"
end if
if Session("EPQ30606000")="4" then
strPayload2=strPayload2&" , "&Session("EPQ30606001")
end if
if len(Session("EPQ30607000"))>0 then
strPayload2=strPayload2&",Age when menses stopped: "&Session("EPQ30607000")
end if



if Session("EPQ30602000")="77" then
strPayload2=strPayload2&", PT needs help with menstrual hx"
end if
if Session("EPQ30603000")="1" then
strPayload2=strPayload2&", Polymenorrhea"
end if
if Session("EPQ30603000")="2" then
strPayload2=strPayload2&", Normal cycle length"
end if
if Session("EPQ30603000")="3" then
strPayload2=strPayload2&", Oligomenorrhea"
end if
if Session("EPQ30603000")="4" then
strPayload2=strPayload2&", Irregular cycle"
end if

if Session("EPQ30604000")="1" then
strPayload2=strPayload2&", <1 day duration"
end if
if Session("EPQ30604000")="2" then
strPayload2=strPayload2&", 1-2 days duration"
end if
if Session("EPQ30604000")="3" then
strPayload2=strPayload2&", 3-4 days duration"
end if
if Session("EPQ30604000")="4" then
strPayload2=strPayload2&", 5-6 days duration"
end if
if Session("EPQ30604000")="5" then
strPayload2=strPayload2&", >= 7 days duration"
end if

if Session("EPQ30605000")="1" then
strPayload2=strPayload2&", Light flow"
end if
if Session("EPQ30605000")="2" then
strPayload2=strPayload2&", Medium flow"
end if
if Session("EPQ30605000")="3" then
strPayload2=strPayload2&", Heavy flow"
end if

if len( Session("EPQ30202000")) > 0 then
strPayload2=strPayload2&", LMP  "&Session("EPQ30202000")&"/"&Session("EPQ30203000")&"/"&Session("EPQ30204000")
end if
if Session("EPQ30205000")= "1" then
strPayload2=strPayload2&", Never menstruated"
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary2b (strpayload2)
strpayload=strpayload&strpayload2&" \par"




strPayload=strPayload&" \ulnone\b0\fs20\tab HRT Use \tab\tab\tab "
strpayload2=""

if Session("EPQ30626000")="1" then
strPayload2=strPayload2&", Hormones for menopause or perimenopause"
end if
if Session("EPQ30626010")="1" then
strPayload2=strPayload2&" Currently"
end if
if Session("EPQ30626010")="2x" then
strPayload2=strPayload2&" Formerly"
end if
if Session("EPQ30627000")="1" then
strPayload2=strPayload2&", Hormones for birth control"
end if
if Session("EPQ30627010")="1" then
strPayload2=strPayload2&" Currently"
end if
if Session("EPQ30627010")="2x" then
strPayload2=strPayload2&" Formerly"
end if
if Session("EPQ30628000")="1" then
strPayload2=strPayload2&", Hormones for cancer"
end if
if Session("EPQ30628010")="1" then
strPayload2=strPayload2&" Currently"
end if
if Session("EPQ30628010")="2x" then
strPayload2=strPayload2&" Formerly"
end if
if Session("EPQ30629000")="1" then
strPayload2=strPayload2&", Hormones or medications for infertility"
end if
if Session("EPQ30629010")="1" then
strPayload2=strPayload2&" Currently"
end if
if Session("EPQ30629010")="2x" then
strPayload2=strPayload2&" Formerly"
end if
if Session("EPQ30630000")="1" then
strPayload2=strPayload2&", Other Hormones: "&Session("EPQ30631000")
end if
if Session("EPQ30630010")="1" then
strPayload2=strPayload2&" Currently"
end if
if Session("EPQ30630010")="2x" then
strPayload2=strPayload2&" Formerly"
end if

if Session("EPQ30632000")="1" then
strPayload2=strPayload2&", Never used"
end if

	if Session("EPQ30610001") = "1" then
		strpayload2=strpayload2& ", Estrogen patches or gels"
	end if
	if Session("EPQ30610002") = "1" then
		strpayload2=strpayload2& ", Estrogen pills"
	end if
	if Session("EPQ30610003") = "1" then
		strpayload2=strpayload2& ", Estrogen vaginal creams and suppositories"
	end if
	if Session("EPQ30610004") = "1" then
		strpayload2=strpayload2& ", Estrogen and Progesterone combination patch"
	end if
	if Session("EPQ30610005") = "1" then
		strpayload2=strpayload2& ", Estrogen and Progesterone combination pills"
	end if
	if Session("EPQ30610006") = "1" then
		strpayload2=strpayload2& ", Progesterone pills"
	end if
	if Session("EPQ30610007") = "1" then
		strpayload2=strpayload2& ", "&Session("EPQ30610009")
	end if
	if Session("EPQ30610010") = "1" then
		strpayload2=strpayload2& ",  Bio-identical hormone replacement therapy (BHRT)"
	end if

	if Session("EPQ30610008") = "1" then
		strpayload2=strpayload2& ", PT unsure about HRT type"
	end if


if len(Session("EPQ30611000"))> 0 then
strPayload2=strPayload2&",  Age began:"&Session("EPQ30611000")&"Y,"&Session("EPQ30612000")&" years"
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary3 (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Hormonal contraceptive Use \tab "
strpayload2=""

if Session("EPQ30613000")="1" then
strPayload2=strPayload2&", Current"
end if
if Session("EPQ30613000")="2" then
strPayload2=strPayload2&", Former"
end if
if Session("EPQ30613000")="0" then
strPayload2=strPayload2&", Never used"
end if
if Session("EPQ30613000")="77" then
strPayload2=strPayload2&", PT needs help with OC hx"
end if

	if Session("EPQ30614001") = "1" then
		strpayload2=strpayload2& ", Pills"
	end if
	if Session("EPQ30614002") = "1" then
		strpayload2=strpayload2& ", Patch"
	end if
	if Session("EPQ30614003") = "1" then
		strpayload2=strpayload2& ", Injectable"
	end if
	if Session("EPQ30614004") = "1" then
		strpayload2=strpayload2& ", Implants"
	end if
	if Session("EPQ30614005") = "1" then
		strpayload2=strpayload2& ", Vaginal Ring"
	end if
	if Session("EPQ30614006") = "1" then
		strpayload2=strpayload2& ", Hormonal IUD"
	end if
	if Session("EPQ30614007") = "1" then
		strpayload2=strpayload2& ", "&Session("EPQ30614000specify")
	end if
	if Session("EPQ30614008") = "77" then
		Session("EPQ30614008string")= "PT needs help with OC hx"
	end if



if len(Session("EPQ30615000"))> 0 then
strPayload2=strPayload2&", Age began:"&Session("EPQ30615000")&"Y,"&Session("EPQ30616000")&" years"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary2 (strpayload2)
strpayload=strpayload&strpayload2&" \par"
end if

if Session("Gender")="F" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Current contraception \tab\tab "
strpayload2=""

if Session("EPQ30617000")="0" then
strPayload2=strPayload2&", Not using any other birth control method"
end if
if Session("EPQ30618010")="1" then
strPayload2=strPayload2&", Diaphragm"
end if
if Session("EPQ30618001")="1" then
strPayload2=strPayload2&", Vaginal Ring"
end if
if Session("EPQ30618011")="1" then
strPayload2=strPayload2&", Tubal ligation"
end if
if Session("EPQ30618002")="1" then
strPayload2=strPayload2&", Vasectomy"
end if
if Session("EPQ30618003")="1" then
strPayload2=strPayload2&", Condoms"
end if
if Session("EPQ30618004")="1" then
strPayload2=strPayload2&", Abstinence"
end if
if Session("EPQ30618005")="1" then
strPayload2=strPayload2&", Foam, cream, jelly, suppositories"
end if
if Session("EPQ30618006")="1" then
strPayload2=strPayload2&", Withdrawal"
end if
if Session("EPQ30618007")="1" then
strPayload2=strPayload2&", Sponge"
end if
if Session("EPQ30618009")="1" then
strPayload2=strPayload2&", Rhythm method"
end if
if Session("EPQ30618008")="1" then
strPayload2=strPayload2&", PT using other form of birth control"
end if
if Session("EPQ30618012")="77" then
strPayload2=strPayload2&", PT needs help answering birth control method"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary2 (strpayload2)
strpayload=strpayload&strpayload2&" \par"
end if


if len(Session("EPQ30625000"))>0 then
strPayload=strPayload&" \ulnone\b0\fs20\tab Breastfeeding history \tab\tab "
strpayload2=""
if Session("EPQ30625000")="1" then
strPayload2=strPayload2&", Has breastfed"
end if
if Session("EPQ30625000")="0" then
strPayload2=strPayload2&", Has not breastfed"
end if
if Session("EPQ30625000")="77" then
strPayload2=strPayload2&", PT needs help with breastfeeding hx"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
strpayload=strpayload&strpayload2&" \par"
end if


'SCREENING HISTORY REMOVED FROM EPQ
'strPayload=strPayload&" \ul\b\fs24\par Screening History \par"
'strPayload=strPayload&"\ulnone\b0\fs20\tab \ul Exam\ulnone \tab\tab\tab\tab \ul Notes\ulnone \tab\tab\tab\tab \ul Date\ulnone "

'If session("gender")="F" then
'if session("EPQ31002000")="0" AND session("EPQ31005000")="0" and session("EPQ31009000")="0" and session("EPQ31014000")="0" 'and session("EPQ31018000")="0" and session("EPQ31021000")="0" then
'strPayload=strPayload&"\par \ulnone\b0\fs20\tab None Reported"
'end if
'end if


'If session("gender")="M" then
'if session("EPQ31002000")="0" AND session("EPQ31005000")="0" and session("EPQ31009000")="0" and session("EPQ31026000")="0" and session("EPQ31029000")="0" and session("EPQ31030000")="0" then
'strPayload=strPayload&"\par \ulnone\b0\fs20\tab None Reported"
'end if
'end if

strpayload2=""

'if Session("EPQ31006000")="1" then
'	if Session("EPQ31008010")="88" then
'strPayload2=strPayload2&"\par \tab FOBT \tab\tab\tab\tab Not known /last 3 years "&" \tab "
'	end if
'	if Session("EPQ31008010")<>"88" then
'strPayload2=strPayload2&"\par \tab FOBT \tab\tab\tab\tab "&Session("EPQ31008000")&" exams/last 3 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31007000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31007000MM")&" / "
'	end if
'	if len(Session("EPQ31007000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31007000YY")
'	end if
'end if

'if Session("EPQ31002000")="1" then
'	if Session("EPQ31004010")="88" then
'	strPayload2=strPayload2&"\par \tab Skin \tab\tab\tab\tab "&"Not Known /last 5 years "&" \tab "
'	end if
'	if Session("EPQ31004010")<>"88" then
'	strPayload2=strPayload2&"\par \tab Skin \tab\tab\tab\tab "&Session("EPQ31004000")&" exams/last 5 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31003000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31003000MM")&" / "
'	end if
'	if len(Session("EPQ31003000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31003000YY")
'	end if
'end if

'if Session("EPQ31022000")="1" then
'	if Session("EPQ31028010")="88" then
'strPayload2=strPayload2&"\par \tab Mammogram \tab\tab\tab Not known /last 6 years "&" \tab "
'	end if
'	if Session("EPQ31028010")<>"88" then
'strPayload2=strPayload2&"\par \tab Mammogram \tab\tab\tab "&Session("EPQ31024000")&" exams/last 6 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31023000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31023000MM")&" / "
'	end if
'	if len(Session("EPQ31023000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31023000YY")
'	end if
'end if

'if Session("EPQ31010000")="1" then
'	if Session("EPQ31013010")="88" then
'strPayload2=strPayload2&"\par \tab Colon/sigmoidoscopy \tab\tab Not known exams/last 10 years "&" \tab "
'	end if
'	if Session("EPQ31013010")<>"88" then
'strPayload2=strPayload2&"\par \tab Colon/sigmoidoscopy \tab\tab "&Session("EPQ31013000")&" exams/last 10 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31012000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31012000MM")&" / "
'	end if
'	if len(Session("EPQ31012000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31012000YY")
'	end if
'end if

'if Session("EPQ31015000")="1" then
'	if Session("EPQ31017010")="88" then
'strPayload2=strPayload2&"\par \tab PAP  \tab\tab\tab\tab Not known /last 6 years "&" \tab "
'	end if
'	if Session("EPQ31017010")<>"88" then
'strPayload2=strPayload2&"\par \tab PAP  \tab\tab\tab\tab "&Session("EPQ31017000")&" exams/last 6 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31016000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31016000MM")&" / "
'	end if
'	if len(Session("EPQ31016000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31016000YY")
'	end if
'end if

'if Session("EPQ31018000")="1" then
'	if Session("EPQ31028010")="88" then
'strPayload2=strPayload2&"\par \tab CBE \tab\tab\tab\tab Not known /last 6 years "&" \tab "
'	end if
'	if Session("EPQ31028010")<>"88" then
'strPayload2=strPayload2&"\par \tab CBE \tab\tab\tab\tab "&Session("EPQ31020000")&" exams/last 6 years "&" \tab\tab "
'	end if
'
'	if len(Session("EPQ31019000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31019000MM")&" / "
'	end if
'	if len(Session("EPQ31019000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31019000YY")
'	end if
'end if

'if Session("EPQ31026000")="1" then
'	if Session("EPQ31028010")="88" then
'strPayload2=strPayload2&"\par \tab DRE \tab\tab\tab\tab Not known /last 5 years "&" \tab "
'	end if
'	if Session("EPQ31028010")<>"88" then
'strPayload2=strPayload2&"\par \tab DRE \tab\tab\tab\tab "&Session("EPQ31028000")&" exams/last 5 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31027000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31027000MM")&" / "
'	end if
'	if len(Session("EPQ31027000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31027000YY")
'	end if
'end if

'if Session("EPQ31030000")="1" then
'	if Session("EPQ31032010")="88" then
'strPayload2=strPayload2&"\par \tab PSA \tab\tab\tab\tab Not known /last 6 years "&" \tab "
'	end if
'	if Session("EPQ31032010")<>"88" then
'strPayload2=strPayload2&"\par \tab PSA \tab\tab\tab\tab "&Session("EPQ31032000")&" exams/last 6 years "&" \tab\tab "
'	end if

'	if len(Session("EPQ31031000MM")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31031000MM")&" / "
'	end if
'	if len(Session("EPQ31031000YY")) > 0 then
'	strPayload2=strPayload2&Session("EPQ31031000YY")
'	end if
'end if

'	if Session("EPQ31011000") ="1" then
'	strPayload2=strPayload2&" \par\par \tab Note: last colon screening method was \par \tab Colonoscopy "
'	end if
'	if Session("EPQ31011000") ="2" then
'	strPayload2=strPayload2&" \par\par \tab Note: last colon screening method was \par \tab Sigmoidoscopy "
'	end if
'	if Session("EPQ31011000") ="3" then
'	strPayload2=strPayload2&" \par\par \tab Note: last colon screening method was \par \tab "&Session("EPQ31011000specify")
'	end if

strpayload=strpayload&strpayload2&" \par "

	strPayload=strPayload&" \ul\b\fs24\par First Degree Family History (FH) \par"

if Session("EPQ30802000") = "1" OR Session("EPQ30802000b") = "1" OR Session("EPQ30802000c") = "1" OR Session("EPQ30802000d") = "88"then
	strPayload=strPayload&" \ulnone\b0\fs20\tab Ashkenazi Jewish heritage \tab "
	strpayload2=""

	if Session("EPQ30802000") ="1" AND Session("EPQ30802000b") <> "1" then
	strPayload2=strPayload2&"Maternal Ashkenazi descent "
	end if
	if Session("EPQ30802000b") ="1" AND Session("EPQ30802000") <> "1" then
	strPayload2=strPayload2&"Paternal Ashkenazi descent "
	end if
	if Session("EPQ30802000b") ="1" AND Session("EPQ30802000") ="1" then
	strPayload2=strPayload2&"Maternal and Paternal Ashkenazi descent "
	end if
	if Session("EPQ30802000c") ="1" then
	strPayload2=strPayload2&"Neither parent "
	end if
	if Session("EPQ30802000d") ="88" then
	strPayload2=strPayload2&"PT unsure about Ashkenazi descent"
	end if
	' strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
	strpayload=strpayload&strpayload2&" \par"
else
	strPayload=strPayload&" \ulnone\b0\fs20\ "
end if

if Session("EPQ30803000a") = "1" OR Session("EPQ30803000b") = "1" OR Session("EPQ30803000c") = "1" OR Session("EPQ30803000d") = "88"then
	strPayload=strPayload&" \ulnone\b0\fs20\tab Japanese heritage \tab\tab "
	strpayload2=""
	if Session("EPQ30803000a") ="1" and Session("EPQ30803000b") <> "1" then
	strPayload2=strPayload2&", Maternal Japanese ancestry"
	end if
	if Session("EPQ30803000b") ="1" and Session("EPQ30803000a") <> "1" then
	strPayload2=strPayload2&", Paternal Japanese ancestry"
	end if
	if Session("EPQ30803000b") ="1" and Session("EPQ30803000a") = "1" then
	strPayload2=strPayload2&", Maternal and Paternal Japanese ancestry"
	end if
	if Session("EPQ30803000c") ="1" then
	strPayload2=strPayload2&", Neither parent \par"
	end if
	if Session("EPQ30803000d") ="88" then
	strPayload2=strPayload2&", PT unsure about Japanese ancestry \par"
	end if
	strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
	strpayload=strpayload&strpayload2&" \par"
end if



'BOOKMARK

strpayload2=""

'HEME
if Session("HM10801000")="1" or Session("HM10802000")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Multiple Myeloma or \par \tab Plasma Cell Tumor "
end if

strPayload3=" \tab "

if Session("HM10802000")="1" then
if Session("HM10807000")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("HM10808000")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("HM10809000")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("HM10810000")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&" \par "
end if

if Session("HM10802000")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab "
end if
if Session("HM10801000")="1" then
if Session("HM10803000")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("HM10804000")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("HM10805000")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("HM10806000")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'HEME END

if Session("EPQ30808010")="1" or Session("EPQ30820010")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Breast Cancer  \tab "
end if

strPayload3=" \tab "
if Session("EPQ30808010")="1" then
if Session("EPQ30809010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30809020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30809030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30809040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&" \par "
end if
if Session("EPQ30808010")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab "
end if
if Session("EPQ30820010")="1" then
if Session("EPQ30821010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30821020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30821030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30821040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'ovarian
if Session("EPQ30808080")="1"  then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Ovarian Cancer \tab\tab"
end if

strPayload3=" "
if Session("EPQ30808080")="1" then
if Session("EPQ30810010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30810020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30810030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30810040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'enodmetrial
if Session("EPQ30808030")="1"  then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Endometrial Cancer "
end if

strPayload3=" \tab "
if Session("EPQ30808030")="1" then
if Session("EPQ30811010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30811020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30811030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30811040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


'colon
if Session("EPQ30808020")="1"  or Session("EPQ30820020")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Colon and rectal cancer "
end if
strPayload3=" "
if Session("EPQ30808020")="1" then
if Session("EPQ30812010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30812020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30812030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30812040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if
if Session("EPQ30808020")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" "
end if
if Session("EPQ30820020")="1" then
if Session("EPQ30822010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30822020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30822030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30822040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


if Session("EPQ30808070")="1"  or Session("EPQ30820060")="1" then
	If Session("SurveyVersion")="Cutaneous" then 
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Melanoma Cancer"
	strPayload3=" \tab "
	else
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Melanoma "
	strPayload3=" \tab\tab "
	end if
end if

if Session("EPQ30808070")="1" then
if Session("EPQ30813010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30813020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30813030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30813040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808070")="1" then
	If Session("SurveyVersion")="Cutaneous" then 
	strPayload3=" \tab\tab\tab\tab "
	else
	strPayload3=" \tab\tab\tab\tab "
	end if

end if

if Session("EPQ30820060")="1" then
if Session("EPQ30823010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30823020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30823030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30823040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'CUTANEOUS
if Session("CUTA10801000")="1"  or Session("CUTA10803000")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Skin Cancer (includes\par \tab basal, squamous, \par \tab but not melanoma) "
end if
strPayload3=" \tab "
if Session("CUTA10803000")="1" then
if Session("CUTA10804010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("CUTA10804020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("CUTA10804030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("CUTA10804040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if
if Session("CUTA10804010")="1" then
strPayload3=" \tab \tab\tab\tab "
else
strPayload3=" \tab "
end if
if Session("CUTA10801000")="1" then
if Session("CUTA10802010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("CUTA10802020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("CUTA10802030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("CUTA10802040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


if Session("EPQ30808060")="1"  or Session("EPQ30820050")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Lung cancer "
end if

strPayload3=" \tab\tab "
if Session("EPQ30808060")="1" then
if Session("EPQ30814010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30814020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30814030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30814040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808060")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab\tab "
end if

if Session("EPQ30820050")="1" then
if Session("EPQ30824010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30824020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30824030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30824040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par"
end if

if Session("EPQ30808040")="1"  or Session("EPQ30820030")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Renal cancer "
end if
strPayload3=" \tab\tab "
if Session("EPQ30808040")="1" then
if Session("EPQ30815010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30815020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30815030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30815040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808040")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab\tab "
end if

if Session("EPQ30820030")="1" then
if Session("EPQ30825010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30825020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30825030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30825040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808050")="1"  or Session("EPQ30820040")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Leukemia "
end if
strPayload3=" \tab\tab "
if Session("EPQ30808050")="1" then
if Session("EPQ30816010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30816020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30816030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30816040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par"
end if
if Session("EPQ30808050")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab\tab "
end if
if Session("EPQ30820040")="1" then
if Session("EPQ30826010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30826020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30826030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30826040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par"
end if

if Session("EPQ30808120")="1"  or Session("EPQ30820110")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Oral Cavity and \par \tab Throat Cancer "
end if
strPayload3=" \tab\tab "
if Session("EPQ30808120")="1" then
if Session("EPQ30832010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30832020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30832030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30832040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par"
end if
if Session("EPQ30808120")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab\tab "
end if
if Session("EPQ30820110")="1" then
if Session("EPQ30831010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30831020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30831030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30831040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par"
end if

if Session("EPQ30806000") = "1" OR Session("EPQ30806000") = "77" OR Session("EPQ30806000") = "3" then
strPayload2=strPayload2&" \ulnone\b0\fs20\tab Polyps colon \tab\tab "
	if Session("EPQ30806000") = "1" then
	strPayload2=strPayload2&"Yes "
	end if
	if Session("EPQ30806000") = "0" then
	strPayload2=strPayload2&"No "
	end if
	if Session("EPQ30806000") = "88" then
	strPayload2=strPayload2&"Unsure"
	end if
	if Session("EPQ30806000") = "77" then
	strPayload2=strPayload2&"Needs help "
	end if
	if Session("EPQ30807000") = "1" then
	strPayload2=strPayload2&" \tab DX at <50Y"
	end if
	strPayload2=strPayload2&" \par "
end if



if Session("EPQ30808090")="1"  or Session("EPQ30820070")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Pancreatic cancer "
end if
strPayload3=" \tab "
if Session("EPQ30808090")="1" then
if Session("EPQ30817010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30817020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30817030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30817040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808090")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab "
end if

if Session("EPQ30820070")="1" then
if Session("EPQ30827010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30827020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30827030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30827040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&" \par "
end if

if Session("EPQ30808100")="1"  or Session("EPQ30820090")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Thyroid cancer "
end if
strPayload3=" \tab\tab "
if Session("EPQ30808100")="1" then
if Session("EPQ30818010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30818020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30818030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30818040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&" \par "
end if
if Session("EPQ30808100")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab\tab "
end if

if Session("EPQ30820090")="1" then
if Session("EPQ30828010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30828020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30828030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30828040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if  Session("EPQ30820080")="1" then
 strPayload2=strPayload2&" \ulnone\b0\fs20\tab Prostate cancer "
end if
strPayload3=" \tab "
if Session("EPQ30820080")="1" then
if Session("EPQ30829010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30829020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30829030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30829040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30808110")="1"  or Session("EPQ30820100")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Other cancer "
end if
strPayload3=" \tab\tab "
if Session("EPQ30808110")="1" then
if Session("EPQ30819010")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30819020")="1" then
strPayload3=strPayload3&"1 Sister or Daughter, "
end if
if Session("EPQ30819030")="1" then
strPayload3=strPayload3&"2 or more sisters/daughters, "
end if
if Session("EPQ30819040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if
if Session("EPQ30808110")="1" then
strPayload3=" \tab\tab\tab\tab "
else
strPayload3=" \tab \tab "
end if

if Session("EPQ30820100")="1" then
if Session("EPQ30830010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30830020")="1" then
strPayload3=strPayload3&"1 Brother or Son, "
end if
if Session("EPQ30830030")="1" then
strPayload3=strPayload3&"2 or more brothers/sons, "
end if
if Session("EPQ30830040")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'TEST CODE
strpayload=strpayload&strpayload2&"  \par "


PANCREAS ITEMS


if Session("GI10901000")="1" OR Session("GI10902000")="1" OR Session("GI10903000")="1" OR Session("GI10904000")="1" OR  Session("GI10905000")="1" OR Session("GI10906000")="1" OR Session("GI10907000")="1" then


strPayload2=strPayload2&" \ulnone\b0\fs20\tab Cyst/lesion/mass \par "
strPayload2=strPayload2&" \ulnone\b0\fs20\tab   in pancreas \tab\tab"
dim strPayloadPancreas
if Session("GI10901000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Father, "

if Session("GI10908000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10908000")="2" then
strPayload3=strPayload3&">50Y, "
end if
if Session("GI10908000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if

strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if

if Session("GI10902000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Mother, "

if Session("GI10909000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10909000")="2" then
strPayload3=strPayload3&">50, "
end if
if Session("GI10909000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if

strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if

if Session("GI10903000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Brother, "
if Session("GI10910000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10910000")="2" then
strPayload3=strPayload3&">50, "
end if
if Session("GI10910000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if

if Session("GI10904000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Sister, "

if Session("GI10911000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10911000")="2" then
strPayload3=strPayload3&">50, "
end if
if Session("GI10911000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if


strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if


if Session("GI10905000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Son, "

if Session("GI10912000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10912000")="2" then
strPayload3=strPayload3&">50, "
end if
if Session("GI10912000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if

strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if


if Session("GI10906000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&"Daughter, "

if Session("GI10913000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10913000")="2" then
strPayload3=strPayload3&">50, "
end if
if Session("GI10913000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if


strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if

if Session("GI10907000")="1" then
strPayload3="\tab\tab\tab\tab "
strPayload3=strPayload3&Session("GI10907000_TXT")&", "

if Session("GI10914000")="1" then
strPayload3=strPayload3&"<=50, "
end if
if Session("GI10914000")="2" then
strPayload3=strPayload3&">50, "
end if

if Session("GI10914000")="88" then
strPayload3=strPayload3&"Don't Know, "
end if


strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayloadPancreas=strpayloadPancreas&strpayload3&"  \par "
end if

strPayload3 = right(strpayloadPancreas, Len(strpayloadPancreas) - 17)
strPayload3=" "&strPayload3&" \par "
strPayload=strPayload&strPayload2&strPayload3


end if



'HERE
if Session("SurveyVersion")="Thoracic" or Session("SurveyVersion")="GI" then

strPayload=strPayload&" \ulnone\b0\fs20\tab 2nd Degree "&"  \tab"
strpayload3=""

if Session("THRC30200000")="1"  then
	strPayload3=strPayload3&"\tab Female Breast Cancer "&"  \par"
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200010")="1"  then
	strPayload3=strPayload3&"\tab Male Breast Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200020")="1"  then
	strPayload3=strPayload3&"\tab Colon/Rectal Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200030")="1"  then
	strPayload3=strPayload3&"\tab Endometrial or Uterine Breast Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200040")="1"  then
	strPayload3=strPayload3&"\tab Kidney Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200050")="1"  then
	strPayload3=strPayload3&"\tab Leukemia "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200060")="1"  then
	strPayload3=strPayload3&"\tab Lung Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200070")="1"  then
	strPayload3=strPayload3&"\tab Melanoma Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200080")="1"  then
	strPayload3=strPayload3&"\tab Ovarian Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200090")="1"  then
	strPayload3=strPayload3&"\tab Pancreatic Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200100")="1"  then
	strPayload3=strPayload3&"\tab Prostate Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("GI10801000")="1"  then
	strPayload3=strPayload3&" \tab Small Bowel or Intestine Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if

if Session("GI10802000")="1"  then
	strPayload3=strPayload3&"\tab Stomach or Gastric Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if

if Session("THRC30200110")="1"  then
	strPayload3=strPayload3&"\tab Thyroid Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if
if Session("THRC30200120")="1"  then
	strPayload3=strPayload3&"\tab Other Cancer "&"  \par "
	strPayload3=strPayload3&"\tab\tab\tab"
end if

if Session("THRC30200130")="1"  then
	strPayload3=strPayload3&"\tab None "&"  \par "
end if


end if


'HERE

strpayload=strpayload&strPayload3&""


'GENETIC TESTING

		dim PersonalGeneticTesting
		dim FamilyGeneticTesting

if Session("GI10917000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Hereditary Breast and Ovarian Cancer (BRCA1/2)"
if Session("GI10918000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10918000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10918000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10919000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Hereditary Breast and Ovarian Cancer (BRCA1/2)"
if Session("GI10920000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ". positive. "
end if
if Session("GI10920000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10920000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10921000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Hereditary Non-Polyposis Colorectal Cancer/Lynch Syndrome"
if Session("GI10922000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10922000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10922000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10923000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Hereditary Non-Polyposis Colorectal Cancer/Lynch Syndrome"
if Session("GI10924000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10924000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10924000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10925000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Familial atypical multiple mole melanoma syndrome"
if Session("GI10926000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10926000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10926000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10927000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Familial atypical multiple mole melanoma syndrome"
if Session("GI10928000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10928000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10928000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10929000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Peutz-Jeghers syndrome"
if Session("GI10930000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10930000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10930000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10931000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Peutz-Jeghers syndrome"
if Session("GI10932000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10932000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10932000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10933000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Hereditary Pancreatitis"
if Session("GI10934000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10934000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10934000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10935000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Hereditary Pancreatitis"
if Session("GI10936000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10936000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10936000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 



if Session("GI10937000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Familial Adenomatous Polyposis"
if Session("GI10938000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10938000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10938000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10939000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Familial Adenomatous Polyposis"
if Session("GI10940000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10940000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10940000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 


if Session("GI10941000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Familial Pancreatic Cancer"
if Session("GI10942000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10942000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10942000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10943000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Familial Pancreatic Cancer"
if Session("GI10944000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10944000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10944000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 


if Session("GI10945000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Ataxia-Telangiectasia"
if Session("GI10946000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10946000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10946000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10947000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Ataxia-Telangiectasia"
if Session("GI10948000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10948000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10948000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 





if Session("GI10949000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Von Hippel Lindau"
if Session("GI10950000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10950000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10950000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10951000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Von Hippel Lindau"
if Session("GI10952000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10952000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10952000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10953000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Cystic Fibrosis"
if Session("GI10954000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10954000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10954000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10955000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Cystic Fibrosis"
if Session("GI10956000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10956000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10956000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 



if Session("GI10957000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Li Fraumeni"
if Session("GI10958000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10958000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10958000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10959000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Li Fraumeni"
if Session("GI10960000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10960000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10960000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 


if Session("GI10961000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Fancomi Anemia"
if Session("GI10962000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10962000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10962000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10963000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Fancomi Anemia"
if Session("GI10964000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10964000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10964000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 




if Session("GI10965000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & "Juvenile polyposis"
if Session("GI10966000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10966000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10966000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10967000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & "Juvenile polyposis"
if Session("GI10968000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10968000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10968000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 



if Session("GI10969000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ""&Session("GI10969000_TXT")
if Session("GI10970000")="1" then
PersonalGeneticTesting=PersonalGeneticTesting & ", positive. "
end if
if Session("GI10970000")="2" then
PersonalGeneticTesting=PersonalGeneticTesting & ", negative. "
end if
if Session("GI10970000")="88" then
PersonalGeneticTesting=PersonalGeneticTesting & ", unknown. "
end if
end if 

if Session("GI10971000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ""&Session("GI10971000_TXT")
if Session("GI10972000")="1" then
FamilyGeneticTesting=FamilyGeneticTesting & ", positive. "
end if
if Session("GI10972000")="2" then
FamilyGeneticTesting=FamilyGeneticTesting & ", negative. "
end if
if Session("GI10972000")="88" then
FamilyGeneticTesting=FamilyGeneticTesting & ", unknown. "
end if
end if 



if Session("GI10916000")="1" then
strPayload=strPayload&" \par \tab Genetic testing: \tab "

strpayloadPancreas=" "
strpayload2 = PersonalGeneticTesting
FormatStringforSummary (strpayload2)
if len(strpayload2) > 10 then 
strPayloadPancreas="\tab\tab\tab\tab "& strPayload2&" \par "
end if 
strpayload3 = right(strpayloadPancreas, Len(strpayloadPancreas) - 17)
strpayload=strpayload&strpayload3


if session("GI10974000")<>"1" then
strPayload=strPayload&" \par \tab Genetic testing \tab "
strPayload=strPayload&" \par \tab Blood relative: \tab\tab "

strpayloadPancreas=" "
strpayload2 = FamilyGeneticTesting
FormatStringforSummary (strpayload2)
if len(strpayload2) > 10 then 
strPayloadPancreas=strPayloadPancreas&" \tab\tab\tab "& strPayload2&" \par "
end if 
strpayload3 = right(strpayloadPancreas, Len(strpayloadPancreas) - 15)
strpayload=strpayload&strpayload3
end if


end if

'END GENETIC TESTING
strpayload=strpayloard&strpayload2

strpayload2=" "
	strPayload2=strPayload2&"\par\tab\ul\b0\fs20 Non-Cancer Diagnoses\ulnone\par "

if Session("EPQ30901010")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab High Blood Pressure "
strPayload3=" \tab "
if Session("EPQ30902010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30902020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30902030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30902040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30902050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901020")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Diabetes \tab "
strPayload3=" \tab "
if Session("EPQ30903010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30903020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30903030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30903040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30903050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901030")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Stroke \tab\tab "
strPayload3=" \tab "
if Session("EPQ30904010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30904020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30904030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30904040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30904050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901040")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Alzheimer's Disease "
strPayload3=" \tab "
if Session("EPQ30905010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30905020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30905030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30905040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30905050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901050")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Heart Disease  \tab "
strPayload3=" \tab "
if Session("EPQ30906010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30906020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30906030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30906040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30906050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901060")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Liver disease \tab "
strPayload3=" \tab "
if Session("EPQ30907010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30907020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30907030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30907040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30907050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901070")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Pulmonary disease "
strPayload3=" \tab "
if Session("EPQ30909010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30909020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30909030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30909040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30909050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901080")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Drug or alcohol abuse "
strPayload3=" \tab "
if Session("EPQ30908010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30908020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30908030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30908040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30908050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


if Session("EPQ30901090")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Anemia \tab"
strPayload3=" \tab "
if Session("EPQ30910010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30910020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30910030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30910040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30910050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901100")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Bleeding tendency "
strPayload3=" \tab "
if Session("EPQ30911010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30911020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30911030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30911040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30911050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901130")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Pneumonia \tab"
strPayload3=" \tab "
if Session("EPQ30914010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30914020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30914030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30914040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30914050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901140")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Asthma \tab"
strPayload3=" \tab "
if Session("EPQ30915010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30915020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30915030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30915040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30915050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901150")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Arthritis \tab"
strPayload3=" \tab "
if Session("EPQ30916010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30916020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30916030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30916040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30916050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


if Session("EPQ30901160")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab High cholesterol "
strPayload3=" \tab "
if Session("EPQ30917010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30917020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30917030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30917040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30917050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

if Session("EPQ30901110")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Neurological or \par \tab mental health \tab"
strPayload3=" \tab "
if Session("EPQ30912010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30912020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30912030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30912040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30912050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if

'HOLD FOR OTHER
if Session("EPQ30901170")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab "&Session("EPQ30901180") &"\tab"
strPayload3=" \tab "
if Session("EPQ30918010")="1" then
strPayload3=strPayload3&"Father, "
end if
if Session("EPQ30918020")="1" then
strPayload3=strPayload3&"Mother, "
end if
if Session("EPQ30918030")="1" then
strPayload3=strPayload3&"1 sibling or child, "
end if
if Session("EPQ30918040")="1" then
strPayload3=strPayload3&">=2 siblings or children, "
end if
if Session("EPQ30918050")="1" then
strPayload3=strPayload3&"DX at <50Y, "
end if
strpayload3 = left(strpayload3, Len(strpayload3) - 2)
strpayload2=strpayload2&strpayload3&"  \par "
end if


if Session("EPQ30901120")="0" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab None reported "
end if

if Session("EPQ30913000")="1" then
	strPayload2=strPayload2&" \ulnone\b0\fs20\tab Other Health Problems \tab "&Session("EPQ30913000specify")
end if


strpayload=strpayload&strpayload2

if Session("SurveyVersion")="Cutaneous" or Session("SurveyVersion")="Thoracic" then 
	strPayload=strPayload&" \ul\b\fs24\par Medication History \par"
		strPayload=strPayload&" \ulnone\b0\fs20 "

If session("THRC30606200")="2" then
		strPayload=strPayload&" \tab Denies NSAID use \par"
end if
If session("THRC30606200")="1" then
	If session("THRC30606400")="1" then
		strPayload=strPayload&" \tab NSAID: current"
	end if
	If session("THRC30606400")="2" then
		strPayload=strPayload&" \tab NSAID: former"
	end if
	If len(session("THRC30606300"))>0 then
		strPayload=strPayload&", "&Session("THRC30606300")
	end if
	If len(session("THRC30606500"))>0 then
		strPayload=strPayload&"-"&Session("THRC30606500")
	end if
	If len(session("THRC30606400"))>0 OR len(session("THRC30606500"))>0 then
		strPayload=strPayload&"Y"
	end if
end if

If session("THRC30606600")="2" then
		strPayload=strPayload&" \tab Denies statin use \par"
end if
If session("THRC30606600")="1" then
	If session("THRC30606800")="1" then
		strPayload=strPayload&" \par\tab Statins: current"
	end if
	If session("THRC30606800")="2" then
		strPayload=strPayload&" \par\tab Statins: former"
	end if
	If len(session("THRC30606700"))>0 then
		strPayload=strPayload&", "&Session("THRC30606700")
	end if
	If len(session("THRC30606900"))>0 then
		strPayload=strPayload&"-"&Session("THRC30606900")
	end if
	If len(session("THRC30606700"))>0 OR len(session("THRC30606900"))>0 then
		strPayload=strPayload&"Y \par"
	end if
end if

If session("CUTA11119000")="1" OR session("CUTA11119000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11119000string")&" \par"
end if
If session("CUTA11120000")="1" OR session("CUTA11120000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11120000string")&" \par"
end if
If session("CUTA11121000")="1" OR session("CUTA11121000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11121000string")&" \par"
end if
If session("CUTA11122000")="1" OR session("CUTA11122000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11122000string")&" \par"
end if
If session("CUTA11123000")="1" OR session("CUTA11123000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11123000string")&" \par"
end if
If session("CUTA11124000")="1" OR session("CUTA11124000")="2" then
		strPayload=strPayload&" \tab "&Session("CUTA11124000string")&" \par"
end if

end if

'BOOKMARK
		strPayload=strPayload&" \ul\b\fs24\par Social History (SH) \par"
		strPayload=strPayload&" \ulnone\b0\fs20\tab Marital Status \tab\tab " &Session("EPQ30104000string")&" \par"
		strPayload=strPayload&" \tab Education\tab\tab "&Session("EPQ30105000string")&" \par"
		strPayload=strPayload&" \tab Current Employment \tab "&Session("EPQ30106000string")
		if len(Session("EPQ30107000")) > 0 then
		strPayload=strPayload&", "&Session("EPQ30107000")
		end if
		if len(Session("EPQ30108000")) > 0 then
		strPayload=strPayload&", ("&Session("EPQ30108000")&")"
		end if
		if Session("SurveyVersion")="Thoracic" then
		if Session("THRC30104000")="1" then
		strPayload=strPayload&"; < 5 years"
		end if
		if Session("THRC30104000")="2" then
		strPayload=strPayload&"; 5-10 years"
		end if
		if Session("THRC30104000")="3" then
		strPayload=strPayload&"; 11-20 years"
		end if
		if Session("THRC30104000")="4" then
		strPayload=strPayload&"; >21 years"
		end if
		end if
		strPayload=strPayload&" \par"


		strPayload=strPayload&" \tab Former Employment \tab "
		if len(Session("EPQ30110000")) > 0 then
		strPayload=strPayload&""&Session("EPQ30110000")
		end if
		if len(Session("EPQ30111000")) > 0 then
		strPayload=strPayload&", ("&Session("EPQ30111000")&")"
		end if
		if Session("SurveyVersion")="Thoracic" then
		if Session("THRC30105000")="1" then
		strPayload=strPayload&"; < 5 years"
		end if
		if Session("THRC30105000")="2" then
		strPayload=strPayload&"; 5-10 years"
		end if
		if Session("THRC30105000")="3" then
		strPayload=strPayload&"; 11-20 years"
		end if
		if Session("THRC30105000")="4" then
		strPayload=strPayload&"; >21 years"
		end if
		end if

		strPayload=strPayload&" \par"

		strPayload=strPayload&" \tab ETOH \tab\tab "


if len(Session("EPQ31160000")) > 0 then
strPayload=strPayload&"  \tab "&Session("EPQ31160000")&" days/month "
end if

if Session("EPQ31160010")="0" then
strPayload=strPayload&"  \tab None in past yr "
end if
if Session("EPQ31160020")="1" then
strPayload=strPayload&"  \tab Less than 1 day per month "
end if
'MARK ALCOHOL

if len(Session("EPQ31161090")) > 0 then
strPayload=strPayload&"  \tab Drank "&Session("EPQ31161090")&" Days Per Month Last Year"
end if
if Session("EPQ31161070") = 1 then
strPayload=strPayload&"  \tab Drank Less than 1 Day / Month Last Year"
end if

if Session("EPQ31161070")= "0" then
strPayload=strPayload&"  \tab No drinks in past year"
end if

if len(Session("EPQ31161100")) > 0 then
strPayload=strPayload&", Number of Drinks "&Session("EPQ31161100")
end if

if Session("SurveyVersion")="Thoracic" then

if Session("THRC30605000")="1" then
strPayload=strPayload&"\par\tab\tab\tab\tab Beer (current) "
end if
if Session("THRC30605000")="2" then
strPayload=strPayload&"\par\tab\tab\tab\tab Beer (former) "
end if
if len(Session("THRC30605300")) >0 then
strPayload=strPayload&Session("THRC30605300")&" drinks/week"
end if

If Session("THRC30605100")="1" then
strPayload=strPayload&"\par\tab\tab\tab\tab Wine (current) "
end if
If Session("THRC30605100")="2" then
strPayload=strPayload&"\par\tab\tab\tab\tab Wine (former) "
end if
If len(Session("THRC30605400")) >0 then
strPayload=strPayload&Session("THRC30605400")&" drinks/week"
end if
If Session("THRC30605200")="1" then
strPayload=strPayload&"\par\tab\tab\tab\tab Liquor (current) "
end if
If Session("THRC30605200")="2" then
strPayload=strPayload&"\par\tab\tab\tab\tab Liquor (former) "
end if
If len(Session("THRC30605500")) >0 then
strPayload=strPayload&Session("THRC30605500")&" servings/week"
end if

end if


strPayload=strPayload&" \par \tab Alcoholism Screening "
if Session("EPQ30503000")="1" then
strPayload=strPayload&"  \tab *MD to follow up "
end if
if Session("EPQ30503000")="2" then
strPayload=strPayload&"  \tab *MD to follow up "
end if
if Session("EPQ30503000")="3" then
strPayload=strPayload&"  \tab Normal use "
end if

if Session("EPQ30503000")="4" then
strPayload=strPayload&"  \tab Normal use "
end if
if Session("EPQ30503000")="5" then
strPayload=strPayload&"  \tab Normal use  "
end if
if Session("EPQ30503000")="0" then
strPayload=strPayload&"  \tab Normal use "
end if

if Session("EPQ30503100")="1" then
strPayload=strPayload&"  \tab *MD to follow up "
end if
if Session("EPQ30503100")="2" then
strPayload=strPayload&"  \tab *MD to follow up "
end if
if Session("EPQ30503100")="3" then
strPayload=strPayload&"  \tab Normal use "
end if
if Session("EPQ30503100")="4" then
strPayload=strPayload&"  \tab Normal use "
end if
if Session("EPQ30503100")="5" then
strPayload=strPayload&"  \tab Normal use  "
end if
if Session("EPQ30503100")="0" then
strPayload=strPayload&"  \tab Normal use "
end if

		strPayload=strPayload&" \par \tab Recreational Drug Use \tab "

strPayload2=""

if Session("EPQ30504080")="1" then
strPayload2=strPayload2&", Injected Non-prescribed drug past 3 months"
end if
if Session("EPQ30504080")="2" then
strPayload2=strPayload2&", Injected Non-prescribed drug more than 3 months ago"
end if
if Session("EPQ30504090")="1" then
strPayload2=strPayload2&", Medicines and drugs on own"
end if
if Session("EPQ30504100")="1" then
strPayload2=strPayload2&", Marijuana, hash or grass"
end if
if Session("EPQ30504110")="1" then
strPayload2=strPayload2&", Painkillers or Narcotics"
end if
if Session("EPQ30504120")="1" then
strPayload2=strPayload2&", Tranquilizers or anti-anxiety drugs"
end if
if Session("EPQ30504130")="1" then
strPayload2=strPayload2&", Sedatives"
end if
if Session("EPQ30504140")="1" then
strPayload2=strPayload2&", Stimulants"
end if
if Session("EPQ30504150")="1" then
strPayload2=strPayload2&", Cocaine or Crack"
end if
if Session("EPQ30504160")="1" then
strPayload2=strPayload2&", Hallucinogens"
end if
if Session("EPQ30504170")="1" then
strPayload2=strPayload2&", Heroin"
end if
if Session("EPQ30504180")="1" then
strPayload2=strPayload2&", Other: "&Session("EPQ30504000specify")
end if
if Session("EPQ30504080")="0" AND Session("EPQ30504090")=0 then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strPayload=strPayload&strPayload2&" \par "

strPayload=strPayload&" \tab Smoking Status \tab "
strPayload2=""
if Session("EPQ31147000")="0" then
strPayload2=strPayload2&", Non-smoker "
end if
if Session("EPQ31147000")="88" then
strPayload2=strPayload2&", PT needs help with smoking Hx "
end if
if Session("EPQ31148000")="1" then
strPayload2=strPayload2&", Current Smoker"
end if
if Session("EPQ31148000")="2" then
strPayload2=strPayload2&", Occasional Smoker"
end if
if Session("EPQ31148000")="0" then

strPayload2=strPayload2&", Currently non-smoker"
	if Session("EPQ31149000")="1" then
		strPayload2=strPayload2&", Quit in past month"
	end if
	if Session("EPQ31149000")="2" then
		strPayload2=strPayload2&", Quit in past 3 months"
	end if
	if Session("EPQ31149000")="3" then
		strPayload2=strPayload2&", Quit in past 6 months"
	end if

	if Session("EPQ31149000")="4" then
		strPayload2=strPayload2&", Quit in past year"
	end if
	if Session("EPQ31149000")="5" then
		strPayload2=strPayload2&", Quit in past 5 years"
	end if

	if Session("EPQ31149000")="6" then
		strPayload2=strPayload2&", Quit in past 10 years"
	end if
	if Session("EPQ31149000")="7" then
		strPayload2=strPayload2&", Quit more than 10 years ago"
	end if

	If Session("SurveyVersion")="Thoracic" then
	if len(Session("THRC30300000")) > 0 then
		strPayload2=strPayload2&" at age "&Session("THRC30300000")&"Y"
	end if

	end if

end if

if Session("EPQ31153000")="1" then
strPayload2=strPayload2&", Trying to quit "
end if
if Session("EPQ31153000")="0" then
strPayload2=strPayload2&", Not trying to quit "
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strPayload=strPayload&strPayload2&" \par "


if Session("EPQ31147000")="1" then
if session("SurveyVersion")="Thoracic" then 
strPayload=strPayload&" \tab Nicotine Dependence "

dim FagerstromScore
dim FagerstromScale
FagerstromScore=0
FagerstromScale=""

if Session("EPQ31154000")="1" then
FagerstromScore=FagerstromScore+1.25
end if
if Session("EPQ31152000") =<10 then
FagerstromScore=FagerstromScore+0
end if
if Session("EPQ31152000") >10 AND Session("EPQ31152000") <21 then
FagerstromScore=FagerstromScore+1.25
end if
if Session("EPQ31152000") >20 AND Session("EPQ31152000") <31 then
FagerstromScore=FagerstromScore+2.5
end if
if Session("EPQ31152000") =>31 then
FagerstromScore=FagerstromScore+3.75
end if

if Session("THRC30700000")="1" then
FagerstromScore=FagerstromScore+1.25
end if
if Session("THRC30800000")="1" then
FagerstromScore=FagerstromScore+1.25
end if
if Session("THRC30900000")="1" then
FagerstromScore=FagerstromScore+1.25
end if
if Session("THRC30910000")="1" then
FagerstromScore=FagerstromScore+1.25
end if

if FagerstromScore <=2 then
FagerstromScale="Low"
end if
if FagerstromScore > 2   AND FagerstromScore < 4 then
FagerstromScale="Low to Moderate"
end if
if FagerstromScore >= 4 AND FagerstromScore < 8 then
FagerstromScale="Moderate"
end if
if FagerstromScore >= 8   then
FagerstromScale="High"
end if


if len(Session("EPQ31154000"))=0 OR len(Session("THRC30700000"))=0 OR len(Session("THRC30800000"))=0 OR len(Session("THRC30900000"))=0 OR len(Session("EPQ31152000"))=0 OR len(Session("THRC30910000"))=0 then
strPayload=strPayload&"\tab Missing \par "
else


strPayload=strPayload&"\tab "&FagerstromScale&" "&FagerstromScore&"  \par"
end if

end if
end if


if session("SurveyVersion")="Thoracic" then
if session("THRC30400010") = "1" OR session("THRC30400020") = "1" OR session("THRC30400030") = "1" OR session("THRC30400040") = "1" OR session("THRC30400050") = "1" OR session("THRC30400060") = "1" then
strPayload=strPayload&" \tab Nicotine Replacement \tab "

strPayload2=""
if Session("THRC30400010")="1" then
strPayload2=strPayload2&"Nicotine gum: "
if Session("THRC30601000")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30601000")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30601000")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&" \par\tab\tab\tab\tab "
end if

if Session("THRC30400020")="1" then
strPayload2=strPayload2&"Nicotine patch: "
if Session("THRC30602000")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30602000")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30602000")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&" \par\tab\tab\tab\tab "
end if

if Session("THRC30400030")="1" then
strPayload2=strPayload2&"Nicotine lozenges: "
if Session("THRC30603000")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30603000")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30603000")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&" \par\tab\tab\tab\tab "
end if

if Session("THRC30400040")="1" then
strPayload2=strPayload2&"Nicotine nasal spray: "
if Session("THRC30604000")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30604000")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30604000")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&" \par\tab\tab\tab\tab "
end if

if Session("THRC30400050")="1" then
strPayload2=strPayload2&"Prescription medication: "
if Session("THRC30604100")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30604100")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30604100")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&" \par\tab\tab\tab\tab "
end if

if Session("THRC30400060")="1" then
strPayload2=strPayload2&""&Session("THRC30500000")&": "
if Session("THRC30604200")="1" then
strPayload2=strPayload2&" (<3 months)"
end if
if Session("THRC30604200")="2" then
strPayload2=strPayload2&" (3-6 months)"
end if
if Session("THRC30604200")="3" then
strPayload2=strPayload2&" (>6 months)"
end if
strPayload2=strPayload2&""
end if
strPayload=strPayload&""&strPayload2&" \par"
end if
end if

if Session("EPQ31147000") = "1" then
strPayload=strPayload&" \tab Smoking History \tab "
strPayload2=""
if len(Session("EPQ31150000")) >0 then
strPayload2=strPayload2&", Began at "&Session("EPQ31150000")&"Y"
end if
if len(Session("EPQ31151000")) >0 then
strPayload2=strPayload2&", Smoker for "&Session("EPQ31151000")&" years"
end if
if len(Session("EPQ31152000")) >0 then
strPayload2=strPayload2&", Avg of "&Session("EPQ31152000")&" cigarettes/day"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
strPayload=strPayload&strPayload2&" \par "

Session("PackYears")= (Session("EPQ31152000")/20) * Session("EPQ31151000")
strPayload=strPayload&"\tab\tab\tab\tab Pack Year:"&Session("PackYears")&""

if Session("SurveyVersion")="Thoracic" then
if Session("THRC30930000")="1" then
strPayload=strPayload&"; Usually filtered"
end if
if Session("THRC30930000")="0" then
strPayload=strPayload&"; Usually non-filtered"
end if
if Session("THRC30920000")="1" then
strPayload=strPayload&" menthol"
end if
if Session("THRC30920000")="0" then
strPayload=strPayload&" non-menthol"
end if
strPayload=strPayload&" cigarettes"
end if
strPayload=strPayload&" \par "
end if

strPayload=strPayload&" \tab Other tobacco use \tab "
strPayload2=""
if Session("EPQ31155000")="1" then
strPayload2=strPayload2&", Current cigar smoker"
end if
if Session("EPQ31155000")="2" then
strPayload2=strPayload2&", Previous cigar smoker"
end if
if Session("EPQ31155000")="0" then
strPayload2=strPayload2&", Non cigar smoker"
end if
if Session("EPQ31156000")="1" then
strPayload2=strPayload2&", Current pipe smoker"
end if
if Session("EPQ31156000")="2" then
strPayload2=strPayload2&", Previous pipe smoker"
end if
if Session("EPQ31156000")="0" then
strPayload2=strPayload2&", Non pipe smoker"
end if
if Session("EPQ31157000")="1" then
strPayload2=strPayload2&", Current smokeless tobacco use"
end if
if Session("EPQ31157000")="2" then
strPayload2=strPayload2&", Previous smokeless tobacco use"
end if
if Session("EPQ31157000")="0" then
strPayload2=strPayload2&", Non smokeless tobacco use"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)

strPayload=strPayload&strPayload2&" \par "

'if Session("EPQ31158000")="1" OR Session("EPQ31158000")="2" OR 'Session("EPQ31159000")="1" OR Session("EPQ31159000")="2" OR 'Session("THRC39400000")="1" OR Session("THRC39400000")="2" then

if session("SurveyVersion")="Thoracic" then

strPayload=strPayload&" \tab Secondhand smoke \tab "
strPayload2=""
if Session("EPQ31158000")="1" then
strPayload2=strPayload2&", Household has smoker"
end if
if Session("EPQ31158000")="2" then
strPayload2=strPayload2&", Household had smoker"
end if
if Session("EPQ31159000")="1" then
strPayload2=strPayload2&", Exposed to cigarette smoke at work"
end if
if Session("EPQ31159000")="2" then
strPayload2=strPayload2&", Past exposure to cigarette smoke at work"
end if
if Session("THRC39400000")="1" then
strPayload2=strPayload2&", Exposed to cigarette smoke socially"
end if
if Session("THRC39400000")="2" then
strPayload2=strPayload2&", Past exposure to cigarette smoke socially"
end if

If session("SurveyVersion")="Thoracic" then

if len(Session("THRC39900000") )>0 OR len(Session("THRC39500000"))>0 OR len(Session("THRC39700000"))>0 then

strPayload2=strPayload2&" ("
if len(Session("THRC39500000") )>0 then
strPayload2=strPayload2&"home "&Session("THRC39500000")&" years x "&Session("THRC39600000")&" hours/week"
end if

if len(Session("THRC39700000") )>0 then
if len(Session("THRC39500000") )>0 then
strPayload2=strPayload2&"; "
end if
strPayload2=strPayload2&"work "&Session("THRC39700000")&" years x "&Session("THRC39800000")&" hours/week"
end if

if len(Session("THRC39900000") )>0 then
if len(Session("THRC39500000"))>0 OR len(Session("THRC39700000"))>0 then
strPayload2=strPayload2&"; "
end if
strPayload2=strPayload2&"socially "&Session("THRC39900000")&" years x "&Session("THRC39910000")&" hours/week"
end if
strPayload2=strPayload2&")"
end if
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strPayload=strPayload&strPayload2&" \par "
end if

If session("SurveyVersion")="Thoracic" OR session("SurveyVersion")="HEME" OR session("SurveyVersion")="GI" then 
strPayload=strPayload&" \tab Environmental exposure "
strPayload2=""
if Session("THRC31102100")="1" then
strPayload=strPayload&" Denies any lifetime exposure to environmental substances \par "
end if




if Session("HM11102000")="1" then
strPayload=strPayload&" Agent Orange;"
if len(Session("HM11104000"))>0 then 
strPayload=strPayload&" "&Session("HM11104000")&" years exposed;"
end if

if Session("HM11103000")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101000")="1" then
strPayload=strPayload&" Asbestos;"
if len(Session("THRC31103300"))>0 then 
strPayload=strPayload&" "&Session("THRC31103300")&" years exposed;"
end if

if Session("THRC31102200")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

if Session("THRC31101100")="1" then
strPayload=strPayload&" Sawdust/wood dust;"
if len(Session("THRC31103400"))>0 then 
strPayload=strPayload&" "&Session("THRC31103400")&" years exposed;"
end if
if Session("THRC31102300")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101200")="1" then
strPayload=strPayload&" Coal dust, soot;"

if len(Session("THRC31103500"))>0 then 
strPayload=strPayload&" "&Session("THRC31103500")&" years exposed;"
end if
if Session("THRC31102400")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101300")="1" then
strPayload=strPayload&" Solvents, paint thinners, Toluene/Xylene;"

if len(Session("THRC31103600"))>0 then 
strPayload=strPayload&" "&Session("THRC31103600")&" years exposed;"
end if
if Session("THRC31102500")="1" then
strPayload=strPayload&" \par\tab\tab\tab\tab exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101400")="1" then
strPayload=strPayload&" Printer’s inks/dyes, paints, lacquers, pigments;"
if len(Session("THRC31103700"))>0 then 
strPayload=strPayload&" "&Session("THRC31103700")&" years exposed;"
end if
if Session("THRC31102600")="1" then
strPayload=strPayload&" \par\tab\tab\tab\tab exposed at present "
end if
strPayload=strPayload&" \par\tab\tab\tab\tab"
end if


if Session("THRC31101500")="1" then
strPayload=strPayload&" Pesticides, herbicides, insecticides, fertilizers;"

if len(Session("THRC31103800"))>0 then 
strPayload=strPayload&" "&Session("THRC31103800")&" years exposed;"
end if
if Session("THRC31102700")="1" then
strPayload=strPayload&" \par\tab\tab\tab\tab exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101600")="1" then
strPayload=strPayload&" Ammonia, other ammonia-based chemicals;"

if len(Session("THRC31103900"))>0 then 
strPayload=strPayload&" "&Session("THRC31103900")&" years exposed;"
end if
if Session("THRC31102800")="1" then
strPayload=strPayload&" \par\tab\tab\tab\tab exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

if Session("THRC31101700")="1" then
strPayload=strPayload&" Arsenic;"

if len(Session("THRC31104000"))>0 then 
strPayload=strPayload&" "&Session("THRC31104000")&" years exposed;"
end if
if Session("THRC31102900")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

if Session("THRC31101800")="1" then
strPayload=strPayload&" Radon, uranium;"

if len(Session("THRC31104100"))>0 then 
strPayload=strPayload&" "&Session("THRC31104100")&" years exposed;"
end if
if Session("THRC31103000")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if


if Session("THRC31101900")="1" then
strPayload=strPayload&" Benzene;"

if len(Session("THRC31104200"))>0 then 
strPayload=strPayload&" "&Session("THRC31104200")&" years exposed;"
end if
if Session("THRC31103100")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

'
if Session("GI11101000")="1" then
strPayload=strPayload&" Dry cleaning agents;"

if len(Session("GI11101400"))>0 then 
strPayload=strPayload&" "&Session("GI11101400")&" years exposed;"
end if
if Session("GI11101200")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

if Session("GI11101100")="1" then
strPayload=strPayload&" Metal or welding products;"

if len(Session("GI11101500"))>0 then 
strPayload=strPayload&" "&Session("GI11101500")&" years exposed;"
end if
if Session("GI11101300")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if

if Session("THRC31102000")="1" then
strPayload=strPayload&" Other substances;"

if len(Session("THRC31104300"))>0 then 
strPayload=strPayload&" "&Session("THRC31104300")&" years exposed;"
end if
if Session("THRC31103200")="1" then
strPayload=strPayload&" exposed at present "
end if
strPayload=strPayload&"\par\tab\tab\tab\tab"
end if



end if

'Review of Systems
strPayload=strPayload&" \ul\b\fs24\par Review of Systems (ROS) - past 3 months \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab General \tab\tab "
strpayload2=""
if Session("EPQ30501000")="1" then
strPayload2=strPayload2&", Gain of 10 or more pounds"
end if
if Session("EPQ30501000")="2" then
strPayload2=strPayload2&", Loss of 10 or more pounds"
end if
if Session("EPQ30501000")="3" then
strPayload2=strPayload2&", Denies gain or loss of weight"
end if
if Session("EPQ30502010")="1" then
strPayload2=strPayload2&", Intentional"
end if
if Session("EPQ30502020")="1" then
strPayload2=strPayload2&", Intentional"
end if
if Session("EPQ30502010")="2" then
strPayload2=strPayload2&", Unexplained"
end if

if Session("EPQ30502020")="2" then
strPayload2=strPayload2&", Unexplained"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Constitutional \tab\tab "
strpayload2=""
if Session("EPQ30506010") = "1" then
strPayload2=strPayload2&", Fever"
end if
if Session("EPQ30506020") = "1" then
strPayload2=strPayload2&", Poor appetite"
end if
if Session("EPQ30506030") = "1" then
strPayload2=strPayload2&", Increased appetite"
end if
if Session("EPQ30506040") = "1" then
strPayload2=strPayload2&", Sleeps poorly"
end if
if Session("EPQ30506050") = "1" then
strPayload2=strPayload2&", Excessive night sweats"
end if
if Session("EPQ30506060") = "1" then
strPayload2=strPayload2&", Unusual fatigue"
end if
if Session("EPQ30506070") = "1" then
strPayload2=strPayload2&", Chills"
end if
if Session("EPQ30506090") = "1" then
strPayload2=strPayload2&", Pain"
strPayload2=strPayload2&" ("
end if

strPayload3=""
if Session("EPQ30506510") = "1" then
strPayload3=strPayload3&", Cancer"
end if
if Session("EPQ30506520") = "1" then
strPayload3=strPayload3&", Injury"
end if
if Session("EPQ30506530") = "1" then
strPayload3=strPayload3&", Something Else"
end if
strpayload3 = Right(strpayload3, Len(strpayload3)-2)


strpayload2=strpayload2&strpayload3&""

if Session("EPQ30506090") = "1" then
strPayload2=strPayload2&")"
end if

if Session("EPQ30506080") = "1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

'MARKER
'MARKER

strPayload=strPayload&" \ulnone\b0\fs20\tab Eye \tab\tab\tab "
strpayload2=""
if Session("EPQ30505000") = "1" then
strPayload2=strPayload2&", Uses glasses/contacts"
end if
if Session("EPQ30505000") = "0" then
strPayload2=strPayload2&", No glasses/contacts"
end if
if Session("EPQ30517010")="1" then
strPayload2=strPayload2&", Change in vision"
end if
if Session("EPQ30517020")="1" then
strPayload2=strPayload2&", Pain in eyes"
end if
if Session("EPQ30517030")="1" then
strPayload2=strPayload2&", Eye injury"
end if
if Session("EPQ30517040")="1" then
strPayload2=strPayload2&", Double vision"
end if
if Session("EPQ30517050")="1" then
strPayload2=strPayload2&", Blurred vision"
end if
if Session("EPQ30517060")="1" then
strPayload2=strPayload2&", Redness"
end if
if Session("EPQ30517070")="1" then
strPayload2=strPayload2&", Excessive tearing/watery eyes"
end if
if Session("EPQ30517080")="1" then
strPayload2=strPayload2&", Dry eyes"
end if
if Session("EPQ30517090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30517000")
end if
if Session("EPQ30517100")="1" then
strPayload2=strPayload2&", Denies "
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Skin \tab\tab\tab "
strpayload2=""

if Session("EPQ30507010")="1" then
strPayload2=strPayload2&", Change in skin color"
end if
if Session("EPQ30507020")="1" then
strPayload2=strPayload2&", A sore that does not heal"
end if
if Session("EPQ30507030")="1" then
strPayload2=strPayload2&", Mole that looks different than others"
end if
if Session("EPQ30507040")="1" then
strPayload2=strPayload2&", New mole after age 40"
end if
if Session("EPQ30507050")="1" then
strPayload2=strPayload2&", Mole/ freckle that burns/itches"
end if
if Session("EPQ30507060")="1" then
strPayload2=strPayload2&", Change in mole or freckle"
end if
if Session("EPQ30507070")="1" then
strPayload2=strPayload2&", Lump/ growth on skin"
end if
if Session("EPQ30507080")="1" then
strPayload2=strPayload2&", Easy bruising"
end if
if Session("EPQ30507090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30507000")
end if
if Session("EPQ30507100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Breast \tab\tab\tab "
strpayload2=""
if Session("EPQ30508010")="1" then
strPayload2=strPayload2&", A new lump/breast mass"
end if
if Session("EPQ30508020")="1" then
strPayload2=strPayload2&", Changes in existing lump or breast mass"
end if
if Session("EPQ30508030")="1" then
strPayload2=strPayload2&", Lump in armpit or under arm"
end if
if Session("EPQ30508040")="1" then
strPayload2=strPayload2&", Fibrocystic changes"
end if
if Session("EPQ30508050")="1" then
strPayload2=strPayload2&", Nipple inversion"
end if
if Session("EPQ30508060")="1" then
strPayload2=strPayload2&", Skin redness"
end if
if Session("EPQ30508070")="1" then
strPayload2=strPayload2&", Skin dimpling"
end if
if Session("EPQ30508080")="1" then
strPayload2=strPayload2&", Breast pain/discomfort"
end if
if Session("EPQ30508090")="1" then
strPayload2=strPayload2&", Nipple discharge"
end if
if Session("EPQ30511000")="1" then
strPayload2=strPayload2&", ( > 1x per day"
end if
if Session("EPQ30511000")="2" then
strPayload2=strPayload2&", (1x per day"
end if
if Session("EPQ30511000")="3" then
strPayload2=strPayload2&", (Several X per day"
end if
if Session("EPQ30511000")="4" then
strPayload2=strPayload2&", (Constant discharge"
end if
if Session("EPQ30511000")="77" then
strPayload2=strPayload2&", (PT needs help with nipple discharge Hx"
end if
if Session("EPQ30512000")="1" then
strPayload2=strPayload2&", Upon compression"
end if
if Session("EPQ30512000")="2" then
strPayload2=strPayload2&", Spontaneously"
end if
if Session("EPQ30512000")="3" then
strPayload2=strPayload2&", Upon compression and spontaneously"
end if
if Session("EPQ30512000")="77" then
strPayload2=strPayload2&", PT needs help with nipple discharge Hx"
end if
if Session("EPQ30513000")="1" then
strPayload2=strPayload2&", Clear)"
end if
if Session("EPQ30513000")="2" then
strPayload2=strPayload2&", Milky)"
end if
if Session("EPQ30513000")="3" then
strPayload2=strPayload2&", Bloody)"
end if
if Session("EPQ30513000")="4" then
strPayload2=strPayload2&", "&Session("EPQ30513000specify")&")"
end if
if Session("EPQ30513000")="77" then
strPayload2=strPayload2&", PT needs help with nipple discharge Hx)"
end if
if Session("EPQ30508100")="1" then
strPayload2=strPayload2&", Abnormal mammogram"
end if
if Session("EPQ30508110")="1" then
strPayload2=strPayload2&", "&Session("EPQ30508000")
end if


if Session("EPQ30509000")="1" then
strPayload2=strPayload2&", Breast pain (1/10) "
end if
if Session("EPQ30509000")="2" then
strPayload2=strPayload2&", Breast pain (2/10) "
end if
if Session("EPQ30509000")="3" then
strPayload2=strPayload2&", Breast pain (3/10) "
end if
if Session("EPQ30509000")="4" then
strPayload2=strPayload2&", Breast pain (4/10) "
end if
if Session("EPQ30509000")="5" then
strPayload2=strPayload2&", Breast pain (5/10) "
end if
if Session("EPQ30509000")="6" then
strPayload2=strPayload2&", Breast pain (6/10) "
end if
if Session("EPQ30509000")="7" then
strPayload2=strPayload2&", Breast pain (7/10) "
end if
if Session("EPQ30509000")="8" then
strPayload2=strPayload2&", Breast pain (8/10) "
end if
if Session("EPQ30509000")="9" then
strPayload2=strPayload2&", Breast pain (9/10) "
end if
if Session("EPQ30509000")="10" then
strPayload2=strPayload2&", Breast pain (10/10) "
end if
if Session("EPQ30510000")="1" then
strPayload2=strPayload2&", 3 - 7 days before my period starts"
end if
if Session("EPQ30510000")="2" then
strPayload2=strPayload2&", On the same day period starts"
end if
if Session("EPQ30510000")="3" then
strPayload2=strPayload2&", Constant breast pain"
end if
if Session("EPQ30510000")="4" then
strPayload2=strPayload2&", Pain occurs with no pattern"
end if
if Session("EPQ30510000")="5" then
strPayload2=strPayload2&", "&Session("EPQ30510000specify")
end if
if Session("EPQ30510000")="77" then
strPayload2=strPayload2&", PT needs help with breast pain symptoms "
end if

if Session("EPQ30508120")="1" then
strPayload2=strPayload2&", Denies "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Ear \tab\tab\tab "
strpayload2=""

if Session("EPQ30514010")="1" then
strPayload2=strPayload2&", Difficulty hearing"
end if
if Session("EPQ30514020")="1" then
strPayload2=strPayload2&", Discharge from ears"
end if
if Session("EPQ30514030")="1" then
strPayload2=strPayload2&", Vertigo"
end if
if Session("EPQ30514040")="1" then
strPayload2=strPayload2&", Earaches"
end if
if Session("EPQ30514050")="1" then
strPayload2=strPayload2&", Tinnitus"
end if
if Session("EPQ30514060")="1" then
strPayload2=strPayload2&", Light headedness/dizziness"
end if
if Session("EPQ30514070")="1" then
strPayload2=strPayload2&", Requires use of hearing aid"
end if
if Session("EPQ30514080")="1" then
strPayload2=strPayload2&", Difficulty maintaining balance"
end if
if Session("EPQ30514090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30514000")
end if
if Session("EPQ30514100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)

FormatStringforSummary (strpayload2)

strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Nervous System \tab "
strpayload2=""
if Session("EPQ30515010")="1" then
strPayload2=strPayload2&", Frequent or severe headaches"
end if
if Session("EPQ30515020")="1" then
strPayload2=strPayload2&", Dizziness or faintness"
end if
if Session("EPQ30515030")="1" then
strPayload2=strPayload2&", Loss of consciousness"
end if
if Session("EPQ30515040")="1" then
strPayload2=strPayload2&", Numbness or tingling of hands/feet"
end if

'RIGHTHERE
if Session("HM10508000")="1" OR Session("HM10508000")="2" then
dim NumbnessSpecifics
NumbnessSpecifics=" ("
if Session("HM10509000")="1" then
NumbnessSpecifics=NumbnessSpecifics&"Mild symptoms"
end if
if Session("HM10509000")="2" then
NumbnessSpecifics=NumbnessSpecifics&"Moderate symptoms"
end if
if Session("HM10509000")="3" then
NumbnessSpecifics=NumbnessSpecifics&"Severe symptoms"
end if

if Session("HM10508000")="1" then
NumbnessSpecifics=NumbnessSpecifics&" before cancer diagnosis due to"
end if
if Session("HM10508000")="2" then
NumbnessSpecifics=NumbnessSpecifics&" since cancer diagnosis due to"
end if

if Session("HM10510000")="1" then
NumbnessSpecifics=NumbnessSpecifics&" Amyloidosis,"
end if
if Session("HM10511000")="1" then
NumbnessSpecifics=NumbnessSpecifics&" Diabetes,"
end if
if Session("HM10512000")="1" then
NumbnessSpecifics=NumbnessSpecifics&" My cancer treatment,"
end if
if Session("HM10514000")="88" then
NumbnessSpecifics=NumbnessSpecifics&" unknown reason,"
end if
if Session("HM10513000")="1" then
NumbnessSpecifics=NumbnessSpecifics&" "&Session("HM10515000")&","
end if
NumbnessSpecifics = left(NumbnessSpecifics, Len(NumbnessSpecifics) - 1)
NumbnessSpecifics=NumbnessSpecifics&")"
strPayload2=strPayload2&NumbnessSpecifics
end if

if Session("EPQ30515050")="1" then
strPayload2=strPayload2&", Memory loss"
end if

if Session("HM10502000")="1" OR Session("HM10503000")="1"  OR Session("HM10504000")="1"  OR Session("HM10505000")="1"  OR Session("HM10506000")="1"  OR Session("HM10516000")="1" then
dim MemoryLossSpecifics
MemoryLossSpecifics=" ("
if Session("HM10502000")="1" then
MemoryLossSpecifics=MemoryLossSpecifics&"Difficulty concentrating, "
end if
if Session("HM10503000")="1" then
MemoryLossSpecifics=MemoryLossSpecifics&"Difficulty remembering, "
end if
if Session("HM10504000")="1" then
MemoryLossSpecifics=MemoryLossSpecifics&"Difficulty finding words, "
end if
if Session("HM10505000")="1" then
MemoryLossSpecifics=MemoryLossSpecifics&"Difficulty in recognizing people, "
end if
if Session("HM10506000")="1" then
MemoryLossSpecifics=MemoryLossSpecifics&"Difficulty with sense of direction, "
end if
if len(Session("HM10516000"))>="1" then
MemoryLossSpecifics=MemoryLossSpecifics&""&Session("HM10517000")&", "
end if
MemoryLossSpecifics = left(MemoryLossSpecifics, Len(MemoryLossSpecifics) - 2)
MemoryLossSpecifics=MemoryLossSpecifics&")"
strPayload2=strPayload2&MemoryLossSpecifics
end if



if Session("EPQ30515060")="1" then
strPayload2=strPayload2&", Weakness or change in sensation in arm/leg"
end if
if Session("EPQ30515070")="1" then
strPayload2=strPayload2&", Clumsiness of hands or feet"
end if
if Session("EPQ30515080")="1" then
strPayload2=strPayload2&", Tremors/seizures/convulsions"
end if
if Session("EPQ30515090")="1" then
strPayload2=strPayload2&", Difficulty talking"
end if
if Session("EPQ30515100")="1" then
strPayload2=strPayload2&", "&Session("EPQ30515000")
end if
if Session("EPQ30515110")="1" then
strPayload2=strPayload2&", Denies "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)

FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



strPayload=strPayload&" \ulnone\b0\fs20\tab Psychiatric \tab\tab "
strpayload2=""
if Session("EPQ30516010")="1" then
strPayload2=strPayload2&", Mood swings"
end if
if Session("EPQ30516020")="1" then
strPayload2=strPayload2&", Sad, low, down or depressed mood"
end if
if Session("EPQ30516030")="1" then
strPayload2=strPayload2&", Anxiety"
end if
if Session("EPQ30516040")="1" then
strPayload2=strPayload2&", "&Session("EPQ30516000")
end if
if Session("EPQ30516050")="1" then
strPayload2=strPayload2&", Confusion"
end if
if Session("EPQ30516070")="1" then
strPayload2=strPayload2&", Sleeping difficulties/Insomnia"
end if
if Session("EPQ30516100")="1" then
strPayload2=strPayload2&", Receiving Therapy"
end if
if Session("EPQ30516100")="2" then
strPayload2=strPayload2&", Not Receiving Therapy"
end if
if Session("EPQ30516060")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Mouth/Nose/Throat \tab "
strpayload2=""

if Session("EPQ30518010")="1" then
strPayload2=strPayload2&", Mouth sore that doesn't heal"
end if
if Session("EPQ30518020")="1" then
strPayload2=strPayload2&", Lump or thickening in mouth"
end if
if Session("EPQ30518030")="1" then
strPayload2=strPayload2&", Red or white patch in mouth"
end if
if Session("EPQ30518040")="1" then
strPayload2=strPayload2&", Dysphagia"
end if
if Session("EPQ30518050")="1" then
strPayload2=strPayload2&", Frequent sneezing"
end if
if Session("EPQ30518060")="1" then
strPayload2=strPayload2&", Frequent sore throats"
end if
if Session("EPQ30518070")="1" then
strPayload2=strPayload2&", Persistent hoarseness"
end if
if Session("EPQ30518080")="1" then
strPayload2=strPayload2&", Sinus problems"
end if
if Session("EPQ30518090")="1" then
strPayload2=strPayload2&", Dental problems"
end if
if Session("EPQ30518100")="1" then
strPayload2=strPayload2&", Nose continually stuffy/runny"
end if
if Session("EPQ30518110")="1" then
strPayload2=strPayload2&", Cold sores"
end if
if Session("EPQ30518140")="1" then
strPayload2=strPayload2&", Dry mouth"
end if

if Session("EPQ30518120")="1" then
strPayload2=strPayload2&", "&Session("EPQ30518000")
end if
if Session("EPQ30518130")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Cardiovascular \tab\tab "
strpayload2=""

if Session("EPQ30519010")="1" then
strPayload2=strPayload2&", Angina"
end if
if Session("EPQ30519020")="1" then
strPayload2=strPayload2&", Heart murmurs"
end if
if Session("EPQ30519030")="1" then
strPayload2=strPayload2&", Arrhythmia"
end if
if Session("EPQ30519040")="1" then
strPayload2=strPayload2&", Swelling of feet/legs/ankles"
end if
if Session("EPQ30519050")="1" then
strPayload2=strPayload2&", Fainting"
end if
if Session("EPQ30519060")="1" then
strPayload2=strPayload2&", Phlebitis"
end if
if Session("EPQ30519070")="1" then
strPayload2=strPayload2&", Dyspnea at night/in bed"
end if
if Session("EPQ30519080")="1" then
strPayload2=strPayload2&", Calf cramps after walking a short distance"
end if
if Session("EPQ30519090")="1" then
strPayload2=strPayload2&", Rheumatic fever"
end if
if Session("EPQ30519100")="1" then
strPayload2=strPayload2&", History of blood clots"
end if
if Session("EPQ30519110")="1" then
strPayload2=strPayload2&", HTN"
end if
if Session("EPQ30519120")="1" then
strPayload2=strPayload2&", Heart disease"
end if
if Session("EPQ30519130")="1" then
strPayload2=strPayload2&", Tachycardia"
end if
if Session("EPQ30519140")="1" then
strPayload2=strPayload2&", "&Session("EPQ30519000")
end if
if Session("EPQ30519150")="1" then
strPayload2=strPayload2&", Hypotension"
end if
if Session("EPQ30519160")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Respiratory \tab\tab "
strpayload2=""
if Session("EPQ30520010")="1" then
strPayload2=strPayload2&", Cough"
end if
if Session("EPQ30520020")="1" then
strPayload2=strPayload2&", Dyspnea"
end if
if Session("EPQ30520030")="1" then
strPayload2=strPayload2&", Blood in sputum"
end if
if Session("EPQ30520040")="1" then
strPayload2=strPayload2&", Wheezing/Asthma"
end if
if Session("EPQ30520050")="1" then
strPayload2=strPayload2&", Respiratory infection or pneumonia"
end if
if Session("EPQ30520060")="1" then
strPayload2=strPayload2&", TB or exposure to someone with TB"
end if
if Session("EPQ30520070")="1" then
strPayload2=strPayload2&", "&Session("EPQ30520000")
end if
if Session("EPQ30520080")="1" then
strPayload2=strPayload2&", Use of oxygen"
end if
if Session("EPQ30520090")="1" then
strPayload2=strPayload2&", Denies"
end if
if Session("EPQ30520100")="1" then
strPayload2=strPayload2&", Chest pain/discomfort upon breathing"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Genitourinary \tab\tab "
strpayload2=""

if Session("EPQ30521010")="1" then
strPayload2=strPayload2&", Kidney stones"
end if
if Session("EPQ30521020")="1" then
strPayload2=strPayload2&", Hematuria"
end if
if Session("EPQ30521030")="1" then
strPayload2=strPayload2&", Dysuria"
end if
if Session("EPQ30521040")="1" then
strPayload2=strPayload2&", Incontinence"
end if
if Session("EPQ30521050")="1" then
strPayload2=strPayload2&", Sensation of not emptying bladder completely"
end if
if Session("EPQ30521060")="1" then
strPayload2=strPayload2&", UTI"
end if
if Session("EPQ30521070")="1" then
strPayload2=strPayload2&", Testicular pain"
end if
if Session("EPQ30521080")="1" then
strPayload2=strPayload2&", Mass or bulge inside scrotum"
end if
if Session("EPQ30521090")="1" then
strPayload2=strPayload2&", Darkening of urine"
end if
if Session("EPQ30521100")="1" then
strPayload2=strPayload2&", Frequent urination"
end if
if Session("EPQ30521110")="1" then
strPayload2=strPayload2&", Getting up more than once a night to urinate"
end if
if Session("EPQ30521120")="1" then
strPayload2=strPayload2&", Difficulty starting urine stream"
end if
if Session("EPQ30521130")="1" then
strPayload2=strPayload2&", Impotence"
end if
if Session("EPQ30521140")="1" then
strPayload2=strPayload2&" , Loss of libido"
end if
if Session("EPQ30521150")="1" then
strPayload2=strPayload2&", Discharge from the penis"
end if
if Session("EPQ30521160")="1" then
strPayload2=strPayload2&", Blood clots in urine"
end if
if Session("EPQ30521170")="1" then
strPayload2=strPayload2&", Foul smelling urine"
end if
if Session("EPQ30521180")="1" then
strPayload2=strPayload2&", Difficulty emptying bladder"
end if
if Session("EPQ30521190")="1" then
strPayload2=strPayload2&", "&Session("EPQ30521000")
end if
if Session("EPQ30521200")="1" then
strPayload2=strPayload2&", Denies "
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Gastrointestinal \tab\tab "
strpayload2=""

if Session("EPQ30522010")="1" then
strPayload2=strPayload2&", Nausea"
end if
if Session("EPQ30523000")="1" then
strPayload2=strPayload2&", (Rarely nauseous"
end if
if Session("EPQ30523000")="2" then
strPayload2=strPayload2&", (Occasionally nauseous"
end if
if Session("EPQ30523000")="3" then
strPayload2=strPayload2&", (Frequent nausea"
end if
if Session("EPQ30523000")="4" then
strPayload2=strPayload2&", (Almost constantly nauseous"
end if
if Session("EPQ30524000")="1" then
strPayload2=strPayload2&", Slight severity)"
end if
if Session("EPQ30524000")="2" then
strPayload2=strPayload2&", Moderate severity)"
end if
if Session("EPQ30524000")="3" then
strPayload2=strPayload2&", Severe severity)"
end if
if Session("EPQ30524000")="4" then
strPayload2=strPayload2&" , Very severe severity)"
end if
if Session("EPQ30522020")="1" then
strPayload2=strPayload2&", Jaundice"
end if
if Session("EPQ30522030")="1" then
strPayload2=strPayload2&", Vomiting"
end if
if Session("EPQ30522040")="1" then
strPayload2=strPayload2&", Change in bowel habits"
end if
if Session("EPQ30522050")="1" then
strPayload2=strPayload2&", Vomiting blood"
end if
if Session("EPQ30522060")="1" then

end if
if Session("EPQ30522070")="1" then
strPayload2=strPayload2&", Pain during bowel movement"
end if
if Session("EPQ30522080")="1" then
strPayload2=strPayload2&", Ulcers"
end if
if Session("EPQ30522090")="1" then
strPayload2=strPayload2&", Abdominal pain or pressure"
end if
if Session("EPQ30522100")="1" then
strPayload2=strPayload2&", Frequent heartburn and indigestion"
end if
if Session("EPQ30522110")="1" then
strPayload2=strPayload2&", Rectal pain"
end if
if Session("EPQ30522120")="1" then
strPayload2=strPayload2&", Early satiety"
end if
if Session("EPQ30522130")="1" then
strPayload2=strPayload2&", Itching or burning in rectal area"
end if
if Session("EPQ30522140")="1" then
strPayload2=strPayload2&", Bloating of stomach/increased abdominal size"
end if
if Session("EPQ30522150")="1" then
strPayload2=strPayload2&", Hemorrhoids"
end if
if Session("EPQ30522160")="1" then
strPayload2=strPayload2&", Bad reaction to some foods"
end if

if Session("EPQ30522180")="1" then
strPayload2=strPayload2&", Denies"
end if

if Session("EPQ30525010")="1" then
strPayload2=strPayload2&" , Difficulty swallowing liquids"
end if
if Session("EPQ30525020")="1" then
strPayload2=strPayload2&", Difficulty swallowing solids"
end if
if Session("EPQ30525050")="1" then
strPayload2=strPayload2&", Difficulty swallowing pills or tablets"
end if
if Session("EPQ30525030")="1" then
strPayload2=strPayload2&", "&Session("EPQ30525000")
end if
if Session("EPQ30526010")="1" then
strPayload2=strPayload2&", Diarrhea (loose/runny stools)"
end if
if Session("EPQ30526020")="1" then
strPayload2=strPayload2&", Mucus or pus in stool"
end if
if Session("EPQ30526030")="1" then
strPayload2=strPayload2&", Increased frequency of bowel movements"
end if
if Session("EPQ30526040")="1" then
strPayload2=strPayload2&", Black or tarry stools"
end if
if Session("EPQ30526050")="1" then
strPayload2=strPayload2&", Trouble holding stools"
end if
if Session("EPQ30526060")="1" then
strPayload2=strPayload2&", Light colored stools"
end if
if Session("EPQ30526070")="1" then
strPayload2=strPayload2&", Constipation"
end if
if Session("EPQ30526080")="1" then
strPayload2=strPayload2&", Stools having offensive odor"
end if
if Session("EPQ30526090")="1" then
strPayload2=strPayload2&", Rectal tenesmus"
end if
if Session("EPQ30526100")="1" then
strPayload2=strPayload2&", Narrow stools"
end if
if Session("EPQ30526110")="1" then
strPayload2=strPayload2&", Blood in stool"
end if
if Session("EPQ30526120")="1" then
strPayload2=strPayload2&", Stools that float"
end if
if Session("EPQ30526130")="1" then
strPayload2=strPayload2&", Blood on toilet tissue"
end if
if Session("EPQ30526140")="1" then
strPayload2=strPayload2&", "&Session("EPQ30526000")
end if
if len(Session("EPQ30527000")) > 0 then
strPayload2=strPayload2&", "&Session("EPQ30527000")
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Endocrine \tab\tab "
strpayload2=""

if Session("EPQ30528010")="1" then
strPayload2=strPayload2&", Enlarged thyroid (goiter)"
end if
if Session("EPQ30528020")="1" then
strPayload2=strPayload2&", Hot or cold intolerance"
end if
if Session("EPQ30528030")="1" then
strPayload2=strPayload2&", Dry skin/hair"
end if
if Session("EPQ30528040")="1" then
strPayload2=strPayload2&", Increased thirst"
end if
if Session("EPQ30528050")="1" then
strPayload2=strPayload2&", "&Session("EPQ30528000")
end if
if Session("EPQ30528060")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


strPayload=strPayload&" \ulnone\b0\fs20\tab Hematologic/Lymphatic \tab "
strpayload2=""
if Session("EPQ30529010")="1" then
strPayload2=strPayload2&", Prominent leg veins"
end if
if Session("EPQ30529020")="1" then
strPayload2=strPayload2&", Frequent epistaxis"
end if
if Session("EPQ30529030")="1" then
strPayload2=strPayload2&", Frequent bleeding gums"
end if
if Session("EPQ30529040")="1" then
strPayload2=strPayload2&", Easy bruising/bleeding"
end if
if Session("EPQ30529050")="1" then
strPayload2=strPayload2&", Blood transfusions"
end if
if Session("EPQ30529060")="1" then
strPayload2=strPayload2&", Lymphedema"
end if
if Session("EPQ30529070")="1" then
strPayload2=strPayload2&", Swollen glands"
end if
if Session("EPQ30529080")="1" then
strPayload2=strPayload2&", "&Session("EPQ30529000")
end if
if Session("EPQ30529090")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"


if Session("Gender")="F" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Gynecological \tab\tab "
strpayload2=""

if Session("EPQ30530010")="1" then
strPayload2=strPayload2&", Vaginal bleeding/spotting between periods"
end if
if Session("EPQ30530020")="1" then
strPayload2=strPayload2&", Vaginal bleeding after menopause"
end if
if Session("EPQ30530030")="1" then
strPayload2=strPayload2&", Unusual vaginal discharge"
end if
if Session("EPQ30530040")="1" then
strPayload2=strPayload2&", Painful intercourse"
end if
if Session("EPQ30530050")="1" then
strPayload2=strPayload2&", Painful periods"
end if
if Session("EPQ30530060")="1" then
strPayload2=strPayload2&", Vaginal itching/discomfort"
end if
if Session("EPQ30530070")="1" then
strPayload2=strPayload2&", Hot flashes"
end if
if Session("EPQ30530080")="1" then
strPayload2=strPayload2&", Vaginal dryness"
end if
if Session("EPQ30530090")="1" then
strPayload2=strPayload2&", Decreased libido"
end if
if Session("EPQ30530100")="1" then
strPayload2=strPayload2&", "&Session("EPQ30530000")
end if
if Session("EPQ30530110")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

end if

strPayload=strPayload&" \ulnone\b0\fs20\tab Musculoskeletal \tab "
strpayload2=""

if Session("EPQ30531010")="1" then
strPayload2=strPayload2&", Painful joints"
end if
if Session("EPQ30531020")="1" then
strPayload2=strPayload2&", Sore muscles"
end if
if Session("EPQ30531030")="1" then
strPayload2=strPayload2&", Back pain"
end if
if Session("EPQ30531040")="1" then
strPayload2=strPayload2&", Osteoporosis or osteopenia"
end if
if Session("EPQ30531050")="1" then
strPayload2=strPayload2&", Use of wheelchair"
end if
if Session("EPQ30531060")="1" then
strPayload2=strPayload2&", Muscle weakness"
end if
if Session("EPQ30531070")="1" then
strPayload2=strPayload2&", Neck pain"
end if
if Session("EPQ30531080")="1" then
strPayload2=strPayload2&", Use of cane or crutches"
end if
if Session("EPQ30531090")="1" then
strPayload2=strPayload2&", "&Session("EPQ30531000")
end if
if Session("EPQ30531100")="1" then
strPayload2=strPayload2&", Denies"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

strPayload=strPayload&" \ulnone\b0\fs20\tab Other Symptoms \tab "

strpayload2=""
if Session("EPQ30532000")="1" then
strpayload2=""
strPayload2=strPayload2&", "&Session("EPQ30532000specify")
end if

if Session("EPQ30532000")="0" then
strpayload2=""
strPayload2=strPayload2&", No "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



'CANCER RISK FACTORS
	strPayload=strPayload&" \ul\b\fs24\par Cancer Risk Factors \par"


if Session("HM11105000")="1" OR Session("HM11105000")="2" OR Session("HM11105000")="3" then 
dim FallSpecifics
if Session("HM11105000")="1" then 
	FallSpecifics=FallSpecifics&" \ulnone\b0\fs20\tab 1 fall in the past year due to "
end if
if Session("HM11105000")="2" then 
	FallSpecifics=FallSpecifics&" \ulnone\b0\fs20\tab 2 falls in the past year due to "
end if
if Session("HM11105000")="3" then 
	FallSpecifics=FallSpecifics&" \ulnone\b0\fs20\tab 3 falls in the past year due to "
end if
if Session("HM11105000")="4" then 
	FallSpecifics=FallSpecifics&" \ulnone\b0\fs20\tab 4 or more falls in the past year due to "
end if

if Session("HM11106000")="1" then 
	FallSpecifics=FallSpecifics&"accidental tripping, "
end if
if Session("HM11107000")="1" then 
	FallSpecifics=FallSpecifics&"dizziness, "
end if
if Session("HM11108000")="1" then 
	FallSpecifics=FallSpecifics&"loss of balance, "
end if
if Session("HM11109000")="1" then 
	FallSpecifics=FallSpecifics&"loss of consciousness, "
end if
if Session("HM11110000")="1" then 
	FallSpecifics=FallSpecifics&"seizure, "
end if
if Session("HM11111000")="1" then 
	FallSpecifics=FallSpecifics&"sports, "
end if
if Session("HM11112000")="1" then 
	FallSpecifics=FallSpecifics&""&Session("HM11113000")&", "
end if
	FallSpecifics = left(FallSpecifics, Len(FallSpecifics) - 2)
	strPayload=strPayload&FallSpecifics&" \par "
end if



	strPayload=strPayload&" \ulnone\b0\fs20\tab Anthropometrics \tab "

strPayload2=""
if len(Session("EPQ31101000")) > 0 then
strPayload2=strPayload2&""&Session("EPQ31101000")&" ' "&Session("EPQ31101000b")&" "" "&" "
end if
strPayload2=strPayload2&Session("EPQ31102000")&" lbs; "&" "
Session("BMI1")=Session("EPQ31102000")*703
Session("BMI2")=Session("EPQ31101000")*12
Session("BMI3")=Session("BMI2")+Session("EPQ31101000b")
Session("BMI")=Session("BMI1") /(Session("BMI3")*Session("BMI3"))
dim RoundBMI
RoundBMI=Session("BMI")
Session("BMI")=Round(RoundBMI,1)

if len(Session("GI11101600"))>0 then 
strPayload2=strPayload2&" (BMI="&Session("BMI")&");"&"Weight 1 yr ago: "&Session("EPQ31103000")&" lbs; "&"Weight at 18: "&Session("GI11101600")&" lbs "&" \par "
else
strPayload2=strPayload2&" (BMI="&Session("BMI")&");"&"Weight 1 yr ago: "&Session("EPQ31103000")&" lbs; "&" \par "
end if

FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" "


if Session("HM11101000")="1" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Nutrition \tab\tab Malnourished \par"
end if
if Session("HM11101000")="2" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Nutrition \tab\tab Nourished \par"
end if
if Session("HM11101000")="88" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Nutrition \tab\tab Don't Know \par"
end if




strpayload=strpayload&" \par"

if Session("EPQ31140120") <> "1" OR Session("EPQ31141110")<> "1" then

strPayload=strPayload&" \ulnone\b0\fs20\tab Health practices \tab "
strpayload2=""
if Session("EPQ31140010")="1" then
strPayload2=strPayload2&", Homeopathic remedy"
end if
if Session("EPQ31140020")="1" then
strPayload2=strPayload2&", Yoga"
end if
if Session("EPQ31140030")="1" then
strPayload2=strPayload2&", Tai Chi"
end if
if Session("EPQ31140040")="1" then
strPayload2=strPayload2&", Qi gong"
end if
if Session("EPQ31140050")="1" then
strPayload2=strPayload2&", Meditation"
end if
if Session("EPQ31140060")="1" then
strPayload2=strPayload2&", Guided imagery"
end if
if Session("EPQ31140070")="1" then
strPayload2=strPayload2&", Progressive relaxation"
end if
if Session("EPQ31140080")="1" then
strPayload2=strPayload2&", Deep breathing exercises"
end if
if Session("EPQ31140090")="1" then
strPayload2=strPayload2&", Vegetarian diet for > 2 weeks"
end if
if Session("EPQ31140100")="1" then
strPayload2=strPayload2&", Macrobiotic diet for > 2 weeks"
end if

if Session("EPQ31140110")="1" then
strPayload2=strPayload2&", Spiritual Healing / Prayer"
end if
if Session("EPQ31141010")="1" then
strPayload2=strPayload2&", Acupuncture"
end if
if Session("EPQ31141020")="1" then
strPayload2=strPayload2&", Ayurveda"
end if
if Session("EPQ31141030")="1" then
strPayload2=strPayload2&", Biofeedback"
end if
if Session("EPQ31141040")="1" then
strPayload2=strPayload2&", Chelation therapy"
end if
if Session("EPQ31141050")="1" then
strPayload2=strPayload2&", Chiropractic care"
end if
if Session("EPQ31141060")="1" then
strPayload2=strPayload2&", Energy healing therapy"
end if
if Session("EPQ31141070")="1" then
strPayload2=strPayload2&", Folk Medicine"
end if
if Session("EPQ31141080")="1" then
strPayload2=strPayload2&", Hypnosis"
end if
if Session("EPQ31141090")="1" then
strPayload2=strPayload2&", Massage therapy"
end if
if Session("EPQ31141100")="1" then
strPayload2=strPayload2&", Naturopathy"
end if
if Session("EPQ31140130")="1" then
strPayload2=strPayload2&", Music Therapy"
end if
if Session("EPQ31140140")="1" then
strPayload2=strPayload2&", Aromatherapy"
end if
if Session("EPQ31140150")="1" then
strPayload2=strPayload2&", Relaxation Therapy"
end if
if Session("EPQ31140160")="1" then
strPayload2=strPayload2&", Acupressure"
end if



strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"
end if

if Session("EPQ31142000")="1" OR Session("EPQ31142000")="77" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Sun exposure \tab\tab "
strpayload2=""
if Session("EPQ31142000")="1" then
strPayload2=strPayload2&", Sunburn"
end if
if Session("EPQ31142000")="0" then
end if
if Session("EPQ31142000")="77" then
strPayload2=strPayload2&", PT needs help with sunburn Hx"
end if
if Session("EPQ31143010")="1" then
strPayload2=strPayload2&", <5Y"
end if
if Session("EPQ31143020")="1" then
strPayload2=strPayload2&", 6 - 10Y"
end if
if Session("EPQ31143030")="1" then
strPayload2=strPayload2&", 11 - 15Y"
end if
if Session("EPQ31143040")="1" then
strPayload2=strPayload2&", 16 - 20Y"
end if
if Session("EPQ31143050")="1" then
strPayload2=strPayload2&", >20Y"
end if
if Session("EPQ31144000")="1" then
strPayload2=strPayload2&", 1 - 2 times as a child "
end if
if Session("EPQ31144000")="2" then
strPayload2=strPayload2&", 3 - 5 times as a child "
end if
if Session("EPQ31144000")="3" then
strPayload2=strPayload2&",  >5 times as a child "
end if
if Session("EPQ31144000")="88" then
strPayload2=strPayload2&", PT does not know # of blistering burns before age 15 "
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"

end if

if session("SurveyVersion")="EPQ" OR session("SurveyVersion")="Thoracic" then
if Session("EPQ31145140")<> "1" OR Session("EPQ31146000") <> "0" then
strPayload=strPayload&" \ulnone\b0\fs20\tab Skin cancer risk \tab "
strpayload2=""
if Session("EPQ31145050")="1" then
strPayload2=strPayload2&", Large # moles as child"
end if
if Session("EPQ31145060")="1" then
strPayload2=strPayload2&", Tendency to freckle"
end if
if Session("EPQ31145070")="1" then
strPayload2=strPayload2&", Large # moles now"
end if
if Session("EPQ31145080")="1" then
strPayload2=strPayload2&", Tendency to sunburn"
end if
if Session("EPQ31145090")="1" then
strPayload2=strPayload2&", Moles present from birth"
end if
if Session("EPQ31145100")="1" then
strPayload2=strPayload2&", Light colored eyes"
end if
if Session("EPQ31145110")="1" then
strPayload2=strPayload2&", White rings around mole/birthmark"
end if
if Session("EPQ31145120")="1" then
strPayload2=strPayload2&", Light complexion"
end if
if Session("EPQ31145130")="1" then
strPayload2=strPayload2&", Mole/birthmark that disappeared"
end if
if Session("EPQ31145140")="1" then
end if
if Session("EPQ31146000")="1" then
strPayload2=strPayload2&", Sunbed/lamp used more than 10 times"
end if
if Session("EPQ31146000")="0" then
end if
if Session("EPQ31146000")="77" then
strPayload2=strPayload2&", PT needs help answering sunbed/lamp question"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"
end if
end if

'strpayload=strpayload&strpayload2&" \par"
'RIGHT HERE

If Session("SurveyVersion")="Cutaneous" then 
strPayload=strPayload&" \ulnone\b0\fs20\tab Skin cancer risk \tab "
strpayload2=""
if Session("EPQ31145050")="1" then
strPayload2=strPayload2&", Large # moles as child"
end if
if Session("EPQ31145060")="1" then
strPayload2=strPayload2&", Tendency to freckle"
end if
if Session("EPQ31145070")="1" then
strPayload2=strPayload2&", Large # moles now"
end if
if Session("EPQ31145080")="1" then
strPayload2=strPayload2&", Tendency to sunburn"
end if
if Session("EPQ31145090")="1" then
strPayload2=strPayload2&", Moles present from birth"
end if
if Session("EPQ31145100")="1" then
strPayload2=strPayload2&", Light colored eyes"
end if
if Session("EPQ31145110")="1" then
strPayload2=strPayload2&", White rings around mole/birthmark"
end if
if Session("EPQ31145120")="1" then
strPayload2=strPayload2&", Light complexion"
end if
if Session("EPQ31145130")="1" then
strPayload2=strPayload2&", Mole/birthmark that disappeared"
end if
if Session("EPQ31145140")="1" then
end if
if Session("EPQ31146000")="1" then
strPayload2=strPayload2&", Sunbed/lamp used more than 10 times"
end if
if Session("EPQ31146000")="0" then
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)

if Session("EPQ31145140")<>"1" OR Session("EPQ31146000")<>"0" then
formatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par\tab\tab\tab\tab "
end if 

strpayload2=""
if len(Session("CUTA10501000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA10501000string")&""
end if
if len(Session("CUTA10502000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA10502000string")&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "

strpayload2=""
if len(Session("CUTA11101000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11101000string")&""&""
end if
if len(Session("CUTA11102000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11102000string")&""&""
end if
if len(Session("CUTA11103000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11103000string")&""&""
end if
if len(Session("CUTA11104000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11104000string")&""&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "

strpayload2=""
if Session("CUTA11105000") ="2"  or  Session("CUTA11105000") ="3" then
strPayload2=strPayload2&", "&Session("CUTA11105000string")&""
end if
if len(Session("CUTA11106000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11106000string")&" "&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "

strpayload2=""
if Session("CUTA11107000")="1" OR Session("CUTA11107000")="2" then
if len(Session("CUTA11107000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11107000string")&""
end if
if len(Session("CUTA11108000")) > 0 then
strPayload2=strPayload2&" "&Session("CUTA11108000string")&""
end if
if len(Session("CUTA11109000")) > 0 then
strPayload2=strPayload2&" "&Session("CUTA11109000string")&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "
end if 


strpayload2=""
if Session("CUTA11110000")="1" OR Session("CUTA11110000")="2" then
if len(Session("CUTA11110000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11110000string")&""
end if
if len(Session("CUTA11111000")) > 0 then
strPayload2=strPayload2&" "&Session("CUTA11111000string")&""
end if
if len(Session("CUTA11112000")) > 0 then
strPayload2=strPayload2&" "&Session("CUTA11112000string")&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "
end if


'ONLY WRAP PSORIASIS IF ASKED
strPayload2=""
if Session("CUTA11113000")="1" OR Session("CUTA11113000")="2" then
strPayload2=strPayload2&", "&Session("CUTA11113000string")&" "

if len(Session("CUTA11114000")) > 0 then
strPayload2=strPayload2&""&Session("CUTA11114000string")&""
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par\tab\tab\tab\tab "

end if

strPayload2=""
if Session("CUTA11115000")="1" OR Session("CUTA11115000")="2" then
if len(Session("CUTA11115000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11115000string")&""
end if
if len(Session("CUTA11116000")) > 0 then
strPayload2=strPayload2&" "&Session("CUTA11116000string")&""
end if
end if 
if len(Session("CUTA11117000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11117000string")&""
end if
if len(Session("CUTA11118000")) > 0 then
strPayload2=strPayload2&", "&Session("CUTA11118000string")&""
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&""&strpayload2&" \par"

end if






	strPayload=strPayload&" \ulnone\b0\fs20\tab Physical Activity Level \tab "
strpayload2=""
if len(Session("EPQ31104000")) > 0 then
strPayload2=strPayload2&", "&Session("EPQ31104000")&" days/week of vigorous physical activity"
end if
if Session("EPQ31104000b")= "0" then
strPayload2=strPayload2&", No vigorous physical activities"
end if
if len(Session("EPQ31106000")) > 0 then
strPayload2=strPayload2&", "&Session("EPQ31106000")&" days/week of moderate physical activity"
end if
if Session("EPQ31106000b")= "0" then
strPayload2=strPayload2&", No moderate physical activities"
end if
if len(Session("EPQ31108000")) > 0 then
strPayload2=strPayload2&", "&Session("EPQ31108000")&" days/week of walking"
end if
if Session("EPQ31108000b")="0" then
strPayload2=strPayload2&", No walking"
end if
strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"



'screening
if Session("EPQ31006000")="1" or Session("EPQ31010000")="1" then

strPayload=strPayload&" \ulnone\b0\fs20\tab Screening History \tab "
strpayload2=""

if Session("EPQ31007010")="88" then
strpayload2=strpayload2&", Most recent FOBT Unknown"
end if

if len(Session("EPQ31007000YY"))>0 then
strpayload2=strpayload2&", Most recent FOBT "&Session("EPQ31007000MM")&"/"&Session("EPQ31007000YY")
end if

if len(Session("EPQ31011000"))>0 then
strpayload2=strpayload2&", Most recent "
if Session("EPQ31011000")="1" then
strpayload2=strpayload2&"Colonoscopy "
end if
if Session("EPQ31011000")="2" then
strpayload2=strpayload2&"Sigmoidoscopy "
end if

if Session("EPQ31011000")="1" then
strpayload2=strpayload2&Session("EPQ31011000specify")&" "
end if
if Session("EPQ31011000")="4" then
strpayload2=strpayload2&"Unknown screening "
end if
if Session("EPQ31012010")="88" then
strpayload2=strpayload2&" Unknown"
end if
if len(Session("EPQ31012000YY"))>0 then
strpayload2=strpayload2&""&Session("EPQ31012000MM")&"/"&Session("EPQ31012000YY")
end if

end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)
strpayload=strpayload&strpayload2&" \par"
end if

if Session("EPQ30804000")="1" OR Session("EPQ30804000")="88" OR Session("EPQ30804000")="77" then
strPayload=strPayload&" \par \ulnone\b0\fs20\tab Maternal DES Use \tab "
if Session("EPQ30804000")="1" then
strPayload=strPayload&"Yes \par"
end if
if Session("EPQ30804000")="2" then
end if
if Session("EPQ30804000")="88" then
strPayload=strPayload&"PT does not know \par"
end if
if Session("EPQ30804000")="77" then
strPayload=strPayload&"PT needs help \par"
end if
end if


'psychosocial
		strPayload=strPayload&" \ul\b\fs24\par Psychosocial \par "

strPayload=strPayload&"\ulnone\b0\fs20\tab Psychosocial Concerns "
strpayload2=""
if Session("EPQ31201000")="1" then
strPayload2=strPayload2&"PT has a family member or friend to help, "
end if
if Session("EPQ31201000")="0" then
strPayload2=strPayload2&"PT does not have a family member or friend to help, "
end if
if Session("EPQ31202000")="1" then
strPayload2=strPayload2&"PT lives alone, "
end if
if Session("EPQ31202000")="0" then
strPayload2=strPayload2&"PT does not live alone, "
end if
if Session("EPQ31203000")="1" then
strPayload2=strPayload2&"PT has children in household, "
end if
if Session("EPQ31203000")="0" then
strPayload2=strPayload2&"PT does not have children in household, "
end if
if Session("EPQ31204000")="10" then
strPayload2=strPayload2&" Distress = 10/10"
end if
if Session("EPQ31204000")="9" then
strPayload2=strPayload2&" Distress = 9/10  "
end if
if Session("EPQ31204000")="8" then
strPayload2=strPayload2&" Distress = 8/10 "
end if
if Session("EPQ31204000")="7" then
strPayload2=strPayload2&" Distress = 7/10 "
end if
if Session("EPQ31204000")="6" then
strPayload2=strPayload2&" Distress = 6/10 "
end if
if Session("EPQ31204000")="5" then
strPayload2=strPayload2&" Distress = 5/10  "
end if
if Session("EPQ31204000")="4" then
strPayload2=strPayload2&" Distress = 4/10 "
end if
if Session("EPQ31204000")="3" then
strPayload2=strPayload2&" Distress = 3/10 "
end if
if Session("EPQ31204000")="2" then
strPayload2=strPayload2&" Distress = 2/10  "
end if
if Session("EPQ31204000")="1" then
strPayload2=strPayload2&" Distress = 1/10 "
end if
if Session("EPQ31204000")="0" then
strPayload2=strPayload2&" Distress = 0/10 "
end if

FormatStringforSummary (strpayload2)

strpayload=strPayload&strpayload2&" \par"


strPayload=strPayload&" \par \tab Anticipated Problems \tab "

strpayload2=""
if Session("EPQ31205001")="1" then
strpayload2=strpayload2&", Childcare"
end if
if Session("EPQ31205004")="1" then
strpayload2=strpayload2&", Housing"
end if
if Session("EPQ31205007")="1" then
strpayload2=strpayload2&", Financial"
end if
if Session("EPQ31205010")="1" then
strpayload2=strpayload2&", Insurance"
end if
if Session("EPQ31205012")="1" then
strpayload2=strpayload2&", Transportation or driving"
end if
if Session("EPQ31205015")="1" then
strpayload2=strpayload2&", Work/School"
end if

if Session("EPQ31205002")="1" then
strpayload2=strpayload2&", Dealing with children"
end if
if Session("EPQ31205005")="1" then
strpayload2=strpayload2&", Dealing with partner"
end if
if Session("EPQ31205008")="1" then
strpayload2=strpayload2&", Dealing with other family"
end if

if Session("EPQ31205003")="1" then
strpayload2=strpayload2&", Depression"
end if
if Session("EPQ31205006")="1" then
strpayload2=strpayload2&", Fear/ being scared"
end if
if Session("EPQ31205009")="1" then
strpayload2=strpayload2&", Anxiety or nervousness"
end if
if Session("EPQ31205011")="1" then
strpayload2=strpayload2&", Sadness"
end if
if Session("EPQ31205170")="1" then
strpayload2=strpayload2&", Irritability or anger"
end if
if Session("EPQ31205014")="1" then
strpayload2=strpayload2&", Worry"
end if

if Session("EPQ31205013")="1" then
strpayload2=strpayload2&", Loss of faith"
end if
if Session("EPQ31205016")="1" then
strpayload2=strpayload2&", Relating to God"
end if
if Session("EPQ31205018")="1" then
strpayload2=strpayload2&", Meaning of illness"
end if

if len(Session("EPQ31205017specify")) > 0 then
strpayload2=strpayload2&", "&Session("EPQ31205017specify")&" "
end if
if Session("EPQ31205000")="1" then
strpayload2=strPayload2&", None"
end if

strpayload2 = Right(strpayload2, Len(strpayload2) - 2)
FormatStringforSummary (strpayload2)

strpayload=strPayload&strpayload2&" \par"


strPayload=strPayload&" \tab Fertility \tab\tab\tab "
strpayload2=""
if Session("EPQ31206000")="1" then
strPayload2=strPayload2&"PT is considering having a child in the future, "
end if
if Session("EPQ31206000")="0" then
strPayload2=strPayload2&"PT is not considering having a child in the future, "
end if
if Session("EPQ31206000")="88" then
strPayload2=strPayload2&"PT not sure about having a child in the future, "
end if
if Session("EPQ31207000")="1" then
strPayload2=strPayload2&"PT wants to seek fertility counseling"
end if
if Session("EPQ31207000")="0" then
strPayload2=strPayload2&"PT not interested in fertility counseling"
end if
if Session("EPQ31207000")="88" then
strPayload2=strPayload2&"PT not sure about fertility counseling"
end if
FormatStringforSummary (strpayload2)

strpayload=strPayload&strpayload2&" \par"



strPayload=strPayload&" \ul\b\fs24\par Quality of Life \par "
strPayload=strPayload&"\ulnone\b0\fs20\tab ECOG PS: "
'Quality of Life
if Session("EPQ31301000")="1" then
strPayload=strPayload&" 0 (normal activity) "
end if
if Session("EPQ31301000")="2" then
strPayload=strPayload&" 1 (restricted activity)"
end if
if Session("EPQ31301000")="3" then
strPayload=strPayload&" 2 (unable to work) "
end if
if Session("EPQ31301000")="4" then
strPayload=strPayload&" 3 (limited selfcare)  "
end if
if Session("EPQ31301000")="5" then
strPayload=strPayload&" 4 (completely disabled) "
end if

if Session("EPQ31302000")="5" then
strPayload=strPayload& "  \par \tab Perceives self to be in poor health "
end if

if  Session("EPQ31303000")="1" OR Session("EPQ31303000")="2" OR Session("EPQ31304000")="1" OR Session("EPQ31304000")="2" OR Session("EPQ31305000")="1" OR Session("EPQ31306000")="1" then

strPayload=strPayload&" \par \tab Physical restrictions on activities "

end if

if Session("EPQ31307000")="1" OR Session("EPQ31308000")="1" then
strPayload=strPayload&"  \par  \tab Emotional restrictions on activities "
end if

if Session("EPQ31309000")="4" OR Session("EPQ31309000")="5" then
strPayload=strPayload&" \par  \tab Pain "
end if

if Session("EPQ31310000")="5" OR Session("EPQ31310000")="6" then
strPayload=strPayload&" \par  \tab Anxiety "
end if
if Session("EPQ31311000")="5" OR Session("EPQ31311000")="6" then
strPayload=strPayload&" \par  \tab Fatigue "
end if
if Session("EPQ31312000")="5" OR Session("EPQ31312000")="6" then
strPayload=strPayload&" \par  \tab Depression "
end if
if Session("EPQ31313000")="1" OR Session("EPQ31313000")="2" then
strPayload=strPayload&" \par  \tab Poor social functioning "
end if

if Session("HM11344000")="1" then
strPayload=strPayload&" \par  \tab Patient lives in House/Apartment "
end if

if Session("HM11344000")="2" then
strPayload=strPayload&" \par  \tab Patient lives in Assisted Living Facility "
end if

if Session("HM11344000")="3" then
strPayload=strPayload&" \par  \tab Patient lives in Nursing home "
end if

%>


<!--#include file="scalescoring.asp"-->
<!--#include file="giscoring.asp"-->
<!--#include file="hemescoring.asp"-->
<%


		strPayload=strPayload&""


dim strDateTime2

	dim CompletionDateStamp2
	if hourofday=23 then 
	CompletionDateStamp2 = Year(Now()+1)&"-"&Month(Now()+1)&"-"&Day(Now()+1)
	else
	CompletionDateStamp2 = Year(Now())&"-"&Month(Now())&"-"&Day(Now())
	end if
'HERE
	if hourofday=23 then 
	Session("strDateTime2") = right("0" & Month(Now()+1),2) &" / " & right("0" & Day(Now()+1),2) &" / "& Year(Now()+1) &" at " & right("00",2) &":" & right("0" & Minute(dtNow),2) &":" & right("0" & Second(dtNow),2)

	else
	Session("strDateTime2") = right("0" & Month(dtNow),2) &" / " & right("0" & Day(dtNow),2) &" / "& Year(dtNow) &" at " & right("0" & Hour(dtNow)+1,2) &":" & right("0" & Minute(dtNow),2) &":" & right("0" & Second(dtNow),2)

	end if


		strPayload=strPayload&" \par \tab "&Session("EPQ30206000string")&Session("EPQ30207000string")&""&Session("EPQ30208000")&" "&Session("EPQ30209000")&" on "&Session("strDateTime2")& " \par "

		strPayload=strPayload&" \par ZZZ2"

dim TXN
if Session("SurveyVersion")="Thoracic" then
Session("TXN")="TN^EPQ Plus Thoracic Questionnaire"
else
Session("TXN")="TR^EPQ Questionnaire"
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
Session("TXN")="CN^EPQ Plus Cutaneous Questionnaire"
end if
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
Session("TXN")="GU^EPQ Plus GU Questionnaire"
end if
end if

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
Session("TXN")="GI^EPQ Plus GI Questionnaire"
end if
end if


if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
Session("TXN")="HE^EPQ Plus HEME Questionnaire"
end if
end if

strPayload=Replace(strPayload,"}","")
strPayload=Replace(strPayload,"{","")
strPayload=Replace(strPayload,"|",":")
strPayload=Replace(strPayload,"^","")
strPayload=Replace(strPayload,"~","")
'strPayload=Replace(strPayload,"\",":")
strPayload=Replace(strPayload,"&amp;","and")
strPayload=Replace(strPayload,"amp;","")
strPayload=Replace(strPayload,"&","")

strPayload=Replace(strPayload,"ZZZ1","{")
strPayload=Replace(strPayload,"ZZZ2","}")



		strHL7Content = "MSH|^~\&|IMHNARRATIVE|Primetime Medical|||"&strHL7DateTime&"||MDM^T02|"&strHL7DateTime&"|P|2.3|||AL||"&chr(&H0d)
		strHL7Content = strHL7Content & "PID|||"&Session("PatientID")&"||"&Session("strLastName")&"^"&Session("FirstName")&"||"&Session("strDOBYear")&Session("strDOBMonth")&Session("strDOBDay")&"|"&Session("Gender")&"||||||||||||"&chr(&H0d)
'		strHL7Content = strHL7Content&"TXA|1|"&Session("TXN")&"|TX|"&strHL7DateTime&"|"&Session("Upin1")&"|||||"&Session("Upin1")&"||"&strHL7DateTime&Session("strDOBDay")&Session("strDOBYear")&"|||||"&Session("SurveyStatus")&"|U|AV|||" &chr(&H0d)
if len(Session("AppointmentID"))< 1 then
	Session("AppointmentID")="ReferenceID"
end if
		strHL7Content = strHL7Content&"TXA|1|"&Session("TXN")&"|TX|"&strHL7DateTime&"|"&Session("Upin1")&"|||||"&Session("Upin1")&"||"&Session("AppointmentID")&"|||||"&Session("SurveyStatus")&"|U|AV|||" &chr(&H0d)

		strHL7Content = strHL7Content &"OBX|1|ED|TN||^^RTF^^"
		strHL7Content = strHL7Content & strPayLoad &"||||||IP|||"&strHL7DateTime&chr(&H0d)
		strHL7Content = strHL7Content &chr(&H0d)


			dim HL7OutputFile

			set HL7OutputFile = aFSOHL7.OpenTextFile (strHL7ReportFileSpec, 2, True)
			set HL7OutputFile = aFSOHL7.OpenTextFile (strHL7ReportFileSpec, 2, True)
			HL7OutputFile.write strHL7Content
			HL7OutputFile.Close

			dim RTFOutputFile

			set RTFOutputFile = aFSOHL7.OpenTextFile (strHL7ReportFileSpec2, 2, True)
			set RTFOutputFile = aFSOHL7.OpenTextFile (strHL7ReportFileSpec2, 2, True)
			RTFOutputFile.write strPayload
			RTFOutputFile.Close



	set aFSOHL7 = nothing

' Done with HL7
'--------------

' Write report to XML file

	' Create a unique output filename
	dim strXMLReportFilename
	dim strEODXMLReportFilename

	' File extension
	dim strXMLReportFileExt
	strXMLReportFileExt = ".xml"


	set aFSOXML = Server.CreateObject("Scripting.FileSystemObject")

	dim strXMLReportFilespec
	dim strEODXMLReportFilespec

	dim strReportPathXML
	dim strReportPathEODXML

if Session("ProductionMode")="1" then 
	strReportPathEODXML = "c:\cernerclinicHL7outbox\moffittprod\xml\"

	   strReportPathXML = "c:\cernerclinicHL7outbox\moffittprod\sent\"

else
	   strReportPathEODXML = "c:\cernerclinicHL7outbox\moffitcert\xml\"

	   strReportPathXML = "c:\cernerclinicHL7outbox\moffitcert\sent\"
end if

	dim iTry2
	iTry2 = 0

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	strXMLReportFilename = "MCC_CUTANEOUS_"&strDateTime & "-" & right("0" & iTry,2)
end if
end if

if Session("SurveyVersion")="Thoracic" then
	strXMLReportFilename = "MCC_THORACIC_"&strDateTime & "-" & right("0" & iTry,2)
end if
if Session("SurveyVersion")="EPQ" then
	strXMLReportFilename = "MCC_EPQ_"&strDateTime & "-" & right("0" & iTry,2)
end if

if Session("SurveyVersion")="GI" then
	strXMLReportFilename = "MCC_GI_"&strDateTime & "-" & right("0" & iTry,2)
end if

if Session("SurveyVersion")="GU" then
	strXMLReportFilename = "MCC_GU_"&strDateTime & "-" & right("0" & iTry,2)
end if

if Session("SurveyVersion")="HEME" then
	strXMLReportFilename = "MCC_HEMM_"&strDateTime & "-" & right("0" & iTry,2)
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	strXMLReportFilename = "MCC_GU_"&strDateTime & "-" & right("0" & iTry,2)
end if
end if


	strEODXMLReportFilename = Session("PatientID")


	strXMLReportFilespec = strReportPathXML & "\" & strXMLReportFilename & strXMLReportFileExt


if Session("SurveyVersion")="HEME" then
	strEODXMLReportFilespec = strReportPathEODXML & "\HEME\" & strEODXMLReportFilename & strXMLReportFileExt
end if

if Session("SurveyVersion")="GU" then
	strEODXMLReportFilespec = strReportPathEODXML & "\EPQ\" & strEODXMLReportFilename & strXMLReportFileExt
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	strEODXMLReportFilespec = strReportPathEODXML & "\GU\" & strEODXMLReportFilename & strXMLReportFileExt
end if
end if

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
	strEODXMLReportFilespec = strReportPathEODXML & "\GI\" & strEODXMLReportFilename & strXMLReportFileExt
end if
end if

if Session("SurveyVersion")="Thoracic" then
	strEODXMLReportFilespec = strReportPathEODXML & "\" & strEODXMLReportFilename & strXMLReportFileExt
end if
if Session("SurveyVersion")="EPQ" then
	strEODXMLReportFilespec = strReportPathEODXML & "\EPQ\" & strEODXMLReportFilename & strXMLReportFileExt
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	strEODXMLReportFilespec = strReportPathEODXML & "\CUTANEOUS\" & strEODXMLReportFilename & strXMLReportFileExt
end if
end if

	while iTry2 < 100 and aFSOXML.FileExists(strXMLReportFilespec)
		iTry2 = iTry2 + 1

if Session("SurveyVersion")="Thoracic" then
		strReportXMLFilename = "MCC_THORACIC_"&strDateTime & "-" & right("0" & iTry2,2)
end if

if Session("SurveyVersion")="GU" then
		strReportXMLFilename = "MCC_EPQ_"&strDateTime & "-" & right("0" & iTry2,2)
end if

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
		strReportXMLFilename = "MCC_GU_"&strDateTime & "-" & right("0" & iTry2,2)
end if
end if

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
		strReportXMLFilename = "MCC_GI_"&strDateTime & "-" & right("0" & iTry2,2)
end if
end if

if Session("SurveyVersion")="EPQ" then
		strReportXMLFilename = "MCC_EPQ_"&strDateTime & "-" & right("0" & iTry2,2)
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
		strReportXMLFilename = "MCC_EPQ_"&strDateTime & "-" & right("0" & iTry2,2)
end if
end if

		strReportXMLFilespec = strReportPath & "\" & strXMLReportFilename & strXMLReportFileExt
	wend

	Session("AdministrationDateFinish")=strDateTime
	Session("ETLTrackingID")=Session("PatientID")&strDateTime
	dim strXMLContent


Session("Language")="English"
Session("ProviderLocation")="Tampa"
Session("ProviderName")="Doctor"

	strXMLContent="<?xml version="&"""1.0"""&" encoding="&"""UTF-8"""&"?>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Primetime_Screening xmlns="&"""http://www.medicalhistory.com/PrimetimeScreening"""&" xmlns:xsi="&"""http://www.w3.org/2001/XMLSchema-instance"""&">"& chr(&H0d)
	strXMLContent=strXMLContent&"<Version_Info><ETLTrackingID>"&Session("ETLTrackingID")&"</ETLTrackingID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<QuestionWeb_Build>"&Session("Version")&"</QuestionWeb_Build>"& chr(&H0d)

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"Cutaneous"&"</QuestionnaireName>"& chr(&H0d)
end if
end if

if Session("SurveyVersion")="Thoracic" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"Thoracic"&"</QuestionnaireName>"& chr(&H0d)
end if
if Session("SurveyVersion")="EPQ" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"EPQ"&"</QuestionnaireName>"& chr(&H0d)
end if
if Session("SurveyVersion")="GU" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"GU"&"</QuestionnaireName>"& chr(&H0d)
end if

if Session("SurveyVersion")="GI" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"GI"&"</QuestionnaireName>"& chr(&H0d)
end if

if Session("SurveyVersion")="HEME" then
	strXMLContent=strXMLContent&"<QuestionnaireName>"&"HEMM"&"</QuestionnaireName>"& chr(&H0d)
end if

'STATUS TRANSFORMATION

	Session("DemographicsSectionStatus2")=Session("DemographicsSectionStatus")
	Session("VisitBackgroundSectionStatus2")=	Session("VisitBackgroundSectionStatus")
	Session("PersonalHistoryCancerSectionStatus2")=	Session("PersonalHistoryCancerSectionStatus")
	Session("PastMedicalHistorySectionStatus2")=Session("PastMedicalHistorySectionStatus")
	Session("WomensRiskAssessmentSectionStatus2")=Session("WomensRiskAssessmentSectionStatus")

	Session("WomensRiskScreeningSectionStatus2")=Session("WomensRiskScreeningSectionStatus")

	Session("PastSurgicalHistorySectionStatus2")=Session("PastSurgicalHistorySectionStatus")

	Session("CancerHistoryFamilySectionStatus2")=Session("CancerHistoryFamilySectionStatus")

	Session("FamilyHistoryCancerSectionStatus2")=Session("FamilyHistoryCancerSectionStatus")
	Session("FamilyHistorySectionStatus2")=Session("FamilyHistorySectionStatus")

	Session("CancerScreeningSectionStatus2")=Session("CancerScreeningSectionStatus")
	Session("CurrentSymptomsSectionStatus2")=Session("CurrentSymptomsSectionStatus")
	Session("CancerRiskSectionStatus2")=Session("CancerRiskSectionStatus")
	Session("PsychosocialSectionStatus2")=Session("PsychosocialSectionStatus")
	Session("QOLSectionStatus2")=Session("QOLSectionStatus")

'END STATUS TRANSFORMATION

if Session("DemographicsSectionStatus")="" then
	Session("DemographicsSectionStatus2")="NotStarted"
end if
if Session("VisitBackgroundSectionStatus")="" then
	Session("VisitBackgroundSectionStatus2")="NotStarted"
end if
if Session("PersonalHistoryCancerSectionStatus")="" then
	Session("PersonalHistoryCancerSectionStatus2")="NotStarted"
end if
if Session("PastMedicalHistorySectionStatus")="" then
	Session("PastMedicalHistorySectionStatus2")="NotStarted"
end if
if Session("WomensRiskAssessmentSectionStatus")="" then
	Session("WomensRiskAssessmentSectionStatus2")="NotStarted"
end if
if Session("WomensRiskScreeningSectionStatus")="" then
	Session("WomensRiskScreeningSectionStatus2")="NotStarted"
end if

if Session("PastSurgicalHistorySectionStatus")="" then
	Session("PastSurgicalHistorySectionStatus2")="NotStarted"
end if
if Session("CancerHistoryFamilySectionStatus")="" then
	Session("CancerHistoryFamilySectionStatus2")="NotStarted"
end if
if Session("FamilyHistoryCancerSectionStatus")="" then
	Session("FamilyHistoryCancerSectionStatus2")="NotStarted"
end if
if Session("FamilyHistorySectionStatus")="" then
	Session("FamilyHistorySectionStatus2")="NotStarted"

end if
if Session("CancerScreeningSectionStatus")="" then 
	Session("CancerScreeningSectionStatus2")="NotStarted"
end if
if Session("CurrentSymptomsSectionStatus")="" then 
	Session("CurrentSymptomsSectionStatus2")="NotStarted"
end if
if Session("CancerRiskSectionStatus")="" then 
	Session("CancerRiskSectionStatus2")="NotStarted"
end if
if Session("PsychosocialSectionStatus")="" then 
	Session("PsychosocialSectionStatus2")="NotStarted"
end if
if Session("QOLSectionStatus")="" then
	Session("QOLSectionStatus2")="NotStarted"
end if



	strXMLContent=strXMLContent&"<MachineID>"&Session("MachineID")&"</MachineID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<AppointmentID>"&Session("AppointmentID")&"</AppointmentID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<AppointmentLocation>"&Session("AppointmentLocation")&"</AppointmentLocation>"& chr(&H0d)
	strXMLContent=strXMLContent&"<AdministrationDateStart>"&Session("AdministrationDateStart")&"</AdministrationDateStart>"& chr(&H0d)
	strXMLContent=strXMLContent&"<AdministrationDateFinish>"&Session("AdministrationDateFinish")&"</AdministrationDateFinish>"& chr(&H0d)
	strXMLContent=strXMLContent&"<StaffUserID>"&Session("StaffUserID")&"</StaffUserID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<StaffDate>"&Session("StaffDate")&"</StaffDate>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ProtocolNumber>14453</ProtocolNumber>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Language>"&Session("Language")&"</Language></Version_Info>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Status>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module1>"&Session("DemographicsSectionStatus2")&"</Module1>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module2>"&Session("VisitBackgroundSectionStatus2")&"</Module2>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module3>"&Session("PersonalHistoryCancerSectionStatus2")&"</Module3>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module4>"&Session("PastMedicalHistorySectionStatus2")&"</Module4>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module5>"&Session("CurrentSymptomsSectionStatus2")&"</Module5>"& chr(&H0d)
if Session("Gender")="F" then
	strXMLContent=strXMLContent&"<Module6>"&Session("WomensRiskScreeningSectionStatus2")&"</Module6>"& chr(&H0d)
end if
if Session("Gender")="M" then
	strXMLContent=strXMLContent&"<Module6>"&"Not Applicable"&"</Module6>"& chr(&H0d)
end if

	strXMLContent=strXMLContent&"<Module7>"&Session("PastSurgicalHistorySectionStatus2")&"</Module7>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module8>"&Session("FamilyHistoryCancerSectionStatus2")&"</Module8>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module9>"&Session("FamilyHistorySectionStatus2")&"</Module9>"& chr(&H0d)
'	strXMLContent=strXMLContent&"<Module10>"&Session("CancerscreeningSectionStatus2")&"</Module10>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module11>"&Session("CancerRiskSectionStatus2")&"</Module11>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module12>"&Session("PsychosocialSectionStatus2")&"</Module12>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Module13>"&Session("QOLSectionStatus2")&"</Module13>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Survey>"&Session("SurveyStatus")&"</Survey>"& chr(&H0d)
	strXMLContent=strXMLContent&"</Status>"& chr(&H0d)

'RESET STATUS
'STATUS TRANSFORMATION
	Session("DemographicsSectionStatus2")=""
	Session("VisitBackgroundSectionStatus2")=""
	Session("PersonalHistoryCancerSectionStatus2")=""
	Session("PastMedicalHistorySectionStatus2")=""
	Session("WomensRiskAssessmentSectionStatus2")=""
	Session("WomensRiskScreeningSectionStatus2")=""
	Session("PastSurgicalHistorySectionStatus2")=""
	Session("CancerHistoryFamilySectionStatus2")=""
	Session("FamilyHistoryCancerSectionStatus2")=""
	Session("FamilyHistorySectionStatus2")=""
	Session("CancerScreeningSectionStatus2")=""
	Session("CurrentSymptomsSectionStatus2")=""
	Session("CancerRiskSectionStatus2")=""
	Session("PsychosocialSectionStatus2")=""
	Session("QOLSectionStatus2")=""

	dim SurveyVersionNumber
if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	SurveyVersionNumber="2"
end if
end if

if Session("SurveyVersion")="GU" then
	SurveyVersionNumber="2"
end if
if Session("SurveyVersion")="Thoracic" then
	SurveyVersionNumber="2"
end if

if Session("SurveyVersion")="HEME" then
	SurveyVersionNumber="2"
end if

if Session("SurveyVersion")="GI" then
	SurveyVersionNumber="2"
end if
if Session("SurveyVersion")="EPQ" then
	SurveyVersionNumber="4"
end if

'END RESET STATUS
	strXMLContent=strXMLContent&"<Patient>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ETLTrackingID>"&Session("ETLTrackingID")&"</ETLTrackingID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Name>"&Session("PatientsName")&"</Name><Gender>"&Session("Gender")&"</Gender>"& chr(&H0d)
	strXMLContent=strXMLContent&"<DOB>"&Session("strDOBYear")&Session("strDOBMonth")&Session("strDOBDay")&"</DOB>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ID>"&Session("PatientID")&"</ID></Patient>"& chr(&H0d)
	strXMLContent=strXMLContent&""& chr(&H0d)

	strXMLContent=strXMLContent&"<Provider>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ETLTrackingID>"&Session("ETLTrackingID")&"</ETLTrackingID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ProviderID>"&Session("UPIN1")&"</ProviderID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ProviderName>"&Session("ProviderName")&"</ProviderName>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ProviderLocation>"&Session("ProviderLocation")&"</ProviderLocation>"& chr(&H0d)
	strXMLContent=strXMLContent&"</Provider>"& chr(&H0d)

	strXMLContent=strXMLContent&"<Report>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Chief_Complaint>"& chr(&H0d)
	strXMLContent=strXMLContent&"<ETLTrackingID>"&Session("ETLTrackingID")&"</ETLTrackingID>"& chr(&H0d)
	strXMLContent=strXMLContent&"<Heading>"&"EPQ"&"</Heading>"& chr(&H0d)
	strXMLContent=strXMLContent&"</Chief_Complaint>"& chr(&H0d)
	strXMLContent=strXMLContent&"</Report>"& chr(&H0d)

		strXMLContent=strXMLContent&"<Findings>"& chr(&H0d)


'END OF XML


%>
<!--#include file="xmldetails.asp"-->
<!--#include file="guxml.asp"-->
<!--#include file="hemexml.asp"-->
<%
		strXMLContent=strXMLContent&"</Findings>"& chr(&H0d)


	strXMLContent=strXMLContent&"</Primetime_Screening>"& chr(&H0d)

strXMLContent=Replace(strXMLContent,"&amp;","and")
strXMLContent=Replace(strXMLContent,"amp;","")


			dim XMLOutputFile
			set XMLOutputFile = aFSOXML.OpenTextFile (strXMLReportFileSpec, 2, True)
			XMLOutputFile.write strXMLContent
			XMLOutputFile.Close

			dim EODXMLOutputFile
			set EODXMLOutputFile = aFSOXML.OpenTextFile (strEODXMLReportFileSpec, 2, True)
			EODXMLOutputFile.write strXMLContent
			EODXMLOutputFile.Close

	set aFSOXML = nothing

' Done with XML
'--------------

Session("Page")="0"


if Session("ReportStatus")="Reprocessed" then
Response.redirect "reportrequestcomplete.asp"
else
Response.redirect "questionnairecomplete.asp"
end if

if Session("KioskMode")=1 then 
if Session("ProductionMode")="1" then 
Session("ReturnURL")="https://moffitt.visitmanagertool.com"
	else
	Session("ReturnURL")="https://www.visitmanagertool.com"

	end if
Response.redirect Session("ReturnURL")
end if


	if len(Session("ReturnURL"))> 0 then
	else
		Response.redirect "questionnairecomplete.asp"
	end if
		Response.redirect "questionnairecomplete.asp"

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<meta name=vs_targetSchema content="http://schemas.microsoft.com/intellisense/ie5">
		<title></title>
		<LINK href="cerner.css" type="text/css" rel="stylesheet">
		<script language="javascript" TYPE="text/javascript">

		function closeAndStop
		{
			self.close();
			parent.close();
			return false;
		}
		</script>
	</HEAD>
	<body>
						<td><img border="0" src="moffitt.gif" ></td>
			</table>
												<table class="DialogCommands" ID="Table6">
													<tr class="ReportDialogCommands">
														<td>
														</td>
													</tr>

			<TABLE class="SiteFooter" ID="Table7">
				<TR>
					<TD class="SiteFooterText">
						<P>&#64;2016&nbsp;Primetime Medical Software, Inc. All rights reserved.</P>
					</TD>
				</TR>
			</TABLE>
		    <input type="hidden" name="ispostback" value="1" ID="Hidden1">
		</form>
	</body>
</HTML>
