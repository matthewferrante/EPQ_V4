
<%
Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
session("DisplayCount")=0
Session("EPQ30755150Page2")=0
Session("EPQ30755000Page2")=0
Session("EPQ30755090Page2")=0
Session("EPQ30755100Page2")=0
Session("TEMP14EPQ30514030Page2")=0
Session("1TEMP14EPQ30514030Page2")=0
Session("2TEMP14EPQ30514030Page2")=0
Session("3TEMP14EPQ30514030Page2")=0
Session("4TEMP14EPQ30514030Page2")=0
Session("5TEMP14EPQ30514030Page2")=0
Session("7TEMP14EPQ30514030Page2")=0
Session("8TEMP14EPQ30514030Page2")=0
Session("9TEMP14EPQ30514030Page2")=0
Session("10TEMP14EPQ30514030Page2")=0
Session("11TEMP14EPQ30514030Page2")=0
Session("TEMP16EPQ30514090Page2")=0

Session("EPQ30754000Page2")=0
Session("EPQ30754050Page2")=0
Session("EPQ30754100Page2")=0
Session("EPQ30754150Page2")=0
Session("EPQ30754200Page2")=0
Session("EPQ30754250Page2")=0
Session("EPQ30754300Page2")=0
Session("EPQ30754350Page2")=0
Session("EPQ30754400Page2")=0
Session("EPQ30754450Page2")=0
Session("EPQ30754500Page2")=0
Session("EPQ30754550Page2")=0
Session("EPQ30754600Page2")=0
Session("EPQ30754650Page2")=0
Session("EPQ30754700Page2")=0
Session("EPQ30754750Page2")=0
Session("EPQ30754800Page2")=0
Session("EPQ30754850Page2")=0
Session("EPQ30754900Page2")=0
Session("EPQ30754950Page2")=0
Session("EPQ30755000Page2")=0
Session("EPQ30755050Page2")=0
Session("EPQ30755100Page2")=0
Session("EPQ30755150Page2")=0
Session("EPQ30755200Page2")=0
Session("EPQ30755250Page2")=0
Session("EPQ30755300Page2")=0
Session("EPQ30755350Page2")=0
Session("EPQ30755400Page2")=0
Session("EPQ30755450Page2")=0
Session("EPQ30755500Page2")=0
Session("EPQ30755550Page2")=0
Session("EPQ30755600Page2")=0
Session("EPQ30755650Page2")=0
Session("EPQ30755700Page2")=0
Session("EPQ30755750Page2")=0
Session("EPQ30755800Page2")=0
Session("EPQ30755850Page2")=0
Session("EPQ30755900Page2")=0
Session("EPQ30755950Page2")=0
Session("EPQ30756000Page2")=0
Session("EPQ30756050Page2")=0
Session("EPQ30756100Page2")=0
Session("EPQ30756150Page2")=0
Session("EPQ30756200Page2")=0
Session("EPQ30756250Page2")=0
Session("EPQ30756300Page2")=0
Session("EPQ30756400Page2")=0
Session("EPQ30756450Page2")=0
Session("EPQ30756500Page2")=0
Session("EPQ30756550Page2")=0
Session("EPQ30756600Page2")=0
Session("EPQ30756650Page2")=0
Session("EPQ30756700Page2")=0
Session("EPQ30756750Page2")=0
Session("EPQ30756800Page2")=0
Session("EPQ30756850Page2")=0
Session("EPQ30756900Page2")=0
Session("EPQ30756950Page2")=0
Session("EPQ30757000Page2")=0
Session("EPQ30757050Page2")=0
Session("EPQ30757100Page2")=0
Session("EPQ30757150Page2")=0
Session("EPQ30757200Page2")=0
Session("EPQ30757250Page2")=0
Session("EPQ30757300Page2")=0
Session("EPQ30757350Page2")=0
Session("EPQ30757400Page2")=0
Session("EPQ30757450Page2")=0
Session("EPQ30757500Page2")=0
Session("EPQ30757550Page2")=0
Session("EPQ30757600Page2")=0
Session("EPQ30757650Page2")=0
Session("EPQ30757700Page2")=0
Session("EPQ30757750Page2")=0
Session("EPQ30757800Page2")=0
Session("EPQ30757850Page2")=0
Session("EPQ30757900Page2")=0
Session("EPQ30757950Page2")=0
Session("EPQ30758000Page2")=0
Session("EPQ30758050Page2")=0
Session("EPQ30758100Page2")=0
Session("EPQ30758150Page2")=0
Session("EPQ30758200Page2")=0
Session("EPQ30758250Page2")=0
Session("EPQ30758300Page2")=0
Session("EPQ30758350Page2")=0
Session("EPQ30758400Page2")=0
Session("EPQ30758450Page2")=0

Session("EPQ30758500Page2")=0
Session("EPQ30758550Page2")=0
Session("EPQ30758600Page2")=0
Session("EPQ30758650Page2")=0
Session("EPQ30758700Page2")=0
Session("EPQ30758750Page2")=0
Session("EPQ30758800Page2")=0
Session("EPQ30758850Page2")=0
Session("EPQ30758900Page2")=0
Session("EPQ30758950Page2")=0
Session("EPQ30759000Page2")=0
Session("EPQ30759050Page2")=0
Session("EPQ30759100Page2")=0
Session("EPQ30759150Page2")=0
Session("EPQ30759200Page2")=0
Session("EPQ30759250Page2")=0
Session("EPQ30759300Page2")=0
Session("EPQ30759350Page2")=0
Session("EPQ30759400Page2")=0
Session("EPQ30759450Page2")=0
Session("EPQ30759500Page2")=0
Session("EPQ30759550Page2")=0
Session("EPQ30759600Page2")=0
Session("EPQ30759650Page2")=0
Session("EPQ30759700Page2")=0
Session("EPQ30759750Page2")=0
Session("EPQ30759800Page2")=0
Session("EPQ30759850Page2")=0
Session("EPQ30759900Page2")=0
Session("EPQ30759950Page2")=0
Session("EPQ30760000Page2")=0
Session("EPQ30760050Page2")=0
Session("EPQ30760100Page2")=0
Session("EPQ30760150Page2")=0
Session("EPQ30760200Page2")=0
Session("EPQ30760250Page2")=0
Session("EPQ30760300Page2")=0
Session("TEMP1EPQ30755800Page2")=0
Session("TEMP1EPQ30756000bPage2")=0
Session("TEMP1EPQ30756100bPage2")=0
Session("TEMP1EPQ30756100bPage2")=0
Session("TEMP1EPQ30756550Page2")=0
Session("TEMP1EPQ30756750Page2")=0
Session("TEMP1EPQ30756800Page2")=0
Session("TEMP1EPQ30756950Page2")=0
Session("TEMP1EPQ30757450Page2")=0
Session("TEMP1EPQ30757600Page2")=0
Session("TEMP1EPQ30757750Page2")=0
Session("TEMP1EPQ30758150Page2")=0
Session("TEMP1EPQ30758200Page2")=0
Session("TEMP1EPQ30758600Page2")=0
Session("TEMP1EPQ30758800Page2")=0
Session("TEMP1EPQ30758900Page2")=0
Session("TEMP1EPQ30759700Page2")=0
Session("TEMP1EPQ30759950Page2")=0
Session("TEMP1EPQ30759950Page2")=0
Session("TEMP2EPQ30754550Page2")=0
Session("TEMP2EPQ30755400Page2")=0
Session("TEMP2EPQ30756100bPage2")=0
Session("TEMP2EPQ30756100bPage2")=0
Session("TEMP2EPQ30756550Page2")=0
Session("TEMP2EPQ30756750Page2")=0
Session("TEMP2EPQ30756800Page2")=0
Session("TEMP2EPQ30757250Page2")=0
Session("TEMP2EPQ30757800Page2")=0
Session("TEMP2EPQ30758650Page2")=0
Session("TEMP2EPQ30759700Page2")=0
Session("TEMP2EPQ30759950Page2")=0
Session("TEMP2EPQ30759950Page2")=0
Session("TEMP3EPQ30755400Page2")=0
Session("TEMP3EPQ30755800Page2")=0
Session("TEMP3EPQ30756100bPage2")=0
Session("TEMP3EPQ30756100bPage2")=0
Session("TEMP3EPQ30756550Page2")=0
Session("TEMP3EPQ30756750Page2")=0
Session("TEMP3EPQ30756800Page2")=0
Session("TEMP3EPQ30757250Page2")=0
Session("TEMP3EPQ30759700Page2")=0
Session("TEMP3EPQ30759950Page2")=0
Session("TEMP3EPQ30759950Page2")=0
Session("TEMP4EPQ30755300Page2")=0
Session("TEMP4EPQ30755400Page2")=0
Session("TEMP4EPQ30755800Page2")=0
Session("TEMP4EPQ30756100bPage2")=0
Session("TEMP4EPQ30756100bPage2")=0
Session("TEMP4EPQ30756750Page2")=0
Session("TEMP4EPQ30759950Page2")=0
Session("TEMP4EPQ30759950Page2")=0
Session("TEMP5EPQ30755300Page2")=0
Session("TEMP5EPQ30755400Page2")=0
Session("TEMP5EPQ30755800Page2")=0
Session("TEMP5EPQ30756100Page2")=0
Session("TEMP5EPQ30756100Page2")=0
Session("TEMP5EPQ30759950Page2")=0
Session("TEMP5EPQ30759950Page2")=0
Session("TEMP6EPQ30755300Page2")=0
Session("TEMP6EPQ30755400Page2")=0
Session("TEMP6EPQ30755800Page2")=0
Session("TEMP6EPQ30756100Page2")=0
Session("TEMP6EPQ30756100Page2")=0
Session("TEMP6EPQ30759950Page2")=0
Session("TEMP7EPQ30755650Page2")=0
Session("TEMP7EPQ30755800Page2")=0
Session("TEMP7EPQ30756100Page2")=0
Session("TEMP7EPQ30756100Page2")=0
Session("TEMP7EPQ30759950Page2")=0
Session("TEMP7EPQ30759950Page2")=0
Session("TEMP8EPQ30755600Page2")=0
Session("TEMP8EPQ30755800Page2")=0
Session("TEMP8EPQ30756100Page2")=0
Session("TEMP8EPQ30756100Page2")=0
Session("TEMP8EPQ30759950Page2")=0
Session("TEMPEPQ30754300Page2")=0
Session("TEMPEPQ30754600Page2")=0
Session("TEMPEPQ30754700Page2")=0
Session("TEMPEPQ30754900Page2")=0
Session("TEMPEPQ30758150Page2")=0
Session("TEMPEPQ30759050Page2")=0
Session("TEMPEPQ30759200Page2")=0
Session("TEMPEPQ30759450Page2")=0
Session("TEMPEPQ30759600Page2")=0
Session("TEMPEPQ30760250Page2")=0

Session("TEMP12EPQ30755000Page2")=0
Session("TEMP13EPQ30514060Page2")=0
Session("TEMP14EPQ30514030Page2")=0
Session("TEMP15EPQ30514030Page2")=0
Session("1TEMP14EPQ30514030Page2")=0
Session("2TEMP14EPQ30514030Page2")=0
Session("3TEMP14EPQ30514030Page2")=0
Session("4TEMP14EPQ30514030Page2")=0
Session("5TEMP14EPQ30514030Page2")=0
Session("7TEMP14EPQ30514030Page2")=0
Session("8TEMP14EPQ30514030Page2")=0
Session("9TEMP14EPQ30514030Page2")=0
Session("10TEMP14EPQ30514030Page2")=0
Session("11TEMP14EPQ30514030Page2")=0
Session("TEMP16EPQ30514090Page2")=0

end if
	

if Request.Form("ispostback")="1" then

if session("EPQ30754000Page2") =1 then
Session("EPQ30754020")=Request.Form("EPQ30754020")
Session("EPQ30754030")=Request.Form("EPQ30754030")
Session("EPQ30754040")=Request.Form("EPQ30754040")
end if
	
if session("EPQ30754050Page2") =1 then
Session("EPQ30754070")=Request.Form("EPQ30754070")
Session("EPQ30754080")=Request.Form("EPQ30754080")
Session("EPQ30754090")=Request.Form("EPQ30754090")
end if

if session("EPQ30754100Page2") =1 then
Session("EPQ30754120")=Request.Form("EPQ30754120")
Session("EPQ30754130")=Request.Form("EPQ30754130")
Session("EPQ30754140")=Request.Form("EPQ30754140")
end if

if session("EPQ30754150Page2") =1 then
Session("EPQ30754170")=Request.Form("EPQ30754170")
Session("EPQ30754180")=Request.Form("EPQ30754180")
Session("EPQ30754190")=Request.Form("EPQ30754190")
end if

if session("EPQ30754200Page2") =1 then
Session("EPQ30754220")=Request.Form("EPQ30754220")
Session("EPQ30754230")=Request.Form("EPQ30754230")
Session("EPQ30754240")=Request.Form("EPQ30754240")
end if

if session("EPQ30754250Page2") =1 then
Session("EPQ30754270")=Request.Form("EPQ30754270")
Session("EPQ30754280")=Request.Form("EPQ30754280")
Session("EPQ30754290")=Request.Form("EPQ30754290")
end if

if session("EPQ30754300Page2") =1 then
Session("EPQ30754320")=Request.Form("EPQ30754320")
Session("EPQ30754330")=Request.Form("EPQ30754330")
Session("EPQ30754340")=Request.Form("EPQ30754340")
end if

if session("EPQ30754350Page2") =1 then
Session("EPQ30754370")=Request.Form("EPQ30754370")
Session("EPQ30754380")=Request.Form("EPQ30754380")
Session("EPQ30754390")=Request.Form("EPQ30754390")
end if

if session("EPQ30754400Page2") =1 then
Session("EPQ30754420")=Request.Form("EPQ30754420")
Session("EPQ30754430")=Request.Form("EPQ30754430")
Session("EPQ30754440")=Request.Form("EPQ30754440")
end if

if session("EPQ30754450Page2") =1 then
Session("EPQ30754470")=Request.Form("EPQ30754470")
Session("EPQ30754480")=Request.Form("EPQ30754480")
Session("EPQ30754490")=Request.Form("EPQ30754490")
end if

if session("EPQ30754500Page2") =1 then
Session("EPQ30754520")=Request.Form("EPQ30754520")
Session("EPQ30754530")=Request.Form("EPQ30754530")
Session("EPQ30754540")=Request.Form("EPQ30754540")
end if

if session("EPQ30754550Page2") =1 then
Session("EPQ30754570")=Request.Form("EPQ30754570")
Session("EPQ30754580")=Request.Form("EPQ30754580")
Session("EPQ30754590")=Request.Form("EPQ30754590")
end if

if session("EPQ30754600Page2") =1 then
Session("EPQ30754620")=Request.Form("EPQ30754620")
Session("EPQ30754630")=Request.Form("EPQ30754630")
Session("EPQ30754640")=Request.Form("EPQ30754640")
end if

if session("EPQ30754650Page2") =1 then
Session("EPQ30754670")=Request.Form("EPQ30754670")
Session("EPQ30754680")=Request.Form("EPQ30754680")
Session("EPQ30754690")=Request.Form("EPQ30754690")
end if

if session("EPQ30754700Page2") =1 then
Session("EPQ30754720")=Request.Form("EPQ30754720")
Session("EPQ30754730")=Request.Form("EPQ30754730")
Session("EPQ30754740")=Request.Form("EPQ30754740")
end if

if session("EPQ30754750Page2") =1 then
Session("EPQ30754770")=Request.Form("EPQ30754770")
Session("EPQ30754780")=Request.Form("EPQ30754780")
Session("EPQ30754790")=Request.Form("EPQ30754790")
end if

if session("EPQ30754800Page2") =1 then
Session("EPQ30754820")=Request.Form("EPQ30754820")
Session("EPQ30754830")=Request.Form("EPQ30754830")
Session("EPQ30754840")=Request.Form("EPQ30754840")
end if

if session("EPQ30754850Page2") =1 then
Session("EPQ30754870")=Request.Form("EPQ30754870")
Session("EPQ30754880")=Request.Form("EPQ30754880")
Session("EPQ30754890")=Request.Form("EPQ30754890")
end if

if session("EPQ30754900Page2") =1 then
Session("EPQ30754920")=Request.Form("EPQ30754920")
Session("EPQ30754930")=Request.Form("EPQ30754930")
Session("EPQ30754940")=Request.Form("EPQ30754940")
end if

if session("EPQ30754950Page2") =1 then
Session("EPQ30754970")=Request.Form("EPQ30754970")
Session("EPQ30754980")=Request.Form("EPQ30754980")
Session("EPQ30754990")=Request.Form("EPQ30754990")
end if

if session("EPQ30755000Page2") =1 then
Session("EPQ30755020")=Request.Form("EPQ30755020")
Session("EPQ30755030")=Request.Form("EPQ30755030")
Session("EPQ30755040")=Request.Form("EPQ30755040")
end if

if session("EPQ30755050Page2") =1 then
Session("EPQ30755070")=Request.Form("EPQ30755070")
Session("EPQ30755080")=Request.Form("EPQ30755080")
Session("EPQ30755090")=Request.Form("EPQ30755090")
end if

if session("EPQ30755100Page2") =1 then
Session("EPQ30755120")=Request.Form("EPQ30755120")
Session("EPQ30755130")=Request.Form("EPQ30755130")
Session("EPQ30755140")=Request.Form("EPQ30755140")
end if

if session("EPQ30755150Page2") =1 then
Session("EPQ30755170")=Request.Form("EPQ30755170")
Session("EPQ30755180")=Request.Form("EPQ30755180")
Session("EPQ30755190")=Request.Form("EPQ30755190")
end if

if session("EPQ30755200Page2") =1 then
Session("EPQ30755220")=Request.Form("EPQ30755220")
Session("EPQ30755230")=Request.Form("EPQ30755230")
Session("EPQ30755240")=Request.Form("EPQ30755240")
end if

if session("EPQ30755250Page2") =1 then
Session("EPQ30755270")=Request.Form("EPQ30755270")
Session("EPQ30755280")=Request.Form("EPQ30755280")
Session("EPQ30755290")=Request.Form("EPQ30755290")
end if

if session("EPQ30755300Page2") =1 then
Session("EPQ30755320")=Request.Form("EPQ30755320")
Session("EPQ30755330")=Request.Form("EPQ30755330")
Session("EPQ30755340")=Request.Form("EPQ30755340")
end if

if session("EPQ30755350Page2") =1 then
Session("EPQ30755370")=Request.Form("EPQ30755370")
Session("EPQ30755380")=Request.Form("EPQ30755380")
Session("EPQ30755390")=Request.Form("EPQ30755390")
end if

