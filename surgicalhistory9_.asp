
<%
Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30709010")="1" then
		strEPQ30709010answer1="checked"
	end if
	if Session("EPQ30709020")="1" then
		strEPQ30709020answer1="checked"
	end if
	if Session("EPQ30709030")="1" then
		strEPQ30709030answer1="checked"
	end if

	if Session("EPQ30710010")="1" then
		strEPQ30710010answer1="checked"
	end if
	if Session("EPQ30710020")="1" then
		strEPQ30710020answer1="checked"
	end if
	if Session("EPQ30710030")="1" then
		strEPQ30710030answer1="checked"
	end if

	if Session("EPQ30711010")="1" then
		strEPQ30711010answer1="checked"
	end if
	if Session("EPQ30711020")="1" then
		strEPQ30711020answer1="checked"
	end if
	if Session("EPQ30711030")="1" then
		strEPQ30711030answer1="checked"
	end if

	if Session("EPQ30712010")="1" then
		strEPQ30712010answer1="checked"
	end if
	if Session("EPQ30712020")="1" then
		strEPQ30712020answer1="checked"
	end if
	if Session("EPQ30712030")="1" then
		strEPQ30712030answer1="checked"
	end if

	if Session("EPQ30712010s")="1" then
		strEPQ30712010sanswer1="checked"
	end if
	if Session("EPQ30712020s")="1" then
		strEPQ30712020sanswer1="checked"
	end if
	if Session("EPQ30712030s")="1" then
		strEPQ30712030sanswer1="checked"
	end if

	if Session("EPQ30713010")="1" then
		strEPQ30713010answer1="checked"
	end if
	if Session("EPQ30713020")="1" then
		strEPQ30713020answer1="checked"
	end if
	if Session("EPQ30713030")="1" then
		strEPQ30713030answer1="checked"
	end if

	if Session("EPQ30756140")="1" then
		strEPQ30756140answer1="checked"
	end if
	if Session("EPQ30756141")="1" then
		strEPQ30756141answer1="checked"
	end if
	if Session("EPQ30756142")="1" then
		strEPQ30756142answer1="checked"
	end if

	if Session("EPQ30756190")="1" then
		strEPQ30756190answer1="checked"
	end if
	if Session("EPQ30756191")="1" then
		strEPQ30756191answer1="checked"
	end if
	if Session("EPQ30756192")="1" then
		strEPQ30756192answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30709010string")= ""
	Session("EPQ30709020string")= ""
	Session("EPQ30709030string")= ""

	Session("EPQ30710010string")= ""
	Session("EPQ30710020string")= ""
	Session("EPQ30710030string")= ""

	Session("EPQ30711010string")= ""
	Session("EPQ30711020string")= ""
	Session("EPQ30711030string")= ""
	Session("EPQ30712010string")= ""
	Session("EPQ30712020string")= ""
	Session("EPQ30712030string")= ""
	Session("EPQ30713010string")= ""
	Session("EPQ30713020string")= ""
	Session("EPQ30713030string")= ""


	Session("EPQ30709010") = Request.Form("EPQ30709010")
	Session("EPQ30709020") = Request.Form("EPQ30709020")
	Session("EPQ30709030") = Request.Form("EPQ30709030")

	Session("EPQ30710010") = Request.Form("EPQ30710010")
	Session("EPQ30710020") = Request.Form("EPQ30710020")
	Session("EPQ30710030") = Request.Form("EPQ30710030")

	Session("EPQ30711010") = Request.Form("EPQ30711010")
	Session("EPQ30711020") = Request.Form("EPQ30711020")
	Session("EPQ30711030") = Request.Form("EPQ30711030")
	Session("EPQ30712010") = Request.Form("EPQ30712010")
	Session("EPQ30712020") = Request.Form("EPQ30712020")
	Session("EPQ30712030") = Request.Form("EPQ30712030")

	Session("EPQ30712010s") = Request.Form("EPQ30712010s")
	Session("EPQ30712020s") = Request.Form("EPQ30712020s")
	Session("EPQ30712030s") = Request.Form("EPQ30712030s")

	Session("EPQ30713010") = Request.Form("EPQ30713010")
	Session("EPQ30713020") = Request.Form("EPQ30713020")
	Session("EPQ30713030") = Request.Form("EPQ30713030")

	Session("EPQ30709000rMM") = Request.Form("EPQ30709000rMM")
	Session("EPQ30709000rYY") = Request.Form("EPQ30709000rYY")
	Session("EPQ30709000lMM") = Request.Form("EPQ30709000lMM")
	Session("EPQ30709000lYY") = Request.Form("EPQ30709000lYY")
	Session("EPQ30709000bMM") = Request.Form("EPQ30709000bMM")
	Session("EPQ30709000bYY") = Request.Form("EPQ30709000bYY")

	Session("EPQ30710000rMM") = Request.Form("EPQ30710000rMM")
	Session("EPQ30710000rYY") = Request.Form("EPQ30710000rYY")
	Session("EPQ30710000lMM") = Request.Form("EPQ30710000lMM")
	Session("EPQ30710000lYY") = Request.Form("EPQ30710000lYY")
	Session("EPQ30710000bMM") = Request.Form("EPQ30710000bMM")
	Session("EPQ30710000bYY") = Request.Form("EPQ30710000bYY")

	Session("EPQ30711000rMM") = Request.Form("EPQ30711000rMM")
	Session("EPQ30711000rYY") = Request.Form("EPQ30711000rYY")
	Session("EPQ30711000lMM") = Request.Form("EPQ30711000lMM")
	Session("EPQ30711000lYY") = Request.Form("EPQ30711000lYY")
	Session("EPQ30711000bMM") = Request.Form("EPQ30711000bMM")
	Session("EPQ30711000bYY") = Request.Form("EPQ30711000bYY")
	Session("EPQ30712000rMM") = Request.Form("EPQ30712000rMM")
	Session("EPQ30712000rYY") = Request.Form("EPQ30712000rYY")
	Session("EPQ30712000lMM") = Request.Form("EPQ30712000lMM")
	Session("EPQ30712000lYY") = Request.Form("EPQ30712000lYY")
	Session("EPQ30712000bMM") = Request.Form("EPQ30712000bMM")
	Session("EPQ30712000bYY") = Request.Form("EPQ30712000bYY")

	Session("EPQ30712000rMMs") = Request.Form("EPQ30712000rMMs")
	Session("EPQ30712000rYYs") = Request.Form("EPQ30712000rYYs")
	Session("EPQ30712000lMMs") = Request.Form("EPQ30712000lMMs")
	Session("EPQ30712000lYYs") = Request.Form("EPQ30712000lYYs")
	Session("EPQ30712000bMMs") = Request.Form("EPQ30712000bMMs")
	Session("EPQ30712000bYYs") = Request.Form("EPQ30712000bYYs")


	Session("EPQ30713000rMM") = Request.Form("EPQ30713000rMM")
	Session("EPQ30713000rYY") = Request.Form("EPQ30713000rYY")
	Session("EPQ30713000lMM") = Request.Form("EPQ30713000lMM")
	Session("EPQ30713000lYY") = Request.Form("EPQ30713000lYY")
	Session("EPQ30713000bMM") = Request.Form("EPQ30713000bMM")
	Session("EPQ30713000bYY") = Request.Form("EPQ30713000bYY")

	Session("EPQ30756120") = Request.Form("EPQ30756120")
	Session("EPQ30756121") = Request.Form("EPQ30756121")
	Session("EPQ30756122") = Request.Form("EPQ30756122")
	Session("EPQ30756130") = Request.Form("EPQ30756130")
	Session("EPQ30756131") = Request.Form("EPQ30756131")
	Session("EPQ30756132") = Request.Form("EPQ30756132")
	Session("EPQ30756140") = Request.Form("EPQ30756140")
	Session("EPQ30756141") = Request.Form("EPQ30756141")
	Session("EPQ30756142") = Request.Form("EPQ30756142")

	Session("EPQ30756170") = Request.Form("EPQ30756170")
	Session("EPQ30756171") = Request.Form("EPQ30756171")
	Session("EPQ30756172") = Request.Form("EPQ30756172")
	Session("EPQ30756180") = Request.Form("EPQ30756180")
	Session("EPQ30756181") = Request.Form("EPQ30756181")
	Session("EPQ30756182") = Request.Form("EPQ30756182")
	Session("EPQ30756190") = Request.Form("EPQ30756190")
	Session("EPQ30756191") = Request.Form("EPQ30756191")
	Session("EPQ30756192") = Request.Form("EPQ30756192")


