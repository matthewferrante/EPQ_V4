
<%

Session("PersonalHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Personal Cancer History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30312010")="1" then
		strEPQ30312010answer1="checked"
	end if
	if Session("EPQ30312020")="1" then
		strEPQ30312020answer1="checked"
	end if
	if Session("EPQ30312030")="1" then
		strEPQ30312030answer1="checked"
	end if
	if Session("EPQ30312040")="1" then
		strEPQ30312040answer1="checked"
	end if
	if Session("EPQ30312050")="1" then
		strEPQ30312050answer1="checked"
	end if

	if Session("EPQ30313010")="1" then
		strEPQ30313010answer1="checked"
	end if
	if Session("EPQ30313020")="1" then
		strEPQ30313020answer1="checked"
	end if
	if Session("EPQ30313030")="1" then
		strEPQ30313030answer1="checked"
	end if
	if Session("EPQ30313040")="1" then
		strEPQ30313040answer1="checked"
	end if
	if Session("EPQ30313050")="1" then
		strEPQ30313050answer1="checked"
	end if

	if Session("EPQ30314010")="1" then
		strEPQ30314010answer1="checked"
	end if
	if Session("EPQ30314020")="1" then
		strEPQ30314020answer1="checked"
	end if
	if Session("EPQ30314030")="1" then
		strEPQ30314030answer1="checked"
	end if
	if Session("EPQ30314040")="1" then
		strEPQ30314040answer1="checked"
	end if
	if Session("EPQ30314050")="1" then
		strEPQ30314050answer1="checked"
	end if

	if Session("EPQ30315010")="1" then
		strEPQ30315010answer1="checked"
	end if
	if Session("EPQ30315020")="1" then
		strEPQ30315020answer1="checked"
	end if
	if Session("EPQ30315030")="1" then
		strEPQ30315030answer1="checked"
	end if
	if Session("EPQ30315040")="1" then
		strEPQ30315040answer1="checked"
	end if
	if Session("EPQ30315050")="1" then
		strEPQ30315050answer1="checked"
	end if

	if Session("EPQ30316010")="1" then
		strEPQ30316010answer1="checked"
	end if
	if Session("EPQ30316020")="1" then
		strEPQ30316020answer1="checked"
	end if
	if Session("EPQ30316030")="1" then
		strEPQ30316030answer1="checked"
	end if
	if Session("EPQ30316040")="1" then
		strEPQ30316040answer1="checked"
	end if
	if Session("EPQ30316050")="1" then
		strEPQ30316050answer1="checked"
	end if

	if Session("EPQ30317010")="1" then
		strEPQ30317010answer1="checked"
	end if
	if Session("EPQ30317020")="1" then
		strEPQ30317020answer1="checked"
	end if
	if Session("EPQ30317030")="1" then
		strEPQ30317030answer1="checked"
	end if
	if Session("EPQ30317040")="1" then
		strEPQ30317040answer1="checked"
	end if
	if Session("EPQ30317050")="1" then
		strEPQ30317050answer1="checked"
	end if

	if Session("EPQ30318010")="1" then
		strEPQ30318010answer1="checked"
	end if
	if Session("EPQ30318020")="1" then
		strEPQ30318020answer1="checked"
	end if
	if Session("EPQ30318030")="1" then
		strEPQ30318030answer1="checked"
	end if
	if Session("EPQ30318040")="1" then
		strEPQ30318040answer1="checked"
	end if
	if Session("EPQ30318050")="1" then
		strEPQ30318050answer1="checked"
	end if

	if Session("EPQ30319010")="1" then
		strEPQ30319010answer1="checked"
	end if
	if Session("EPQ30319020")="1" then
		strEPQ30319020answer1="checked"
	end if
	if Session("EPQ30319030")="1" then
		strEPQ30319030answer1="checked"
	end if
	if Session("EPQ30319040")="1" then
		strEPQ30319040answer1="checked"
	end if
	if Session("EPQ30319050")="1" then
		strEPQ30319050answer1="checked"
	end if

	if Session("EPQ30320010")="1" then
		strEPQ30320010answer1="checked"
	end if
	if Session("EPQ30320020")="1" then
		strEPQ30320020answer1="checked"
	end if
	if Session("EPQ30320030")="1" then
		strEPQ30320030answer1="checked"
	end if
	if Session("EPQ30320040")="1" then
		strEPQ30320040answer1="checked"
	end if
	if Session("EPQ30320050")="1" then
		strEPQ30320050answer1="checked"
	end if

	if Session("EPQ30321010")="1" then
		strEPQ30321010answer1="checked"
	end if
	if Session("EPQ30321020")="1" then
		strEPQ30321020answer1="checked"
	end if
	if Session("EPQ30321030")="1" then
		strEPQ30321030answer1="checked"
	end if
	if Session("EPQ30321040")="1" then
		strEPQ30321040answer1="checked"
	end if
	if Session("EPQ30321050")="1" then
		strEPQ30321050answer1="checked"
	end if

	if Session("EPQ30322010")="1" then
		strEPQ30322010answer1="checked"
	end if
	if Session("EPQ30322020")="1" then
		strEPQ30322020answer1="checked"
	end if
	if Session("EPQ30322030")="1" then
		strEPQ30322030answer1="checked"
	end if
	if Session("EPQ30322040")="1" then
		strEPQ30322040answer1="checked"
	end if
	if Session("EPQ30322050")="1" then
		strEPQ30322050answer1="checked"
	end if

	if Session("EPQ30323010")="1" then
		strEPQ30323010answer1="checked"
	end if
	if Session("EPQ30323020")="1" then
		strEPQ30323020answer1="checked"
	end if
	if Session("EPQ30323030")="1" then
		strEPQ30323030answer1="checked"
	end if
	if Session("EPQ30323040")="1" then
		strEPQ30323040answer1="checked"
	end if
	if Session("EPQ30323050")="1" then
		strEPQ30323050answer1="checked"
	end if

	if Session("EPQ30324010")="1" then
		strEPQ30324010answer1="checked"
	end if
	if Session("EPQ30324020")="1" then
		strEPQ30324020answer1="checked"
	end if
	if Session("EPQ30324030")="1" then
		strEPQ30324030answer1="checked"
	end if
	if Session("EPQ30324040")="1" then
		strEPQ30324040answer1="checked"
	end if
	if Session("EPQ30324050")="1" then
		strEPQ30324050answer1="checked"
	end if

	if Session("EPQ30325010")="1" then
		strEPQ30325010answer1="checked"
	end if
	if Session("EPQ30325020")="1" then
		strEPQ30325020answer1="checked"
	end if
	if Session("EPQ30325030")="1" then
		strEPQ30325030answer1="checked"
	end if
	if Session("EPQ30325040")="1" then
		strEPQ30325040answer1="checked"
	end if
	if Session("EPQ30325050")="1" then
		strEPQ30325050answer1="checked"
	end if

	if Session("EPQ30326010")="1" then
		strEPQ30326010answer1="checked"
	end if
	if Session("EPQ30326020")="1" then
		strEPQ30326020answer1="checked"
	end if
	if Session("EPQ30326030")="1" then
		strEPQ30326030answer1="checked"
	end if
	if Session("EPQ30326040")="1" then
		strEPQ30326040answer1="checked"
	end if
	if Session("EPQ30326050")="1" then
		strEPQ30326050answer1="checked"
	end if

	if Session("EPQ30327010")="1" then
		strEPQ30327010answer1="checked"
	end if
	if Session("EPQ30327020")="1" then
		strEPQ30327020answer1="checked"
	end if
	if Session("EPQ30327030")="1" then
		strEPQ30327030answer1="checked"
	end if
	if Session("EPQ30327040")="1" then
		strEPQ30327040answer1="checked"
	end if
	if Session("EPQ30327050")="1" then
		strEPQ30327050answer1="checked"
	end if
	if Session("EPQ30328010")="1" then
		strEPQ30328010answer1="checked"
	end if
	if Session("EPQ30328020")="1" then
		strEPQ30328020answer1="checked"
	end if
	if Session("EPQ30328030")="1" then
		strEPQ30328030answer1="checked"
	end if
	if Session("EPQ30328040")="1" then
		strEPQ30328040answer1="checked"
	end if
	if Session("EPQ30328050")="1" then
		strEPQ30328050answer1="checked"
	end if
	if Session("EPQ30329010")="1" then
		strEPQ30329010answer1="checked"
	end if
	if Session("EPQ30329020")="1" then
		strEPQ30329020answer1="checked"
	end if
	if Session("EPQ30329030")="1" then
		strEPQ30329030answer1="checked"
	end if
	if Session("EPQ30329040")="1" then
		strEPQ30329040answer1="checked"
	end if
	if Session("EPQ30329050")="1" then
		strEPQ30329050answer1="checked"
	end if

	if Session("EPQ30330010")="1" then
		strEPQ30330010answer1="checked"
	end if
	if Session("EPQ30330020")="1" then
		strEPQ30330020answer1="checked"
	end if
	if Session("EPQ30330030")="1" then
		strEPQ30330030answer1="checked"
	end if
	if Session("EPQ30330040")="1" then
		strEPQ30330040answer1="checked"
	end if
	if Session("EPQ30330050")="1" then
		strEPQ30330050answer1="checked"
	end if

	if Session("EPQ30331010")="1" then
		strEPQ30331010answer1="checked"
	end if
	if Session("EPQ30331020")="1" then
		strEPQ30331020answer1="checked"
	end if
	if Session("EPQ30331030")="1" then
		strEPQ30331030answer1="checked"
	end if
	if Session("EPQ30331040")="1" then
		strEPQ30331040answer1="checked"
	end if
	if Session("EPQ30331050")="1" then
		strEPQ30331050answer1="checked"
	end if

	if Session("EPQ30332010")="1" then
		strEPQ30332010answer1="checked"
	end if
	if Session("EPQ30332020")="1" then
		strEPQ30332020answer1="checked"
	end if
	if Session("EPQ30332030")="1" then
		strEPQ30332030answer1="checked"
	end if
	if Session("EPQ30332040")="1" then
		strEPQ30332040answer1="checked"
	end if
	if Session("EPQ30332050")="1" then
		strEPQ30332050answer1="checked"
	end if

	if Session("EPQ30333010")="1" then
		strEPQ30333010answer1="checked"
	end if
	if Session("EPQ30333020")="1" then
		strEPQ30333020answer1="checked"
	end if
	if Session("EPQ30333030")="1" then
		strEPQ30333030answer1="checked"
	end if
	if Session("EPQ30333040")="1" then
		strEPQ30333040answer1="checked"
	end if
	if Session("EPQ30333050")="1" then
		strEPQ30333050answer1="checked"
	end if

	if Session("EPQ30334010")="1" then
		strEPQ30334010answer1="checked"
	end if
	if Session("EPQ30334020")="1" then
		strEPQ30334020answer1="checked"
	end if
	if Session("EPQ30334030")="1" then
		strEPQ30334030answer1="checked"
	end if
	if Session("EPQ30334040")="1" then
		strEPQ30334040answer1="checked"
	end if
	if Session("EPQ30334050")="1" then
		strEPQ30334050answer1="checked"
	end if

	if Session("EPQ30335010")="1" then
		strEPQ30335010answer1="checked"
	end if
	if Session("EPQ30335020")="1" then
		strEPQ30335020answer1="checked"
	end if
	if Session("EPQ30335030")="1" then
		strEPQ30335030answer1="checked"
	end if
	if Session("EPQ30335040")="1" then
		strEPQ30335040answer1="checked"
	end if
	if Session("EPQ30335050")="1" then
		strEPQ30335050answer1="checked"
	end if

	if Session("EPQ30336010")="1" then
		strEPQ30336010answer1="checked"
	end if
	if Session("EPQ30336020")="1" then
		strEPQ30336020answer1="checked"
	end if
	if Session("EPQ30336030")="1" then
		strEPQ30336030answer1="checked"
	end if
	if Session("EPQ30336040")="1" then
		strEPQ30336040answer1="checked"
	end if
	if Session("EPQ30336050")="1" then
		strEPQ30336050answer1="checked"
	end if

	if Session("EPQ30337010")="1" then
		strEPQ30337010answer1="checked"
	end if
	if Session("EPQ30337020")="1" then
		strEPQ30337020answer1="checked"
	end if
	if Session("EPQ30337030")="1" then
		strEPQ30337030answer1="checked"
	end if
	if Session("EPQ30337040")="1" then
		strEPQ30337040answer1="checked"
	end if
	if Session("EPQ30337050")="1" then
		strEPQ30337050answer1="checked"
	end if

	if Session("EPQ30338010")="1" then
		strEPQ30338010answer1="checked"
	end if
	if Session("EPQ30338020")="1" then
		strEPQ30338020answer1="checked"
	end if
	if Session("EPQ30338030")="1" then
		strEPQ30338030answer1="checked"
	end if
	if Session("EPQ30338040")="1" then
		strEPQ30338040answer1="checked"
	end if
	if Session("EPQ30338050")="1" then
		strEPQ30338050answer1="checked"
	end if

	if Session("EPQ30339010")="1" then
		strEPQ30339010answer1="checked"
	end if
	if Session("EPQ30339020")="1" then
		strEPQ30339020answer1="checked"
	end if
	if Session("EPQ30339030")="1" then
		strEPQ30339030answer1="checked"
	end if
	if Session("EPQ30339040")="1" then
		strEPQ30339040answer1="checked"
	end if
	if Session("EPQ30339050")="1" then
		strEPQ30339050answer1="checked"
	end if

	if Session("EPQ30340010")="1" then
		strEPQ30340010answer1="checked"
	end if
	if Session("EPQ30340020")="1" then
		strEPQ30340020answer1="checked"
	end if
	if Session("EPQ30340030")="1" then
		strEPQ30340030answer1="checked"
	end if
	if Session("EPQ30340040")="1" then
		strEPQ30340040answer1="checked"
	end if
	if Session("EPQ30340050")="1" then
		strEPQ30340050answer1="checked"
	end if

	if Session("EPQ30342010")="1" then
		strEPQ30342010answer1="checked"
	end if
	if Session("EPQ30342020")="1" then
		strEPQ30342020answer1="checked"
	end if
	if Session("EPQ30342030")="1" then
		strEPQ30342030answer1="checked"
	end if
	if Session("EPQ30342040")="1" then
		strEPQ30342040answer1="checked"
	end if
	if Session("EPQ30342050")="1" then
		strEPQ30342050answer1="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then

	Session("EPQ30312010string")= ""
	Session("EPQ30312020string")= ""
	Session("EPQ30312030string")= ""
	Session("EPQ30312040string")= ""
	Session("EPQ30312050string")= ""

