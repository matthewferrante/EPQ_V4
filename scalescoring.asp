<%

if Session("ProductionMode")<>"1" then 
if Session("ProductionModeSpoke")="GU" then
if Session("SurveyVersion")="GU" then
'TODD SCALE SCORING
end if
end if
end if

dim strAUAScore

if Session("GU10501000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10501000"))
end if
if Session("GU10502000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10502000"))
end if
if Session("GU10503000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10503000"))
end if
if Session("GU10504000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10504000"))
end if
if Session("GU10505000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10505000"))
end if
if Session("GU10506000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10506000"))
end if
if Session("GU10507000") <> "" then
strAUAScore=strAUAScore+CInt(Session("GU10507000"))
end if

if Session("Gender")="M" then

if len(Session("GU10501000")) > 0 AND len(Session("GU10502000")) > 0 AND len(Session("GU10503000")) > 0 AND len(Session("GU10504000")) > 0 AND len(Session("GU10505000")) > 0 AND len(Session("GU10506000")) > 0 AND len(Session("GU10507000")) > 0 then 
strPayload=strPayload&" \par \tab AUA Symptom Score (out of 35 points): "&strAUAScore
end if

end if

dim strRASScore

if Session("GU10508000") <> "" then
strRASScore=strRASScore+CInt(Session("GU10508000"))
end if
if Session("GU10509000") <> "" then
strRASScore=strRASScore+CInt(Session("GU10509000"))
end if
if Session("GU10510000") <> "" then
strRASScore=strRASScore+CInt(Session("GU10510000"))
end if
if Session("GU10511000") <> "" then
strRASScore=strRASScore+CInt(Session("GU10511000"))
end if
if Session("GU10512000") <> "" then
strRASScore=strRASScore+CInt(Session("GU10512000"))
end if

if Session("Gender")="M" then

if len(Session("GU10508000"))>0 AND len(Session("GU10509000"))>0 and len(Session("GU10510000"))>0 AND len(Session("GU10511000"))>0 AND len(Session("GU10512000"))>0 then
strPayload=strPayload&" \par\par \tab RAS (out of 15 points): "&strRASScore
end if

end if


if Session("GU10202000")="1" then 
strPayload=strPayload&" \par\par \tab BCI Scores"


strPayload=strPayload&" \par \tab\tab Urinary Subscales:"

dim strUrinaryFunctionScore

if Session("GU11303000") = 1 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+0)
end if
if Session("GU11303000") = 2 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+33)
end if
if Session("GU11303000") = 3 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+67)
end if
if Session("GU11303000") = 4 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+100)
end if

if Session("GU11304000") = 1 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+0)
end if
if Session("GU11304000") = 2 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+33)
end if
if Session("GU11304000") = 3 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+67)
end if
if Session("GU11304000") = 4 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+100)
end if

if Session("GU11305000") = 1 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+0)
end if
if Session("GU11305000") = 2 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+33)
end if
if Session("GU11305000") = 3 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+67)
end if
if Session("GU11305000") = 4 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+100)
end if

if Session("GU11306000") = 1 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+0)
end if
if Session("GU11306000") = 2 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+33)
end if
if Session("GU11306000") = 3 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+67)
end if
if Session("GU11306000") = 4 then
strUrinaryFunctionScore=strUrinaryFunctionScore+CInt(+100)
end if



dim strUrinaryFunctionScorePercent
strUrinaryFunctionScorePercent=Round((strUrinaryFunctionScore/400),2)*100

'strPayload=strPayload&" \par "&Session("GU11303000")
'strPayload=strPayload&" \par "&Session("GU11304000")
'strPayload=strPayload&" \par "&Session("GU11305000")
'strPayload=strPayload&" \par "&Session("GU11306000")

if len(Session("GU11303000"))>0 AND len(Session("GU11304000"))>0 AND len(Session("GU11305000"))>0 AND len(Session("GU11306000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Function: "&strUrinaryFunctionScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Function: Missing"

end if



dim strUrinaryBotherScore

if Session("GU11307000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11307000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11307000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11307000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11307000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11308000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11308000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11308000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11308000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11308000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11309000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11309000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11309000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11309000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11309000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11310000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11310000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11310000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11310000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11310000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11311000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11311000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11311000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11311000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11311000") = "5" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11312000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11312000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11312000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11312000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11312000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11313000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11313000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11313000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11313000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11313000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if

if Session("GU11314000") = "0" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+100)
end if
if Session("GU11314000") = "1" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+75)
end if
if Session("GU11314000") = "2" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+50)
end if
if Session("GU11314000") = "3" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+25)
end if
if Session("GU11314000") = "4" then
strUrinaryBotherScore=strUrinaryBotherScore+CInt(+0)
end if


