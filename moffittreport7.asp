<%@ LANGUAGE=VBScript %>
<% option explicit %>
<% on error resume next %>

<!--#include file="include/productionmode.asp"-->
<!--#include file="include/db_connection.asp"-->


<%
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

If Not IsNull(Session("EPQ30103001")) then
	Session("EPQ30103001")=Server.HTMLEncode(Session("EPQ30103001"))
							end if 
If Not IsNull(Session("EPQ30103002")) then
	Session("EPQ30103002")=Server.HTMLEncode(Session("EPQ30103002"))
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

dim myoutput
dim remainingsize

Dim columnLength
columnlength = 55

Dim columnLength2
columnlength2 = 50

Dim columnLength2b
columnlength2b = 51

Dim columnLength3
columnLength3 = 85

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

	if ( lastSpaceInColumn = columnlength3 ) then
		column4 = RTrim( column4)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column4, columnlength3 - lastSpaceInColumn ) + myString
	column4 = Left( column4, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength3 then
	column5 = Left( myString, columnlength3 )
	remainingSize = Len( myString ) - columnlength3
	myString = Right(myString,remainingSize)
	lastSpaceInColumn = InStrRev(column5, " " )
	firstSpaceInRemaining = InStr(column5, " " )

	if ( lastSpaceInColumn = columnlength3 ) then
		column5 = RTrim( column5)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column5, columnlength3 - lastSpaceInColumn ) + myString
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

	myString = Right( column6, columnlength3 - lastSpaceInColumn ) + myString
	column6 = Left( column6, lastSpaceInColumn )

	end if
	end if

	if len(myString)>columnlength3 then
	column7 = Left( myString, columnlength3 )
	remainingSize = Len( myString ) - columnlength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column7, " " )
	firstSpaceInRemaining = InStr(column7, " " )

	if ( lastSpaceInColumn = columnlength3 ) then
		column7 = RTrim( column7)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column7, columnlength3 - lastSpaceInColumn ) + myString
	column7 = Left( column7, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength3 then
	column8 = Left( myString, columnlength3 )
	remainingSize = Len( myString ) - columnlength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column8, " " )
	firstSpaceInRemaining = InStr(column8, " " )

	if ( lastSpaceInColumn = columnlength3 ) then
		column8 = RTrim( column8)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column8, columnlength3 - lastSpaceInColumn ) + myString
	column8 = Left( column8, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnLength3 then
	column9 = Left( myString, columnLength3 )
	remainingSize = Len( myString ) - columnlength3
	myString = Right( myString, remainingSize )
	lastSpaceInColumn = InStrRev(column9, " " )
	firstSpaceInRemaining = InStr(column9, " " )

	if ( lastSpaceInColumn = columnlength3 ) then
		column9 = RTrim( column9)
	elseif ( firstSpaceInRemaining = 0 ) then
		myString = LTrim( myString )
	else

	myString = Right( column9, columnlength3 - lastSpaceInColumn ) + myString
	column9 = Left( column9, lastSpaceInColumn )

	end if
	end if

	if len(myString)> columnlength3 then
	column10 = Left( myString, columnlength3 )
	remainingSize = Len( myString ) - columnlength3
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

	myoutput=column&" \par "
	if len(column2) > 0 then
		myoutput=myoutput&" \tab "&column2
	end if
	if len(column3) > 0 then
		myoutput=myoutput&" \tab "&column3
	end if
	if len(column4) > 0 then
		myoutput=myoutput&" \tab "&column4
	end if
	if len(column5) > 0 then
		myoutput=myoutput&" \tab "&column5
	end if
	if len(column6) > 0 then
		myoutput=myoutput&" \tab "&column6
	end if
	if len(column7) > 0 then
		myoutput=myoutput&" \tab "&column7
	end if
	if len(column8) > 0 then
		myoutput=myoutput&" \tab "&column8
	end if
	if len(column9) > 0 then
		myoutput=myoutput&" \tab "&column9
	end if
	if len(column10) > 0 then
		myoutput=myoutput&" \tab "&column10
	end if
	if len(column11) > 0 then
		myoutput=myoutput&" \tab "&column11
	end if
	if len(column12) > 0 then
		myoutput=myoutput&" \tab "&column12
	end if

	if len(mystring) > 0 then
		myoutput=myoutput&" \tab "&mystring
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
'	strReportPath = "c:\cernerclinicHL7outbox\moffitt\cert\"

'	strReportPath = "c:\cernerclinicHL7outbox\moffit\cert"
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
		strPayload="{\rtf1\ansi\ansicpg1252\deff0\deflang1033{\fonttbl{\f0\fswiss\fcharset0 Arial;}}"
		strPayload=strPayload&"{\*\generator Msftedit 5.41.21.2509;}\viewkind4\uc1\pard\qc\b\f0\fs28 Patient Questionnaire Responses \par \par"

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


dim strPayloadbuild
strPayloadbuild = ""
'Session("DOBMonth") = strPatientDOBMonth
'Session("DOBDay") = strPatientDOBDay
'Session("DOBYear") = strPatientDOBYear

		strPayload=strPayload&"\pard\fs20 Demographics\tab\tab\tab\b0 "

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
	strPayloadbuild=strPayloadbuild&", "&session("EPQ30103002")
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
strpayload=strpayload & strPHCGroup & " \tab Other Cancer \tab\tab\tab "&Session("EPQ30342000")&"Y"
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


	if Session("EPQ30401005") = "1" and Session("EPQ30402160")= "1" then
		strPayload=strPayload&" \tab None reported"&" \par "
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
'	if Session("EPQ30401005") = 1 then
'		strPayload=strPayload&" \tab None reported"&" \par "
'	end if
	if Session("EPQ30401006") = "77" then
		strPayload=strPayload&" \tab PT needs help answering previous infections"&" \par "
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


%>


<!--#include file="scalescoring.asp"-->

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


		strPayload=strPayload&" \par \tab "&Session("EPQ30206000string")&Session("EPQ30207000string")&" "&Session("EPQ30208000")&" "&Session("EPQ30209000")&" on "&Session("strDateTime2")& " \par "

		strPayload=strPayload&" \par }"

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

strPayload=Replace(strPayload,"|",":")
strPayload=Replace(strPayload,"^","")
strPayload=Replace(strPayload,"~","")
'strPayload=Replace(strPayload,"\",":")
strPayload=Replace(strPayload,"&amp;","and")
strPayload=Replace(strPayload,"amp;","")
strPayload=Replace(strPayload,"&","")



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



	strEODXMLReportFilename = Session("PatientID")


	strXMLReportFilespec = strReportPathXML & "\" & strXMLReportFilename & strXMLReportFileExt

	while iTry2 < 100 and aFSOXML.FileExists(strXMLReportFilespec)
		iTry2 = iTry2 + 1

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
'END RESET STATUS


MARK MARK




'END OF XML
%>

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
		Session("ReturnURL")="http://www.ihealthinterview.com\visitmanagercert\testremotelogin.asp"
	end if
		Response.redirect "questionnairecomplete.asp"
		Response.redirect Session("ReturnURL")

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
						<P>&#64;2010&nbsp;Primetime Medical Software, Inc. All rights reserved.</P>
					</TD>
				</TR>
			</TABLE>
		    <input type="hidden" name="ispostback" value="1" ID="Hidden1">
		</form>
	</body>
</HTML>