if Session("EPQ30311010Page1")= "1" then 
	Session("EPQ30312000") = Request.Form("EPQ30312000")
	Session("EPQ30312010") = Request.Form("EPQ30312010")
	Session("EPQ30312020") = Request.Form("EPQ30312020")
	Session("EPQ30312030") = Request.Form("EPQ30312030")
	Session("EPQ30312040") = Request.Form("EPQ30312040")
	Session("EPQ30312050") = Request.Form("EPQ30312050")
end if
if session("EPQ30311011Page1")=1 then
	Session("EPQ30313000") = Request.Form("EPQ30313000")
	Session("EPQ30313010") = Request.Form("EPQ30313010")
	Session("EPQ30313020") = Request.Form("EPQ30313020")
	Session("EPQ30313030") = Request.Form("EPQ30313030")
	Session("EPQ30313040") = Request.Form("EPQ30313040")
	Session("EPQ30313050") = Request.Form("EPQ30313050")
end if
if session("EPQ30311012Page1")=1 then
	Session("EPQ30314000") = Request.Form("EPQ30314000")
	Session("EPQ30314010") = Request.Form("EPQ30314010")
	Session("EPQ30314020") = Request.Form("EPQ30314020")
	Session("EPQ30314030") = Request.Form("EPQ30314030")
	Session("EPQ30314040") = Request.Form("EPQ30314040")
	Session("EPQ30314050") = Request.Form("EPQ30314050")