'MARK
	if Session("EPQ30756140") = "1" then
	else
		Session("EPQ30756140")= "0"
	end if
	if Session("EPQ30756141") = "1" then
	else
		Session("EPQ30756141")= "0"
	end if
	if Session("EPQ30756142") = "1" then
	else
		Session("EPQ30756142")= "0"
	end if
	if Session("EPQ30756190") = "1" then
	else
		Session("EPQ30756190")= "0"
	end if
	if Session("EPQ30756191") = "1" then
	else
		Session("EPQ30756191")= "0"
	end if
	if Session("EPQ30756192") = "1" then
	else
		Session("EPQ30756192")= "0"
	end if

	if Session("EPQ30709010") = "1" then
	else
		Session("EPQ30709010")= "0"
	end if
	if Session("EPQ30709020") = "1" then
	else
		Session("EPQ30709020")= "0"
	end if
	if Session("EPQ30709030") = "1" then
	else
		Session("EPQ30709030")= "0"
	end if

	if Session("EPQ30710010") = "1" then
	else
		Session("EPQ30710010")= "0"
	end if
	if Session("EPQ30710020") = "1" then
	else
		Session("EPQ30710020")= "0"
	end if
	if Session("EPQ30710030") = "1" then
	else
		Session("EPQ30710030")= "0"
	end if

	if Session("EPQ30711010") = "1" then
	else
		Session("EPQ30711010")= "0"
	end if
	if Session("EPQ30711020") = "1" then
	else
		Session("EPQ30711020")= "0"
	end if
	if Session("EPQ30711030") = "1" then
	else
		Session("EPQ30711030")= "0"
	end if

	if Session("EPQ30712010") = "1" then
	else
		Session("EPQ30712010")= "0"
	end if
	if Session("EPQ30712020") = "1" then
	else
		Session("EPQ30712020")= "0"
	end if
	if Session("EPQ30712030") = "1" then
	else
		Session("EPQ30712030")= "0"
	end if

	if Session("EPQ30712010s") = "1" then
	else
		Session("EPQ30712010s")= "0"
	end if
	if Session("EPQ30712020s") = "1" then
	else
		Session("EPQ30712020s")= "0"
	end if
	if Session("EPQ30712030s") = "1" then
	else
		Session("EPQ30712030s")= "0"
	end if
	if Session("EPQ30713010") = "1" then
	else
		Session("EPQ30713010")= "0"
	end if
	if Session("EPQ30713020") = "1" then
	else
		Session("EPQ30713020")= "0"
	end if
	if Session("EPQ30713030") = "1" then
	else
		Session("EPQ30713030")= "0"
	end if