if session("EPQ30755400Page2") =1 then
Session("EPQ30755420")=Request.Form("EPQ30755420")
Session("EPQ30755430")=Request.Form("EPQ30755430")
Session("EPQ30755440")=Request.Form("EPQ30755440")
end if

if session("EPQ30755450Page2") =1 then
Session("EPQ30755470")=Request.Form("EPQ30755470")
Session("EPQ30755480")=Request.Form("EPQ30755480")
Session("EPQ30755490")=Request.Form("EPQ30755490")
end if

if session("EPQ30755500Page2") =1 then
Session("EPQ30755520")=Request.Form("EPQ30755520")
Session("EPQ30755530")=Request.Form("EPQ30755530")
Session("EPQ30755540")=Request.Form("EPQ30755540")
end if

if session("EPQ30755550Page2") =1 then
Session("EPQ30755570")=Request.Form("EPQ30755570")
Session("EPQ30755580")=Request.Form("EPQ30755580")
Session("EPQ30755590")=Request.Form("EPQ30755590")
end if

if session("EPQ30755600Page2") =1 then
Session("EPQ30755620")=Request.Form("EPQ30755620")
Session("EPQ30755630")=Request.Form("EPQ30755630")
Session("EPQ30755640")=Request.Form("EPQ30755640")
end if

if session("EPQ30755650Page2") =1 then
Session("EPQ30755670")=Request.Form("EPQ30755670")
Session("EPQ30755680")=Request.Form("EPQ30755680")
Session("EPQ30755690")=Request.Form("EPQ30755690")
end if

if session("EPQ30755700Page2") =1 then
Session("EPQ30755720")=Request.Form("EPQ30755720")
Session("EPQ30755730")=Request.Form("EPQ30755730")
Session("EPQ30755740")=Request.Form("EPQ30755740")
end if

if session("EPQ30755750Page2") =1 then
Session("EPQ30755770")=Request.Form("EPQ30755770")
Session("EPQ30755780")=Request.Form("EPQ30755780")
Session("EPQ30755790")=Request.Form("EPQ30755790")
end if

if session("EPQ30755800Page2") =1 then
Session("EPQ30755820")=Request.Form("EPQ30755820")
Session("EPQ30755830")=Request.Form("EPQ30755830")
Session("EPQ30755840")=Request.Form("EPQ30755840")
end if

if session("EPQ30755850Page2") =1 then
Session("EPQ30755870")=Request.Form("EPQ30755870")
Session("EPQ30755880")=Request.Form("EPQ30755880")
Session("EPQ30755890")=Request.Form("EPQ30755890")
end if

if session("EPQ30755900Page2") =1 then
Session("EPQ30755920")=Request.Form("EPQ30755920")
Session("EPQ30755930")=Request.Form("EPQ30755930")
Session("EPQ30755940")=Request.Form("EPQ30755940")
end if

if session("EPQ30755950Page2") =1 then
Session("EPQ30755970")=Request.Form("EPQ30755970")
Session("EPQ30755980")=Request.Form("EPQ30755980")
Session("EPQ30755990")=Request.Form("EPQ30755990")
end if

if session("EPQ30756000Page2") =1 then
Session("EPQ30756020")=Request.Form("EPQ30756020")
Session("EPQ30756030")=Request.Form("EPQ30756030")
Session("EPQ30756040")=Request.Form("EPQ30756040")
end if

if session("EPQ30756050Page2") =1 then
Session("EPQ30756070")=Request.Form("EPQ30756070")
Session("EPQ30756080")=Request.Form("EPQ30756080")
Session("EPQ30756090")=Request.Form("EPQ30756090")
end if

if session("EPQ30756100Page2") =1 then
Session("EPQ30756120")=Request.Form("EPQ30756120")
Session("EPQ30756130")=Request.Form("EPQ30756130")
Session("EPQ30756140")=Request.Form("EPQ30756140")
end if

if session("EPQ30756150Page2") =1 then
Session("EPQ30756170")=Request.Form("EPQ30756170")
Session("EPQ30756180")=Request.Form("EPQ30756180")
Session("EPQ30756190")=Request.Form("EPQ30756190")
end if

if session("EPQ30756200Page2") =1 then
Session("EPQ30756220")=Request.Form("EPQ30756220")
Session("EPQ30756230")=Request.Form("EPQ30756230")
Session("EPQ30756240")=Request.Form("EPQ30756240")
end if

if session("EPQ30756250Page2") =1 then
Session("EPQ30756270")=Request.Form("EPQ30756270")
Session("EPQ30756280")=Request.Form("EPQ30756280")
Session("EPQ30756290")=Request.Form("EPQ30756290")
end if

if session("EPQ30756300Page2") =1 then
Session("EPQ30756320")=Request.Form("EPQ30756320")
Session("EPQ30756330")=Request.Form("EPQ30756330")
Session("EPQ30756340")=Request.Form("EPQ30756340")
end if

if session("EPQ30756400Page2") =1 then
Session("EPQ30756420")=Request.Form("EPQ30756420")
Session("EPQ30756430")=Request.Form("EPQ30756430")
Session("EPQ30756440")=Request.Form("EPQ30756440")
end if

if session("EPQ30756450Page2") =1 then
Session("EPQ30756470")=Request.Form("EPQ30756470")
Session("EPQ30756480")=Request.Form("EPQ30756480")
Session("EPQ30756490")=Request.Form("EPQ30756490")
end if

if session("EPQ30756500Page2") =1 then
Session("EPQ30756520")=Request.Form("EPQ30756520")
Session("EPQ30756530")=Request.Form("EPQ30756530")
Session("EPQ30756540")=Request.Form("EPQ30756540")
end if

if session("EPQ30756550Page2") =1 then
Session("EPQ30756570")=Request.Form("EPQ30756570")
Session("EPQ30756580")=Request.Form("EPQ30756580")
Session("EPQ30756590")=Request.Form("EPQ30756590")
end if

if session("EPQ30756600Page2") =1 then
Session("EPQ30756620")=Request.Form("EPQ30756620")
Session("EPQ30756630")=Request.Form("EPQ30756630")
Session("EPQ30756640")=Request.Form("EPQ30756640")
end if

if session("EPQ30756650Page2") =1 then
Session("EPQ30756670")=Request.Form("EPQ30756670")
Session("EPQ30756680")=Request.Form("EPQ30756680")
Session("EPQ30756690")=Request.Form("EPQ30756690")
end if

if session("EPQ30756700Page2") =1 then
Session("EPQ30756720")=Request.Form("EPQ30756720")
Session("EPQ30756730")=Request.Form("EPQ30756730")
Session("EPQ30756740")=Request.Form("EPQ30756740")
end if

if session("EPQ30756750Page2") =1 then
Session("EPQ30756770")=Request.Form("EPQ30756770")
Session("EPQ30756780")=Request.Form("EPQ30756780")
Session("EPQ30756790")=Request.Form("EPQ30756790")
end if

if session("EPQ30756800Page2") =1 then
Session("EPQ30756820")=Request.Form("EPQ30756820")
Session("EPQ30756830")=Request.Form("EPQ30756830")
Session("EPQ30756840")=Request.Form("EPQ30756840")
end if

if session("EPQ30756850Page2") =1 then
Session("EPQ30756870")=Request.Form("EPQ30756870")
Session("EPQ30756880")=Request.Form("EPQ30756880")
Session("EPQ30756890")=Request.Form("EPQ30756890")
end if

if session("EPQ30756900Page2") =1 then
Session("EPQ30756920")=Request.Form("EPQ30756920")
Session("EPQ30756930")=Request.Form("EPQ30756930")
Session("EPQ30756940")=Request.Form("EPQ30756940")
end if

if session("EPQ30756950Page2") =1 then
Session("EPQ30756970")=Request.Form("EPQ30756970")
Session("EPQ30756980")=Request.Form("EPQ30756980")
Session("EPQ30756990")=Request.Form("EPQ30756990")
end if

if session("EPQ30757000Page2") =1 then
Session("EPQ30757020")=Request.Form("EPQ30757020")
Session("EPQ30757030")=Request.Form("EPQ30757030")
Session("EPQ30757040")=Request.Form("EPQ30757040")
end if

if session("EPQ30757050Page2") =1 then
Session("EPQ30757070")=Request.Form("EPQ30757070")
Session("EPQ30757080")=Request.Form("EPQ30757080")
Session("EPQ30757090")=Request.Form("EPQ30757090")
end if

if session("EPQ30757100Page2") =1 then
Session("EPQ30757120")=Request.Form("EPQ30757120")
Session("EPQ30757130")=Request.Form("EPQ30757130")
Session("EPQ30757140")=Request.Form("EPQ30757140")
end if

if session("EPQ30757150Page2") =1 then
Session("EPQ30757170")=Request.Form("EPQ30757170")
Session("EPQ30757180")=Request.Form("EPQ30757180")
Session("EPQ30757190")=Request.Form("EPQ30757190")
end if

if session("EPQ30757200Page2") =1 then
Session("EPQ30757220")=Request.Form("EPQ30757220")
Session("EPQ30757230")=Request.Form("EPQ30757230")
Session("EPQ30757240")=Request.Form("EPQ30757240")
end if

if session("EPQ30757250Page2") =1 then
Session("EPQ30757270")=Request.Form("EPQ30757270")
Session("EPQ30757280")=Request.Form("EPQ30757280")
Session("EPQ30757290")=Request.Form("EPQ30757290")
end if

if session("EPQ30757300Page2") =1 then
Session("EPQ30757320")=Request.Form("EPQ30757320")
Session("EPQ30757330")=Request.Form("EPQ30757330")
Session("EPQ30757340")=Request.Form("EPQ30757340")
end if

if session("EPQ30757350Page2") =1 then
Session("EPQ30757370")=Request.Form("EPQ30757370")
Session("EPQ30757380")=Request.Form("EPQ30757380")
Session("EPQ30757390")=Request.Form("EPQ30757390")
end if

if session("EPQ30757400Page2") =1 then
Session("EPQ30757420")=Request.Form("EPQ30757420")
Session("EPQ30757430")=Request.Form("EPQ30757430")
Session("EPQ30757440")=Request.Form("EPQ30757440")
end if

if session("EPQ30757450Page2") =1 then
Session("EPQ30757470")=Request.Form("EPQ30757470")
Session("EPQ30757480")=Request.Form("EPQ30757480")
Session("EPQ30757490")=Request.Form("EPQ30757490")
end if

if session("EPQ30757500Page2") =1 then
Session("EPQ30757520")=Request.Form("EPQ30757520")
Session("EPQ30757530")=Request.Form("EPQ30757530")
Session("EPQ30757540")=Request.Form("EPQ30757540")
end if

if session("EPQ30757550Page2") =1 then
Session("EPQ30757570")=Request.Form("EPQ30757570")
Session("EPQ30757580")=Request.Form("EPQ30757580")
Session("EPQ30757590")=Request.Form("EPQ30757590")
end if

if session("EPQ30757600Page2") =1 then
Session("EPQ30757620")=Request.Form("EPQ30757620")
Session("EPQ30757630")=Request.Form("EPQ30757630")
Session("EPQ30757640")=Request.Form("EPQ30757640")
end if

if session("EPQ30757650Page2") =1 then
Session("EPQ30757670")=Request.Form("EPQ30757670")
Session("EPQ30757680")=Request.Form("EPQ30757680")
Session("EPQ30757690")=Request.Form("EPQ30757690")
end if

if session("EPQ30757700Page2") =1 then
Session("EPQ30757720")=Request.Form("EPQ30757720")
Session("EPQ30757730")=Request.Form("EPQ30757730")
Session("EPQ30757740")=Request.Form("EPQ30757740")
end if

if session("EPQ30757750Page2") =1 then
Session("EPQ30757770")=Request.Form("EPQ30757770")
Session("EPQ30757780")=Request.Form("EPQ30757780")
Session("EPQ30757790")=Request.Form("EPQ30757790")
end if

if session("EPQ30757800Page2") =1 then
Session("EPQ30757820")=Request.Form("EPQ30757820")
Session("EPQ30757830")=Request.Form("EPQ30757830")
Session("EPQ30757840")=Request.Form("EPQ30757840")
end if

if session("EPQ30757850Page2") =1 then
Session("EPQ30757870")=Request.Form("EPQ30757870")
Session("EPQ30757880")=Request.Form("EPQ30757880")
Session("EPQ30757890")=Request.Form("EPQ30757890")
end if

if session("EPQ30757900Page2") =1 then
Session("EPQ30757920")=Request.Form("EPQ30757920")
Session("EPQ30757930")=Request.Form("EPQ30757930")
Session("EPQ30757940")=Request.Form("EPQ30757940")
end if

if session("EPQ30757950Page2") =1 then
Session("EPQ30757970")=Request.Form("EPQ30757970")
Session("EPQ30757980")=Request.Form("EPQ30757980")
Session("EPQ30757990")=Request.Form("EPQ30757990")
end if

if session("EPQ30758000Page2") =1 then
Session("EPQ30758020")=Request.Form("EPQ30758020")
Session("EPQ30758030")=Request.Form("EPQ30758030")
Session("EPQ30758040")=Request.Form("EPQ30758040")
end if

if session("EPQ30758050Page2") =1 then
Session("EPQ30758070")=Request.Form("EPQ30758070")
Session("EPQ30758080")=Request.Form("EPQ30758080")
Session("EPQ30758090")=Request.Form("EPQ30758090")
end if

if session("EPQ30758100Page2") =1 then
Session("EPQ30758120")=Request.Form("EPQ30758120")
Session("EPQ30758130")=Request.Form("EPQ30758130")
Session("EPQ30758140")=Request.Form("EPQ30758140")
end if

if session("EPQ30758150Page2") =1 then
Session("EPQ30758170")=Request.Form("EPQ30758170")
Session("EPQ30758180")=Request.Form("EPQ30758180")
Session("EPQ30758190")=Request.Form("EPQ30758190")
end if

if session("EPQ30758200Page2") =1 then
Session("EPQ30758220")=Request.Form("EPQ30758220")
Session("EPQ30758230")=Request.Form("EPQ30758230")
Session("EPQ30758240")=Request.Form("EPQ30758240")
end if

if session("EPQ30758250Page2") =1 then
Session("EPQ30758270")=Request.Form("EPQ30758270")
Session("EPQ30758280")=Request.Form("EPQ30758280")
Session("EPQ30758290")=Request.Form("EPQ30758290")
end if

if session("EPQ30758300Page2") =1 then
Session("EPQ30758320")=Request.Form("EPQ30758320")
Session("EPQ30758330")=Request.Form("EPQ30758330")
Session("EPQ30758340")=Request.Form("EPQ30758340")
end if

if session("EPQ30758350Page2") =1 then
Session("EPQ30758370")=Request.Form("EPQ30758370")
Session("EPQ30758380")=Request.Form("EPQ30758380")
Session("EPQ30758390")=Request.Form("EPQ30758390")
end if

if session("EPQ30758400Page2") =1 then
Session("EPQ30758420")=Request.Form("EPQ30758420")
Session("EPQ30758430")=Request.Form("EPQ30758430")
Session("EPQ30758440")=Request.Form("EPQ30758440")
end if

if session("EPQ30758450Page2") =1 then
Session("EPQ30758470")=Request.Form("EPQ30758470")
Session("EPQ30758480")=Request.Form("EPQ30758480")
Session("EPQ30758490")=Request.Form("EPQ30758490")
end if

if session("EPQ30758500Page2") =1 then
Session("EPQ30758520")=Request.Form("EPQ30758520")
Session("EPQ30758530")=Request.Form("EPQ30758530")
Session("EPQ30758540")=Request.Form("EPQ30758540")
end if

if session("EPQ30758550Page2") =1 then
Session("EPQ30758570")=Request.Form("EPQ30758570")
Session("EPQ30758580")=Request.Form("EPQ30758580")
Session("EPQ30758590")=Request.Form("EPQ30758590")
end if

if session("EPQ30758600Page2") =1 then
Session("EPQ30758620")=Request.Form("EPQ30758620")
Session("EPQ30758630")=Request.Form("EPQ30758630")
Session("EPQ30758640")=Request.Form("EPQ30758640")
end if

if session("EPQ30758650Page2") =1 then
Session("EPQ30758670")=Request.Form("EPQ30758670")
Session("EPQ30758680")=Request.Form("EPQ30758680")
Session("EPQ30758690")=Request.Form("EPQ30758690")
end if

if session("EPQ30758700Page2") =1 then
Session("EPQ30758720")=Request.Form("EPQ30758720")
Session("EPQ30758730")=Request.Form("EPQ30758730")
Session("EPQ30758740")=Request.Form("EPQ30758740")
end if

if session("EPQ30758750Page2") =1 then
Session("EPQ30758770")=Request.Form("EPQ30758770")
Session("EPQ30758780")=Request.Form("EPQ30758780")
Session("EPQ30758790")=Request.Form("EPQ30758790")
end if

if session("EPQ30758800Page2") =1 then
Session("EPQ30758820")=Request.Form("EPQ30758820")
Session("EPQ30758830")=Request.Form("EPQ30758830")
Session("EPQ30758840")=Request.Form("EPQ30758840")
end if

if session("EPQ30758850Page2") =1 then
Session("EPQ30758870")=Request.Form("EPQ30758870")
Session("EPQ30758880")=Request.Form("EPQ30758880")
Session("EPQ30758890")=Request.Form("EPQ30758890")
end if

if session("EPQ30758900Page2") =1 then
Session("EPQ30758920")=Request.Form("EPQ30758920")
Session("EPQ30758930")=Request.Form("EPQ30758930")
Session("EPQ30758940")=Request.Form("EPQ30758940")
end if

if session("EPQ30758950Page2") =1 then
Session("EPQ30758970")=Request.Form("EPQ30758970")
Session("EPQ30758980")=Request.Form("EPQ30758980")
Session("EPQ30758990")=Request.Form("EPQ30758990")
end if

if session("EPQ30759000Page2") =1 then
Session("EPQ30759020")=Request.Form("EPQ30759020")
Session("EPQ30759030")=Request.Form("EPQ30759030")
Session("EPQ30759040")=Request.Form("EPQ30759040")
end if

if session("EPQ30759050Page2") =1 then
Session("EPQ30759070")=Request.Form("EPQ30759070")
Session("EPQ30759080")=Request.Form("EPQ30759080")
Session("EPQ30759090")=Request.Form("EPQ30759090")
end if

if session("EPQ30759100Page2") =1 then
Session("EPQ30759120")=Request.Form("EPQ30759120")
Session("EPQ30759130")=Request.Form("EPQ30759130")
Session("EPQ30759140")=Request.Form("EPQ30759140")
end if

if session("EPQ30759150Page2") =1 then
Session("EPQ30759170")=Request.Form("EPQ30759170")
Session("EPQ30759180")=Request.Form("EPQ30759180")
Session("EPQ30759190")=Request.Form("EPQ30759190")
end if