end if
if session("EPQ30311013Page1")=1 then
	Session("EPQ30315000") = Request.Form("EPQ30315000")
	Session("EPQ30315010") = Request.Form("EPQ30315010")
	Session("EPQ30315020") = Request.Form("EPQ30315020")
	Session("EPQ30315030") = Request.Form("EPQ30315030")
	Session("EPQ30315040") = Request.Form("EPQ30315040")
	Session("EPQ30315050") = Request.Form("EPQ30315050")
end if
if session("EPQ30311014Page1")=1 then
	Session("EPQ30316000") = Request.Form("EPQ30316000")
	Session("EPQ30316010") = Request.Form("EPQ30316010")
	Session("EPQ30316020") = Request.Form("EPQ30316020")
	Session("EPQ30316030") = Request.Form("EPQ30316030")
	Session("EPQ30316040") = Request.Form("EPQ30316040")
	Session("EPQ30316050") = Request.Form("EPQ30316050")
end if
if session("EPQ30311015Page1")=1 then
	Session("EPQ30317000") = Request.Form("EPQ30317000")
	Session("EPQ30317010") = Request.Form("EPQ30317010")
	Session("EPQ30317020") = Request.Form("EPQ30317020")
	Session("EPQ30317030") = Request.Form("EPQ30317030")
	Session("EPQ30317040") = Request.Form("EPQ30317040")
	Session("EPQ30317050") = Request.Form("EPQ30317050")
end if
if session("EPQ30311016Page1")=1 then
	Session("EPQ30318000") = Request.Form("EPQ30318000")
	Session("EPQ30318010") = Request.Form("EPQ30318010")
	Session("EPQ30318020") = Request.Form("EPQ30318020")
	Session("EPQ30318030") = Request.Form("EPQ30318030")
	Session("EPQ30318040") = Request.Form("EPQ30318040")
	Session("EPQ30318050") = Request.Form("EPQ30318050")