end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
 If Session("TEMP1EPQ3076050b")="1" OR Session("TEMP3EPQ30756100b")="1"  OR Session("TEMP3EPQ30756100b")="1" then
	Session("Page")="7"
	Response.Redirect "surgicalhistorymaster.asp"
 else
 end if


	Session("ReturnID")="1"
	Session("Page")="21"
	Response.Redirect "surgicalhistorymaster.asp"
end if

	
if Session("ReturnID")<> "1" then

	if Session("EPQ30757150") <> "1" AND Session("EPQ30756250") <> "1" AND Session("EPQ30756300") <> "1" AND Session("EPQ30756350") <> "1" AND Session("EPQ30756150") <> "1" AND Session("EPQ30756100") <> "1" AND Session("EPQ30757100") <> "1" then 

	Session("Page")="10"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if

if Session("ReturnID")="1" then


	if Session("EPQ30701020") <> "1" then 
	Session("Page")="2"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"

end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30709010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("PageCounter2")=0

	if Session("EPQ30754000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754100") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754150") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754350") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30754900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755100") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755150") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755350") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755400") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30755950") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

	if Session("EPQ30756400") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30756950") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

	if Session("EPQ30757200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

	if Session("EPQ30757250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757350") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757400") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30757950") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

'TEST
	if Session("EPQ30758000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758100") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758150") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758350") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758400") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30758950") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

'TEST2
	if Session("EPQ30759000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759100") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759150") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759350") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759400") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759450") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759500") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759550") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759600") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759650") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759700") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759750") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759800") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759850") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759900") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30759950") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if

	if Session("EPQ30760000") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760050") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760100") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760150") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760200") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760250") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if
	if Session("EPQ30760300") = "1" then
	Session("PageCounter2")=Session("PageCounter2")+1
	else
	end if



if Session("PageCounter2") = 0 then
	Session("Page")="11"