if session("EPQ30759200Page2") =1 then
Session("EPQ30759220")=Request.Form("EPQ30759220")
Session("EPQ30759230")=Request.Form("EPQ30759230")
Session("EPQ30759240")=Request.Form("EPQ30759240")
end if

if session("EPQ30759250Page2") =1 then
Session("EPQ30759270")=Request.Form("EPQ30759270")
Session("EPQ30759280")=Request.Form("EPQ30759280")
Session("EPQ30759290")=Request.Form("EPQ30759290")
end if

if session("EPQ30759300Page2") =1 then
Session("EPQ30759320")=Request.Form("EPQ30759320")
Session("EPQ30759330")=Request.Form("EPQ30759330")
Session("EPQ30759340")=Request.Form("EPQ30759340")
end if

if session("EPQ30759350Page2") =1 then
Session("EPQ30759370")=Request.Form("EPQ30759370")
Session("EPQ30759380")=Request.Form("EPQ30759380")
Session("EPQ30759390")=Request.Form("EPQ30759390")
end if

if session("EPQ30759400Page2") =1 then
Session("EPQ30759420")=Request.Form("EPQ30759420")
Session("EPQ30759430")=Request.Form("EPQ30759430")
Session("EPQ30759440")=Request.Form("EPQ30759440")
end if

if session("EPQ30759450Page2") =1 then
Session("EPQ30759470")=Request.Form("EPQ30759470")
Session("EPQ30759480")=Request.Form("EPQ30759480")
Session("EPQ30759490")=Request.Form("EPQ30759490")
end if

if session("EPQ30759500Page2") =1 then
Session("EPQ30759520")=Request.Form("EPQ30759520")
Session("EPQ30759530")=Request.Form("EPQ30759530")
Session("EPQ30759540")=Request.Form("EPQ30759540")
end if

if session("EPQ30759550Page2") =1 then
Session("EPQ30759570")=Request.Form("EPQ30759570")
Session("EPQ30759580")=Request.Form("EPQ30759580")
Session("EPQ30759590")=Request.Form("EPQ30759590")
end if

if session("EPQ30759600Page2") =1 then
Session("EPQ30759620")=Request.Form("EPQ30759620")
Session("EPQ30759630")=Request.Form("EPQ30759630")
Session("EPQ30759640")=Request.Form("EPQ30759640")
end if

if session("EPQ30759650Page2") =1 then
Session("EPQ30759670")=Request.Form("EPQ30759670")
Session("EPQ30759680")=Request.Form("EPQ30759680")
Session("EPQ30759690")=Request.Form("EPQ30759690")
end if

if session("EPQ30759700Page2") =1 then
Session("EPQ30759720")=Request.Form("EPQ30759720")
Session("EPQ30759730")=Request.Form("EPQ30759730")
Session("EPQ30759740")=Request.Form("EPQ30759740")
end if

if session("EPQ30759750Page2") =1 then
Session("EPQ30759770")=Request.Form("EPQ30759770")
Session("EPQ30759780")=Request.Form("EPQ30759780")
Session("EPQ30759790")=Request.Form("EPQ30759790")
end if

if session("EPQ30759800Page2") =1 then
Session("EPQ30759820")=Request.Form("EPQ30759820")
Session("EPQ30759830")=Request.Form("EPQ30759830")
Session("EPQ30759840")=Request.Form("EPQ30759840")
end if

if session("EPQ30759850Page2") =1 then
Session("EPQ30759870")=Request.Form("EPQ30759870")
Session("EPQ30759880")=Request.Form("EPQ30759880")
Session("EPQ30759890")=Request.Form("EPQ30759890")
end if

if session("EPQ30759900Page2") =1 then
Session("EPQ30759920")=Request.Form("EPQ30759920")
Session("EPQ30759930")=Request.Form("EPQ30759930")
Session("EPQ30759940")=Request.Form("EPQ30759940")
end if

if session("EPQ30759950Page2") =1 then
Session("EPQ30759970")=Request.Form("EPQ30759970")
Session("EPQ30759980")=Request.Form("EPQ30759980")
Session("EPQ30759990")=Request.Form("EPQ30759990")
end if

if session("EPQ30760000Page2") =1 then
Session("EPQ30760020")=Request.Form("EPQ30760020")
Session("EPQ30760030")=Request.Form("EPQ30760030")
Session("EPQ30760040")=Request.Form("EPQ30760040")
end if

if session("EPQ30760050Page2") =1 then
Session("EPQ30760070")=Request.Form("EPQ30760070")
Session("EPQ30760080")=Request.Form("EPQ30760080")
Session("EPQ30760090")=Request.Form("EPQ30760090")
end if

if session("EPQ30760100Page2") =1 then
Session("EPQ30760120")=Request.Form("EPQ30760120")
Session("EPQ30760130")=Request.Form("EPQ30760130")
Session("EPQ30760140")=Request.Form("EPQ30760140")
end if

if session("EPQ30760150Page2") =1 then
Session("EPQ30760170")=Request.Form("EPQ30760170")
Session("EPQ30760180")=Request.Form("EPQ30760180")
Session("EPQ30760190")=Request.Form("EPQ30760190")
end if

if session("EPQ30760200Page2") =1 then
Session("EPQ30760220")=Request.Form("EPQ30760220")
Session("EPQ30760230")=Request.Form("EPQ30760230")
Session("EPQ30760240")=Request.Form("EPQ30760240")
end if

if session("EPQ30760250Page2") =1 then
Session("EPQ30760270")=Request.Form("EPQ30760270")
Session("EPQ30760280")=Request.Form("EPQ30760280")
Session("EPQ30760290")=Request.Form("EPQ30760290")
end if

if session("EPQ30760300Page2") =1 then
Session("EPQ30760320")=Request.Form("EPQ30760320")
Session("EPQ30760330")=Request.Form("EPQ30760330")
Session("EPQ30760340")=Request.Form("EPQ30760340")
end if