end if
if session("EPQ30311017Page1")=1 then
	Session("EPQ30319000") = Request.Form("EPQ30319000")
	Session("EPQ30319010") = Request.Form("EPQ30319010")
	Session("EPQ30319020") = Request.Form("EPQ30319020")
	Session("EPQ30319030") = Request.Form("EPQ30319030")
	Session("EPQ30319040") = Request.Form("EPQ30319040")
	Session("EPQ30319050") = Request.Form("EPQ30319050")
end if
if session("EPQ30311018Page1")=1 then
	Session("EPQ30320000") = Request.Form("EPQ30320000")
	Session("EPQ30320010") = Request.Form("EPQ30320010")
	Session("EPQ30320020") = Request.Form("EPQ30320020")
	Session("EPQ30320030") = Request.Form("EPQ30320030")
	Session("EPQ30320040") = Request.Form("EPQ30320040")
	Session("EPQ30320050") = Request.Form("EPQ30320050")
end if
if session("EPQ30311019Page1")=1 then
	Session("EPQ30321000") = Request.Form("EPQ30321000")
	Session("EPQ30321010") = Request.Form("EPQ30321010")
	Session("EPQ30321020") = Request.Form("EPQ30321020")
	Session("EPQ30321030") = Request.Form("EPQ30321030")
	Session("EPQ30321040") = Request.Form("EPQ30321040")
	Session("EPQ30321050") = Request.Form("EPQ30321050")
end if
if session("EPQ30311020Page1")=1 then
	Session("EPQ30322000") = Request.Form("EPQ30322000")
	Session("EPQ30322010") = Request.Form("EPQ30322010")
	Session("EPQ30322020") = Request.Form("EPQ30322020")
	Session("EPQ30322030") = Request.Form("EPQ30322030")
	Session("EPQ30322040") = Request.Form("EPQ30322040")
	Session("EPQ30322050") = Request.Form("EPQ30322050")
end if
if session("EPQ30311021Page1")=1 then
	Session("EPQ30323000") = Request.Form("EPQ30323000")
	Session("EPQ30323010") = Request.Form("EPQ30323010")
	Session("EPQ30323020") = Request.Form("EPQ30323020")
	Session("EPQ30323030") = Request.Form("EPQ30323030")
	Session("EPQ30323040") = Request.Form("EPQ30323040")
	Session("EPQ30323050") = Request.Form("EPQ30323050")
end if
if session("EPQ30311022Page1")=1 then
	Session("EPQ30324000") = Request.Form("EPQ30324000")
	Session("EPQ30324010") = Request.Form("EPQ30324010")
	Session("EPQ30324020") = Request.Form("EPQ30324020")
	Session("EPQ30324030") = Request.Form("EPQ30324030")
	Session("EPQ30324040") = Request.Form("EPQ30324040")
	Session("EPQ30324050") = Request.Form("EPQ30324050")
end if
if session("EPQ30311023Page1")=1 then
	Session("EPQ30325000") = Request.Form("EPQ30325000")
	Session("EPQ30325010") = Request.Form("EPQ30325010")
	Session("EPQ30325020") = Request.Form("EPQ30325020")
	Session("EPQ30325030") = Request.Form("EPQ30325030")
	Session("EPQ30325040") = Request.Form("EPQ30325040")
	Session("EPQ30325050") = Request.Form("EPQ30325050")
end if
if session("EPQ30311024Page1")=1 then
	Session("EPQ30326000") = Request.Form("EPQ30326000")
	Session("EPQ30326010") = Request.Form("EPQ30326010")
	Session("EPQ30326020") = Request.Form("EPQ30326020")
	Session("EPQ30326030") = Request.Form("EPQ30326030")
	Session("EPQ30326040") = Request.Form("EPQ30326040")
	Session("EPQ30326050") = Request.Form("EPQ30326050")
end if
if session("EPQ30311025Page1")=1 then
	Session("EPQ30327000") = Request.Form("EPQ30327000")
	Session("EPQ30327010") = Request.Form("EPQ30327010")
	Session("EPQ30327020") = Request.Form("EPQ30327020")
	Session("EPQ30327030") = Request.Form("EPQ30327030")
	Session("EPQ30327040") = Request.Form("EPQ30327040")
	Session("EPQ30327050") = Request.Form("EPQ30327050")
end if
if session("EPQ30311026Page1")=1 then
	Session("EPQ30328000") = Request.Form("EPQ30328000")
	Session("EPQ30328010") = Request.Form("EPQ30328010")
	Session("EPQ30328020") = Request.Form("EPQ30328020")
	Session("EPQ30328030") = Request.Form("EPQ30328030")
	Session("EPQ30328040") = Request.Form("EPQ30328040")
	Session("EPQ30328050") = Request.Form("EPQ30328050")
end if
if session("EPQ30311027Page1")=1 then
	Session("EPQ30329000") = Request.Form("EPQ30329000")
	Session("EPQ30329010") = Request.Form("EPQ30329010")
	Session("EPQ30329020") = Request.Form("EPQ30329020")
	Session("EPQ30329030") = Request.Form("EPQ30329030")
	Session("EPQ30329040") = Request.Form("EPQ30329040")
	Session("EPQ30329050") = Request.Form("EPQ30329050")
end if
if session("EPQ30311028Page1")=1 then
	Session("EPQ30330000") = Request.Form("EPQ30330000")
	Session("EPQ30330010") = Request.Form("EPQ30330010")
	Session("EPQ30330020") = Request.Form("EPQ30330020")
	Session("EPQ30330030") = Request.Form("EPQ30330030")
	Session("EPQ30330040") = Request.Form("EPQ30330040")
	Session("EPQ30330050") = Request.Form("EPQ30330050")