dim strUrinaryBotherScorePercent
strUrinaryBotherScorePercent=Round((strUrinaryBotherScore/800),2)*100

'strPayload=strPayload&" \par "&Session("GU11307000")
'strPayload=strPayload&" \par "&Session("GU11308000")
'strPayload=strPayload&" \par "&Session("GU11309000")
'strPayload=strPayload&" \par "&Session("GU11310000")
'strPayload=strPayload&" \par "&Session("GU11311000")
'strPayload=strPayload&" \par "&Session("GU11312000")
'strPayload=strPayload&" \par "&Session("GU11313000")
'strPayload=strPayload&" \par "&Session("GU11314000")

if len(Session("GU11307000"))>0 AND len(Session("GU11308000"))>0 AND len(Session("GU11309000"))>0 AND len(Session("GU11310000"))>0 AND len(Session("GU11311000"))>0 AND len(Session("GU11312000"))>0 AND len(Session("GU11313000"))>0 AND len(Session("GU11314000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Bother: "&strUrinaryBotherScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Bother: Missing"

end if







strPayload=strPayload&" \par \tab\tab Bowel Subscales: "
dim strBowelFunctionScore


if Session("GU11316000") = "1" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+100)
end if
if Session("GU11316000") = "2" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+75)
end if
if Session("GU11316000") = "3" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+50)
end if
if Session("GU11316000") = "4" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+25)
end if
if Session("GU11316000") = "5" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+0)
end if

if Session("GU11318000") = "1" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+100)
end if
if Session("GU11318000") = "2" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+67)
end if
if Session("GU11318000") = "3" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+33)
end if
if Session("GU11318000") = "4" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+0)
end if

if Session("GU11319000") = "0" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+100)
end if
if Session("GU11319000") = "1" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+75)
end if
if Session("GU11319000") = "2" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+50)
end if
if Session("GU11319000") = "3" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+25)
end if
if Session("GU11319000") = "4" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+0)
end if

if Session("GU11320000") = "0" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+100)
end if
if Session("GU11320000") = "1" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+75)
end if
if Session("GU11320000") = "2" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+50)
end if
if Session("GU11320000") = "3" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+25)
end if
if Session("GU11320000") = "4" then
strBowelFunctionScore=strBowelFunctionScore+CInt(+0)
end if



dim strBowelFunctionScorePercent
strBowelFunctionScorePercent=Round((strBowelFunctionScore/400),2)*100


'strPayload=strPayload&" \par "&Session("GU11316000")
'strPayload=strPayload&" \par "&Session("GU11318000")
'strPayload=strPayload&" \par "&Session("GU11319000")
'strPayload=strPayload&" \par "&Session("GU11320000")