if Session("TEMP1EPQ30754550Page2")= 1 then
Session("TEMP1EPQ30754550N")=Request.Form("TEMP1EPQ30754550N")
Session("TEMP1EPQ30754550MM")=Request.Form("TEMP1EPQ30754550MM")
Session("TEMP1EPQ30754550YY")=Request.Form("TEMP1EPQ30754550YY")
end if
if Session("TEMP1EPQ30755400Page2")= 1 then
Session("TEMP1EPQ30755400N")=Request.Form("TEMP1EPQ30755400N")
Session("TEMP1EPQ30755400MM")=Request.Form("TEMP1EPQ30755400MM")
Session("TEMP1EPQ30755400YY")=Request.Form("TEMP1EPQ30755400YY")
end if
if Session("TEMP1EPQ30755800Page2")= 1 then
Session("TEMP1EPQ30755800N")=Request.Form("TEMP1EPQ30755800N")
Session("TEMP1EPQ30755800MM")=Request.Form("TEMP1EPQ30755800MM")
Session("TEMP1EPQ30755800YY")=Request.Form("TEMP1EPQ30755800YY")
end if
if Session("TEMP1EPQ30756000bPage2")= 1 then
Session("TEMP1EPQ30756000bN")=Request.Form("TEMP1EPQ30756000bN")
Session("TEMP1EPQ30756000bMM")=Request.Form("TEMP1EPQ30756000bMM")
Session("TEMP1EPQ30756000bYY")=Request.Form("TEMP1EPQ30756000bYY")
end if
if Session("TEMP1EPQ30756100bPage2")= 1 then
Session("TEMP1EPQ30756100bN")=Request.Form("TEMP1EPQ30756100bN")
Session("TEMP1EPQ30756100bMM")=Request.Form("TEMP1EPQ30756100bMM")
Session("TEMP1EPQ30756100bYY")=Request.Form("TEMP1EPQ30756100bYY")
end if
if Session("TEMP1EPQ30756100bPage2")= 1 then
Session("TEMP1EPQ30756100bN")=Request.Form("TEMP1EPQ30756100bN")
Session("TEMP1EPQ30756100bMM")=Request.Form("TEMP1EPQ30756100bMM")
Session("TEMP1EPQ30756100bYY")=Request.Form("TEMP1EPQ30756100bYY")
end if
if Session("TEMP1EPQ30756550Page2")= 1 then
Session("TEMP1EPQ30756550N")=Request.Form("TEMP1EPQ30756550N")
Session("TEMP1EPQ30756550MM")=Request.Form("TEMP1EPQ30756550MM")
Session("TEMP1EPQ30756550YY")=Request.Form("TEMP1EPQ30756550YY")
end if
if Session("TEMP1EPQ30756750Page2")= 1 then
Session("TEMP1EPQ30756750N")=Request.Form("TEMP1EPQ30756750N")
Session("TEMP1EPQ30756750MM")=Request.Form("TEMP1EPQ30756750MM")
Session("TEMP1EPQ30756750YY")=Request.Form("TEMP1EPQ30756750YY")
end if
if Session("TEMP1EPQ30756800Page2")= 1 then
Session("TEMP1EPQ30756800N")=Request.Form("TEMP1EPQ30756800N")
Session("TEMP1EPQ30756800MM")=Request.Form("TEMP1EPQ30756800MM")
Session("TEMP1EPQ30756800YY")=Request.Form("TEMP1EPQ30756800YY")
end if
if Session("TEMP1EPQ30756950Page2")= 1 then
Session("TEMP1EPQ30756950N")=Request.Form("TEMP1EPQ30756950N")
Session("TEMP1EPQ30756950MM")=Request.Form("TEMP1EPQ30756950MM")
Session("TEMP1EPQ30756950YY")=Request.Form("TEMP1EPQ30756950YY")
end if
if Session("TEMP1EPQ30757450Page2")= 1 then
Session("TEMP1EPQ30757450N")=Request.Form("TEMP1EPQ30757450N")
Session("TEMP1EPQ30757450MM")=Request.Form("TEMP1EPQ30757450MM")
Session("TEMP1EPQ30757450YY")=Request.Form("TEMP1EPQ30757450YY")
end if
if Session("TEMP1EPQ30757600Page2")= 1 then
Session("TEMP1EPQ30757600N")=Request.Form("TEMP1EPQ30757600N")
Session("TEMP1EPQ30757600MM")=Request.Form("TEMP1EPQ30757600MM")
Session("TEMP1EPQ30757600YY")=Request.Form("TEMP1EPQ30757600YY")
end if
if Session("TEMP1EPQ30757750Page2")= 1 then
Session("TEMP1EPQ30757750N")=Request.Form("TEMP1EPQ30757750N")
Session("TEMP1EPQ30757750MM")=Request.Form("TEMP1EPQ30757750MM")
Session("TEMP1EPQ30757750YY")=Request.Form("TEMP1EPQ30757750YY")
end if
if Session("TEMP1EPQ30758150Page2")= 1 then
Session("TEMP1EPQ30758150N")=Request.Form("TEMP1EPQ30758150N")
Session("TEMP1EPQ30758150MM")=Request.Form("TEMP1EPQ30758150MM")
Session("TEMP1EPQ30758150YY")=Request.Form("TEMP1EPQ30758150YY")
end if
if Session("TEMP1EPQ30758200Page2")= 1 then
Session("TEMP1EPQ30758200N")=Request.Form("TEMP1EPQ30758200N")
Session("TEMP1EPQ30758200MM")=Request.Form("TEMP1EPQ30758200MM")
Session("TEMP1EPQ30758200YY")=Request.Form("TEMP1EPQ30758200YY")
end if
if Session("TEMP1EPQ30758600Page2")= 1 then
Session("TEMP1EPQ30758600N")=Request.Form("TEMP1EPQ30758600N")
Session("TEMP1EPQ30758600MM")=Request.Form("TEMP1EPQ30758600MM")
Session("TEMP1EPQ30758600YY")=Request.Form("TEMP1EPQ30758600YY")
end if
if Session("TEMP1EPQ30758800Page2")= 1 then
Session("TEMP1EPQ30758800N")=Request.Form("TEMP1EPQ30758800N")
Session("TEMP1EPQ30758800MM")=Request.Form("TEMP1EPQ30758800MM")
Session("TEMP1EPQ30758800YY")=Request.Form("TEMP1EPQ30758800YY")
end if
if Session("TEMP1EPQ30758900Page2")= 1 then
Session("TEMP1EPQ30758900N")=Request.Form("TEMP1EPQ30758900N")
Session("TEMP1EPQ30758900MM")=Request.Form("TEMP1EPQ30758900MM")
Session("TEMP1EPQ30758900YY")=Request.Form("TEMP1EPQ30758900YY")
end if
if Session("TEMP1EPQ30759700Page2")= 1 then
Session("TEMP1EPQ30759700N")=Request.Form("TEMP1EPQ30759700N")
Session("TEMP1EPQ30759700MM")=Request.Form("TEMP1EPQ30759700MM")
Session("TEMP1EPQ30759700YY")=Request.Form("TEMP1EPQ30759700YY")
end if
if Session("TEMP1EPQ30759950Page2")= 1 then
Session("TEMP1EPQ30759950N")=Request.Form("TEMP1EPQ30759950N")
Session("TEMP1EPQ30759950MM")=Request.Form("TEMP1EPQ30759950MM")
Session("TEMP1EPQ30759950YY")=Request.Form("TEMP1EPQ30759950YY")
end if
if Session("TEMP1EPQ30759950Page2")= 1 then
Session("TEMP1EPQ30759950N")=Request.Form("TEMP1EPQ30759950N")
Session("TEMP1EPQ30759950MM")=Request.Form("TEMP1EPQ30759950MM")
Session("TEMP1EPQ30759950YY")=Request.Form("TEMP1EPQ30759950YY")
end if
if Session("TEMP2EPQ30754550Page2")= 1 then
Session("TEMP2EPQ30754550N")=Request.Form("TEMP2EPQ30754550N")
Session("TEMP2EPQ30754550MM")=Request.Form("TEMP2EPQ30754550MM")
Session("TEMP2EPQ30754550YY")=Request.Form("TEMP2EPQ30754550YY")
end if
if Session("TEMP2EPQ30755400Page2")= 1 then
Session("TEMP2EPQ30755400N")=Request.Form("TEMP2EPQ30755400N")
Session("TEMP2EPQ30755400MM")=Request.Form("TEMP2EPQ30755400MM")
Session("TEMP2EPQ30755400YY")=Request.Form("TEMP2EPQ30755400YY")
end if
if Session("TEMP2EPQ30756100bPage2")= 1 then
Session("TEMP2EPQ30756100bN")=Request.Form("TEMP2EPQ30756100bN")
Session("TEMP2EPQ30756100bMM")=Request.Form("TEMP2EPQ30756100bMM")
Session("TEMP2EPQ30756100bYY")=Request.Form("TEMP2EPQ30756100bYY")
end if
if Session("TEMP2EPQ30756100bPage2")= 1 then
Session("TEMP2EPQ30756100bN")=Request.Form("TEMP2EPQ30756100bN")
Session("TEMP2EPQ30756100bMM")=Request.Form("TEMP2EPQ30756100bMM")
Session("TEMP2EPQ30756100bYY")=Request.Form("TEMP2EPQ30756100bYY")
end if
if Session("TEMP2EPQ30756550Page2")= 1 then
Session("TEMP2EPQ30756550N")=Request.Form("TEMP2EPQ30756550N")
Session("TEMP2EPQ30756550MM")=Request.Form("TEMP2EPQ30756550MM")
Session("TEMP2EPQ30756550YY")=Request.Form("TEMP2EPQ30756550YY")
end if
if Session("TEMP2EPQ30756750Page2")= 1 then
Session("TEMP2EPQ30756750N")=Request.Form("TEMP2EPQ30756750N")
Session("TEMP2EPQ30756750MM")=Request.Form("TEMP2EPQ30756750MM")
Session("TEMP2EPQ30756750YY")=Request.Form("TEMP2EPQ30756750YY")
end if
if Session("TEMP2EPQ30756800Page2")= 1 then
Session("TEMP2EPQ30756800N")=Request.Form("TEMP2EPQ30756800N")
Session("TEMP2EPQ30756800MM")=Request.Form("TEMP2EPQ30756800MM")
Session("TEMP2EPQ30756800YY")=Request.Form("TEMP2EPQ30756800YY")
end if
if Session("TEMP2EPQ30757250Page2")= 1 then
Session("TEMP2EPQ30757250N")=Request.Form("TEMP2EPQ30757250N")
Session("TEMP2EPQ30757250MM")=Request.Form("TEMP2EPQ30757250MM")
Session("TEMP2EPQ30757250YY")=Request.Form("TEMP2EPQ30757250YY")
end if
if Session("TEMP2EPQ30757800Page2")= 1 then
Session("TEMP2EPQ30757800N")=Request.Form("TEMP2EPQ30757800N")
Session("TEMP2EPQ30757800MM")=Request.Form("TEMP2EPQ30757800MM")
Session("TEMP2EPQ30757800YY")=Request.Form("TEMP2EPQ30757800YY")
end if
if Session("TEMP2EPQ30758650Page2")= 1 then
Session("TEMP2EPQ30758650N")=Request.Form("TEMP2EPQ30758650N")
Session("TEMP2EPQ30758650MM")=Request.Form("TEMP2EPQ30758650MM")
Session("TEMP2EPQ30758650YY")=Request.Form("TEMP2EPQ30758650YY")
end if
if Session("TEMP2EPQ30759700Page2")= 1 then
Session("TEMP2EPQ30759700N")=Request.Form("TEMP2EPQ30759700N")
Session("TEMP2EPQ30759700MM")=Request.Form("TEMP2EPQ30759700MM")
Session("TEMP2EPQ30759700YY")=Request.Form("TEMP2EPQ30759700YY")
end if
if Session("TEMP2EPQ30759950Page2")= 1 then
Session("TEMP2EPQ30759950N")=Request.Form("TEMP2EPQ30759950N")
Session("TEMP2EPQ30759950MM")=Request.Form("TEMP2EPQ30759950MM")
Session("TEMP2EPQ30759950YY")=Request.Form("TEMP2EPQ30759950YY")
end if
if Session("TEMP2EPQ30759950Page2")= 1 then
Session("TEMP2EPQ30759950N")=Request.Form("TEMP2EPQ30759950N")
Session("TEMP2EPQ30759950MM")=Request.Form("TEMP2EPQ30759950MM")
Session("TEMP2EPQ30759950YY")=Request.Form("TEMP2EPQ30759950YY")
end if
if Session("TEMP3EPQ30755400Page2")= 1 then
Session("TEMP3EPQ30755400N")=Request.Form("TEMP3EPQ30755400N")
Session("TEMP3EPQ30755400MM")=Request.Form("TEMP3EPQ30755400MM")
Session("TEMP3EPQ30755400YY")=Request.Form("TEMP3EPQ30755400YY")
end if
if Session("TEMP3EPQ30755800Page2")= 1 then
Session("TEMP3EPQ30755800N")=Request.Form("TEMP3EPQ30755800N")
Session("TEMP3EPQ30755800MM")=Request.Form("TEMP3EPQ30755800MM")
Session("TEMP3EPQ30755800YY")=Request.Form("TEMP3EPQ30755800YY")
end if
if Session("TEMP3EPQ30756100bPage2")= 1 then
Session("TEMP3EPQ30756100bN")=Request.Form("TEMP3EPQ30756100bN")
Session("TEMP3EPQ30756100bMM")=Request.Form("TEMP3EPQ30756100bMM")
Session("TEMP3EPQ30756100bYY")=Request.Form("TEMP3EPQ30756100bYY")
end if
if Session("TEMP3EPQ30756100bPage2")= 1 then
Session("TEMP3EPQ30756100bN")=Request.Form("TEMP3EPQ30756100bN")
Session("TEMP3EPQ30756100bMM")=Request.Form("TEMP3EPQ30756100bMM")
Session("TEMP3EPQ30756100bYY")=Request.Form("TEMP3EPQ30756100bYY")
end if
if Session("TEMP3EPQ30756550Page2")= 1 then
Session("TEMP3EPQ30756550N")=Request.Form("TEMP3EPQ30756550N")
Session("TEMP3EPQ30756550MM")=Request.Form("TEMP3EPQ30756550MM")
Session("TEMP3EPQ30756550YY")=Request.Form("TEMP3EPQ30756550YY")
end if
if Session("TEMP3EPQ30756750Page2")= 1 then
Session("TEMP3EPQ30756750N")=Request.Form("TEMP3EPQ30756750N")
Session("TEMP3EPQ30756750MM")=Request.Form("TEMP3EPQ30756750MM")
Session("TEMP3EPQ30756750YY")=Request.Form("TEMP3EPQ30756750YY")
end if
if Session("TEMP3EPQ30756800Page2")= 1 then
Session("TEMP3EPQ30756800N")=Request.Form("TEMP3EPQ30756800N")
Session("TEMP3EPQ30756800MM")=Request.Form("TEMP3EPQ30756800MM")
Session("TEMP3EPQ30756800YY")=Request.Form("TEMP3EPQ30756800YY")
end if
if Session("TEMP3EPQ30757250Page2")= 1 then
Session("TEMP3EPQ30757250N")=Request.Form("TEMP3EPQ30757250N")
Session("TEMP3EPQ30757250MM")=Request.Form("TEMP3EPQ30757250MM")
Session("TEMP3EPQ30757250YY")=Request.Form("TEMP3EPQ30757250YY")
end if
if Session("TEMP3EPQ30759700Page2")= 1 then
Session("TEMP3EPQ30759700N")=Request.Form("TEMP3EPQ30759700N")
Session("TEMP3EPQ30759700MM")=Request.Form("TEMP3EPQ30759700MM")
Session("TEMP3EPQ30759700YY")=Request.Form("TEMP3EPQ30759700YY")
end if
if Session("TEMP3EPQ30759950Page2")= 1 then
Session("TEMP3EPQ30759950N")=Request.Form("TEMP3EPQ30759950N")
Session("TEMP3EPQ30759950MM")=Request.Form("TEMP3EPQ30759950MM")
Session("TEMP3EPQ30759950YY")=Request.Form("TEMP3EPQ30759950YY")
end if
if Session("TEMP3EPQ30759950Page2")= 1 then
Session("TEMP3EPQ30759950N")=Request.Form("TEMP3EPQ30759950N")
Session("TEMP3EPQ30759950MM")=Request.Form("TEMP3EPQ30759950MM")
Session("TEMP3EPQ30759950YY")=Request.Form("TEMP3EPQ30759950YY")
end if
if Session("TEMP4EPQ30755300Page2")= 1 then
Session("TEMP4EPQ30755300N")=Request.Form("TEMP4EPQ30755300N")
Session("TEMP4EPQ30755300MM")=Request.Form("TEMP4EPQ30755300MM")
Session("TEMP4EPQ30755300YY")=Request.Form("TEMP4EPQ30755300YY")
end if
if Session("TEMP4EPQ30755400Page2")= 1 then
Session("TEMP4EPQ30755400N")=Request.Form("TEMP4EPQ30755400N")
Session("TEMP4EPQ30755400MM")=Request.Form("TEMP4EPQ30755400MM")
Session("TEMP4EPQ30755400YY")=Request.Form("TEMP4EPQ30755400YY")
end if
if Session("TEMP4EPQ30755800Page2")= 1 then
Session("TEMP4EPQ30755800N")=Request.Form("TEMP4EPQ30755800N")
Session("TEMP4EPQ30755800MM")=Request.Form("TEMP4EPQ30755800MM")
Session("TEMP4EPQ30755800YY")=Request.Form("TEMP4EPQ30755800YY")
end if
if Session("TEMP4EPQ30756100bPage2")= 1 then
Session("TEMP4EPQ30756100bN")=Request.Form("TEMP4EPQ30756100bN")
Session("TEMP4EPQ30756100bMM")=Request.Form("TEMP4EPQ30756100bMM")
Session("TEMP4EPQ30756100bYY")=Request.Form("TEMP4EPQ30756100bYY")
end if
if Session("TEMP4EPQ30756100bPage2")= 1 then
Session("TEMP4EPQ30756100bN")=Request.Form("TEMP4EPQ30756100bN")
Session("TEMP4EPQ30756100bMM")=Request.Form("TEMP4EPQ30756100bMM")
Session("TEMP4EPQ30756100bYY")=Request.Form("TEMP4EPQ30756100bYY")
end if
if Session("TEMP4EPQ30756750Page2")= 1 then
Session("TEMP4EPQ30756750N")=Request.Form("TEMP4EPQ30756750N")
Session("TEMP4EPQ30756750MM")=Request.Form("TEMP4EPQ30756750MM")
Session("TEMP4EPQ30756750YY")=Request.Form("TEMP4EPQ30756750YY")
end if
if Session("TEMP4EPQ30759950Page2")= 1 then
Session("TEMP4EPQ30759950N")=Request.Form("TEMP4EPQ30759950N")
Session("TEMP4EPQ30759950MM")=Request.Form("TEMP4EPQ30759950MM")
Session("TEMP4EPQ30759950YY")=Request.Form("TEMP4EPQ30759950YY")
end if
if Session("TEMP4EPQ30759950Page2")= 1 then
Session("TEMP4EPQ30759950N")=Request.Form("TEMP4EPQ30759950N")
Session("TEMP4EPQ30759950MM")=Request.Form("TEMP4EPQ30759950MM")
Session("TEMP4EPQ30759950YY")=Request.Form("TEMP4EPQ30759950YY")
end if
if Session("TEMP5EPQ30755300Page2")= 1 then
Session("TEMP5EPQ30755300N")=Request.Form("TEMP5EPQ30755300N")
Session("TEMP5EPQ30755300MM")=Request.Form("TEMP5EPQ30755300MM")
Session("TEMP5EPQ30755300YY")=Request.Form("TEMP5EPQ30755300YY")
end if
if Session("TEMP5EPQ30755400Page2")= 1 then
Session("TEMP5EPQ30755400N")=Request.Form("TEMP5EPQ30755400N")
Session("TEMP5EPQ30755400MM")=Request.Form("TEMP5EPQ30755400MM")
Session("TEMP5EPQ30755400YY")=Request.Form("TEMP5EPQ30755400YY")
end if
if Session("TEMP5EPQ30755800Page2")= 1 then
Session("TEMP5EPQ30755800N")=Request.Form("TEMP5EPQ30755800N")
Session("TEMP5EPQ30755800MM")=Request.Form("TEMP5EPQ30755800MM")
Session("TEMP5EPQ30755800YY")=Request.Form("TEMP5EPQ30755800YY")
end if
if Session("TEMP5EPQ30756100Page2")= 1 then
Session("TEMP5EPQ30756100N")=Request.Form("TEMP5EPQ30756100N")
Session("TEMP5EPQ30756100MM")=Request.Form("TEMP5EPQ30756100MM")
Session("TEMP5EPQ30756100YY")=Request.Form("TEMP5EPQ30756100YY")
end if
if Session("TEMP5EPQ30756100Page2")= 1 then
Session("TEMP5EPQ30756100N")=Request.Form("TEMP5EPQ30756100N")
Session("TEMP5EPQ30756100MM")=Request.Form("TEMP5EPQ30756100MM")
Session("TEMP5EPQ30756100YY")=Request.Form("TEMP5EPQ30756100YY")
end if
if Session("TEMP5EPQ30759950Page2")= 1 then
Session("TEMP5EPQ30759950N")=Request.Form("TEMP5EPQ30759950N")
Session("TEMP5EPQ30759950MM")=Request.Form("TEMP5EPQ30759950MM")
Session("TEMP5EPQ30759950YY")=Request.Form("TEMP5EPQ30759950YY")
end if
if Session("TEMP5EPQ30759950Page2")= 1 then
Session("TEMP5EPQ30759950N")=Request.Form("TEMP5EPQ30759950N")
Session("TEMP5EPQ30759950MM")=Request.Form("TEMP5EPQ30759950MM")
Session("TEMP5EPQ30759950YY")=Request.Form("TEMP5EPQ30759950YY")
end if
if Session("TEMP6EPQ30755300Page2")= 1 then
Session("TEMP6EPQ30755300N")=Request.Form("TEMP6EPQ30755300N")
Session("TEMP6EPQ30755300MM")=Request.Form("TEMP6EPQ30755300MM")
Session("TEMP6EPQ30755300YY")=Request.Form("TEMP6EPQ30755300YY")
end if
if Session("TEMP6EPQ30755400Page2")= 1 then
Session("TEMP6EPQ30755400N")=Request.Form("TEMP6EPQ30755400N")
Session("TEMP6EPQ30755400MM")=Request.Form("TEMP6EPQ30755400MM")
Session("TEMP6EPQ30755400YY")=Request.Form("TEMP6EPQ30755400YY")
end if
if Session("TEMP6EPQ30755800Page2")= 1 then
Session("TEMP6EPQ30755800N")=Request.Form("TEMP6EPQ30755800N")
Session("TEMP6EPQ30755800MM")=Request.Form("TEMP6EPQ30755800MM")
Session("TEMP6EPQ30755800YY")=Request.Form("TEMP6EPQ30755800YY")
end if
if Session("TEMP6EPQ30756100Page2")= 1 then
Session("TEMP6EPQ30756100N")=Request.Form("TEMP6EPQ30756100N")
Session("TEMP6EPQ30756100MM")=Request.Form("TEMP6EPQ30756100MM")
Session("TEMP6EPQ30756100YY")=Request.Form("TEMP6EPQ30756100YY")
end if
if Session("TEMP6EPQ30756100Page2")= 1 then
Session("TEMP6EPQ30756100N")=Request.Form("TEMP6EPQ30756100N")
Session("TEMP6EPQ30756100MM")=Request.Form("TEMP6EPQ30756100MM")
Session("TEMP6EPQ30756100YY")=Request.Form("TEMP6EPQ30756100YY")
end if
if Session("TEMP6EPQ30759950Page2")= 1 then
Session("TEMP6EPQ30759950N")=Request.Form("TEMP6EPQ30759950N")
Session("TEMP6EPQ30759950MM")=Request.Form("TEMP6EPQ30759950MM")
Session("TEMP6EPQ30759950YY")=Request.Form("TEMP6EPQ30759950YY")
end if
if Session("TEMP7EPQ30755650Page2")= 1 then
Session("TEMP7EPQ30755650N")=Request.Form("TEMP7EPQ30755650N")
Session("TEMP7EPQ30755650MM")=Request.Form("TEMP7EPQ30755650MM")
Session("TEMP7EPQ30755650YY")=Request.Form("TEMP7EPQ30755650YY")
end if
if Session("TEMP7EPQ30755800Page2")= 1 then
Session("TEMP7EPQ30755800N")=Request.Form("TEMP7EPQ30755800N")
Session("TEMP7EPQ30755800MM")=Request.Form("TEMP7EPQ30755800MM")
Session("TEMP7EPQ30755800YY")=Request.Form("TEMP7EPQ30755800YY")
end if
if Session("TEMP7EPQ30756100Page2")= 1 then
Session("TEMP7EPQ30756100N")=Request.Form("TEMP7EPQ30756100N")
Session("TEMP7EPQ30756100MM")=Request.Form("TEMP7EPQ30756100MM")
Session("TEMP7EPQ30756100YY")=Request.Form("TEMP7EPQ30756100YY")
end if
if Session("TEMP7EPQ30756100Page2")= 1 then
Session("TEMP7EPQ30756100N")=Request.Form("TEMP7EPQ30756100N")
Session("TEMP7EPQ30756100MM")=Request.Form("TEMP7EPQ30756100MM")
Session("TEMP7EPQ30756100YY")=Request.Form("TEMP7EPQ30756100YY")
end if
if Session("TEMP7EPQ30759950Page2")= 1 then
Session("TEMP7EPQ30759950N")=Request.Form("TEMP7EPQ30759950N")
Session("TEMP7EPQ30759950MM")=Request.Form("TEMP7EPQ30759950MM")
Session("TEMP7EPQ30759950YY")=Request.Form("TEMP7EPQ30759950YY")
end if
if Session("TEMP7EPQ30759950Page2")= 1 then
Session("TEMP7EPQ30759950N")=Request.Form("TEMP7EPQ30759950N")
Session("TEMP7EPQ30759950MM")=Request.Form("TEMP7EPQ30759950MM")
Session("TEMP7EPQ30759950YY")=Request.Form("TEMP7EPQ30759950YY")
end if
if Session("TEMP8EPQ30755600Page2")= 1 then
Session("TEMP8EPQ30755600N")=Request.Form("TEMP8EPQ30755600N")
Session("TEMP8EPQ30755600MM")=Request.Form("TEMP8EPQ30755600MM")
Session("TEMP8EPQ30755600YY")=Request.Form("TEMP8EPQ30755600YY")
end if
if Session("TEMP8EPQ30755800Page2")= 1 then
Session("TEMP8EPQ30755800N")=Request.Form("TEMP8EPQ30755800N")
Session("TEMP8EPQ30755800MM")=Request.Form("TEMP8EPQ30755800MM")
Session("TEMP8EPQ30755800YY")=Request.Form("TEMP8EPQ30755800YY")
end if
if Session("TEMP8EPQ30756100Page2")= 1 then
Session("TEMP8EPQ30756100N")=Request.Form("TEMP8EPQ30756100N")
Session("TEMP8EPQ30756100MM")=Request.Form("TEMP8EPQ30756100MM")
Session("TEMP8EPQ30756100YY")=Request.Form("TEMP8EPQ30756100YY")
end if
if Session("TEMP8EPQ30756100Page2")= 1 then
Session("TEMP8EPQ30756100N")=Request.Form("TEMP8EPQ30756100N")
Session("TEMP8EPQ30756100MM")=Request.Form("TEMP8EPQ30756100MM")
Session("TEMP8EPQ30756100YY")=Request.Form("TEMP8EPQ30756100YY")
end if
if Session("TEMP8EPQ30759950Page2")= 1 then
Session("TEMP8EPQ30759950N")=Request.Form("TEMP8EPQ30759950N")
Session("TEMP8EPQ30759950MM")=Request.Form("TEMP8EPQ30759950MM")
Session("TEMP8EPQ30759950YY")=Request.Form("TEMP8EPQ30759950YY")
end if
if Session("TEMPEPQ30754300Page2")= 1 then
Session("TEMPEPQ30754300N")=Request.Form("TEMPEPQ30754300N")
Session("TEMPEPQ30754300MM")=Request.Form("TEMPEPQ30754300MM")
Session("TEMPEPQ30754300YY")=Request.Form("TEMPEPQ30754300YY")
end if
if Session("TEMPEPQ30754600Page2")= 1 then
Session("TEMPEPQ30754600N")=Request.Form("TEMPEPQ30754600N")
Session("TEMPEPQ30754600MM")=Request.Form("TEMPEPQ30754600MM")
Session("TEMPEPQ30754600YY")=Request.Form("TEMPEPQ30754600YY")
end if
if Session("TEMPEPQ30754700Page2")= 1 then
Session("TEMPEPQ30754700N")=Request.Form("TEMPEPQ30754700N")
Session("TEMPEPQ30754700MM")=Request.Form("TEMPEPQ30754700MM")
Session("TEMPEPQ30754700YY")=Request.Form("TEMPEPQ30754700YY")
end if
if Session("TEMPEPQ30754900Page2")= 1 then
Session("TEMPEPQ30754900N")=Request.Form("TEMPEPQ30754900N")
Session("TEMPEPQ30754900MM")=Request.Form("TEMPEPQ30754900MM")
Session("TEMPEPQ30754900YY")=Request.Form("TEMPEPQ30754900YY")
end if
if Session("TEMPEPQ30758150Page2")= 1 then
Session("TEMPEPQ30758150N")=Request.Form("TEMPEPQ30758150N")
Session("TEMPEPQ30758150MM")=Request.Form("TEMPEPQ30758150MM")
Session("TEMPEPQ30758150YY")=Request.Form("TEMPEPQ30758150YY")
end if
if Session("TEMPEPQ30759050Page2")= 1 then
Session("TEMPEPQ30759050N")=Request.Form("TEMPEPQ30759050N")
Session("TEMPEPQ30759050MM")=Request.Form("TEMPEPQ30759050MM")
Session("TEMPEPQ30759050YY")=Request.Form("TEMPEPQ30759050YY")
end if
if Session("TEMPEPQ30759200Page2")= 1 then
Session("TEMPEPQ30759200N")=Request.Form("TEMPEPQ30759200N")
Session("TEMPEPQ30759200MM")=Request.Form("TEMPEPQ30759200MM")
Session("TEMPEPQ30759200YY")=Request.Form("TEMPEPQ30759200YY")
end if
if Session("TEMPEPQ30759450Page2")= 1 then
Session("TEMPEPQ30759450N")=Request.Form("TEMPEPQ30759450N")
Session("TEMPEPQ30759450MM")=Request.Form("TEMPEPQ30759450MM")
Session("TEMPEPQ30759450YY")=Request.Form("TEMPEPQ30759450YY")
end if
if Session("TEMPEPQ30759600Page2")= 1 then
Session("TEMPEPQ30759600N")=Request.Form("TEMPEPQ30759600N")
Session("TEMPEPQ30759600MM")=Request.Form("TEMPEPQ30759600MM")
Session("TEMPEPQ30759600YY")=Request.Form("TEMPEPQ30759600YY")
end if
if Session("TEMPEPQ30760250Page2")= 1 then
Session("TEMPEPQ30760250N")=Request.Form("TEMPEPQ30760250N")
Session("TEMPEPQ30760250MM")=Request.Form("TEMPEPQ30760250MM")
Session("TEMPEPQ30760250YY")=Request.Form("TEMPEPQ30760250YY")
end if