end if
if session("EPQ30311029Page1")=1 then
	Session("EPQ30331000") = Request.Form("EPQ30331000")
	Session("EPQ30331010") = Request.Form("EPQ30331010")
	Session("EPQ30331020") = Request.Form("EPQ30331020")
	Session("EPQ30331030") = Request.Form("EPQ30331030")
	Session("EPQ30331040") = Request.Form("EPQ30331040")
	Session("EPQ30331050") = Request.Form("EPQ30331050")
end if
if session("EPQ30311030Page1")=1 then
	Session("EPQ30332000") = Request.Form("EPQ30332000")
	Session("EPQ30332010") = Request.Form("EPQ30332010")
	Session("EPQ30332020") = Request.Form("EPQ30332020")
	Session("EPQ30332030") = Request.Form("EPQ30332030")
	Session("EPQ30332040") = Request.Form("EPQ30332040")
	Session("EPQ30332050") = Request.Form("EPQ30332050")
end if
if session("EPQ30311031Page1")=1 then
	Session("EPQ30333000") = Request.Form("EPQ30333000")
	Session("EPQ30333010") = Request.Form("EPQ30333010")
	Session("EPQ30333020") = Request.Form("EPQ30333020")
	Session("EPQ30333030") = Request.Form("EPQ30333030")
	Session("EPQ30333040") = Request.Form("EPQ30333040")
	Session("EPQ30333050") = Request.Form("EPQ30333050")
end if
if session("EPQ30311032Page1")=1 then
	Session("EPQ30334000") = Request.Form("EPQ30334000")
	Session("EPQ30334010") = Request.Form("EPQ30334010")
	Session("EPQ30334020") = Request.Form("EPQ30334020")
	Session("EPQ30334030") = Request.Form("EPQ30334030")
	Session("EPQ30334040") = Request.Form("EPQ30334040")
	Session("EPQ30334050") = Request.Form("EPQ30334050")
end if
if session("EPQ30311033Page1")=1 then
	Session("EPQ30335000") = Request.Form("EPQ30335000")
	Session("EPQ30335010") = Request.Form("EPQ30335010")
	Session("EPQ30335020") = Request.Form("EPQ30335020")
	Session("EPQ30335030") = Request.Form("EPQ30335030")
	Session("EPQ30335040") = Request.Form("EPQ30335040")
	Session("EPQ30335050") = Request.Form("EPQ30335050")
end if
if session("EPQ30311034Page1")=1 then
	Session("EPQ30336000") = Request.Form("EPQ30336000")
	Session("EPQ30336010") = Request.Form("EPQ30336010")
	Session("EPQ30336020") = Request.Form("EPQ30336020")
	Session("EPQ30336030") = Request.Form("EPQ30336030")
	Session("EPQ30336040") = Request.Form("EPQ30336040")
	Session("EPQ30336050") = Request.Form("EPQ30336050")
end if
if session("EPQ30311035Page1")=1 then
	Session("EPQ30337000") = Request.Form("EPQ30337000")
	Session("EPQ30337010") = Request.Form("EPQ30337010")
	Session("EPQ30337020") = Request.Form("EPQ30337020")
	Session("EPQ30337030") = Request.Form("EPQ30337030")
	Session("EPQ30337040") = Request.Form("EPQ30337040")
	Session("EPQ30337050") = Request.Form("EPQ30337050")
end if
if session("EPQ30311036Page1")=1 then
	Session("EPQ30338000") = Request.Form("EPQ30338000")
	Session("EPQ30338010") = Request.Form("EPQ30338010")
	Session("EPQ30338020") = Request.Form("EPQ30338020")
	Session("EPQ30338030") = Request.Form("EPQ30338030")
	Session("EPQ30338040") = Request.Form("EPQ30338040")
	Session("EPQ30338050") = Request.Form("EPQ30338050")
end if
if session("EPQ30311037Page1")=1 then
	Session("EPQ30339000") = Request.Form("EPQ30339000")
	Session("EPQ30339010") = Request.Form("EPQ30339010")
	Session("EPQ30339020") = Request.Form("EPQ30339020")
	Session("EPQ30339030") = Request.Form("EPQ30339030")
	Session("EPQ30339040") = Request.Form("EPQ30339040")
	Session("EPQ30339050") = Request.Form("EPQ30339050")
end if
if session("EPQ30311038Page1")=1 then
	Session("EPQ30340000") = Request.Form("EPQ30340000")
	Session("EPQ30340010") = Request.Form("EPQ30340010")
	Session("EPQ30340020") = Request.Form("EPQ30340020")
	Session("EPQ30340030") = Request.Form("EPQ30340030")
	Session("EPQ30340040") = Request.Form("EPQ30340040")
	Session("EPQ30340050") = Request.Form("EPQ30340050")
end if

if session("EPQ30311039Page1")=1 then
	Session("EPQ30342000") = Request.Form("EPQ30342000")
	Session("EPQ30342010") = Request.Form("EPQ30342010")
	Session("EPQ30342020") = Request.Form("EPQ30342020")
	Session("EPQ30342030") = Request.Form("EPQ30342030")
	Session("EPQ30342040") = Request.Form("EPQ30342040")
	Session("EPQ30342050") = Request.Form("EPQ30342050")
end if


end if