if len(Session("GU11316000"))>0 AND len(Session("GU11318000"))>0 AND len(Session("GU11319000"))>0 AND len(Session("GU11320000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Function: "&strBowelFunctionScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Function: Missing"

end if



dim strBowelBotherScore

if Session("GU11315000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if
if Session("GU11315000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11315000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11315000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11315000") = "5" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if

if Session("GU11317000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if
if Session("GU11317000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11317000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11317000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11317000") = "5" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if

if Session("GU11321000") = "0" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if
if Session("GU11321000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11321000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11321000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11321000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if

if Session("GU11322000") = "0" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if
if Session("GU11322000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11322000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11322000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11322000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if

if Session("GU11323000") = "0" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if
if Session("GU11323000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11323000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11323000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11323000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if


if Session("GU11324000") = "1" then
strBowelBotherScore=strBowelBotherScore+CInt(+0)
end if
if Session("GU11324000") = "2" then
strBowelBotherScore=strBowelBotherScore+CInt(+25)
end if
if Session("GU11324000") = "3" then
strBowelBotherScore=strBowelBotherScore+CInt(+50)
end if
if Session("GU11324000") = "4" then
strBowelBotherScore=strBowelBotherScore+CInt(+75)
end if
if Session("GU11324000") = "5" then
strBowelBotherScore=strBowelBotherScore+CInt(+100)
end if


dim strBowelBotherScorePercent
strBowelBotherScorePercent=Round((strBowelBotherScore/600),2)*100


'strPayload=strPayload&" \par "&Session("GU11315000")
'strPayload=strPayload&" \par "&Session("GU11317000")
'strPayload=strPayload&" \par "&Session("GU11321000")
'strPayload=strPayload&" \par "&Session("GU11322000")
'strPayload=strPayload&" \par "&Session("GU11323000")
'strPayload=strPayload&" \par "&Session("GU11324000")

if len(Session("GU11315000"))>0 AND len(Session("GU11317000"))>0 AND len(Session("GU11321000"))>0 AND len(Session("GU11322000"))>0 AND len(Session("GU11323000"))>0 AND len(Session("GU11324000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Bother: "&strBowelBotherScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Bother: Missing"

end if



strPayload=strPayload&" \par \tab\tab Sexual Subscales: "


if Session("GU11325000")="99" OR Session("GU11326000")="99" OR Session("GU11327000")="99" OR Session("GU11328000")="99" OR Session("GU11329000")="99" OR Session("GU11330000")="99" OR Session("GU11335000")="99" then
strPayload=strPayload&" \par \tab\tab\tab Function: Missing"

else

dim strSexualFunctionScore

if Session("GU11325000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11325000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11325000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11325000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11325000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11326000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11326000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11326000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11326000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11326000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11327000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11327000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11327000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11327000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11327000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11328000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11328000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11328000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11328000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11328000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11329000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11329000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11329000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11329000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11329000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11330000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11330000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+33)
end if
if Session("GU11330000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+67)
end if
if Session("GU11330000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if

if Session("GU11335000") = "1" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+0)
end if
if Session("GU11335000") = "2" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+25)
end if
if Session("GU11335000") = "3" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+50)
end if
if Session("GU11335000") = "4" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+75)
end if
if Session("GU11335000") = "5" then
strSexualFunctionScore=strSexualFunctionScore+CInt(+100)
end if


dim strSexualFunctionScorePercent
strSexualFunctionScorePercent=Round((strSexualFunctionScore/700),2)*100


'strPayload=strPayload&" \par "&Session("GU11325000")
'strPayload=strPayload&" \par "&Session("GU11326000")
'strPayload=strPayload&" \par "&Session("GU11327000")
'strPayload=strPayload&" \par "&Session("GU11328000")
'strPayload=strPayload&" \par "&Session("GU11329000")
'strPayload=strPayload&" \par "&Session("GU11330000")
'strPayload=strPayload&" \par "&Session("GU11335000")

if len(Session("GU11325000"))>0 AND len(Session("GU11326000"))>0 AND len(Session("GU11327000"))>0 AND len(Session("GU11328000"))>0 AND len(Session("GU11329000"))>0 AND len(Session("GU11330000"))>0 AND len(Session("GU11335000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Function: "&strSexualFunctionScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Function: Missing "

end if
end if


if Session("GU11331000")="99" OR Session("GU11332000")="99" OR Session("GU11333000")="99" OR Session("GU11334000")="99" OR Session("GU11336000")="99" then
strPayload=strPayload&" \par \tab\tab\tab Bother: Missing "

else

dim strSexualBotherScore

if Session("GU11331000") = "1" then
strSexualBotherScore=strSexualBotherScore+CInt(+100)
end if
if Session("GU11331000") = "2" then
strSexualBotherScore=strSexualBotherScore+CInt(+75)
end if
if Session("GU11331000") = "3" then
strSexualBotherScore=strSexualBotherScore+CInt(+50)
end if
if Session("GU11331000") = "4" then
strSexualBotherScore=strSexualBotherScore+CInt(+25)
end if
if Session("GU11331000") = "5" then
strSexualBotherScore=strSexualBotherScore+CInt(+0)
end if

if Session("GU11332000") = "0" then
strSexualBotherScore=strSexualBotherScore+CInt(+100)
end if
if Session("GU11332000") = "1" then
strSexualBotherScore=strSexualBotherScore+CInt(+75)
end if
if Session("GU11332000") = "2" then
strSexualBotherScore=strSexualBotherScore+CInt(+50)
end if
if Session("GU11332000") = "3" then
strSexualBotherScore=strSexualBotherScore+CInt(+25)
end if
if Session("GU11332000") = "4" then
strSexualBotherScore=strSexualBotherScore+CInt(+0)
end if

if Session("GU11333000") = "0" then
strSexualBotherScore=strSexualBotherScore+CInt(+100)
end if
if Session("GU11333000") = "1" then
strSexualBotherScore=strSexualBotherScore+CInt(+75)
end if
if Session("GU11333000") = "2" then
strSexualBotherScore=strSexualBotherScore+CInt(+50)
end if
if Session("GU11333000") = "3" then
strSexualBotherScore=strSexualBotherScore+CInt(+25)
end if
if Session("GU11333000") = "4" then
strSexualBotherScore=strSexualBotherScore+CInt(+0)
end if

if Session("GU11334000") = "0" then
strSexualBotherScore=strSexualBotherScore+CInt(+100)
end if
if Session("GU11334000") = "1" then
strSexualBotherScore=strSexualBotherScore+CInt(+75)
end if
if Session("GU11334000") = "2" then
strSexualBotherScore=strSexualBotherScore+CInt(+50)
end if
if Session("GU11334000") = "3" then
strSexualBotherScore=strSexualBotherScore+CInt(+25)
end if
if Session("GU11334000") = "4" then
strSexualBotherScore=strSexualBotherScore+CInt(+0)
end if

if Session("GU11336000") = "1" then
strSexualBotherScore=strSexualBotherScore+CInt(+100)
end if
if Session("GU11336000") = "2" then
strSexualBotherScore=strSexualBotherScore+CInt(+75)
end if
if Session("GU11336000") = "3" then
strSexualBotherScore=strSexualBotherScore+CInt(+50)
end if
if Session("GU11336000") = "4" then
strSexualBotherScore=strSexualBotherScore+CInt(+25)
end if
if Session("GU11336000") = "5" then
strSexualBotherScore=strSexualBotherScore+CInt(+0)
end if



dim strSexualBotherScorePercent
strSexualBotherScorePercent=Round((strSexualBotherScore/500),2)*100


'strPayload=strPayload&" \par "&Session("GU11331000")
'strPayload=strPayload&" \par "&Session("GU11332000")
'strPayload=strPayload&" \par "&Session("GU11333000")
'strPayload=strPayload&" \par "&Session("GU11334000")
'strPayload=strPayload&" \par "&Session("GU11336000")

if len(Session("GU11331000"))>0 AND len(Session("GU11332000"))>0 AND len(Session("GU11333000"))>0 AND len(Session("GU11334000"))>0 AND len(Session("GU11336000"))>0 then

strPayload=strPayload&" \par \tab\tab\tab Bother: "&strSexualBotherScorePercent

else

strPayload=strPayload&" \par \tab\tab\tab Bother: Missing "

end if
end if

end if 

if Session("GU10201000")="1" then 

if Session("Gender")="M" then

strPayload=strPayload&" \par\par \tab EPIC-26 Scores"

dim strUrinaryIncontinence

if Session("GU11337000") = "1" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+0)
end if
if Session("GU11337000") = "2" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+25)
end if
if Session("GU11337000") = "3" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+50)
end if
if Session("GU11337000") = "4" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+75)
end if
if Session("GU11337000") = "5" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+100)
end if

if Session("GU11338000") = "1" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+0)
end if
if Session("GU11338000") = "2" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+33)
end if
if Session("GU11338000") = "3" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+67)
end if
if Session("GU11338000") = "4" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+100)
end if

if Session("GU11339000") = "0" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+100)
end if
if Session("GU11339000") = "1" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+67)
end if
if Session("GU11339000") = "2" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+33)
end if
if Session("GU11339000") = "3" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+0)
end if