if Session("TEMP12EPQ30755000Page2")= 1 then
Session("TEMP12EPQ30755000N")=Request.Form("TEMP12EPQ30755000N")
Session("TEMP12EPQ30755000MM")=Request.Form("TEMP12EPQ30755000MM")
Session("TEMP12EPQ30755000YY")=Request.Form("TEMP12EPQ30755000YY")
end if

if Session("TEMP13EPQ30514060Page2")= 1 then
Session("TEMP13EPQ30514060N")=Request.Form("TEMP13EPQ30514060N")
Session("TEMP13EPQ30514060MM")=Request.Form("TEMP13EPQ30514060MM")
Session("TEMP13EPQ30514060YY")=Request.Form("TEMP13EPQ30514060YY")
end if

if Session("TEMP14EPQ30514030Page2")= 1 then
Session("TEMP14EPQ30514030N")=Request.Form("TEMP14EPQ30514030N")
Session("TEMP14EPQ30514030MM")=Request.Form("TEMP14EPQ30514030MM")
Session("TEMP14EPQ30514030YY")=Request.Form("TEMP14EPQ30514030YY")
end if

if Session("TEMP15EPQ30514030Page2")= 1 then
Session("TEMP15EPQ30514030N")=Request.Form("TEMP15EPQ30514030N")
Session("TEMP15EPQ30514030MM")=Request.Form("TEMP15EPQ30514030MM")
Session("TEMP15EPQ30514030YY")=Request.Form("TEMP15EPQ30514030YY")
end if

if Session("1TEMP14EPQ30514030Page2")= 1 then
Session("1TEMP14EPQ30514030N")=Request.Form("1TEMP14EPQ30514030N")
Session("1TEMP14EPQ30514030MM")=Request.Form("1TEMP14EPQ30514030MM")
Session("1TEMP14EPQ30514030YY")=Request.Form("1TEMP14EPQ30514030YY")
end if




if Session("EPQ30755000Page2")= 1 then
Session("EPQ30755000N")=Request.Form("EPQ30755000N")
Session("EPQ30755000MM")=Request.Form("EPQ30755000MM")
Session("EPQ30755000YY")=Request.Form("EPQ30755000YY")
end if

if Session("EPQ30755090Page2")= 1 then
Session("EPQ30755090N")=Request.Form("EPQ30755090N")
Session("EPQ30755090MM")=Request.Form("EPQ30755090MM")
Session("EPQ30755090YY")=Request.Form("EPQ30755090YY")
end if

if Session("EPQ30755100Page2")= 1 then
Session("EPQ30755100N")=Request.Form("EPQ30755100N")
Session("EPQ30755100MM")=Request.Form("EPQ30755100MM")
Session("EPQ30755100YY")=Request.Form("EPQ30755100YY")
end if

if Session("EPQ30755150Page2")= 1 then
Session("EPQ30755150N")=Request.Form("EPQ30755150N")
Session("EPQ30755150MM")=Request.Form("EPQ30755150MM")
Session("EPQ30755150YY")=Request.Form("EPQ30755150YY")
end if


if Session("2TEMP14EPQ30514030Page2")= 1 then
Session("2TEMP14EPQ30514030N")=Request.Form("2TEMP14EPQ30514030N")
Session("2TEMP14EPQ30514030MM")=Request.Form("2TEMP14EPQ30514030MM")
Session("2TEMP14EPQ30514030YY")=Request.Form("2TEMP14EPQ30514030YY")
end if

if Session("3TEMP14EPQ30514030Page2")= 1 then
Session("3TEMP14EPQ30514030N")=Request.Form("3TEMP14EPQ30514030N")
Session("3TEMP14EPQ30514030MM")=Request.Form("3TEMP14EPQ30514030MM")
Session("3TEMP14EPQ30514030YY")=Request.Form("3TEMP14EPQ30514030YY")
end if

if Session("4TEMP14EPQ30514030Page2")= 1 then
Session("4TEMP14EPQ30514030N")=Request.Form("4TEMP14EPQ30514030N")
Session("4TEMP14EPQ30514030MM")=Request.Form("4TEMP14EPQ30514030MM")
Session("4TEMP14EPQ30514030YY")=Request.Form("4TEMP14EPQ30514030YY")
end if

if Session("5TEMP14EPQ30514030Page2")= 1 then
Session("5TEMP14EPQ30514030N")=Request.Form("5TEMP14EPQ30514030N")
Session("5TEMP14EPQ30514030MM")=Request.Form("5TEMP14EPQ30514030MM")
Session("5TEMP14EPQ30514030YY")=Request.Form("5TEMP14EPQ30514030YY")
end if

if Session("7TEMP14EPQ30514030Page2")= 1 then
Session("7TEMP14EPQ30514030N")=Request.Form("7TEMP14EPQ30514030N")
Session("7TEMP14EPQ30514030MM")=Request.Form("7TEMP14EPQ30514030MM")
Session("7TEMP14EPQ30514030YY")=Request.Form("7TEMP14EPQ30514030YY")
end if

if Session("8TEMP14EPQ30514030Page2")= 1 then
Session("8TEMP14EPQ30514030N")=Request.Form("8TEMP14EPQ30514030N")
Session("8TEMP14EPQ30514030MM")=Request.Form("8TEMP14EPQ30514030MM")
Session("8TEMP14EPQ30514030YY")=Request.Form("8TEMP14EPQ30514030YY")
end if

if Session("9TEMP14EPQ30514030Page2")= 1 then
Session("9TEMP14EPQ30514030N")=Request.Form("9TEMP14EPQ30514030N")
Session("9TEMP14EPQ30514030MM")=Request.Form("9TEMP14EPQ30514030MM")
Session("9TEMP14EPQ30514030YY")=Request.Form("9TEMP14EPQ30514030YY")
end if

if Session("10TEMP14EPQ30514030Page2")= 1 then
Session("10TEMP14EPQ30514030N")=Request.Form("10TEMP14EPQ30514030N")
Session("10TEMP14EPQ30514030MM")=Request.Form("10TEMP14EPQ30514030MM")
Session("10TEMP14EPQ30514030YY")=Request.Form("10TEMP14EPQ30514030YY")
end if

if Session("11TEMP14EPQ30514030Page2")= 1 then
Session("11TEMP14EPQ30514030N")=Request.Form("11TEMP14EPQ30514030N")
Session("11TEMP14EPQ30514030MM")=Request.Form("11TEMP14EPQ30514030MM")
Session("11TEMP14EPQ30514030YY")=Request.Form("11TEMP14EPQ30514030YY")
end if

if Session("TEMP16EPQ30514090Page2")= 1 then
Session("TEMP16EPQ30514090N")=Request.Form("TEMP16EPQ30514090N")
Session("TEMP16EPQ30514090MM")=Request.Form("TEMP16EPQ30514090MM")
Session("TEMP16EPQ30514090YY")=Request.Form("TEMP16EPQ30514090YY")
end if

end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
if session("Gender")="M" then 
		Session("Page")=10
		Response.Redirect "surgicalhistorymaster.asp"
end if

		Session("Page")=10
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30709010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

If Session("PageCounter") > 12 then
	Session("Page")="103"
	Response.Redirect "surgicalhistorymaster.asp"
else
	Session("Page")="11"
	Response.Redirect "surgicalhistorymaster.asp"
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
    <form action="surgicalhistory102.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th colspan="1">How many times have<br> you had this surgery?</th>
				<th colspan="1">Date of last surgery<br> (Month optional/Year)</th>
			</tr>

		   <tbody>