else 
	Session("Page")="10"
end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
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


    <form action="surgicalhistory9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
 
  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>
 
	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>

			<tr>
				<th colspan="1">Surgeries</th>
				<th colspan="1">Left</th>
				<th colspan="1">Date of last surgery<br> (Month/Year)</th>
				<th colspan="1">Right</th>
				<th colspan="1">Date of last surgery<br> (Month/Year)</th>
				<th colspan="1">Both</th>
				<th colspan="1">Date of last surgery<br> (Month/Year)</th>

			</tr>

		   <tbody>

<%if session("EPQ30756000")=1 OR session("TEMP1EPQ30756000b")=1 then%>

	<tr>
		<td>
Breast augmentation (implants)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756000bL" value="1" size="1" name="TEMP1EPQ30756000bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756000bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756000bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756000bLM" value=<%=Session("TEMP1EPQ30756000bLM")%>>/
		<input id="TEMP1EPQ30756000bLY" type="text" size="4" name="TEMP1EPQ30756000bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756000bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756000bR" value="1" size="1" name="TEMP1EPQ30756000bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756000bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756000bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756000bRM" value=<%=Session("TEMP1EPQ30756000bRM")%>>/
		<input id="TEMP1EPQ30756000bRY" type="text" size="4" name="TEMP1EPQ30756000bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756000bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756000bB" value="1" size="1" name="TEMP1EPQ30756000bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756000bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756000bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756000bBM" value=<%=Session("TEMP1EPQ30756000bBM")%>>/
		<input id="TEMP1EPQ30756000bBY" type="text" size="4" name="TEMP1EPQ30756000bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756000bBY")%>>
	</td>

	</tr>
<% end if %>


<%if session("TEMP1EPQ30756050b")=1 then%>
	<tr>
		<td>
Breast lift (mastopexy)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756050bL" value="1" size="1" name="TEMP1EPQ30756050bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756050bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756050bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756050bLM" value=<%=Session("TEMP1EPQ30756050bLM")%>>/
		<input id="TEMP1EPQ30756050bLY" type="text" size="4" name="TEMP1EPQ30756050bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756050bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756050bR" value="1" size="1" name="TEMP1EPQ30756050bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756050bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756050bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756050bRM" value=<%=Session("TEMP1EPQ30756050bRM")%>>/
		<input id="TEMP1EPQ30756050bRY" type="text" size="4" name="TEMP1EPQ30756050bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756050bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756050bB" value="1" size="1" name="TEMP1EPQ30756050bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756050bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756050bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756050bBM" value=<%=Session("TEMP1EPQ30756050bBM")%>>/
		<input id="TEMP1EPQ30756050bBY" type="text" size="4" name="TEMP1EPQ30756050bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756050bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP1EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with abdominal flap (DIEP, Pedicle TRAM, Free TRAM)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756100bL" value="1" size="1" name="TEMP1EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756100bLM" value=<%=Session("TEMP1EPQ30756100bLM")%>>/
		<input id="TEMP1EPQ30756100bLY" type="text" size="4" name="TEMP1EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756100bR" value="1" size="1" name="TEMP1EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756100bRM" value=<%=Session("TEMP1EPQ30756100bRM")%>>/
		<input id="TEMP1EPQ30756100bRY" type="text" size="4" name="TEMP1EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP1EPQ30756100bB" value="1" size="1" name="TEMP1EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP1EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP1EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP1EPQ30756100bBM" value=<%=Session("TEMP1EPQ30756100bBM")%>>/
		<input id="TEMP1EPQ30756100bBY" type="text" size="4" name="TEMP1EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP1EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP2EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with back flap only (latissimus dorsi flap)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP2EPQ30756100bL" value="1" size="1" name="TEMP2EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP2EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP2EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP2EPQ30756100bLM" value=<%=Session("TEMP2EPQ30756100bLM")%>>/
		<input id="TEMP2EPQ30756100bLY" type="text" size="4" name="TEMP2EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP2EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP2EPQ30756100bR" value="1" size="1" name="TEMP2EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP2EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP2EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP2EPQ30756100bRM" value=<%=Session("TEMP2EPQ30756100bRM")%>>/
		<input id="TEMP2EPQ30756100bRY" type="text" size="4" name="TEMP2EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP2EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP2EPQ30756100bB" value="1" size="1" name="TEMP2EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP2EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP2EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP2EPQ30756100bBM" value=<%=Session("TEMP2EPQ30756100bBM")%>>/
		<input id="TEMP2EPQ30756100bBY" type="text" size="4" name="TEMP2EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP2EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP3EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with expanders, then implants
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP3EPQ30756100bL" value="1" size="1" name="TEMP3EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP3EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP3EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP3EPQ30756100bLM" value=<%=Session("TEMP3EPQ30756100bLM")%>>/
		<input id="TEMP3EPQ30756100bLY" type="text" size="4" name="TEMP3EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP3EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP3EPQ30756100bR" value="1" size="1" name="TEMP3EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP3EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP3EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP3EPQ30756100bRM" value=<%=Session("TEMP3EPQ30756100bRM")%>>/
		<input id="TEMP3EPQ30756100bRY" type="text" size="4" name="TEMP3EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP3EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP3EPQ30756100bB" value="1" size="1" name="TEMP3EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP3EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP3EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP3EPQ30756100bBM" value=<%=Session("TEMP3EPQ30756100bBM")%>>/
		<input id="TEMP3EPQ30756100bBY" type="text" size="4" name="TEMP3EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP3EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>