if Request.Form("StopID")="1" then
		Session("PersonalHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "personalhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30312000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	if Session("PHCDisplayCounter") > 8 then 
	Session("Page")="31"
	Response.Redirect "personalhistorycancermaster.asp"
	end if

	if Session("EPQ30312040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30313040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30314040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30315040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30316040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30317040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30318040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30319040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30320040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30321040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30322040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30323040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30324040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30325040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30326040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30327040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30328040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30329040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30330040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30331040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30332040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30333040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30334040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30335040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30337040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30338040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30339040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30340040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30342040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if



if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311026")="1" then
	Session("Page")="1cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311035")="1" then
	Session("Page")="2cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="3cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if

	Session("Page")="5"
	Session("PersonalHistoryCancerSectionStatus")="Current"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "personalhistorycancermaster.asp"
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


<div id="formWrapper2">

<div id="formBlock">
    <div class="QuestionBox">
Please provide the age when you had these type(s) of cancer and treatment(s) received.
	</div>


    <form action="personalhistorycancer3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

	<!-- [ Sample Question boxes ] -->


		<!-- [ Tables - the div container is given a class name that governs the CSS:
			either 	.tableBasic
					.tablePersonalHistory
					.tableFamilyHistory

			each table is given the class name .dataTable, which is
			used for the jQuery alternating color scheme; ] -->

  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>

	<div class="row0">
		<div class="header0"></div>
	</div>

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
				<th rowspan="2">Type of cancer</th>
				<th rowspan="2">What was your age when you    were told you had this type of cancer?</th>
				<th colspan="5">What type of treatment did you receive for cancer?<br> (Check all that apply)</th>
			</tr>

			<tr class="tableSubHeading">
				<th>Radiation</th>
				<th>Chemotherapy</th>
			 	<th>Surgery</th>
				<th>Other Treatment</th>
				<th>No Treatment</th>
			</tr>
		   <tbody>

<%if session("EPQ30311010")=1 then%>
<%if session("EPQ30311010Page1")=1 then%>

	<tr>
		<td>Anal cancer</td>
		<td style="text-align: center;"><input id="EPQ30312000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30312000" value=<%=Session("EPQ30312000")%>><br></td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30312010" value="1" 
id="EPQ30312010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30312010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30312020" value="1" 
id="EPQ30312020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30312020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30312030" value="1" 
id="EPQ30312030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30312030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30312040" value="1" 
id="EPQ30312040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30312040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30312050" value="1" 
id="EPQ30312050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30312050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311011")=1 then%>
<%if session("EPQ30311011Page1")=1 then%>
	<tr>
		<td>Bladder cancer</td>
		<td style="text-align: center;"><input id="EPQ30313000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30313000" value=<%=Session("EPQ30313000")%>><br></td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30313010" value="1" 
id="EPQ30313010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30313010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30313020" value="1" 
id="EPQ30313020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30313020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30313030" value="1" 
id="EPQ30313030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30313030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30313040" value="1" 
id="EPQ30313040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30313040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30313050" value="1" 
id="EPQ30313050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30313050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311012")=1 then%>
<%if session("EPQ30311012Page1")=1 then%>
	<tr>
		<td>Brain cancer</td>
		<td style="text-align: center;">
		<input id="EPQ30314000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30314000" value=<%=Session("EPQ30314000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30314010" value="1" 
id="EPQ30314010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30314010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30314020" value="1" 
id="EPQ30314020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30314020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30314030" value="1" 
id="EPQ30314030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30314030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30314040" value="1" 
id="EPQ30314040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30314040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30314050" value="1" 
id="EPQ30314050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30314050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311013")=1 then%>
<%if session("EPQ30311013Page1")=1 then%>
	<tr>
		<td>Breast cancer</td>
		<td style="text-align: center;">
		<input id="EPQ30315000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30315000" value=<%=Session("EPQ30315000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30315010" value="1" 
id="EPQ30315010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30315010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30315020" value="1" 
id="EPQ30315020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30315020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30315030" value="1" 
id="EPQ30315030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30315030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30315040" value="1" 
id="EPQ30315040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30315040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30315050" value="1" 
id="EPQ30315050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30315050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311014")=1 then%>
<%if session("EPQ30311014Page1")=1 then%>

	<tr>
		<td>
		Carcinoid tumor or neuroendocrine tumor
		</td>
		<td style="text-align: center;">
		<input id="EPQ30316000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30316000" value=<%=Session("EPQ30316000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30316010" value="1" 
id="EPQ30316010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30316010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30316020" value="1" 
id="EPQ30316020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30316020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30316030" value="1" 
id="EPQ30316030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30316030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30316040" value="1" 
id="EPQ30316040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30316040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30316050" value="1" 
id="EPQ30316050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30316050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311015")=1 then%>
<%if session("EPQ30311015Page1")=1 then%>

	<tr>
		<td>
		Cervical cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30317000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30317000" value=<%=Session("EPQ30317000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30317010" value="1" 
id="EPQ30317010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30317010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30317020" value="1" 
id="EPQ30317020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30317020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30317030" value="1" 
id="EPQ30317030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30317030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30317040" value="1" 
id="EPQ30317040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30317040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30317050" value="1" 
id="EPQ30317050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30317050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311016")=1 then%>
<%if session("EPQ30311016Page1")=1 then%>

	<tr>
		<td>Colon cancer</td>
		<td style="text-align: center;">
		<input id="EPQ30318000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30318000" value=<%=Session("EPQ30318000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30318010" value="1" 
id="EPQ30318010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30318010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30318020" value="1" 
id="EPQ30318020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30318020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30318030" value="1" 
id="EPQ30318030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30318030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30318040" value="1" 
id="EPQ30318040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30318040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30318050" value="1" 
id="EPQ30318050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30318050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311018")=1 then%>
<%if session("EPQ30311018Page1")=1 then%>

	<tr>
		<td>
Esophageal cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30320000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30320000" value=<%=Session("EPQ30320000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30320010" value="1" 
id="EPQ30320010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30320010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30320020" value="1" 
id="EPQ30320020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30320020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30320030" value="1" 
id="EPQ30320030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30320030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30320040" value="1" 
id="EPQ30320040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30320040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30320050" value="1" 
id="EPQ30320050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30320050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311019")=1 then%>
<%if session("EPQ30311019Page1")=1 then%>

	<tr>
		<td>
Gall bladder cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30321000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30321000" value=<%=Session("EPQ30321000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30321010" value="1" 
id="EPQ30321010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30321010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30321020" value="1" 
id="EPQ30321020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30321020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30321030" value="1" 
id="EPQ30321030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30321030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30321040" value="1" 
id="EPQ30321040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30321040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30321050" value="1" 
id="EPQ30321050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30321050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311020")=1 then%>
<%if session("EPQ30311020Page1")=1 then%>
	<tr>
		<td>