<% if session("EPQ30755000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755000Page1")=2  %>
<tr>
<td>Bladder biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30755000N" type="text" size= "3" name= "EPQ30755000N" value =<%=Session ("EPQ30755000N")%>></td>
<td style="text-align: center;"><input id="EPQ30755000MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755000MM" value =<%=Session ("EPQ30755000MM")%>>/
<input id="EPQ30755000YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755000YY" value =<%=Session ("EPQ30755000YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755090")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755090Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755090Page1")=2  %>
<tr>
<td>Bone marrow biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30755090N" type="text" size= "3" name= "EPQ30755090N" value =<%=Session ("EPQ30755090N")%>></td>
<td style="text-align: center;"><input id="EPQ30755090MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755090MM" value =<%=Session ("EPQ30755090MM")%>>/
<input id="EPQ30755090YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755090YY" value =<%=Session("EPQ30755090YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Brain biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP14EPQ30514030N" type="text" size= "3" name= "TEMP14EPQ30514030N" value =<%=Session ("TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP14EPQ30514030MM" value =<%=Session ("TEMP14EPQ30514030MM")%>>/
<input id="TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP14EPQ30514030YY" value =<%=Session("TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755100Page2")=1  %>
<tr>
<td>Breast biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30755100N" type="text" size= "3" name= "EPQ30755100N" value =<%=Session ("EPQ30755100N")%>></td>
<td style="text-align: center;"><input id="EPQ30755100MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755100MM" value =<%=Session ("EPQ30755100MM")%>>/
<input id="EPQ30755100YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755100YY" value =<%=Session ("EPQ30755100YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("1TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("1TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("1TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Cervical biopsy (including LEEP or CONE)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="1TEMP14EPQ30514030N" type="text" size= "3" name= "1TEMP14EPQ30514030N" value =<%=Session ("1TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="1TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "1TEMP14EPQ30514030MM" value =<%=Session ("1TEMP14EPQ30514030MM")%>>/
<input id="1TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "1TEMP14EPQ30514030YY" value =<%=Session ("1TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("2TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("2TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("2TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Kidney biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="2TEMP14EPQ30514030N" type="text" size= "3" name= "2TEMP14EPQ30514030N" value =<%=Session ("2TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="2TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "2TEMP14EPQ30514030MM" value =<%=Session ("2TEMP14EPQ30514030MM")%>>/
<input id="2TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "2TEMP14EPQ30514030YY" value =<%=Session ("2TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755150Page2")=1  %>
<tr>
<td>Liver biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30755150N" type="text" size= "3" name= "EPQ30755150N" value =<%=Session ("EPQ30755150N")%>></td>
<td style="text-align: center;"><input id="EPQ30755150MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755150MM" value =<%=Session ("EPQ30755150MM")%>>/
<input id="EPQ30755150YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755150YY" value =<%=Session ("EPQ30755150YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("4TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("4TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("4TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Lung biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="4TEMP14EPQ30514030N" type="text" size= "3" name= "4TEMP14EPQ30514030N" value =<%=Session ("4TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="4TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "4TEMP14EPQ30514030MM" value =<%=Session ("4TEMP14EPQ30514030MM")%>>/
<input id="4TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "4TEMP14EPQ30514030YY" value =<%=Session ("4TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("5TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("5TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("5TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Lymph node biopsy or sentinel lymph node biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="5TEMP14EPQ30514030N" type="text" size= "3" name= "5TEMP14EPQ30514030N" value =<%=Session ("5TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="5TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "5TEMP14EPQ30514030MM" value =<%=Session ("5TEMP14EPQ30514030MM")%>>/
<input id="5TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "5TEMP14EPQ30514030YY" value =<%=Session ("5TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("7TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("7TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("7TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Prostate biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="7TEMP14EPQ30514030N" type="text" size= "3" name= "7TEMP14EPQ30514030N" value =<%=Session ("7TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="7TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "7TEMP14EPQ30514030MM" value =<%=Session ("7TEMP14EPQ30514030MM")%>>/
<input id="7TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "7TEMP14EPQ30514030YY" value =<%=Session ("7TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("8TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("8TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("8TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Skin biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="8TEMP14EPQ30514030N" type="text" size= "3" name= "8TEMP14EPQ30514030N" value =<%=Session ("8TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="8TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "8TEMP14EPQ30514030MM" value =<%=Session ("8TEMP14EPQ30514030MM")%>>/
<input id="8TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "8TEMP14EPQ30514030YY" value =<%=Session ("8TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("9TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("9TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("9TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Testicle or penis biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="9TEMP14EPQ30514030N" type="text" size= "3" name= "9TEMP14EPQ30514030N" value =<%=Session ("9TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="9TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "9TEMP14EPQ30514030MM" value =<%=Session ("9TEMP14EPQ30514030MM")%>>/
<input id="9TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "9TEMP14EPQ30514030YY" value =<%=Session ("9TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("10TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("10TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("10TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Thyroid biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="10TEMP14EPQ30514030N" type="text" size= "3" name= "10TEMP14EPQ30514030N" value =<%=Session ("10TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="10TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "10TEMP14EPQ30514030MM" value =<%=Session ("10TEMP14EPQ30514030MM")%>>/
<input id="10TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "10TEMP14EPQ30514030YY" value =<%=Session ("10TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("11TEMP14EPQ30514030")=1 then %>
<% if session("DisplayCount") < 6 AND Session("11TEMP14EPQ30514030Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("11TEMP14EPQ30514030Page2")=1  %>
<tr>
<td>Vulva, vagina, or uterus  biopsy</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="11TEMP14EPQ30514030N" type="text" size= "3" name= "11TEMP14EPQ30514030N" value =<%=Session ("11TEMP14EPQ30514030N")%>></td>
<td style="text-align: center;"><input id="11TEMP14EPQ30514030MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "11TEMP14EPQ30514030MM" value =<%=Session ("11TEMP14EPQ30514030MM")%>>/
<input id="11TEMP14EPQ30514030YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "11TEMP14EPQ30514030YY" value =<%=Session ("11TEMP14EPQ30514030YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("TEMP16EPQ30514090")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP16EPQ30514090Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP16EPQ30514090Page2")=1  %>
<tr>
<td>Other biopsy, specify: <%=Session("EPQ30514000Describe")%></td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP16EPQ30514090N" type="text" size= "3" name= "TEMP16EPQ30514090N" value =<%=Session ("TEMP16EPQ30514090N")%>></td>
<td style="text-align: center;"><input id="TEMP16EPQ30514090MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP16EPQ30514090MM" value =<%=Session ("TEMP16EPQ30514090MM")%>>/
<input id="TEMP16EPQ30514090YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP16EPQ30514090YY" value =<%=Session ("TEMP16EPQ30514090YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30754000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754000Page2")=1  %>
<tr>
<td>Adrenal surgery (adrenalectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30754040" type="text" size= "3" name= "EPQ30754040" value =<%=Session ("EPQ30754040")%>></td>
<td style="text-align: center;"><input id="EPQ30754020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754020" value =<%=Session ("EPQ30754020")%>>/
<input id="EPQ30754030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754030" value =<%=Session ("EPQ30754030")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30754050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754050Page2")=1  %>
<tr>
<td>Appendix removal or surgery for appendicitis (appendectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="EPQ30754090" type="text" size= "3" name= "EPQ30754090" value =<%=Session ("EPQ30754090")%>>
<td style="text-align: center;"><input id="EPQ30754070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754070" value =<%=Session ("EPQ30754070")%>>/
<input id="EPQ30754080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754080" value =<%=Session ("EPQ30754080")%>></td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754100Page2")=1  %>
<tr>
<td>
Colon or bowel surgery or resection (colectomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754140" type="text" size= "3" name= "EPQ30754140" value =<%=Session ("EPQ30754140")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754120" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754120" value =<%=Session ("EPQ30754120")%>>/
<input id="EPQ30754130" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754130" value =<%=Session ("EPQ30754130")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754150Page2")=1  %>
<tr>
<td>
Colonoscopy
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754190" type="text" size= "3" name= "EPQ30754190" value =<%=Session ("EPQ30754190")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754170" value =<%=Session ("EPQ30754170")%>>/
<input id="EPQ30754180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754180" value =<%=Session ("EPQ30754180")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754200Page2")=1  %>
<tr>
<td>
Colostomy
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754240" type="text" size= "3" name= "EPQ30754240" value =<%=Session ("EPQ30754240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754220" value =<%=Session ("EPQ30754220")%>>/
<input id="EPQ30754230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754230" value =<%=Session ("EPQ30754230")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754250Page2")=1  %>
<tr>
<td>
Colostomy reversal
</div>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30754290" type="text" size= "3" name= "EPQ30754290" value =<%=Session ("EPQ30754290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754270" value =<%=Session ("EPQ30754270")%>>/
<input id="EPQ30754280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754280" value =<%=Session ("EPQ30754280")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754300Page2")=1  %>
<tr>
<td>
Dialysis catheter placement
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754340" type="text" size= "3" name= "EPQ30754340" value =<%=Session ("EPQ30754340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754320" value =<%=Session ("EPQ30754320")%>>/
<input id="EPQ30754330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754330" value =<%=Session ("EPQ30754330")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMPEPQ30754300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30754300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30754300Page2")=1  %>
<tr>
<td>Esophageal dilation (stretching to open the esophagus)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30754300N" type="text" size= "3" name= "TEMPEPQ30754300N" value =<%=Session ("TEMPEPQ30754300N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30754300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30754300MM" value =<%=Session ("TEMPEPQ30754300MM")%>>/
<input id="TEMPEPQ30754300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30754300YY" value =<%=Session ("TEMPEPQ30754300YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30754350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754350Page2")=1  %>
<tr>
<td>
Exploratory Surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754390" type="text" size= "3" name= "EPQ30754390" value =<%=Session ("EPQ30754390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754370" value =<%=Session ("EPQ30754370")%>>/
<input id="EPQ30754380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754380" value =<%=Session ("EPQ30754380")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754400Page2")=1  %>
<tr>
<td>
Gallbladder surgery (cholecystectomy)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30754440" type="text" size= "3" name= "EPQ30754440" value =<%=Session ("EPQ30754440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754420" value =<%=Session ("EPQ30754420")%>>/
<input id="EPQ30754430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754430" value =<%=Session ("EPQ30754430")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754450Page2")=1  %>
<tr>
<td>
Colectomy (removal of all or part of the colon)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754490" type="text" size= "3" name= "EPQ30754490" value =<%=Session ("EPQ30754490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754470" value =<%=Session ("EPQ30754470")%>>/
<input id="EPQ30754480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754480" value =<%=Session ("EPQ30754480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754500Page2")=1  %>
<tr>
<td>
Hemorrhoid Surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754540" type="text" size= "3" name= "EPQ30754540" value =<%=Session ("EPQ30754540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754520" value =<%=Session ("EPQ30754520")%>>/
<input id="EPQ30754530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754530" value =<%=Session ("EPQ30754530")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30754550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30754550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30754550Page2")=1  %>
<tr>
<td>Hernia repair (including abdominal, belly button, groin) with mesh</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30754550N" type="text" size= "3" name= "TEMP1EPQ30754550N" value =<%=Session ("TEMP1EPQ30754550N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30754550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30754550MM" value =<%=Session ("TEMP1EPQ30754550MM")%>>/
<input id="TEMP1EPQ30754550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30754550YY" value =<%=Session ("TEMP1EPQ30754550YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30754550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30754550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30754550Page2")=1  %>
<tr>
<td>Hernia repair (including abdominal, belly button, groin) without mesh</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30754550N" type="text" size= "3" name= "TEMP2EPQ30754550N" value =<%=Session ("TEMP2EPQ30754550N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30754550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30754550MM" value =<%=Session ("TEMP2EPQ30754550MM")%>>/
<input id="TEMP2EPQ30754550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30754550YY" value =<%=Session ("TEMP2EPQ30754550YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30754600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754600Page2")=1  %>
<tr>
<td>
Liver surgery or resection (removal of part of the liver)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754640" type="text" size= "3" name= "EPQ30754640" value =<%=Session ("EPQ30754640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754620" value =<%=Session ("EPQ30754620")%>>/
<input id="EPQ30754630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754630" value =<%=Session ("EPQ30754630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30754600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30754600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30754600Page2")=1  %>
<tr>
<td>Liver transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30754600N" type="text" size= "3" name= "TEMPEPQ30754600N" value =<%=Session ("TEMPEPQ30754600N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30754600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30754600MM" value =<%=Session ("TEMPEPQ30754600MM")%>>/
<input id="TEMPEPQ30754600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30754600YY" value =<%=Session ("TEMPEPQ30754600YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30754900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754900Page2")=1  %>
<tr>
<td>
Pancreas surgery (Whipple)
</div>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754940" type="text" size= "3" name= "EPQ30754940" value =<%=Session ("EPQ30754940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754920" value =<%=Session ("EPQ30754920")%>>/
<input id="EPQ30754930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754930" value =<%=Session ("EPQ30754930")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30754650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754650Page2")=1  %>
<tr>
<td>
Plastic surgery (including tummy tucks and liposuction)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754690" type="text" size= "3" name= "EPQ30754690" value =<%=Session ("EPQ30754690")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754670" value =<%=Session ("EPQ30754670")%>>/
<input id="EPQ30754680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754680" value =<%=Session ("EPQ30754680")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30754700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754700Page2")=1  %>
<tr>
<td>
Rectal Surgery (including fistula repair)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754740" type="text" size= "3" name= "EPQ30754740" value =<%=Session ("EPQ30754740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754720" value =<%=Session ("EPQ30754720")%>>/
<input id="EPQ30754730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754730" value =<%=Session ("EPQ30754730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30754700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30754700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30754700Page2")=1  %>
<tr>
<td>Reflux surgery (fundoplication)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30754700N" type="text" size= "3" name= "TEMPEPQ30754700N" value =<%=Session ("TEMPEPQ30754700N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30754700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30754700MM" value =<%=Session ("TEMPEPQ30754700MM")%>>/
<input id="TEMPEPQ30754700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30754700YY" value =<%=Session ("TEMPEPQ30754700YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30754750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754750Page2")=1  %>
<tr>
<td>
Spleen surgery (splenectomy)
</div>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30754790" type="text" size= "3" name= "EPQ30754790" value =<%=Session ("EPQ30754790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754770" value =<%=Session ("EPQ30754770")%>>/
<input id="EPQ30754780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754780" value =<%=Session ("EPQ30754780")%>>
</td>
</tr>
<% end if %>
<% end if %>





<% if session("EPQ30754800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754800Page2")=1  %>
<tr>
<td>
Stomach surgery (gastrectomy or ulcer surgery)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30754840" type="text" size= "3" name= "EPQ30754840" value =<%=Session ("EPQ30754840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754820" value =<%=Session ("EPQ30754820")%>>/
<input id="EPQ30754830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754830" value =<%=Session ("EPQ30754830")%>>
</td>
</td>
<% end if %>
<% end if %>
<% if session("EPQ30754850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754850Page2")=1  %>
<tr>
<td>
Weight loss surgery (bariatric surgery including gastric bypass or lap-band)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754890" type="text" size= "3" name= "EPQ30754890" value =<%=Session ("EPQ30754890")%>> </td>
<td style="text-align: center;"><input id="EPQ30754870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754870" value =<%=Session ("EPQ30754870")%>>/
<input id="EPQ30754880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754880" value =<%=Session ("EPQ30754880")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30754900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30754900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30754900Page2")=1  %>
<tr>
<td>Upper endoscopy or EGD (a test to see inside <br>the esophagus, stomach or duodenum)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30754900N" type="text" size= "3" name= "TEMPEPQ30754900N" value =<%=Session ("TEMPEPQ30754900N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30754900MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30754900MM" value =<%=Session ("TEMPEPQ30754900MM")%>>/
<input id="TEMPEPQ30754900YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30754900YY" value =<%=Session ("TEMPEPQ30754900YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30754950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30754950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30754950Page2")=1  %>
<tr>
<td>
Other abdominal surgery, specify: <%=Session("EPQ30754990Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30754990" type="text" size= "3" name= "EPQ30754990" value =<%=Session ("EPQ30754990")%>> </td>
<td style="text-align: center;"> <input id="EPQ30754970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30754970" value =<%=Session ("EPQ30754970")%>>/
<input id="EPQ30754980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30754980" value =<%=Session ("EPQ30754980")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30755800Page2")=1  %>
<tr>
<td>Benign brain tumor surgery (meningioma surgery)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30755800N" type="text" size= "3" name= "TEMP1EPQ30755800N" value =<%=Session ("TEMP1EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30755800MM" value =<%=Session ("TEMP1EPQ30755800MM")%>>/
<input id="TEMP1EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30755800YY" value =<%=Session ("TEMP1EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30755800Page2")=1  %>
<tr>
<td>Brain tumor surgery (removal or reduction of brain tumor)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30755800N" type="text" size= "3" name= "TEMP3EPQ30755800N" value =<%=Session ("TEMP3EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30755800MM" value =<%=Session ("TEMP3EPQ30755800MM")%>>/
<input id="TEMP3EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30755800YY" value =<%=Session ("TEMP3EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP4EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30755800Page2")=1  %>
<tr>
<td>Brain aneurysm surgery (neurological clipping or endovascular coiling through your groin)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30755800N" type="text" size= "3" name= "TEMP4EPQ30755800N" value =<%=Session ("TEMP4EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30755800MM" value =<%=Session ("TEMP4EPQ30755800MM")%>>/
<input id="TEMP4EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30755800YY" value =<%=Session ("TEMP4EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30755800Page2")=1  %>
<tr>
<td>Cerebral shunt (shunting of fluid in the brain to treat hydrocephalus)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30755800N" type="text" size= "3" name= "TEMP5EPQ30755800N" value =<%=Session ("TEMP5EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30755800MM" value =<%=Session ("TEMP5EPQ30755800MM")%>>/
<input id="TEMP5EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30755800YY" value =<%=Session ("TEMP5EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP6EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP6EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP6EPQ30755800Page2")=1  %>
<tr>
<td>Pituitary gland surgery (transsphenoidal surgery)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP6EPQ30755800N" type="text" size= "3" name= "TEMP6EPQ30755800N" value =<%=Session ("TEMP6EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP6EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP6EPQ30755800MM" value =<%=Session ("TEMP6EPQ30755800MM")%>>/
<input id="TEMP6EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP6EPQ30755800YY" value =<%=Session ("TEMP6EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP7EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP7EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP7EPQ30755800Page2")=1  %>
<tr>
<td>Removal of blood (hematoma)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP7EPQ30755800N" type="text" size= "3" name= "TEMP7EPQ30755800N" value =<%=Session ("TEMP7EPQ30755800N")%>></td>
<td style="text-align: center;"><input id="TEMP7EPQ30755800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP7EPQ30755800MM" value =<%=Session ("TEMP7EPQ30755800MM")%>>/
<input id="TEMP7EPQ30755800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP7EPQ30755800YY" value =<%=Session ("TEMP7EPQ30755800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755800Page2")=1  %>
<tr>
<td>
Brain tumor resection (removal or reduction of brain tumor)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30755840" type="text" size= "3" name= "EPQ30755840" value =<%=Session ("EPQ30755840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755820" value =<%=Session ("EPQ30755820")%>>/
<input id="EPQ30755830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755830" value =<%=Session ("EPQ30755830")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755850Page2")=1  %>
<tr>
<td>
Skull surgery (including craniotomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755890" type="text" size= "3" name= "EPQ30755890" value =<%=Session ("EPQ30755890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755870" value =<%=Session ("EPQ30755870")%>>/
<input id="EPQ30755880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755880" value =<%=Session ("EPQ30755880")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30755900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755900Page2")=1  %>
<tr>
<td>
Other brain surgery, specify: <%=Session("EPQ30755940Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755940" type="text" size= "3" name= "EPQ30755940" value =<%=Session ("EPQ30755940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755920" value =<%=Session ("EPQ30755920")%>>/
<input id="EPQ30755930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755930" value =<%=Session ("EPQ30755930")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755950Page2")=1  %>
<tr>
<td>
Axillary node dissection (or lymph node removal)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755990" type="text" size= "3" name= "EPQ30755990" value =<%=Session ("EPQ30755990")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755970" value =<%=Session ("EPQ30755970")%>>/
<input id="EPQ30755980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755980" value =<%=Session ("EPQ30755980")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30756050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756050Page2")=1  %>
<tr>
<td>
Breast lift (mastopexy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756090" type="text" size= "3" name= "EPQ30756090" value =<%=Session ("EPQ30756090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756070" value =<%=Session ("EPQ30756070")%>>/
<input id="EPQ30756080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756080" value =<%=Session ("EPQ30756080")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30756450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756450Page2")=1  %>
<tr>
<td>
Other breast surgery, specify: <%=Session("EPQ30756490Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756490" type="text" size= "3" name= "EPQ30756490" value =<%=Session ("EPQ30756490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756470" value =<%=Session ("EPQ30756470")%>>/
<input id="EPQ30756480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756480" value =<%=Session ("EPQ30756480")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756950Page2")=1  %>
<tr>
<td>Ablation</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756950N" type="text" size= "3" name= "TEMP1EPQ30756950N" value =<%=Session ("TEMP1EPQ30756950N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756950MM" value =<%=Session ("TEMP1EPQ30756950MM")%>>/
<input id="TEMP1EPQ30756950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756950YY" value =<%=Session ("TEMP1EPQ30756950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30756950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756950Page2")=1  %>
<tr>
<td>
Cesarean section ("C-section")
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756990" type="text" size= "3" name= "EPQ30756990" value =<%=Session ("EPQ30756990")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756970" value =<%=Session ("EPQ30756970")%>>/
<input id="EPQ30756980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756980" value =<%=Session ("EPQ30756980")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757000Page2")=1  %>
<tr>
<td>
D&C ("scraping" or "cleaning out your womb")
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757040" type="text" size= "3" name= "EPQ30757040" value =<%=Session ("EPQ30757040")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757020" value =<%=Session ("EPQ30757020")%>>/
<input id="EPQ30757030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757030" value =<%=Session ("EPQ30757030")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757050Page2")=1  %>
<tr>
<td>
Exploratory surgery (usually done laparoscopically through small incisions)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757090" type="text" size= "3" name= "EPQ30757090" value =<%=Session ("EPQ30757090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757070" value =<%=Session ("EPQ30757070")%>>/
<input id="EPQ30757080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757080" value =<%=Session ("EPQ30757080")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757150")=5000 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757150Page2")=1  %>
<tr>
<td>
Salpingo-oophorectomy (removal of the ovaries and the fallopian tubes)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757190" type="text" size= "3" name= "EPQ30757190" value =<%=Session ("EPQ30757190")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757170" value =<%=Session ("EPQ30757170")%>>/
<input id="EPQ30757180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757180" value =<%=Session ("EPQ30757180")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757200Page2")=1  %>
<tr>
<td>
Removal of the womb with or without the cervix (hysterectomy or partial hysterectomy) 
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757240" type="text" size= "3" name= "EPQ30757240" value =<%=Session ("EPQ30757240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757220" value =<%=Session ("EPQ30757220")%>>/
<input id="EPQ30757230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757230" value =<%=Session ("EPQ30757230")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30757250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30757250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30757250Page2")=1  %>
<tr>
<td>Pelvic lymph node removal</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30757250N" type="text" size= "3" name= "TEMP2EPQ30757250N" value =<%=Session ("TEMP2EPQ30757250N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30757250MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30757250MM" value =<%=Session ("TEMP2EPQ30757250MM")%>>/
<input id="TEMP2EPQ30757250YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30757250YY" value =<%=Session ("TEMP2EPQ30757250YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP3EPQ30757250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30757250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30757250Page2")=1  %>
<tr>
<td>Prolapse surgery or urinary leakage surgery (including sling or suspension)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30757250N" type="text" size= "3" name= "TEMP3EPQ30757250N" value =<%=Session ("TEMP3EPQ30757250N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30757250MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30757250MM" value =<%=Session ("TEMP3EPQ30757250MM")%>>/
<input id="TEMP3EPQ30757250YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30757250YY" value =<%=Session ("TEMP3EPQ30757250YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30757250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757250Page2")=1  %>
<tr>
<td>
Prolapse surgery (for pelvic support problems)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757290" type="text" size= "3" name= "EPQ30757290" value =<%=Session ("EPQ30757290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757270" value =<%=Session ("EPQ30757270")%>>/
<input id="EPQ30757280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757280" value =<%=Session ("EPQ30757280")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757300Page2")=1  %>
<tr>
<td>
Tubal ligation (tying the tubes to prevent pregnancy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757340" type="text" size= "3" name= "EPQ30757340" value =<%=Session ("EPQ30757340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757320" value =<%=Session ("EPQ30757320")%>>/
<input id="EPQ30757330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757330" value =<%=Session ("EPQ30757330")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757350Page2")=1  %>
<tr>
<td>
Urinary leakage surgery (for bladder control)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757390" type="text" size= "3" name= "EPQ30757390" value =<%=Session ("EPQ30757390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757370" value =<%=Session ("EPQ30757370")%>>/
<input id="EPQ30757380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757380" value =<%=Session ("EPQ30757380")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757400Page2")=1  %>
<tr>
<td>
Other female reproductive (Gyn) surgery, specify: <%=Session("EPQ30757440Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757440" type="text" size= "3" name= "EPQ30757440" value =<%=Session ("EPQ30757440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757420" value =<%=Session ("EPQ30757420")%>>/
<input id="EPQ30757430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757430" value =<%=Session ("EPQ30757430")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30757450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757450Page2")=1  %>
<tr>
<td>Cleft lip or palate surgery </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757450N" type="text" size= "3" name= "TEMP1EPQ30757450N" value =<%=Session ("TEMP1EPQ30757450N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757450MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757450MM" value =<%=Session ("TEMP1EPQ30757450MM")%>>/
<input id="TEMP1EPQ30757450YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757450YY" value =<%=Session ("TEMP1EPQ30757450YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30757500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757500Page2")=1  %>
<tr>
<td>
Dental or Oral surgery (including the removal of your wisdom teeth)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757540" type="text" size= "3" name= "EPQ30757540" value =<%=Session ("EPQ30757540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757520" value =<%=Session ("EPQ30757520")%>>/
<input id="EPQ30757530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757530" value =<%=Session ("EPQ30757530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757550Page2")=1  %>
<tr>
<td>
Eye surgery (including the removal of cataracts and laser surgery such as LASIK)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757590" type="text" size= "3" name= "EPQ30757590" value =<%=Session ("EPQ30757590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757570" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30757570" value =<%=Session ("EPQ30757570")%>>/
<input id="EPQ30757580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757580" value =<%=Session ("EPQ30757580")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757600Page2")=1  %>
<tr>
<td>
Ear surgery (including tubes)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757640" type="text" size= "3" name= "EPQ30757640" value =<%=Session ("EPQ30757640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757620" value =<%=Session ("EPQ30757620")%>>/
<input id="EPQ30757630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757630" value =<%=Session ("EPQ30757630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30757600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757600Page2")=1  %>
<tr>
<td>Laryngectomy (removal of larynx or voice box)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757600N" type="text" size= "3" name= "TEMP1EPQ30757600N" value =<%=Session ("TEMP1EPQ30757600N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757600MM" value =<%=Session ("TEMP1EPQ30757600MM")%>>/
<input id="TEMP1EPQ30757600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757600YY" value =<%=Session ("TEMP1EPQ30757600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757650Page2")=1  %>
<tr>
<td>
Laryngoscopy (a test to see inside the back of the throat or vocal cords)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757690" type="text" size= "3" name= "EPQ30757690" value =<%=Session ("EPQ30757690")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757670" value =<%=Session ("EPQ30757670")%>>/
<input id="EPQ30757680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757680" value =<%=Session ("EPQ30757680")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757700Page2")=1  %>
<tr>
<td>
Nasal or sinus surgery (including deviated septum)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757740" type="text" size= "3" name= "EPQ30757740" value =<%=Session ("EPQ30757740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757720" value =<%=Session ("EPQ30757720")%>>/
<input id="EPQ30757730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757730" value =<%=Session ("EPQ30757730")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30757750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757750Page2")=1  %>
<tr>
<td>Neck (cervical spine) surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757750N" type="text" size= "3" name= "TEMP1EPQ30757750N" value =<%=Session ("TEMP1EPQ30757750N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757750MM" value =<%=Session ("TEMP1EPQ30757750MM")%>>/
<input id="TEMP1EPQ30757750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757750YY" value =<%=Session ("TEMP1EPQ30757750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757800Page2")=1  %>
<tr>
<td>
Parathyroid surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757840" type="text" size= "3" name= "EPQ30757840" value =<%=Session ("EPQ30757840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757820" value =<%=Session ("EPQ30757820")%>>/
<input id="EPQ30757830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757830" value =<%=Session ("EPQ30757830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757850Page2")=1  %>
<tr>
<td>
Plastic surgery (including facelifts and rhinoplasty)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30757890" type="text" size= "3" name= "EPQ30757890" value =<%=Session ("EPQ30757890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757870" value =<%=Session ("EPQ30757870")%>>/
<input id="EPQ30757880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757880" value =<%=Session ("EPQ30757880")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30757800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30757800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30757800Page2")=1  %>
<tr>
<td>Sleep apnea surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30757800N" type="text" size= "3" name= "TEMP2EPQ30757800N" value =<%=Session ("TEMP2EPQ30757800N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30757800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30757800MM" value =<%=Session ("TEMP2EPQ30757800MM")%>>/
<input id="TEMP2EPQ30757800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30757800YY" value =<%=Session ("TEMP2EPQ30757800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757900Page2")=1  %>
<tr>
<td>
Thyroid surgery (including removal of thyroid)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30757940" type="text" size= "3" name= "EPQ30757940" value =<%=Session ("EPQ30757940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757920" value =<%=Session ("EPQ30757920")%>>/
<input id="EPQ30757930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757930" value =<%=Session ("EPQ30757930")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757950Page2")=1  %>
<tr>
<td>
Tonsillectomy or adenoidectomy (removal of your tonsils and/or adenoids)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757990" type="text" size= "3" name= "EPQ30757990" value =<%=Session ("EPQ30757990")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757970" value =<%=Session ("EPQ30757970")%>>/
<input id="EPQ30757980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757980" value =<%=Session ("EPQ30757980")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758000Page2")=1  %>
<tr>
<td>
Tracheotomy (surgery to open your windpipe and help you breathe)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758040" type="text" size= "3" name= "EPQ30758040" value =<%=Session ("EPQ30758040")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758020" value =<%=Session ("EPQ30758020")%>>/
<input id="EPQ30758030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758030" value =<%=Session ("EPQ30758030")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758100Page2")=1  %>
<tr>
<td>
Other ENT, oral, or eye surgery, specify: <%=Session("EPQ30758140Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758140" type="text" size= "3" name= "EPQ30758140" value =<%=Session ("EPQ30758140")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758120" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758120" value =<%=Session ("EPQ30758120")%>>/
<input id="EPQ30758130" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758130" value =<%=Session ("EPQ30758130")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758150Page2")=1  %>
<tr>
<td>AV fistula or graft for hemodialysis</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758150N" type="text" size= "3" name= "TEMP1EPQ30758150N" value =<%=Session ("TEMP1EPQ30758150N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758150MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758150MM" value =<%=Session ("TEMP1EPQ30758150MM")%>>/
<input id="TEMP1EPQ30758150YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758150YY" value =<%=Session ("TEMP1EPQ30758150YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758150Page2")=1  %>
<tr>
<td>
Aneurysm repair
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758190" type="text" size= "3" name= "EPQ30758190" value =<%=Session ("EPQ30758190")%>> </td>
<td style="text-align: center;"><input id="EPQ30758170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758170" value =<%=Session ("EPQ30758170")%>>/
<input id="EPQ30758180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758180" value =<%=Session ("EPQ30758180")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758200Page2")=1  %>
<tr>
<td>
Angioplasty (placement of a stent in your artery)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758240" type="text" size= "3" name= "EPQ30758240" value =<%=Session ("EPQ30758240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758220" value =<%=Session ("EPQ30758220")%>>/
<input id="EPQ30758230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758230" value =<%=Session ("EPQ30758230")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758250Page2")=1  %>
<tr>
<td>
Cardiac catherization (passing a small tube from your leg or arm into your heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758290" type="text" size= "3" name= "EPQ30758290" value =<%=Session ("EPQ30758290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758270" value =<%=Session ("EPQ30758270")%>>/
<input id="EPQ30758280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758280" value =<%=Session ("EPQ30758280")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758300Page2")=1  %>
<tr>
<td>
Carotid endarterectomy (removal of plaque from  your arteries)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758340" type="text" size= "3" name= "EPQ30758340" value =<%=Session ("EPQ30758340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758320" value =<%=Session ("EPQ30758320")%>>/
<input id="EPQ30758330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758330" value =<%=Session ("EPQ30758330")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758350Page2")=1  %>
<tr>
<td>
Heart bypass surgery (also called coronary artery bypass surgery or CABG)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758390" type="text" size= "3" name= "EPQ30758390" value =<%=Session ("EPQ30758390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758370" value =<%=Session ("EPQ30758370")%>>/
<input id="EPQ30758380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758380" value =<%=Session ("EPQ30758380")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30758150Page2")=1  %>
<tr>
<td>Heart transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30758150N" type="text" size= "3" name= "TEMPEPQ30758150N" value =<%=Session ("TEMPEPQ30758150N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30758150MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30758150MM" value =<%=Session ("TEMPEPQ30758150MM")%>>/
<input id="TEMPEPQ30758150YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30758150YY" value =<%=Session ("TEMPEPQ30758150YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758400Page2")=1  %>
<tr>
<td>
Pacemaker or ICD (placement of a life saving device into your heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758440" type="text" size= "3" name= "EPQ30758440" value =<%=Session ("EPQ30758440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758420" value =<%=Session ("EPQ30758420")%>>/
<input id="EPQ30758430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758430" value =<%=Session ("EPQ30758430")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758450Page2")=1  %>
<tr>
<td>
Valve replacement
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758490" type="text" size= "3" name= "EPQ30758490" value =<%=Session ("EPQ30758490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758470" value =<%=Session ("EPQ30758470")%>>/
<input id="EPQ30758480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758480" value =<%=Session ("EPQ30758480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758500Page2")=1  %>
<tr>
<td>
Varicose Veins
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758540" type="text" size= "3" name= "EPQ30758540" value =<%=Session ("EPQ30758540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758520" value =<%=Session ("EPQ30758520")%>>/
<input id="EPQ30758530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758530" value =<%=Session ("EPQ30758530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758550Page2")=1  %>
<tr>
<td>
Other cardiac surgery, specify:<%=Session("EPQ30758590Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758590" type="text" size= "3" name= "EPQ30758590" value =<%=Session ("EPQ30758590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758570" value =<%=Session ("EPQ30758570")%>>/
<input id="EPQ30758580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758580" value =<%=Session ("EPQ30758580")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30756500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756500Page2")=1  %>
<tr>
<td>
Bronchoscopy (a tube with a camera is used to view the airways with or without biopsy) 
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756540" type="text" size= "3" name= "EPQ30756540" value =<%=Session ("EPQ30756540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756520" value =<%=Session ("EPQ30756520")%>>/
<input id="EPQ30756530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756530" value =<%=Session ("EPQ30756530")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756550Page2")=1  %>
<tr>
<td>Esophageal dilation (stretching to open the esophagus)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756550N" type="text" size= "3" name= "TEMP1EPQ30756550N" value =<%=Session ("TEMP1EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756550MM" value =<%=Session ("TEMP1EPQ30756550MM")%>>/
<input id="TEMP1EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756550YY" value =<%=Session ("TEMP1EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756550Page2")=1  %>
<tr>
<td>Laparoscopic esophageal surgery (Nissen fundoplication, Heller myotomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756550N" type="text" size= "3" name= "TEMP2EPQ30756550N" value =<%=Session ("TEMP2EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756550MM" value =<%=Session ("TEMP2EPQ30756550MM")%>>/
<input id="TEMP2EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756550YY" value =<%=Session ("TEMP2EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30756550Page2")=1  %>
<tr>
<td>Lung transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30756550N" type="text" size= "3" name= "TEMP3EPQ30756550N" value =<%=Session ("TEMP3EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30756550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30756550MM" value =<%=Session ("TEMP3EPQ30756550MM")%>>/
<input id="TEMP3EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30756550YY" value =<%=Session ("TEMP3EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30756600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756600Page2")=1  %>
<tr>
<td>
Mediastinoscopy (usually done to obtain a biopsy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756640" type="text" size= "3" name= "EPQ30756640" value =<%=Session ("EPQ30756640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756620" value =<%=Session ("EPQ30756620")%>>/
<input id="EPQ30756630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756630" value =<%=Session ("EPQ30756630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30756700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756700Page2")=1  %>
<tr>
<td>
Pericardial window (to drain fluid around the heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756740" type="text" size= "3" name= "EPQ30756740" value =<%=Session ("EPQ30756740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756720" value =<%=Session ("EPQ30756720")%>>/
<input id="EPQ30756730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756730" value =<%=Session ("EPQ30756730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756750Page2")=1  %>
<tr>
<td>Pleurodesis (removal of fluid and sealing of space between chest and lung)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756750N" type="text" size= "3" name= "TEMP1EPQ30756750N" value =<%=Session ("TEMP1EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756750MM" value =<%=Session ("TEMP1EPQ30756750MM")%>>/
<input id="TEMP1EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756750YY" value =<%=Session ("TEMP1EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30756750Page2")=1  %>
<tr>
<td>Removal of a portion of the esophagus containing cancer (esophagogastrectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30756750N" type="text" size= "3" name= "TEMP3EPQ30756750N" value =<%=Session ("TEMP3EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30756750MM" value =<%=Session ("TEMP3EPQ30756750MM")%>>/
<input id="TEMP3EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30756750YY" value =<%=Session ("TEMP3EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP4EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30756750Page2")=1  %>
<tr>
<td>Removal of lung/portions of the lung (lobectomy, pneumonectomy, wedge resection/segmentectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30756750N" type="text" size= "3" name= "TEMP4EPQ30756750N" value =<%=Session ("TEMP4EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30756750MM" value =<%=Session ("TEMP4EPQ30756750MM")%>>/
<input id="TEMP4EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30756750YY" value =<%=Session ("TEMP4EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756800Page2")=1  %>
<tr>
<td>Robotic-assisted chest surgery (da Vinci surgery) </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756800N" type="text" size= "3" name= "TEMP1EPQ30756800N" value =<%=Session ("TEMP1EPQ30756800N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756800MM" value =<%=Session ("TEMP1EPQ30756800MM")%>>/
<input id="TEMP1EPQ30756800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756800YY" value =<%=Session ("TEMP1EPQ30756800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP2EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756750Page2")=1  %>
<tr>
<td>Thoracoscopic sympathectomy (ETS)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756750N" type="text" size= "3" name= "TEMP2EPQ30756750N" value =<%=Session ("TEMP2EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756750MM" value =<%=Session ("TEMP2EPQ30756750MM")%>>/
<input id="TEMP2EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756750YY" value =<%=Session ("TEMP2EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756800Page2")=1  %>
<tr>
<td>Thoracoscopy or VATS (a tube with a camera is used to view the lungs and a procedure is performed)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756800N" type="text" size= "3" name= "TEMP2EPQ30756800N" value =<%=Session ("TEMP2EPQ30756800N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756800MM" value =<%=Session ("TEMP2EPQ30756800MM")%>>/
<input id="TEMP2EPQ30756800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756800YY" value =<%=Session ("TEMP2EPQ30756800YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756800Page2")=1  %>
<tr>
<td>
Tracheotomy
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756840" type="text" size= "3" name= "EPQ30756840" value =<%=Session ("EPQ30756840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756820" value =<%=Session ("EPQ30756820")%>>/
<input id="EPQ30756830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756830" value =<%=Session ("EPQ30756830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30756850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756850Page2")=1  %>
<tr>
<td>
Other lung surgery, specify:<%=Session("EPQ30756890Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756890" type="text" size= "3" name= "EPQ30756890" value =<%=Session ("EPQ30756890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756870" value =<%=Session ("EPQ30756870")%>>/
<input id="EPQ30756880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756880" value =<%=Session ("EPQ30756880")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30758600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758600Page2")=1  %>
<tr>
<td>HoLEP surgery (Holmium Laser Enucleation of the prostate)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758600N" type="text" size= "3" name= "TEMP1EPQ30758600N" value =<%=Session ("TEMP1EPQ30758600N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758600MM" value =<%=Session ("TEMP1EPQ30758600MM")%>>/
<input id="TEMP1EPQ30758600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758600YY" value =<%=Session ("TEMP1EPQ30758600YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30758650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30758650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30758650Page2")=1  %>
<tr>
<td>Laser PUP surgery (vaporization of prostate)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30758650N" type="text" size= "3" name= "TEMP2EPQ30758650N" value =<%=Session ("TEMP2EPQ30758650N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30758650MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30758650MM" value =<%=Session ("TEMP2EPQ30758650MM")%>>/
<input id="TEMP2EPQ30758650YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30758650YY" value =<%=Session ("TEMP2EPQ30758650YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30758800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758800Page2")=1  %>
<tr>
<td>
Orchiectomy (removal of the testicle or testes)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758840" type="text" size= "3" name= "EPQ30758840" value =<%=Session ("EPQ30758840")%>> </td>
<td style="text-align: center;"><input id="EPQ30758820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758820" value =<%=Session ("EPQ30758820")%>>/
<input id="EPQ30758830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758830" value =<%=Session ("EPQ30758830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758850Page2")=1  %>
<tr>
<td>
Penectomy (removal of the penis)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758890" type="text" size= "3" name= "EPQ30758890" value =<%=Session ("EPQ30758890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758870" value =<%=Session ("EPQ30758870")%>>/
<input id="EPQ30758880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758880" value =<%=Session ("EPQ30758880")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30758800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758800Page2")=1  %>
<tr>
<td>Penile implant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758800N" type="text" size= "3" name= "TEMP1EPQ30758800N" value =<%=Session ("TEMP1EPQ30758800N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758800MM" value =<%=Session ("TEMP1EPQ30758800MM")%>>/
<input id="TEMP1EPQ30758800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758800YY" value =<%=Session ("TEMP1EPQ30758800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758750Page2")=1  %>
<tr>
<td>
Radical prostatectomy (removal of all of the prostate gland to treat cancer)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758790" type="text" size= "3" name= "EPQ30758790" value =<%=Session ("EPQ30758790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758770" value =<%=Session ("EPQ30758770")%>>/
<input id="EPQ30758780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758780" value =<%=Session ("EPQ30758780")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30758900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758900Page2")=1  %>
<tr>
<td>Testicular descent surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758900N" type="text" size= "3" name= "TEMP1EPQ30758900N" value =<%=Session ("TEMP1EPQ30758900N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758900MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758900MM" value =<%=Session ("TEMP1EPQ30758900MM")%>>/
<input id="TEMP1EPQ30758900YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758900YY" value =<%=Session ("TEMP1EPQ30758900YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30758700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758700Page2")=1  %>
<tr>
<td>
TURP or Transurethral Resection of the Prostate (the removal of all or part of the prostate gland, sometimes called a "roto-rooter job")
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758740" type="text" size= "3" name= "EPQ30758740" value =<%=Session ("EPQ30758740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758720" value =<%=Session ("EPQ30758720")%>>/
<input id="EPQ30758730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758730" value =<%=Session ("EPQ30758730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758900Page2")=1  %>
<tr>
<td>
Vasectomy (to prevent pregnancy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758940" type="text" size= "3" name= "EPQ30758940" value =<%=Session ("EPQ30758940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758920" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30758920" value =<%=Session ("EPQ30758920")%>>/
<input id="EPQ30758930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758930" value =<%=Session ("EPQ30758930")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758950Page2")=1  %>
<tr>
<td>
Other male reproductive surgery, specify:<%Session("EPQ30758990Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758990" type="text" size= "3" name= "EPQ30758990" value =<%=Session ("EPQ30758990")%>> </td>
<td style="text-align: center;"><input id="EPQ30758970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758970" value =<%=Session ("EPQ30758970")%>>/
<input id="EPQ30758980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758980" value =<%=Session ("EPQ30758980")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30755400Page2")=1  %>
<tr>
<td>Ankle surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30755400N" type="text" size= "3" name= "TEMP1EPQ30755400N" value =<%=Session ("TEMP1EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30755400MM" value =<%=Session ("TEMP1EPQ30755400MM")%>>/
<input id="TEMP1EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30755400YY" value =<%=Session ("TEMP1EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP2EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30755400Page2")=1  %>
<tr>
<td>Arm surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30755400N" type="text" size= "3" name= "TEMP2EPQ30755400N" value =<%=Session ("TEMP2EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30755400MM" value =<%=Session ("TEMP2EPQ30755400MM")%>>/
<input id="TEMP2EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30755400YY" value =<%=Session ("TEMP2EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30755400Page2")=1  %>
<tr>
<td>Elbow surgery (Ulnar nerve transposition)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30755400N" type="text" size= "3" name= "TEMP3EPQ30755400N" value =<%=Session ("TEMP3EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30755400MM" value =<%=Session ("TEMP3EPQ30755400MM")%>>/
<input id="TEMP3EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30755400YY" value =<%=Session ("TEMP3EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755450Page2")=1  %>
<tr>
<td>
Foot surgery (including bunions)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30755490" type="text" size= "3" name= "EPQ30755490" value =<%=Session ("EPQ30755490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755470" value =<%=Session ("EPQ30755470")%>>/
<input id="EPQ30755480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755480" value =<%=Session ("EPQ30755480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30755500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755500Page2")=1  %>
<tr>
<td>
Fractures or broken bones requiring surgery (not just a cast)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755540" type="text" size= "3" name= "EPQ30755540" value =<%=Session ("EPQ30755540")%>> </td>
<td style="text-align: center;"><input id="EPQ30755520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755520" value =<%=Session ("EPQ30755520")%>>/
<input id="EPQ30755530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755530" value =<%=Session ("EPQ30755530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30755550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755550Page2")=1  %>
<tr>
<td>
Hand surgery (including carpal tunnel)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755590" type="text" size= "3" name= "EPQ30755590" value =<%=Session ("EPQ30755590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755570" value =<%=Session ("EPQ30755570")%>>/
<input id="EPQ30755580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755580" value =<%=Session ("EPQ30755580")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP4EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30755400Page2")=1  %>
<tr>
<td>Hip fracture surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30755400N" type="text" size= "3" name= "TEMP4EPQ30755400N" value =<%=Session ("TEMP4EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30755400MM" value =<%=Session ("TEMP4EPQ30755400MM")%>>/
<input id="TEMP4EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30755400YY" value =<%=Session ("TEMP4EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30755400Page2")=1  %>
<tr>
<td>Hip replacement</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30755400N" type="text" size= "3" name= "TEMP5EPQ30755400N" value =<%=Session ("TEMP5EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30755400MM" value =<%=Session ("TEMP5EPQ30755400MM")%>>/
<input id="TEMP5EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30755400YY" value =<%=Session ("TEMP5EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP6EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP6EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP6EPQ30755400Page2")=1  %>
<tr>
<td>Hip resurfacing surgery (shaving of bone or hip impingement)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP6EPQ30755400N" type="text" size= "3" name= "TEMP6EPQ30755400N" value =<%=Session ("TEMP6EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP6EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP6EPQ30755400MM" value =<%=Session ("TEMP6EPQ30755400MM")%>>/
<input id="TEMP6EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP6EPQ30755400YY" value =<%=Session ("TEMP6EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755600Page2")=1  %>
<tr>
<td>
Hip Surgery (including replacement)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755640" type="text" size= "3" name= "EPQ30755640" value =<%=Session ("EPQ30755640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755620" value =<%=Session ("EPQ30755620")%>>/
<input id="EPQ30755630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755630" value =<%=Session ("EPQ30755630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP7EPQ30755650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP7EPQ30755650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP7EPQ30755650Page2")=1  %>
<tr>
<td>Knee replacement</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP7EPQ30755650N" type="text" size= "3" name= "TEMP7EPQ30755650N" value =<%=Session ("TEMP7EPQ30755650N")%>></td>
<td style="text-align: center;"><input id="TEMP7EPQ30755650MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP7EPQ30755650MM" value =<%=Session ("TEMP7EPQ30755650MM")%>>/
<input id="TEMP7EPQ30755650YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP7EPQ30755650MM" value =<%=Session ("TEMP7EPQ30755650YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755650Page2")=1  %>
<tr>
<td>
Knee surgery (including ACL reconstruction and arthroscopic procedures)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755690" type="text" size= "3" name= "EPQ30755690" value =<%=Session ("EPQ30755690")%>> </td>
<td style="text-align: center;"><input id="EPQ30755670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755670" value =<%=Session ("EPQ30755670")%>>/
<input id="EPQ30755680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755680" value =<%=Session ("EPQ30755680")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP8EPQ30755600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP8EPQ30755600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP8EPQ30755600Page2")=1  %>
<tr>
<td>Leg surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP8EPQ30755600N" type="text" size= "3" name= "TEMP8EPQ30755600N" value =<%=Session ("TEMP8EPQ30755600N")%>></td>
<td style="text-align: center;"><input id="TEMP8EPQ30755600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP8EPQ30755600MM" value =<%=Session ("TEMP8EPQ30755600MM")%>>/
<input id="TEMP8EPQ30755600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP8EPQ30755600YY" value =<%=Session ("TEMP8EPQ30755600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755700Page2")=1  %>
<tr>
<td>
Shoulder surgery (including arthroscopic procedures)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755740" type="text" size= "3" name= "EPQ30755740" value =<%=Session ("EPQ30755740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755720" value =<%=Session ("EPQ30755720")%>>/
<input id="EPQ30755730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755730" value =<%=Session ("EPQ30755730")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755400Page2")=1  %>
<tr>
<td>
Spine or back surgery (including discectomy or laminectomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755440" type="text" size= "3" name= "EPQ30755440" value =<%=Session ("EPQ30755440")%>> </td>
<td style="text-align: center;"><input id="EPQ30755420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755420" value =<%=Session ("EPQ30755420")%>>/
<input id="EPQ30755430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755430" value =<%=Session ("EPQ30755430")%>>
</td>
</tr>
<% end if %>
<% end if %>





<% if session("EPQ30755750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755750Page2")=1  %>
<tr>
<td>
Other orthopedic surgery, specify:<%=Session("EPQ30755790Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755790" type="text" size= "3" name= "EPQ30755790" value =<%=Session ("EPQ30755790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755770" value =<%=Session ("EPQ30755770")%>>/
<input id="EPQ30755780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755780" value =<%=Session ("EPQ30755780")%>>
</td>
</tr>
<% end if %>
<% end if %>










<% if session("EPQ30758650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758650Page2")=1  %>
<tr>
<td>
Biopsy of prostate
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758690" type="text" size= "3" name= "EPQ30758690" value =<%=Session ("EPQ30758690")%>> </td>
<td style="text-align: center;"><input id="EPQ30758670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758670" value =<%=Session ("EPQ30758670")%>>/
<input id="EPQ30758680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758680" value =<%=Session ("EPQ30758680")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMPEPQ30759050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759050Page2")=1  %>
<tr>
<td>Body contouring</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759050N" type="text" size= "3" name= "TEMPEPQ30759050N" value =<%=Session ("TEMPEPQ30759050N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759050MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759050MM" value =<%=Session ("TEMPEPQ30759050MM")%>>/
<input id="TEMPEPQ30759050YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759050YY" value =<%=Session ("TEMPEPQ30759050YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759050Page2")=1  %>
<tr>
<td>
Body lift (post-bariatric surgery or post major weight loss)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759090" type="text" size= "3" name= "EPQ30759090" value =<%=Session ("EPQ30759090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759070" value =<%=Session ("EPQ30759070")%>>/
<input id="EPQ30759080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759080" value =<%=Session ("EPQ30759080")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30759200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759200Page2")=1  %>
<tr>
<td>Brow lift</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759200N" type="text" size= "3" name= "TEMPEPQ30759200N" value =<%=Session ("TEMPEPQ30759200N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759200MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759200MM" value =<%=Session ("TEMPEPQ30759200MM")%>>/
<input id="TEMPEPQ30759200YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759200YY" value =<%=Session ("TEMPEPQ30759200YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759200Page2")=1  %>
<tr>
<td>
Ear surgery (otoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759240" type="text" size= "3" name= "EPQ30759240" value =<%=Session ("EPQ30759240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759220" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30759220" value =<%=Session ("EPQ30759220")%>>/
<input id="EPQ30759230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759230" value =<%=Session ("EPQ30759230")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759250Page2")=1  %>
<tr>
<td>
Eyelid (blepharoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759290" type="text" size= "3" name= "EPQ30759290" value =<%=Session ("EPQ30759290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759270" value =<%=Session ("EPQ30759270")%>>/
<input id="EPQ30759280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759280" value =<%=Session ("EPQ30759280")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759300Page2")=1  %>
<tr>
<td>
Face lift
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759340" type="text" size= "3" name= "EPQ30759340" value =<%=Session ("EPQ30759340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759320" value =<%=Session ("EPQ30759320")%>>/
<input id="EPQ30759330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759330" value =<%=Session ("EPQ30759330")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759350Page2")=1  %>
<tr>
<td>
Liposuction, specify where:<%=Session("TEMPEPQ30759540Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759390" type="text" size= "3" name= "EPQ30759390" value =<%=Session ("EPQ30759390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759370" value =<%=Session ("EPQ30759370")%>>/
<input id="EPQ30759380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759380" value =<%=Session ("EPQ30759380")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759400Page2")=1  %>
<tr>
<td>
Neck lift (cervicoplasty and/or platysmaplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759440" type="text" size= "3" name= "EPQ30759440" value =<%=Session ("EPQ30759440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759420" value =<%=Session ("EPQ30759420")%>>/
<input id="EPQ30759430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759430" value =<%=Session ("EPQ30759430")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30759450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759450Page2")=1  %>
<tr>
<td>Thigh lift</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759450N" type="text" size= "3" name= "TEMPEPQ30759450N" value =<%=Session ("TEMPEPQ30759450N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759450MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759450MM" value =<%=Session ("TEMPEPQ30759450MM")%>>/
<input id="TEMPEPQ30759450YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759450YY" value =<%=Session ("TEMPEPQ30759450YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759450Page2")=1  %>
<tr>
<td>
Tummy tuck (abdominoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759490" type="text" size= "3" name= "EPQ30759490" value =<%=Session ("EPQ30759490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759470" value =<%=Session ("EPQ30759470")%>>/
<input id="EPQ30759480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759480" value =<%=Session ("EPQ30759480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759500Page2")=1  %>
<tr>
<td>
Other plastic surgery, specify:<%=Session("EPQ30759540Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759540" type="text" size= "3" name= "EPQ30759540" value =<%=Session ("EPQ30759540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759520" value =<%=Session ("EPQ30759520")%>>/
<input id="EPQ30759530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759530" value =<%=Session ("EPQ30759530")%>>
</td>
</tr>
<% end if %>
<% end if %>




<% if Session("TEMPEPQ30759600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759600Page2")=1  %>
<tr>
<td>PIC line</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759600N" type="text" size= "3" name= "TEMPEPQ30759600N" value =<%=Session ("TEMPEPQ30759600N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759600MM" value =<%=Session ("TEMPEPQ30759600MM")%>>/
<input id="TEMPEPQ30759600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759600YY" value =<%=Session ("TEMPEPQ30759600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759550Page2")=1  %>
<tr>
<td>
Placement of port
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759590" type="text" size= "3" name= "EPQ30759590" value =<%=Session ("EPQ30759590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759570" value =<%=Session ("EPQ30759570")%>>/
<input id="EPQ30759580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759580" value =<%=Session ("EPQ30759580")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759600Page2")=1  %>
<tr>
<td>
Removal of port
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759640" type="text" size= "3" name= "EPQ30759640" value =<%=Session ("EPQ30759640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759620" value =<%=Session ("EPQ30759620")%>>/
<input id="EPQ30759630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759630" value =<%=Session ("EPQ30759630")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759650Page2")=1  %>
<tr>
<td>
Other port surgery, specify:<%=Session("EPQ30759690Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759690" type="text" size= "3" name= "EPQ30759690" value =<%=Session ("EPQ30759690")%>> </td>
<td style="text-align: center;"><input id="EPQ30759670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759670" value =<%=Session ("EPQ30759670")%>>/
<input id="EPQ30759680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759680" value =<%=Session ("EPQ30759680")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30759700Page2")=1  %>
<tr>
<td>Burning of skin lesion (electrosurgery)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30759700N" type="text" size= "3" name= "TEMP1EPQ30759700N" value =<%=Session ("TEMP1EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30759700MM" value =<%=Session ("TEMP1EPQ30759700MM")%>>/
<input id="TEMP1EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30759700YY" value =<%=Session ("TEMP1EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30759700Page2")=1  %>
<tr>
<td>Chemotherapy creams (Aldara, Carac, Efudex, Fluoroplex, Picato, Solaraze, Zyclara, etc.) </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30759700N" type="text" size= "3" name= "TEMP2EPQ30759700N" value =<%=Session ("TEMP2EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30759700MM" value =<%=Session ("TEMP2EPQ30759700MM")%>>/
<input id="TEMP2EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30759700YY" value =<%=Session ("TEMP2EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759700Page2")=1  %>
<tr>
<td>
Cyst removal
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759740" type="text" size= "3" name= "EPQ30759740" value =<%=Session ("EPQ30759740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759720" value =<%=Session ("EPQ30759720")%>>/
<input id="EPQ30759730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759730" value =<%=Session ("EPQ30759730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759800Page2")=1  %>
<tr>
<td>
Excision of a skin cancer (removal of a skin cancer)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759840" type="text" size= "3" name= "EPQ30759840" value =<%=Session ("EPQ30759840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759820" value =<%=Session ("EPQ30759820")%>>/
<input id="EPQ30759830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759830" value =<%=Session ("EPQ30759830")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP3EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30759700Page2")=1  %>
<tr>
<td>Freezing of skin lesion (cryotherapy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30759700N" type="text" size= "3" name= "TEMP3EPQ30759700N" value =<%=Session ("TEMP3EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30759700MM" value =<%=Session ("TEMP3EPQ30759700MM")%>>/
<input id="TEMP3EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30759700YY" value =<%=Session ("TEMP3EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30759750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759750Page2")=1  %>
<tr>
<td>
Mohs surgery (removal of a skin cancer using a special technique)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759790" type="text" size= "3" name= "EPQ30759790" value =<%=Session ("EPQ30759790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759770" value =<%=Session ("EPQ30759770")%>>/
<input id="EPQ30759780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759780" value =<%=Session ("EPQ30759780")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP4EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30755300Page2")=1  %>
<tr>
<td>Mole removal</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30755300N" type="text" size= "3" name= "TEMP4EPQ30755300N" value =<%=Session ("TEMP4EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30755300MM" value =<%=Session ("TEMP4EPQ30755300MM")%>>/
<input id="TEMP4EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30755300YY" value =<%=Session ("TEMP4EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30755300Page2")=1  %>
<tr>
<td>Skin flap surgery (skin repositioned to the wound)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30755300N" type="text" size= "3" name= "TEMP5EPQ30755300N" value =<%=Session ("TEMP5EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30755300MM" value =<%=Session ("TEMP5EPQ30755300MM")%>>/
<input id="TEMP5EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30755300YY" value =<%=Session ("TEMP5EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP6EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP6EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP6EPQ30755300Page2")=1  %>
<tr>
<td>Skin graft (skin relocated to the wound)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP6EPQ30755300N" type="text" size= "3" name= "TEMP6EPQ30755300N" value =<%=Session ("TEMP6EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP6EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP6EPQ30755300MM" value =<%=Session ("TEMP6EPQ30755300MM")%>>/
<input id="TEMP6EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP6EPQ30755300YY" value =<%=Session ("TEMP6EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759900Page2")=1  %>
<tr>
<td>
Other skin surgery or procedure, specify:<%=Session("EPQ30759940Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759940" type="text" size= "3" name= "EPQ30759940" value =<%=Session ("EPQ30759940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759920" value =<%=Session ("EPQ30759920")%>>/
<input id="EPQ30759930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759930" value =<%=Session ("EPQ30759930")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30759950Page2")=1  %>
<tr>
<td>Back joint injections or nerve blocks</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30759950N" type="text" size= "3" name= "TEMP1EPQ30759950N" value =<%=Session ("TEMP1EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30759950MM" value =<%=Session ("TEMP1EPQ30759950MM")%>>/
<input id="TEMP1EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30759950YY" value =<%=Session ("TEMP1EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30759950Page2")=1  %>
<tr>
<td>Pain pump or spinal cord stimulator</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30759950N" type="text" size= "3" name= "TEMP2EPQ30759950N" value =<%=Session ("TEMP2EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30759950MM" value =<%=Session ("TEMP2EPQ30759950MM")%>>/
<input id="TEMP2EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30759950YY" value =<%=Session ("TEMP2EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP3EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30759950Page2")=1  %>
<tr>
<td>Spinal fusion (kyphoplasty, where bone cement is injected for fractures)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30759950N" type="text" size= "3" name= "TEMP3EPQ30759950N" value =<%=Session ("TEMP3EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30759950MM" value =<%=Session ("TEMP3EPQ30759950MM")%>>/
<input id="TEMP3EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30759950YY" value =<%=Session ("TEMP3EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP4EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30759950Page2")=1  %>
<tr>
<td>Spine surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30759950N" type="text" size= "3" name= "TEMP4EPQ30759950N" value =<%=Session ("TEMP4EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30759950MM" value =<%=Session ("TEMP4EPQ30759950MM")%>>/
<input id="TEMP4EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30759950YY" value =<%=Session ("TEMP4EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30759950Page2")=1  %>
<tr>
<td>Steroid injections to back</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30759950N" type="text" size= "3" name= "TEMP5EPQ30759950N" value =<%=Session ("TEMP5EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30759950MM" value =<%=Session ("TEMP5EPQ30759950MM")%>>/
<input id="TEMP5EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30759950YY" value =<%=Session ("TEMP5EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30760250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30760250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30760250Page2")=1  %>
<tr>
<td>Other spine surgery, specify: <%=Session("TEMPEPQ30760290Describe")%></td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30760250N" type="text" size= "3" name= "TEMPEPQ30760250N" value =<%=Session ("TEMPEPQ30760250N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30760250MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30760250MM" value =<%=Session ("TEMPEPQ30760250MM")%>>/
<input id="TEMPEPQ30760250YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30760250YY" value =<%=Session ("TEMPEPQ30760250YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30760000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760000Page2")=1  %>
<tr>
<td>
Bladder surgery (cystectomy, removal of all or part of the bladder)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760040" type="text" size= "3" name= "EPQ30760040" value =<%=Session ("EPQ30760040")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760020" value =<%=Session ("EPQ30760020")%>>/
<input id="EPQ30760030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760030" value =<%=Session ("EPQ30760030")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759950Page2")=1  %>
<tr>
<td>
Cystoscopy (placement of a tube into the bladder)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759990" type="text" size= "3" name= "EPQ30759990" value =<%=Session ("EPQ30759990")%>> </td>
<td style="text-align: center;"><input id="EPQ30759970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759970" value =<%=Session ("EPQ30759970")%>>/
<input id="EPQ30759980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759980" value =<%=Session ("EPQ30759980")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30760050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760050Page2")=1  %>
<tr>
<td>
Ileostomy or urostomy (creation of an opening in your abdomen that allows waste to leave your body)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30760090" type="text" size= "3" name= "EPQ30760090" value =<%=Session ("EPQ30760090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760070" value =<%=Session ("EPQ30760070")%>>/
<input id="EPQ30760080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760080" value =<%=Session ("EPQ30760080")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP4EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30759950Page2")=1  %>
<tr>
<td>Kidney drainage tube placement (nephrostomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30759950N" type="text" size= "3" name= "TEMP4EPQ30759950N" value =<%=Session ("TEMP4EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30759950MM" value =<%=Session ("TEMP4EPQ30759950MM")%>>/
<input id="TEMP4EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30759950YY" value =<%=Session ("TEMP4EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30760100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760100Page2")=1  %>
<tr>
<td>
Kidney removal surgery (nephrectomy or partial nephrectomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760140" type="text" size= "3" name= "EPQ30760140" value =<%=Session ("EPQ30760140")%>> </td>
<td style="text-align: center;"><input id="EPQ30760120" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760120" value =<%=Session ("EPQ30760120")%>>/
<input id="EPQ30760130" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760130" value =<%=Session ("EPQ30760130")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30760150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760150Page2")=1  %>
<tr>
<td>
Kidney stone surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760190" type="text" size= "3" name= "EPQ30760190" value =<%=Session ("EPQ30760190")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760170" value =<%=Session ("EPQ30760170")%>>/
<input id="EPQ30760180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760180" value =<%=Session ("EPQ30760180")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30760200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760200Page2")=1  %>
<tr>
<td>
Kidney stent
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760240" type="text" size= "3" name= "EPQ30760240" value =<%=Session ("EPQ30760240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760220" value =<%=Session ("EPQ30760220")%>>/
<input id="EPQ30760230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760230" value =<%=Session ("EPQ30760230")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP5EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30759950Page2")=1  %>
<tr>
<td>Kidney transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30759950N" type="text" size= "3" name= "TEMP5EPQ30759950N" value =<%=Session ("TEMP5EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30759950MM" value =<%=Session ("TEMP5EPQ30759950MM")%>>/
<input id="TEMP5EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30759950YY" value =<%=Session ("TEMP5EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30760250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760250Page2")=1  %>
<tr>
<td>
Other urinary or kidney surgery, <%=Session("EPQ30760290Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"   id="EPQ30760290" type="text" size= "3" name= "EPQ30760290" value =<%=Session ("EPQ30760290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760270" value =<%=Session ("EPQ30760270")%>>/
<input id="EPQ30760280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760280" value =<%=Session ("EPQ30760280")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30760300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760300Page2")=1  %>
<tr>
<td>
Other type of surgery, specify:<%=Session("TEMPEPQ30714000")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"   id="EPQ30760340" type="text" size= "3" name= "EPQ30760340" value =<%=Session ("EPQ30760340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760320" value =<%=Session ("EPQ30760320")%>>/
<input id="EPQ30760330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760330" value =<%=Session ("EPQ30760330")%>>
</td>
</tr>
<% end if %>
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