<%if session("TEMP4EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with implants (no expanders)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP4EPQ30756100bL" value="1" size="1" name="TEMP4EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP4EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP4EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP4EPQ30756100bLM" value=<%=Session("TEMP4EPQ30756100bLM")%>>/
		<input id="TEMP4EPQ30756100bLY" type="text" size="4" name="TEMP4EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP4EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP4EPQ30756100bR" value="1" size="1" name="TEMP4EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP4EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP4EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP4EPQ30756100bRM" value=<%=Session("TEMP4EPQ30756100bRM")%>>/
		<input id="TEMP4EPQ30756100bRY" type="text" size="4" name="TEMP4EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP4EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP4EPQ30756100bB" value="1" size="1" name="TEMP4EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP4EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP4EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP4EPQ30756100bBM" value=<%=Session("TEMP4EPQ30756100bBM")%>>/
		<input id="TEMP4EPQ30756100bBY" type="text" size="4" name="TEMP4EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP4EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP5EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with  fat grafting
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP5EPQ30756100bL" value="1" size="1" name="TEMP5EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP5EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP5EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP5EPQ30756100bLM" value=<%=Session("TEMP5EPQ30756100bLM")%>>/
		<input id="TEMP5EPQ30756100bLY" type="text" size="4" name="TEMP5EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP5EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP5EPQ30756100bR" value="1" size="1" name="TEMP5EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP5EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP5EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP5EPQ30756100bRM" value=<%=Session("TEMP5EPQ30756100bRM")%>>/
		<input id="TEMP5EPQ30756100bRY" type="text" size="4" name="TEMP5EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP5EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP5EPQ30756100bB" value="1" size="1" name="TEMP5EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP5EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP5EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP5EPQ30756100bBM" value=<%=Session("TEMP5EPQ30756100bBM")%>>/
		<input id="TEMP5EPQ30756100bBY" type="text" size="4" name="TEMP5EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP5EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP6EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with  SGAP/IGAP (gluteal flaps)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP6EPQ30756100bL" value="1" size="1" name="TEMP6EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP6EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP6EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP6EPQ30756100bLM" value=<%=Session("TEMP6EPQ30756100bLM")%>>/
		<input id="TEMP6EPQ30756100bLY" type="text" size="4" name="TEMP6EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP6EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP6EPQ30756100bR" value="1" size="1" name="TEMP6EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP6EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP6EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP6EPQ30756100bRM" value=<%=Session("TEMP6EPQ30756100bRM")%>>/
		<input id="TEMP6EPQ30756100bRY" type="text" size="4" name="TEMP6EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP6EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP6EPQ30756100bB" value="1" size="1" name="TEMP6EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP6EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP6EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP6EPQ30756100bBM" value=<%=Session("TEMP6EPQ30756100bBM")%>>/
		<input id="TEMP6EPQ30756100bBY" type="text" size="4" name="TEMP6EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP6EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("TEMP7EPQ30756100b")=1 then%>
	<tr>
		<td>
Breast reconstruction with TUG or  PAP<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (thigh flaps)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="TEMP7EPQ30756100bL" value="1" size="1" name="TEMP7EPQ30756100bL" class="atLeastOneRowCheckboxRequired" <%=strTEMP7EPQ30756100bLanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP7EPQ30756100bLM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP7EPQ30756100bLM" value=<%=Session("TEMP7EPQ30756100bLM")%>>/
		<input id="TEMP7EPQ30756100bLY" type="text" size="4" name="TEMP7EPQ30756100bLY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP7EPQ30756100bLY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP7EPQ30756100bR" value="1" size="1" name="TEMP7EPQ30756100bR" class="atLeastOneRowCheckboxRequired" <%=strTEMP7EPQ30756100bRanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP7EPQ30756100bRM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP7EPQ30756100bRM" value=<%=Session("TEMP7EPQ30756100bRM")%>>/
		<input id="TEMP7EPQ30756100bRY" type="text" size="4" name="TEMP7EPQ30756100bRY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP7EPQ30756100bRY")%>>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="TEMP7EPQ30756100bB" value="1" size="1" name="TEMP7EPQ30756100bB" class="atLeastOneRowCheckboxRequired" <%=strTEMP7EPQ30756100bBanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="TEMP7EPQ30756100bBM" class="dateMonth" type="text" size="2" maxlength="2" name="TEMP7EPQ30756100bBM" value=<%=Session("TEMP7EPQ30756100bBM")%>>/
		<input id="TEMP7EPQ30756100bBY" type="text" size="4" name="TEMP7EPQ30756100bBY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("TEMP7EPQ30756100bBY")%>>
	</td>

	</tr>