if Session("GU11340000") = "0" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+100)
end if
if Session("GU11340000") = "1" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+75)
end if
if Session("GU11340000") = "2" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+50)
end if
if Session("GU11340000") = "3" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+25)
end if
if Session("GU11340000") = "4" then
strUrinaryIncontinence=strUrinaryIncontinence+CInt(+0)
end if

dim strUrinaryIncontinencePercent
strUrinaryIncontinencePercent=Round((strUrinaryIncontinence/400),2)*100

if len(Session("GU11337000"))>0 AND len(Session("GU11338000"))>0 AND len(Session("GU11339000"))>0 AND len(Session("GU11340000"))>0 then

'strPayload=strPayload&" \par "&Session("GU11337000")
'strPayload=strPayload&" \par "&Session("GU11338000")
'strPayload=strPayload&" \par "&Session("GU11339000")
'strPayload=strPayload&" \par "&Session("GU11340000")

strPayload=strPayload&" \par \tab\tab Urinary Incontinence: "&strUrinaryIncontinencePercent
else
strPayload=strPayload&" \par \tab\tab Urinary Incontinence: Missing"
end if


dim strUrinaryIrritative

if Session("GU11341000") = "0" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+100)
end if
if Session("GU11341000") = "1" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+75)
end if
if Session("GU11341000") = "2" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+50)
end if
if Session("GU11341000") = "3" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+25)
end if
if Session("GU11341000") = "4" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+0)
end if

