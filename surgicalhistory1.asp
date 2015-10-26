
<%


Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30701020")="1" then
		strEPQ30701020yes="checked"
	end if
	if Session("EPQ30701020")="0" then
		strEPQ30701020no="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30701020string")= ""

	Session("EPQ30701020") = Request.Form("EPQ30701020")
end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"

	Session("PastSurgicalHistorySectionStatus")=""

	If session("gender")="M" then
		if Session("KioskMode")= 1 then
		Session("Page")=33
		Response.Redirect "currentsymptomsmaster.asp"
		end if

		if Session("KioskMode")= 2 then
		Session("Page")=33
		Response.Redirect "currentsymptomsmaster.asp"
		end if

		Session("Page")=33
		Response.Redirect "currentsymptomsmaster.asp"
	end if

	If session("gender")="F" then
	if Session("EPQ30619000")="1" then
	if Session("EPQ30621000")= "0" then
	Session("Page")="15"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
	
	else
	Session("Page")="16"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
	end if
	end if


	Session("Page")="14"
	Response.Redirect "womensriskmaster.asp"
	end if

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30701020")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30701020")="0" then

		Session.Contents.Remove("EPQ30754000")
		Session.Contents.Remove("EPQ30754040")
		Session.Contents.Remove("EPQ30754020")
		Session.Contents.Remove("EPQ30754030")

		Session.Contents.Remove("EPQ30754050")
		Session.Contents.Remove("EPQ30754090")
		Session.Contents.Remove("EPQ30754070")
		Session.Contents.Remove("EPQ30754080")

		Session.Contents.Remove("EPQ30754100")
		Session.Contents.Remove("EPQ30754140")
		Session.Contents.Remove("EPQ30754120")
		Session.Contents.Remove("EPQ30754130")

		Session.Contents.Remove("EPQ30754150")
		Session.Contents.Remove("EPQ30754190")
		Session.Contents.Remove("EPQ30754170")
		Session.Contents.Remove("EPQ30754180")

		Session.Contents.Remove("EPQ30754200")
		Session.Contents.Remove("EPQ30754240")
		Session.Contents.Remove("EPQ30754220")
		Session.Contents.Remove("EPQ30754230")

		Session.Contents.Remove("EPQ30754250")
		Session.Contents.Remove("EPQ30754290")
		Session.Contents.Remove("EPQ30754270")
		Session.Contents.Remove("EPQ30754280")

		Session.Contents.Remove("EPQ30754300")
		Session.Contents.Remove("EPQ30754340")
		Session.Contents.Remove("EPQ30754320")
		Session.Contents.Remove("EPQ30754330")

		Session.Contents.Remove("EPQ30754350")
		Session.Contents.Remove("EPQ30754390")
		Session.Contents.Remove("EPQ30754370")
		Session.Contents.Remove("EPQ30754380")

		Session.Contents.Remove("EPQ30754400")
		Session.Contents.Remove("EPQ30754440")
		Session.Contents.Remove("EPQ30754420")
		Session.Contents.Remove("EPQ30754430")

		Session.Contents.Remove("EPQ30754450")
		Session.Contents.Remove("EPQ30754490")
		Session.Contents.Remove("EPQ30754470")
		Session.Contents.Remove("EPQ30754480")

		Session.Contents.Remove("EPQ30754500")
		Session.Contents.Remove("EPQ30754540")
		Session.Contents.Remove("EPQ30754520")
		Session.Contents.Remove("EPQ30754530")

		Session.Contents.Remove("EPQ30754550")
		Session.Contents.Remove("EPQ30754590")
		Session.Contents.Remove("EPQ30754570")
		Session.Contents.Remove("EPQ30754580")

		Session.Contents.Remove("EPQ30754600")
		Session.Contents.Remove("EPQ30754640")
		Session.Contents.Remove("EPQ30754620")
		Session.Contents.Remove("EPQ30754630")

		Session.Contents.Remove("EPQ30754650")
		Session.Contents.Remove("EPQ30754690")
		Session.Contents.Remove("EPQ30754670")
		Session.Contents.Remove("EPQ30754680")

		Session.Contents.Remove("EPQ30754700")
		Session.Contents.Remove("EPQ30754740")
		Session.Contents.Remove("EPQ30754720")
		Session.Contents.Remove("EPQ30754730")

		Session.Contents.Remove("EPQ30754750")
		Session.Contents.Remove("EPQ30754790")
		Session.Contents.Remove("EPQ30754770")
		Session.Contents.Remove("EPQ30754780")

		Session.Contents.Remove("EPQ30754800")
		Session.Contents.Remove("EPQ30754840")
		Session.Contents.Remove("EPQ30754820")
		Session.Contents.Remove("EPQ30754830")

		Session.Contents.Remove("EPQ30754850")
		Session.Contents.Remove("EPQ30754890")
		Session.Contents.Remove("EPQ30754870")
		Session.Contents.Remove("EPQ30754880")

		Session.Contents.Remove("EPQ30754900")
		Session.Contents.Remove("EPQ30754940")
		Session.Contents.Remove("EPQ30754920")
		Session.Contents.Remove("EPQ30754930")

		Session.Contents.Remove("EPQ30754950")
		Session.Contents.Remove("EPQ30754990")
		Session.Contents.Remove("EPQ30754970")
		Session.Contents.Remove("EPQ30754980")

		Session.Contents.Remove("EPQ30755000")
		Session.Contents.Remove("EPQ30755040")
		Session.Contents.Remove("EPQ30755020")
		Session.Contents.Remove("EPQ30755030")

		Session.Contents.Remove("EPQ30755050")
		Session.Contents.Remove("EPQ30755090")
		Session.Contents.Remove("EPQ30755070")
		Session.Contents.Remove("EPQ30755080")

		Session.Contents.Remove("EPQ30755100")
		Session.Contents.Remove("EPQ30755140")
		Session.Contents.Remove("EPQ30755120")
		Session.Contents.Remove("EPQ30755130")
		Session.Contents.Remove("EPQ30704000")
		Session.Contents.Remove("EPQ30705000")

		Session.Contents.Remove("EPQ30755150")
		Session.Contents.Remove("EPQ30755190")
		Session.Contents.Remove("EPQ30755170")
		Session.Contents.Remove("EPQ30755180")

		Session.Contents.Remove("EPQ30755200")
		Session.Contents.Remove("EPQ30755240")
		Session.Contents.Remove("EPQ30755220")
		Session.Contents.Remove("EPQ30755230")

		Session.Contents.Remove("EPQ30755250")
		Session.Contents.Remove("EPQ30755290")
		Session.Contents.Remove("EPQ30755270")
		Session.Contents.Remove("EPQ30755280")

		Session.Contents.Remove("EPQ30755300b")
		Session.Contents.Remove("EPQ30755340")
		Session.Contents.Remove("EPQ30755320")
		Session.Contents.Remove("EPQ30755330")

		Session.Contents.Remove("EPQ30755350")
		Session.Contents.Remove("EPQ30755390")
		Session.Contents.Remove("EPQ30755370")
		Session.Contents.Remove("EPQ30755380")

		Session.Contents.Remove("EPQ30755400")
		Session.Contents.Remove("EPQ30755440")
		Session.Contents.Remove("EPQ30755420")
		Session.Contents.Remove("EPQ30755430")

		Session.Contents.Remove("EPQ30755450")
		Session.Contents.Remove("EPQ30755490")
		Session.Contents.Remove("EPQ30755470")
		Session.Contents.Remove("EPQ30755480")

		Session.Contents.Remove("EPQ30755500")
		Session.Contents.Remove("EPQ30755540")
		Session.Contents.Remove("EPQ30755520")
		Session.Contents.Remove("EPQ30755530")

		Session.Contents.Remove("EPQ30755550")
		Session.Contents.Remove("EPQ30755590")
		Session.Contents.Remove("EPQ30755570")
		Session.Contents.Remove("EPQ30755580")

		Session.Contents.Remove("EPQ30755600")
		Session.Contents.Remove("EPQ30755640")
		Session.Contents.Remove("EPQ30755620")
		Session.Contents.Remove("EPQ30755630")

		Session.Contents.Remove("EPQ30755650")
		Session.Contents.Remove("EPQ30755690")
		Session.Contents.Remove("EPQ30755670")
		Session.Contents.Remove("EPQ30755680")

		Session.Contents.Remove("EPQ30755700")
		Session.Contents.Remove("EPQ30755740")
		Session.Contents.Remove("EPQ30755720")
		Session.Contents.Remove("EPQ30755730")

		Session.Contents.Remove("EPQ30755750")
		Session.Contents.Remove("EPQ30755790")
		Session.Contents.Remove("EPQ30755770")
		Session.Contents.Remove("EPQ30755780")

		Session.Contents.Remove("EPQ30755800")
		Session.Contents.Remove("EPQ30755840")
		Session.Contents.Remove("EPQ30755820")
		Session.Contents.Remove("EPQ30755830")

		Session.Contents.Remove("EPQ30755850")
		Session.Contents.Remove("EPQ30755890")
		Session.Contents.Remove("EPQ30755870")
		Session.Contents.Remove("EPQ30755880")

		Session.Contents.Remove("EPQ30755900")
		Session.Contents.Remove("EPQ30755940")
		Session.Contents.Remove("EPQ30755920")
		Session.Contents.Remove("EPQ30755930")

		Session.Contents.Remove("EPQ30755950")
		Session.Contents.Remove("EPQ30755990")
		Session.Contents.Remove("EPQ30755970")
		Session.Contents.Remove("EPQ30755980")

		Session.Contents.Remove("EPQ30756000b")
		Session.Contents.Remove("EPQ30756040")
		Session.Contents.Remove("EPQ30756020")
		Session.Contents.Remove("EPQ30756030")

		Session.Contents.Remove("EPQ30756050b")
		Session.Contents.Remove("EPQ30756090")
		Session.Contents.Remove("EPQ30756070")
		Session.Contents.Remove("EPQ30756080")

		Session.Contents.Remove("EPQ30756100b")
		Session.Contents.Remove("EPQ30756142")
		Session.Contents.Remove("EPQ30756122")
		Session.Contents.Remove("EPQ30756132")
		Session.Contents.Remove("EPQ30756141")
		Session.Contents.Remove("EPQ30756121")
		Session.Contents.Remove("EPQ30756131")
		Session.Contents.Remove("EPQ30756140")
		Session.Contents.Remove("EPQ30756120")
		Session.Contents.Remove("EPQ30756130")

		Session.Contents.Remove("EPQ30756150b")
		Session.Contents.Remove("EPQ30756192")
		Session.Contents.Remove("EPQ30756172")
		Session.Contents.Remove("EPQ30756182")
		Session.Contents.Remove("EPQ30756191")
		Session.Contents.Remove("EPQ30756171")
		Session.Contents.Remove("EPQ30756181")
		Session.Contents.Remove("EPQ30756190")
		Session.Contents.Remove("EPQ30756170")
		Session.Contents.Remove("EPQ30756180")

		Session.Contents.Remove("EPQ30756200b")
		Session.Contents.Remove("EPQ30756240")
		Session.Contents.Remove("EPQ30756220")
		Session.Contents.Remove("EPQ30756230")

		Session.Contents.Remove("EPQ30756250")
		Session.Contents.Remove("EPQ30710020")
		Session.Contents.Remove("EPQ30710000lMM")
		Session.Contents.Remove("EPQ30710000lYY")
		Session.Contents.Remove("EPQ30710010")
		Session.Contents.Remove("EPQ30710000rMM")
		Session.Contents.Remove("EPQ30710000rYY")
		Session.Contents.Remove("EPQ30710030")
		Session.Contents.Remove("EPQ30710000bMM")
		Session.Contents.Remove("EPQ30710000bYY")

		Session.Contents.Remove("EPQ30756300")
		Session.Contents.Remove("EPQ30711020")
		Session.Contents.Remove("EPQ30711000MM")
		Session.Contents.Remove("EPQ307110l0YY")
		Session.Contents.Remove("EPQ30711010")
		Session.Contents.Remove("EPQ30711000rMM")
		Session.Contents.Remove("EPQ30711000rYY")
		Session.Contents.Remove("EPQ30711030")
		Session.Contents.Remove("EPQ30711000bMM")
		Session.Contents.Remove("EPQ30711000bYY")

		Session.Contents.Remove("EPQ30756350")
		Session.Contents.Remove("EPQ30709020")
		Session.Contents.Remove("EPQ30709000lMM")
		Session.Contents.Remove("EPQ30709000lYY")
		Session.Contents.Remove("EPQ30709010")
		Session.Contents.Remove("EPQ30709000rMM")
		Session.Contents.Remove("EPQ30709000rYY")
		Session.Contents.Remove("EPQ30709030")
		Session.Contents.Remove("EPQ30709000bMM")
		Session.Contents.Remove("EPQ30709000bYY")
		
		Session.Contents.Remove("EPQ30756400")
		Session.Contents.Remove("EPQ30756440")
		Session.Contents.Remove("EPQ30756420")
		Session.Contents.Remove("EPQ30756430")

		Session.Contents.Remove("EPQ30756450")
		Session.Contents.Remove("EPQ30756490")
		Session.Contents.Remove("EPQ30756470")
		Session.Contents.Remove("EPQ30756480")

		Session.Contents.Remove("EPQ30756500")
		Session.Contents.Remove("EPQ30756540")
		Session.Contents.Remove("EPQ30756520")
		Session.Contents.Remove("EPQ30756530")

		Session.Contents.Remove("EPQ30756550")
		Session.Contents.Remove("EPQ30756590")
		Session.Contents.Remove("EPQ30756570")
		Session.Contents.Remove("EPQ30756580")

		Session.Contents.Remove("EPQ30756600")
		Session.Contents.Remove("EPQ30756640")
		Session.Contents.Remove("EPQ30756620")
		Session.Contents.Remove("EPQ30756630")

		Session.Contents.Remove("EPQ30756650")
		Session.Contents.Remove("EPQ30756690")
		Session.Contents.Remove("EPQ30756670")
		Session.Contents.Remove("EPQ30756680")

		Session.Contents.Remove("EPQ30756700")
		Session.Contents.Remove("EPQ30756740")
		Session.Contents.Remove("EPQ30756720")
		Session.Contents.Remove("EPQ30756730")

		Session.Contents.Remove("EPQ30756750")
		Session.Contents.Remove("EPQ30756790")
		Session.Contents.Remove("EPQ30756770")
		Session.Contents.Remove("EPQ30756780")

		Session.Contents.Remove("EPQ30756800")
		Session.Contents.Remove("EPQ30756840")
		Session.Contents.Remove("EPQ30756820")
		Session.Contents.Remove("EPQ30756830")

		Session.Contents.Remove("EPQ30756850")
		Session.Contents.Remove("EPQ30756890")
		Session.Contents.Remove("EPQ30756870")
		Session.Contents.Remove("EPQ30756880")

		Session.Contents.Remove("EPQ30758600")
		Session.Contents.Remove("EPQ30758640")
		Session.Contents.Remove("EPQ30758620")
		Session.Contents.Remove("EPQ30758630")

		Session.Contents.Remove("EPQ30758650")
		Session.Contents.Remove("EPQ30758690")
		Session.Contents.Remove("EPQ30758670")
		Session.Contents.Remove("EPQ30758680")

		Session.Contents.Remove("EPQ30758700")
		Session.Contents.Remove("EPQ30758740")
		Session.Contents.Remove("EPQ30758720")
		Session.Contents.Remove("EPQ30758730")

		Session.Contents.Remove("EPQ30758750")
		Session.Contents.Remove("EPQ30758790")
		Session.Contents.Remove("EPQ30758770")
		Session.Contents.Remove("EPQ30758780")

		Session.Contents.Remove("EPQ30758800")
		Session.Contents.Remove("EPQ30758840")
		Session.Contents.Remove("EPQ30758820")
		Session.Contents.Remove("EPQ30758830")

		Session.Contents.Remove("EPQ30758850")
		Session.Contents.Remove("EPQ30758890")
		Session.Contents.Remove("EPQ30758870")
		Session.Contents.Remove("EPQ30758880")

		Session.Contents.Remove("EPQ30758900")
		Session.Contents.Remove("EPQ30758940")
		Session.Contents.Remove("EPQ30758920")
		Session.Contents.Remove("EPQ30758930")

		Session.Contents.Remove("EPQ30758950")
		Session.Contents.Remove("EPQ30758990")
		Session.Contents.Remove("EPQ30758970")
		Session.Contents.Remove("EPQ30758980")

		Session.Contents.Remove("EPQ30757450")
		Session.Contents.Remove("EPQ30757490")
		Session.Contents.Remove("EPQ30757470")
		Session.Contents.Remove("EPQ30757480")

		Session.Contents.Remove("EPQ30757500")
		Session.Contents.Remove("EPQ30757540")
		Session.Contents.Remove("EPQ30757520")
		Session.Contents.Remove("EPQ30757530")

		Session.Contents.Remove("EPQ30757550")
		Session.Contents.Remove("EPQ30757590")
		Session.Contents.Remove("EPQ30757570")
		Session.Contents.Remove("EPQ30757580")

		Session.Contents.Remove("EPQ30757600")
		Session.Contents.Remove("EPQ30757640")
		Session.Contents.Remove("EPQ30757620")
		Session.Contents.Remove("EPQ30757630")

		Session.Contents.Remove("EPQ30757650")
		Session.Contents.Remove("EPQ30757690")
		Session.Contents.Remove("EPQ30757670")
		Session.Contents.Remove("EPQ30757680")

		Session.Contents.Remove("EPQ30757700")
		Session.Contents.Remove("EPQ30757740")
		Session.Contents.Remove("EPQ30757720")
		Session.Contents.Remove("EPQ30757730")

		Session.Contents.Remove("EPQ30757750")
		Session.Contents.Remove("EPQ30757790")
		Session.Contents.Remove("EPQ30757770")
		Session.Contents.Remove("EPQ30757780")

		Session.Contents.Remove("EPQ30757800")
		Session.Contents.Remove("EPQ30757840")
		Session.Contents.Remove("EPQ30757820")
		Session.Contents.Remove("EPQ30757830")

		Session.Contents.Remove("EPQ30757850")
		Session.Contents.Remove("EPQ30757890")
		Session.Contents.Remove("EPQ30757870")
		Session.Contents.Remove("EPQ30757880")

		Session.Contents.Remove("EPQ30757900")
		Session.Contents.Remove("EPQ30757940")
		Session.Contents.Remove("EPQ30757920")
		Session.Contents.Remove("EPQ30757930")

		Session.Contents.Remove("EPQ30757950")
		Session.Contents.Remove("EPQ30757990")
		Session.Contents.Remove("EPQ30757970")
		Session.Contents.Remove("EPQ30757980")

		Session.Contents.Remove("EPQ30758000")
		Session.Contents.Remove("EPQ30758040")
		Session.Contents.Remove("EPQ30758020")
		Session.Contents.Remove("EPQ30758030")

		Session.Contents.Remove("EPQ30758050")
		Session.Contents.Remove("EPQ30758090")
		Session.Contents.Remove("EPQ30758070")
		Session.Contents.Remove("EPQ30758080")

		Session.Contents.Remove("EPQ30758100")
		Session.Contents.Remove("EPQ30758140")
		Session.Contents.Remove("EPQ30758120")
		Session.Contents.Remove("EPQ30758130")

		Session.Contents.Remove("EPQ30758150")
		Session.Contents.Remove("EPQ30758190")
		Session.Contents.Remove("EPQ30758170")
		Session.Contents.Remove("EPQ30758180")

		Session.Contents.Remove("EPQ30758200")
		Session.Contents.Remove("EPQ30758240")
		Session.Contents.Remove("EPQ30758220")
		Session.Contents.Remove("EPQ30758230")

		Session.Contents.Remove("EPQ30758250")
		Session.Contents.Remove("EPQ30758290")
		Session.Contents.Remove("EPQ30758270")
		Session.Contents.Remove("EPQ30758280")

		Session.Contents.Remove("EPQ30758300")
		Session.Contents.Remove("EPQ30758340")
		Session.Contents.Remove("EPQ30758320")
		Session.Contents.Remove("EPQ30758330")

		Session.Contents.Remove("EPQ30758350")
		Session.Contents.Remove("EPQ30758390")
		Session.Contents.Remove("EPQ30758370")
		Session.Contents.Remove("EPQ30758380")

		Session.Contents.Remove("EPQ30758400")
		Session.Contents.Remove("EPQ30758440")
		Session.Contents.Remove("EPQ30758420")
		Session.Contents.Remove("EPQ30758430")

		Session.Contents.Remove("EPQ30758450")
		Session.Contents.Remove("EPQ30758490")
		Session.Contents.Remove("EPQ30758470")
		Session.Contents.Remove("EPQ30758480")

		Session.Contents.Remove("EPQ30758500")
		Session.Contents.Remove("EPQ30758540")
		Session.Contents.Remove("EPQ30758520")
		Session.Contents.Remove("EPQ30758530")

		Session.Contents.Remove("EPQ30758550")
		Session.Contents.Remove("EPQ30758590")
		Session.Contents.Remove("EPQ30758570")
		Session.Contents.Remove("EPQ30758580")

		Session.Contents.Remove("EPQ30759050")
		Session.Contents.Remove("EPQ30759090")
		Session.Contents.Remove("EPQ30759070")
		Session.Contents.Remove("EPQ30759080")

		Session.Contents.Remove("EPQ30759200")
		Session.Contents.Remove("EPQ30759240")
		Session.Contents.Remove("EPQ30759220")
		Session.Contents.Remove("EPQ30759230")

		Session.Contents.Remove("EPQ30759250")
		Session.Contents.Remove("EPQ30759290")
		Session.Contents.Remove("EPQ30759270")
		Session.Contents.Remove("EPQ30759280")

		Session.Contents.Remove("EPQ30759300")
		Session.Contents.Remove("EPQ30759340")
		Session.Contents.Remove("EPQ30759320")
		Session.Contents.Remove("EPQ30759330")

		Session.Contents.Remove("EPQ30759350")
		Session.Contents.Remove("EPQ30759390")
		Session.Contents.Remove("EPQ30759370")
		Session.Contents.Remove("EPQ30759380")

		Session.Contents.Remove("EPQ30759400")
		Session.Contents.Remove("EPQ30759440")
		Session.Contents.Remove("EPQ30759420")
		Session.Contents.Remove("EPQ30759430")

		Session.Contents.Remove("EPQ30759450")
		Session.Contents.Remove("EPQ30759490")
		Session.Contents.Remove("EPQ30759470")
		Session.Contents.Remove("EPQ30759480")

		Session.Contents.Remove("EPQ30759500")
		Session.Contents.Remove("EPQ30759540")
		Session.Contents.Remove("EPQ30759520")
		Session.Contents.Remove("EPQ30759530")

		Session.Contents.Remove("EPQ30759550")
		Session.Contents.Remove("EPQ30759590")
		Session.Contents.Remove("EPQ30759570")
		Session.Contents.Remove("EPQ30759580")

		Session.Contents.Remove("EPQ30759600")
		Session.Contents.Remove("EPQ30759640")
		Session.Contents.Remove("EPQ30759620")
		Session.Contents.Remove("EPQ30759630")

		Session.Contents.Remove("EPQ30759650")
		Session.Contents.Remove("EPQ30759690")
		Session.Contents.Remove("EPQ30759670")
		Session.Contents.Remove("EPQ30759680")

		Session.Contents.Remove("EPQ30759700")
		Session.Contents.Remove("EPQ30759740")
		Session.Contents.Remove("EPQ30759720")
		Session.Contents.Remove("EPQ30759730")

		Session.Contents.Remove("EPQ30759750")
		Session.Contents.Remove("EPQ30759790")
		Session.Contents.Remove("EPQ30759770")
		Session.Contents.Remove("EPQ30759780")

		Session.Contents.Remove("EPQ30759800")
		Session.Contents.Remove("EPQ30759840")
		Session.Contents.Remove("EPQ30759820")
		Session.Contents.Remove("EPQ30759830")
	
		Session.Contents.Remove("EPQ30759900")
		Session.Contents.Remove("EPQ30759940")
		Session.Contents.Remove("EPQ30759920")
		Session.Contents.Remove("EPQ30759930")

		Session.Contents.Remove("EPQ30759950")
		Session.Contents.Remove("EPQ30759990")
		Session.Contents.Remove("EPQ30759970")
		Session.Contents.Remove("EPQ30759980")

		Session.Contents.Remove("EPQ30760000")
		Session.Contents.Remove("EPQ30760040")
		Session.Contents.Remove("EPQ30760020")
		Session.Contents.Remove("EPQ30760030")

		Session.Contents.Remove("EPQ30760050")
		Session.Contents.Remove("EPQ30760090")
		Session.Contents.Remove("EPQ30760070")
		Session.Contents.Remove("EPQ30760080")

		Session.Contents.Remove("EPQ30760100")
		Session.Contents.Remove("EPQ30760140")
		Session.Contents.Remove("EPQ30760120")
		Session.Contents.Remove("EPQ30760130")

		Session.Contents.Remove("EPQ30760150")
		Session.Contents.Remove("EPQ30760190")
		Session.Contents.Remove("EPQ30760170")
		Session.Contents.Remove("EPQ30760180")

		Session.Contents.Remove("EPQ30760200")
		Session.Contents.Remove("EPQ30760240")
		Session.Contents.Remove("EPQ30760220")
		Session.Contents.Remove("EPQ30760230")

		Session.Contents.Remove("EPQ30760250")
		Session.Contents.Remove("EPQ30760290")
		Session.Contents.Remove("EPQ30760270")
		Session.Contents.Remove("EPQ30760280")

		Session.Contents.Remove("EPQ30760300")
		Session.Contents.Remove("EPQ30760340")
		Session.Contents.Remove("EPQ30760320")
		Session.Contents.Remove("EPQ30760330")

		Session.Contents.Remove("EPQ30754990Describe")
		Session.Contents.Remove("EPQ30755390Describe")
		Session.Contents.Remove("EPQ30755790Describe")
		Session.Contents.Remove("EPQ30755940Describe")
		Session.Contents.Remove("EPQ30756490Describe")
		Session.Contents.Remove("EPQ30756890Describe")
		Session.Contents.Remove("EPQ30757440Describe")
		Session.Contents.Remove("EPQ30758990Describe")
		Session.Contents.Remove("EPQ30758140Describe")
		Session.Contents.Remove("EPQ30758590Describe")
		Session.Contents.Remove("EPQ30759540Describe")
		Session.Contents.Remove("EPQ30759690Describe")
		Session.Contents.Remove("EPQ30759940Describe")
		Session.Contents.Remove("EPQ30760290Describe")
		Session.Contents.Remove("EPQ30760340Describe")


		Session.Contents.Remove("EPQ30755300")
		Session.Contents.Remove("EPQ30756000")
		Session.Contents.Remove("EPQ30755100b")
		Session.Contents.Remove("EPQ30756050")
		Session.Contents.Remove("EPQ30756100")
		Session.Contents.Remove("EPQ30756150")
		Session.Contents.Remove("EPQ30756200")
		Session.Contents.Remove("EPQ30754300b")
		Session.Contents.Remove("EPQ30758700b")
		Session.Contents.Remove("EPQ30758750b")
		Session.Contents.Remove("EPQ30758900b")
		Session.Contents.Remove("EPQ30756400b")

	end if

	if Session("EPQ30701020")="0" then
	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
	else
	Session("Page")="3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"

	end if

end if
%>

<?xml version="1.0" encoding="iso-8859-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title><%=Session("PageHolder")%></title>

<link href="css/styles.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
		<link href="css/ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 7]>
		<link href="css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
	 <!--#include file="functionbox.asp"-->
		-->
		</script>


</head>
<body>

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->
</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">


    <form action="surgicalhistory1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
  <div class='QuestionBox'>
Have you ever had a surgery, biopsy, or a medical procedure including when you were a baby or child?  This includes vasectomies, cardiac catheterizations, eye surgeries, colonoscopy, and plastic surgeries.<br>
</div><legend></legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30701020" value="1" id="EPQ307010201" class="required" <%=strEPQ30701020yes%>>
		<label for="EPQ307010201">Yes</label><br>
		<input type="radio" name="EPQ30701020" value="0" id="EPQ307010202" <%=strEPQ30701020no%>>
		<label for="EPQ307010202">No</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
</div> <!-- [ /#formBlock ] -->
	
	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