<% end if %>

<%if session("EPQ30756200")=1 then%>
	<tr>
		<td>
		Breast reduction (reduction mammoplasty)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709020" value="1" size="1" name="EPQ30709020" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709020answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000lMM" type="text" size="2" name="EPQ30709000lMM" maxlength="2" class="dateMonth" value=<%=Session("EPQ30709000lMM")%>>/
		<input id="EPQ30709000lYY" type="text" size="4" name="EPQ30709000lYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000lYY")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709010" value="1" size="1" name="EPQ30709010" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709010answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000rMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30709000rMM" value=<%=Session("EPQ30709000rMM")%>>/
		<input id="EPQ30709000rYY" type="text" size="4" name="EPQ30709000rYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000rYY")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709030" value="1" size="1" name="EPQ30709030" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000bMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30709000bMM" value=<%=Session("EPQ30709000bMM")%>>/
		<input id="EPQ30709000bYY" type="text" size="4" name="EPQ30709000bYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000bYY")%>>
		</td>
	</tr>

<% end if %>
<%if session("EPQ30756250")=1 then%>

	<tr>
		<td>
Lumpectomy (also called a partial mastectomy) 
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30710020" value="1" size="1" name="EPQ30710020" class="atLeastOneRowCheckboxRequired" <%=strEPQ30710020answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30710000lMM" class="dateMonth" class="dateMonth" maxlength="2" type="text" size="2" name="EPQ30710000lMM" value=<%=Session("EPQ30710000lMM")%>>/
		<input id="EPQ30710000lYY" type="text" size="4" name="EPQ30710000lYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30710000lYY")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30710010" value="1" size="1" name="EPQ30710010" class="atLeastOneRowCheckboxRequired" <%=strEPQ30710010answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30710000rMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30710000rMM" value=<%=Session("EPQ30710000rMM")%>>/
		<input id="EPQ30710000rYY" type="text" size="4" name="EPQ30710000rYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30710000rYY")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30710030" value="1" size="1" name="EPQ30710030" class="atLeastOneRowCheckboxRequired" <%=strEPQ30710030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30710000bMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30710000bMM" value=<%=Session("EPQ30710000bMM")%>>/
		<input id="EPQ30710000bYY" type="text" size="4" name="EPQ30710000bYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30710000bYY")%>>
		</td>
	</tr>
<% end if %>
<%if session("EPQ30756300")=1 then%>

	<tr>
		<td>
Mastectomy 
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30711020" value="1" size="1" name="EPQ30711020" class="atLeastOneRowCheckboxRequired" <%=strEPQ30711020answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30711000MM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30711000lMM" value=<%=Session("EPQ30711000lMM")%>>/
		<input id="EPQ307110l0YY" type="text" size="4" name="EPQ30711000lYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30711000lYY")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30711010" value="1" size="1" name="EPQ30711010" class="atLeastOneRowCheckboxRequired" <%=strEPQ30711010answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30711000rMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30711000rMM" value=<%=Session("EPQ30711000rMM")%>>/
		<input id="EPQ30711000rYY" type="text" size="4" name="EPQ30711000rYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30711000rYY")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30711030" value="1" size="1" name="EPQ30711030" class="atLeastOneRowCheckboxRequired" <%=strEPQ30711030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30711000bMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30711000bMM" value=<%=Session("EPQ30711000bMM")%>>/
		<input id="EPQ30711000bYY" type="text" size="4" name="EPQ30711000bYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30711000bYY")%>>
		</td>
	</tr>