if Session("GU11342000") = "0" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+100)
end if
if Session("GU11342000") = "1" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+75)
end if
if Session("GU11342000") = "2" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+50)
end if
if Session("GU11342000") = "3" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+25)
end if
if Session("GU11342000") = "4" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+0)
end if

if Session("GU11343000") = "0" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+100)
end if
if Session("GU11343000") = "1" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+75)
end if
if Session("GU11343000") = "2" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+50)
end if
if Session("GU11343000") = "3" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+25)
end if
if Session("GU11343000") = "4" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+0)
end if

if Session("GU11344000") = "0" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+100)
end if
if Session("GU11344000") = "1" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+75)
end if
if Session("GU11344000") = "2" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+50)
end if
if Session("GU11344000") = "3" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+25)
end if
if Session("GU11344000") = "4" then
strUrinaryIrritative=strUrinaryIrritative+CInt(+0)
end if


dim strUrinaryIrritativePercent
strUrinaryIrritativePercent=Round((strUrinaryIrritative/400),2)*100

'strPayload=strPayload&" \par "&Session("GU11341000")
'strPayload=strPayload&" \par "&Session("GU11342000")
'strPayload=strPayload&" \par "&Session("GU11343000")
'strPayload=strPayload&" \par "&Session("GU11344000")

if len(Session("GU11341000"))>0 AND len(Session("GU11342000"))>0 AND len(Session("GU11343000"))>0 AND len(Session("GU11344000"))>0 then
strPayload=strPayload&" \par \tab\tab Urinary Irritative/Obstructive: "&strUrinaryIrritativePercent
else
strPayload=strPayload&" \par \tab\tab Urinary Irritative/Obstructive: Missing"
end if




if Session("GU11345000") = "0" then
strEPIC26Score=strEPIC26Score+CInt(+100)(Session("GU11345000"))
end if
if Session("GU11345000") = "1" then
strEPIC26Score=strEPIC26Score+CInt(+75)(Session("GU11345000"))
end if
if Session("GU11345000") = "2" then
strEPIC26Score=strEPIC26Score+CInt(+50)(Session("GU11345000"))
end if
if Session("GU11345000") = "3" then
strEPIC26Score=strEPIC26Score+CInt(+25)(Session("GU11345000"))
end if
if Session("GU11345000") = "4" then
strEPIC26Score=strEPIC26Score+CInt(+0)(Session("GU11345000"))
end if


dim strBowel

if Session("GU11346000") = "0" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11346000") = "1" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11346000") = "2" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11346000") = "3" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11346000") = "4" then
strBowel=strBowel+CInt(+0)
end if

if Session("GU11347000") = "0" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11347000") = "1" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11347000") = "2" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11347000") = "3" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11347000") = "4" then
strBowel=strBowel+CInt(+0)
end if

if Session("GU11348000") = "0" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11348000") = "1" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11348000") = "2" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11348000") = "3" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11348000") = "4" then
strBowel=strBowel+CInt(+0)
end if

if Session("GU11349000") = "0" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11349000") = "1" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11349000") = "2" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11349000") = "3" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11349000") = "4" then
strBowel=strBowel+CInt(+0)
end if

if Session("GU11350000") = "0" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11350000") = "1" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11350000") = "2" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11350000") = "3" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11350000") = "4" then
strBowel=strBowel+CInt(+0)
end if