Gastrointestinal stromal tumor (GIST)
		</td>
		<td style="text-align: center;">
		<input id="EPQ30322000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30322000" value=<%=Session("EPQ30322000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30322010" value="1" 
id="EPQ30322010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30322010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30322020" value="1" 
id="EPQ30322020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30322020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30322030" value="1" 
id="EPQ30322030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30322030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30322040" value="1" 
id="EPQ30322040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30322040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30322050" value="1" 
id="EPQ30322050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30322050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>


<%if session("EPQ30311022")=1 then%>
<%if session("EPQ30311022Page1")=1 then%>
	<tr>
		<td>
Kidney (renal cell) cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30324000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30324000" value=<%=Session("EPQ30324000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30324010" value="1" 
id="EPQ30324010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30324010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30324020" value="1" 
id="EPQ30324020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30324020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30324030" value="1" 
id="EPQ30324030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30324030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30324040" value="1" 
id="EPQ30324040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30324040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30324050" value="1" 
id="EPQ30324050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30324050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311023")=1 then%>
<%if session("EPQ30311023Page1")=1 then%>
	<tr>
		<td>
Leukemia
		</td>
		<td style="text-align: center;">
		<input id="EPQ30325000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30325000" value=<%=Session("EPQ30325000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30325010" value="1" 
id="EPQ30325010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30325010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30325020" value="1" 
id="EPQ30325020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30325020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30325030" value="1" 
id="EPQ30325030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30325030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30325040" value="1" 
id="EPQ30325040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30325040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30325050" value="1" 
id="EPQ30325050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30325050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311024")=1 then%>
<%if session("EPQ30311024Page1")=1 then%>

	<tr>
		<td>
Liver cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30326000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30326000" value=<%=Session("EPQ30326000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30326010" value="1" 
id="EPQ30326010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30326010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30326020" value="1" 
id="EPQ30326020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30326020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30326030" value="1" 
id="EPQ30326030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30326030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30326040" value="1" 
id="EPQ30326040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30326040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30326050" value="1" 
id="EPQ30326050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30326050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311025")=1 then%>
<%if session("EPQ30311025Page1")=1 then%>
	<tr>
		<td>
Lung cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30327000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30327000" value=<%=Session("EPQ30327000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30327010" value="1" 
id="EPQ30327010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30327010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30327020" value="1" 
id="EPQ30327020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30327020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30327030" value="1" 
id="EPQ30327030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30327030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30327040" value="1" 
id="EPQ30327040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30327040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30327050" value="1" 
id="EPQ30327050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30327050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311021")=1 then%>
<%if session("EPQ30311021Page1")=1 then%>

	<tr>
		<td>
Lymphoma - Hodgkin’s
		</td>
		<td style="text-align: center;">
		<input id="EPQ30323000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30323000" value=<%=Session("EPQ30323000")%>><br>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30323010" value="1" 
id="EPQ30323010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30323010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30323020" value="1" 
id="EPQ30323020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30323020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30323030" value="1" 
id="EPQ30323030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30323030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30323040" value="1" 
id="EPQ30323040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30323040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30323050" value="1" 
id="EPQ30323050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30323050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>

<%if session("EPQ30311028")=1 then%>
<%if session("EPQ30311028Page1")=1 then%>

	<tr>
		<td>
Lymphoma - other than Hodgkin’s
		</td>
		<td style="text-align: center;">
		<input id="EPQ30330000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30330000" value=<%=Session("EPQ30330000")%>><br>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30330010" value="1" 
id="EPQ30330010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30330010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30330020" value="1" 
id="EPQ30330020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30330020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30330030" value="1" 
id="EPQ30330030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30330030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30330040" value="1" 
id="EPQ30330040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30330040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30330050" value="1" 
id="EPQ30330050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30330050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>


<%if session("EPQ30311026")=1 then%>
<%if session("EPQ30311026Page1")=1 then%>
	<tr>
		<td>
Melanoma
		</td>
		<td style="text-align: center;">
		<input id="EPQ30328000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30328000" value=<%=Session("EPQ30328000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30328010" value="1" 
id="EPQ30328010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30328010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30328020" value="1" 
id="EPQ30328020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30328020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30328030" value="1" 
id="EPQ30328030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30328030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30328040" value="1" 
id="EPQ30328040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30328040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30328050" value="1" 
id="EPQ30328050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30328050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311027")=1 then%>
<%if session("EPQ30311027Page1")=1 then%>
	<tr>
		<td>
Multiple myeloma or plasma cell tumor
		</td>
		<td style="text-align: center;">
		<input id="EPQ30329000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30329000" value=<%=Session("EPQ30329000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30329010" value="1" 
id="EPQ30329010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30329010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30329020" value="1" 
id="EPQ30329020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30329020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30329030" value="1" 
id="EPQ30329030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30329030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30329040" value="1" 
id="EPQ30329040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30329040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30329050" value="1" 
id="EPQ30329050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30329050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311029")=1 then%>
<%if session("EPQ30311029Page1")=1 then%>
	<tr>
		<td>
Oral cavity or throat cancer
		</div>
		<td style="text-align: center;">
		<input id="EPQ30331000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30331000" value=<%=Session("EPQ30331000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30331010" value="1" 
id="EPQ30331010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30331010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30331020" value="1" 
id="EPQ30331020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30331020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30331030" value="1" 
id="EPQ30331030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30331030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30331040" value="1" 
id="EPQ30331040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30331040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30331050" value="1" 
id="EPQ30331050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30331050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311030")=1 then%>
<%if session("EPQ30311030Page1")=1 then%>

	<tr>
		<td>
Ovarian cancer (includes fallopian and peritoneal cancers)
		</td>
		<td style="text-align: center;">
		<input id="EPQ30332000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30332000" value=<%=Session("EPQ30332000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30332010" value="1" 
id="EPQ30332010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30332010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30332020" value="1" 
id="EPQ30332020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30332020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30332030" value="1" 
id="EPQ30332030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30332030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30332040" value="1" 
id="EPQ30332040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30332040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30332050" value="1" 
id="EPQ30332050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30332050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311031")=1 then%>
<%if session("EPQ30311031Page1")=1 then%>

	<tr>
		<td>