<% end if %>
<%if session("EPQ30756350")=1 then%>
	<tr>
		<td>
		Removal of a breast implant
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709020" value="1" size="1" name="EPQ30709020" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709020answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000lMM" type="text" size="2" name="EPQ30709000lMM" maxlength="2" class="dateMonth" value=<%=Session("EPQ30709000lMM")%>>/
		<input id="EPQ30709000lYY" type="text" size="4" name="EPQ30709000lYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000lYY")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709010" value="1" size="1" name="EPQ30709010" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709010answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000rMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30709000rMM" value=<%=Session("EPQ30709000rMM")%>>/
		<input id="EPQ30709000rYY" type="text" size="4" name="EPQ30709000rYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000rYY")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30709030" value="1" size="1" name="EPQ30709030" class="atLeastOneRowCheckboxRequired" <%=strEPQ30709030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30709000bMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30709000bMM" value=<%=Session("EPQ30709000bMM")%>>/
		<input id="EPQ30709000bYY" type="text" size="4" name="EPQ30709000bYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30709000bYY")%>>
		</td>
	</tr>

<% end if %>


<%if session("EPQ30757100")=1 then%>
	<tr>
		<td>
Removal of ovary (oophorectomy)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712010" value="1" size="1" name="EPQ30712010" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712010answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000MM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30712000lMM" value=<%=Session("EPQ30712000lMM")%>>/
		<input id="EPQ307120l0YY" type="text" size="4" name="EPQ30712000lYY" maxlength="4" class="year requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000lYY")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712020" value="1" size="1" name="EPQ30712020" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712020answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000rMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30712000rMM" value=<%=Session("EPQ30712000rMM")%>>/
		<input id="EPQ30712000rYY" type="text" size="4" name="EPQ30712000rYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000rYY")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712030" value="1" size="1" name="EPQ30712030" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000bMM" class="dateMonth" type="text" size="2" maxlength="2" name="EPQ30712000bMM" value=<%=Session("EPQ30712000bMM")%>>/
		<input id="EPQ30712000bYY" type="text" size="4" name="EPQ30712000bYY" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000bYY")%>>
		</td>
	</tr>
<% end if %>

<%if session("EPQ30757150")=1 then%>
	<tr>
		<td>
Removal of the ovary and the fallopian tube (salpingo-oophorectomy)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712010s" value="1" size="1" name="EPQ30712010s" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712010sanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000MMs" class="dateMonth" type="text" maxlength="2" size="2" name="EPQ30712000lMMs" value=<%=Session("EPQ30712000lMMs")%>>/
		<input id="EPQ307120l0YYs" type="text" size="4" name="EPQ30712000lYYs" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000lYYs")%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712020s" value="1" size="1" name="EPQ30712020s" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712020sanswer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000rMMs" class="dateMonth" type="text" maxlength="2" size="2" name="EPQ30712000rMMs" value=<%=Session("EPQ30712000rMMs")%>>/
		<input id="EPQ30712000rYYs" type="text" size="4" name="EPQ30712000rYYs" maxlength="4" class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000rYYs")%>>
</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30712030s" value="1" size="1" name="EPQ30712030s" maxlength="4" class="atLeastOneRowCheckboxRequired" <%=strEPQ30712030answer1%>>
		</td>
		<td style="text-align: center;">
		<input id="EPQ30712000bMMs" class="dateMonth" type="text" maxlength="2" size="2" name="EPQ30712000bMMs" value=<%=Session("EPQ30712000bMMs")%>>/
		<input id="EPQ30712000bYYs" type="text" size="4" name="EPQ30712000bYYs" maxlength="4"  class="yearRange requiredIfPreviousCheckboxInTable" value=<%=Session("EPQ30712000bYYs")%>>
		</td>
	</tr>
<% end if %>

</tbody>
</table>
</div>
</fieldset>

</div><!-- [ /#formBlock ] -->
	
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