if Session("GU11351000") = "1" then
strBowel=strBowel+CInt(+100)
end if
if Session("GU11351000") = "2" then
strBowel=strBowel+CInt(+75)
end if
if Session("GU11351000") = "3" then
strBowel=strBowel+CInt(+50)
end if
if Session("GU11351000") = "4" then
strBowel=strBowel+CInt(+25)
end if
if Session("GU11351000") = "5" then
strBowel=strBowel+CInt(+0)
end if



dim strBowelPercent
strBowelPercent=Round((strBowel/600),2)*100

'strPayload=strPayload&" \par "&Session("GU11346000")
'strPayload=strPayload&" \par "&Session("GU11347000")
'strPayload=strPayload&" \par "&Session("GU11348000")
'strPayload=strPayload&" \par "&Session("GU11349000")
'strPayload=strPayload&" \par "&Session("GU11350000")
'strPayload=strPayload&" \par "&Session("GU11351000")

if len(Session("GU11346000"))>0 AND len(Session("GU11347000"))>0 AND len(Session("GU11348000"))>0 AND len(Session("GU11349000"))>0 AND len(Session("GU11350000"))>0 AND len(Session("GU11351000"))>0 then
strPayload=strPayload&" \par \tab\tab Bowel: "&strBowelPercent
else
strPayload=strPayload&" \par \tab\tab Bowel: Missing"
end if



dim strSexual

if Session("GU11352000") = "1" then
strSexual=strSexual+CInt(+0)
end if
if Session("GU11352000") = "2" then
strSexual=strSexual+CInt(+25)
end if
if Session("GU11352000") = "3" then
strSexual=strSexual+CInt(+50)
end if
if Session("GU11352000") = "4" then
strSexual=strSexual+CInt(+75)
end if
if Session("GU11352000") = "5" then
strSexual=strSexual+CInt(+100)
end if

if Session("GU11353000") = "1" then
strSexual=strSexual+CInt(+0)
end if
if Session("GU11353000") = "2" then
strSexual=strSexual+CInt(+25)
end if
if Session("GU11353000") = "3" then
strSexual=strSexual+CInt(+50)
end if
if Session("GU11353000") = "4" then
strSexual=strSexual+CInt(+75)
end if
if Session("GU11353000") = "5" then
strSexual=strSexual+CInt(+100)
end if

if Session("GU11354000") = "1" then
strSexual=strSexual+CInt(+0)
end if
if Session("GU11354000") = "2" then
strSexual=strSexual+CInt(+33)
end if
if Session("GU11354000") = "3" then
strSexual=strSexual+CInt(+67)
end if
if Session("GU11354000") = "4" then
strSexual=strSexual+CInt(+100)
end if

if Session("GU11355000") = "1" then
strSexual=strSexual+CInt(+0)
end if
if Session("GU11355000") = "2" then
strSexual=strSexual+CInt(+25)
end if
if Session("GU11355000") = "3" then
strSexual=strSexual+CInt(+50)
end if
if Session("GU11355000") = "4" then
strSexual=strSexual+CInt(+75)
end if
if Session("GU11355000") = "5" then
strSexual=strSexual+CInt(+100)
end if

if Session("GU11356000") = "1" then
strSexual=strSexual+CInt(+0)
end if
if Session("GU11356000") = "2" then
strSexual=strSexual+CInt(+25)
end if
if Session("GU11356000") = "3" then
strSexual=strSexual+CInt(+50)
end if
if Session("GU11356000") = "4" then
strSexual=strSexual+CInt(+75)
end if
if Session("GU11356000") = "5" then
strSexual=strSexual+CInt(+100)
end if

if Session("GU11357000") = "1" then
strSexual=strSexual+CInt(+100)
end if
if Session("GU11357000") = "2" then
strSexual=strSexual+CInt(+75)
end if
if Session("GU11357000") = "3" then
strSexual=strSexual+CInt(+50)
end if
if Session("GU11357000") = "4" then
strSexual=strSexual+CInt(+25)
end if
if Session("GU11357000") = "5" then
strSexual=strSexual+CInt(+0)
end if


dim strSexualPercent
strSexualPercent=Round((strSexual/600),2)*100

'strPayload=strPayload&" \par "&Session("GU11352000")
'strPayload=strPayload&" \par "&Session("GU11353000")
'strPayload=strPayload&" \par 354000| "&Session("GU11354000")
'strPayload=strPayload&" \par "&Session("GU11355000")
'strPayload=strPayload&" \par 356000| "&Session("GU11356000")
'strPayload=strPayload&" \par "&Session("GU11357000")