Pancreatic cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30333000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30333000" value=<%=Session("EPQ30333000")%> ><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30333010" value="1" 
id="EPQ30333010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30333010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30333020" value="1" 
id="EPQ30333020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30333020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30333030" value="1" 
id="EPQ30333030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30333030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30333040" value="1" 
id="EPQ30333040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30333040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30333050" value="1" 
id="EPQ30333050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30333050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311032")=1 then%>
<%if session("EPQ30311032Page1")=1 then%>

	<tr>
		<td>
Prostate cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30334000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30334000" value=<%=Session("EPQ30334000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30334010" value="1" 
id="EPQ30334010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30334010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30334020" value="1" 
id="EPQ30334020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30334020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30334030" value="1" 
id="EPQ30334030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30334030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30334040" value="1" 
id="EPQ30334040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30334040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30334050" value="1" 
id="EPQ30334050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30334050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311033")=1 then%>
<%if session("EPQ30311033Page1")=1 then%>

	<tr>
		<td>
Rectal cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30335000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30335000" value=<%=Session("EPQ30335000")%> ><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30335010" value="1" 
id="EPQ30335010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30335010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30335020" value="1" 
id="EPQ30335020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30335020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30335030" value="1" 
id="EPQ30335030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30335030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30335040" value="1" 
id="EPQ30335040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30335040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30335050" value="1" 
id="EPQ30335050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30335050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311034")=1 then %>
<%if session("EPQ30311034Page1")=1 then %>

	<tr>
		<td>Sarcoma</td>
		<td style="text-align: center;"><input id="EPQ30336000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30336000" value=<%=Session("EPQ30336000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30336010" value="1" 
id="EPQ30336010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30336010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30336020" value="1" 
id="EPQ30336020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30336020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30336030" value="1" 
id="EPQ30336030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30336030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30336040" value="1" 
id="EPQ30336040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30336040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30336050" value="1" 
id="EPQ30336050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30336050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311035")=1 then%>
<%if session("EPQ30311035Page1")=1 then%>

	<tr>
		<td>
Skin cancer other than melanoma &nbsp;<br>(includes basal and squamous cell carcinoma) 
		</td>
		<td style="text-align: center;">
		<input id="EPQ30337000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30337000" value=<%=Session("EPQ30337000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30337010" value="1" 
id="EPQ30337010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30337010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30337020" value="1" 
id="EPQ30337020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30337020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30337030" value="1" 
id="EPQ30337030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30337030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30337040" value="1" 
id="EPQ30337040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30337040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30337050" value="1" 
id="EPQ30337050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30337050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311036")=1 then%>
<%if session("EPQ30311036Page1")=1 then%>

	<tr>
		<td>
Stomach (gastric) cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30338000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30338000" value=<%=Session("EPQ30338000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30338010" value="1" 
id="EPQ30338010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30338010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30338020" value="1" 
id="EPQ30338020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30338020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30338030" value="1" 
id="EPQ30338030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30338030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30338040" value="1" 
id="EPQ30338040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30338040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30338050" value="1" 
id="EPQ30338050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30338050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311037")=1 then%>
<%if session("EPQ30311037Page1")=1 then%>

	<tr>
		<td>
Testicular cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30339000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30339000" value=<%=Session("EPQ30339000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30339010" value="1" 
id="EPQ30339010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30339010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30339020" value="1" 
id="EPQ30339020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30339020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30339030" value="1" 
id="EPQ30339030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30339030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30339040" value="1" 
id="EPQ30339040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30339040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30339050" value="1" 
id="EPQ30339050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30339050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
<%if session("EPQ30311038")=1 then%>
<%if session("EPQ30311038Page1")=1 then%>

	<tr>
		<td>
Thyroid cancer
		</td>
		<td style="text-align: center;">
		<input id="EPQ30340000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30340000" value=<%=Session("EPQ30340000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30340010" value="1" 
id="EPQ30340010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30340010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30340020" value="1" 
id="EPQ30340020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30340020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30340030" value="1" 
id="EPQ30340030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30340030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30340040" value="1" 
id="EPQ30340040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30340040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30340050" value="1" 
id="EPQ30340050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30340050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>


<%if session("EPQ30311017")=1 then%>
<%if session("EPQ30311017Page1")=1 then%>

	<tr>
		<td>
Uterine (endometrial) cancer 
		</td>
		<td style="text-align: center;">
		<input id="EPQ30319000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30319000" value=<%=Session("EPQ30319000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30319010" value="1" 
id="EPQ30319010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30319010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30319020" value="1" 
id="EPQ30319020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30319020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30319030" value="1" 
id="EPQ30319030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30319030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30319040" value="1" 
id="EPQ30319040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30319040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30319050" value="1" 
id="EPQ30319050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30319050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>


<%if session("EPQ30311039")=1 then%>
<%if session("EPQ30311039Page1")=1 then%>

	<tr>
		<td>
		<%
 =Session("EPQ30341000") 
%><br>

		</td>
		<td style="text-align: center;">
		<input id="EPQ30342000" type="text" class="required yearsExposed" size="3" maxlength="3" name="EPQ30342000" value=<%=Session("EPQ30342000")%>><br>
		</td>

		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30342010" value="1" 
id="EPQ30342010" class="eitherCheckboxOrNoTreatment" <%=strEPQ30342010answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30342020" value="1" 
id="EPQ30342020" class="eitherCheckboxOrNoTreatment" <%=strEPQ30342020answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30342030" value="1" 
id="EPQ30342030" class="eitherCheckboxOrNoTreatment" <%=strEPQ30342030answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30342040" value="1" 
id="EPQ30352040" class="eitherCheckboxOrNoTreatment" <%=strEPQ30342040answer1%>>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" name="EPQ30342050" value="1" 
id="EPQ30342050" class="eitherCheckboxOrNoTreatment" <%=strEPQ30342050answer1%>>
		</td>
	</tr>
<%end if%>
<%end if%>
		   </tbody>
		</table>
	</div> <!-- [ /.tablePersonalHistory ] -->
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