if Session("GU11352000")="99" OR Session("GU11353000")="99" OR Session("GU11354000")="99" OR Session("GU11355000")="99" OR Session("GU11356000")="99" OR Session("GU11357000")="99" then
strPayload=strPayload&" \par \tab\tab Sexual: Missing"

else
if len(Session("GU11352000"))>0 AND len(Session("GU11353000"))>0 AND len(Session("GU11354000"))>0 AND len(Session("GU11355000"))>0 AND len(Session("GU11356000"))>0 AND len(Session("GU11357000"))>0 then

strPayload=strPayload&" \par \tab\tab Sexual: "&strSexualPercent

else

strPayload=strPayload&" \par \tab\tab Sexual: Missing"

end if

end if

dim strHormonal

if Session("GU11358000") = "0" then
strHormonal=strHormonal+CInt(+100)
end if
if Session("GU11358000") = "1" then
strHormonal=strHormonal+CInt(+75)
end if
if Session("GU11358000") = "2" then
strHormonal=strHormonal+CInt(+50)
end if
if Session("GU11358000") = "3" then
strHormonal=strHormonal+CInt(+25)
end if
if Session("GU11358000") = "4" then
strHormonal=strHormonal+CInt(+0)
end if

if Session("GU11359000") = "0" then
strHormonal=strHormonal+CInt(+100)
end if
if Session("GU11359000") = "1" then
strHormonal=strHormonal+CInt(+75)
end if
if Session("GU11359000") = "2" then
strHormonal=strHormonal+CInt(+50)
end if
if Session("GU11359000") = "3" then
strHormonal=strHormonal+CInt(+25)
end if
if Session("GU11359000") = "4" then
strHormonal=strHormonal+CInt(+0)
end if

if Session("GU11360000") = "0" then
strHormonal=strHormonal+CInt(+100)
end if
if Session("GU11360000") = "1" then
strHormonal=strHormonal+CInt(+75)
end if
if Session("GU11360000") = "2" then
strHormonal=strHormonal+CInt(+50)
end if
if Session("GU11360000") = "3" then
strHormonal=strHormonal+CInt(+25)
end if
if Session("GU11360000") = "4" then
strHormonal=strHormonal+CInt(+0)
end if

if Session("GU11361000") = "0" then
strHormonal=strHormonal+CInt(+100)
end if
if Session("GU11361000") = "1" then
strHormonal=strHormonal+CInt(+75)
end if
if Session("GU11361000") = "2" then
strHormonal=strHormonal+CInt(+50)
end if
if Session("GU11361000") = "3" then
strHormonal=strHormonal+CInt(+25)
end if
if Session("GU11361000") = "4" then
strHormonal=strHormonal+CInt(+0)
end if

if Session("GU11362000") = "0" then
strHormonal=strHormonal+CInt(+100)
end if
if Session("GU11362000") = "1" then
strHormonal=strHormonal+CInt(+75)
end if
if Session("GU11362000") = "2" then
strHormonal=strHormonal+CInt(+50)
end if
if Session("GU11362000") = "3" then
strHormonal=strHormonal+CInt(+25)
end if
if Session("GU11362000") = "4" then
strHormonal=strHormonal+CInt(+0)
end if

dim strHormonalPercent
strHormonalPercent=Round((strHormonal/500),2)*100

'strPayload=strPayload&" \par "&Session("GU11358000")
'strPayload=strPayload&" \par "&Session("GU11359000")
'strPayload=strPayload&" \par "&Session("GU11360000")
'strPayload=strPayload&" \par "&Session("GU11361000")
'strPayload=strPayload&" \par "&Session("GU11362000")



if len(Session("GU11358000"))>0 AND len(Session("GU11359000"))>0 AND len(Session("GU11360000"))>0 AND len(Session("GU11361000"))>0 AND len(Session("GU11362000"))>0 then

strPayload=strPayload&" \par \tab\tab Hormonal: "&strHormonalPercent

else

strPayload=strPayload&" \par \tab\tab Hormonal: Missing"

end if

end if 
'end tag for Males only in EPIC scoring

end if
'end tag for Prostate only in EPIC scoring
%>