<%

if Session("HM10201000") = "1" or Session("HM10203000")="1" then

dim FACTLeuScore
FACTLeuScore=0

Session("FACTLeuScore")=(4-CInt(Session("HM11301000"))) + (4-CInt(Session("HM11302000"))) + (4-CInt(Session("HM11303000"))) + (4-CInt(Session("HM11304000"))) + (4-CInt(Session("HM11305000"))) + (4-CInt(Session("HM11306000"))) + (4-CInt(Session("HM11307000"))) + (4-CInt(Session("HM11308000"))) + (4-CInt(Session("HM11309000"))) + (4-CInt(Session("HM11310000"))) + CInt(Session("HM11311000")) + CInt(Session("HM11312000")) + (4-CInt(Session("HM11313000"))) + (4-CInt(Session("HM11314000"))) + (4-CInt(Session("HM11315000"))) + (4-CInt(Session("HM11316000"))) + (4-CInt(Session("HM11317000")))

if len(Session("HM11301000"))>0 AND len(Session("HM11302000"))>0 AND len(Session("HM11303000"))>0 AND len(Session("HM11304000"))>0 AND len(Session("HM11305000"))>0 AND len(Session("HM11306000"))>0 AND len(Session("HM11307000"))>0 AND len(Session("HM11308000"))>0 AND len(Session("HM11309000"))>0 AND len(Session("HM11310000"))>0 AND len(Session("HM11311000"))>0 AND len(Session("HM11312000"))>0 AND len(Session("HM11313000"))>0 AND len(Session("HM11314000"))>0 AND len(Session("HM11315000"))>0 AND len(Session("HM11316000"))>0 AND len(Session("HM11317000"))>0 then

strPayload=strPayload&" \par \tab Leukemia Subscale Score: "&Session("FACTLeuScore")&" (Range: 0 – 68. Higher score is better) "
end if
end if


if Session("HM10202000") = "1" then

dim MDASICMLScore
MDASICMLScore=0

Session("MDASICMLScore")=CInt(Session("HM11318000")) + CInt(Session("HM11319000")) + CInt(Session("HM11320000")) + CInt(Session("HM11321000")) + CInt(Session("HM11322000")) + CInt(Session("HM11323000")) + CInt(Session("HM11324000")) + CInt(Session("HM11325000")) + CInt(Session("HM11326000")) + CInt(Session("HM11327000")) + CInt(Session("HM11328000")) + CInt(Session("HM11329000")) + CInt(Session("HM11330000")) 

Session("MDASICMLScore")=Round((Session("MDASICMLScore")/13),1)

if len(Session("HM11318000"))>0 AND len(Session("HM11319000"))>0 AND len(Session("HM11320000"))>0 AND len(Session("HM11321000"))>0 AND len(Session("HM11322000"))>0 AND len(Session("HM11323000"))>0 AND len(Session("HM11324000"))>0 AND len(Session("HM11325000"))>0 AND len(Session("HM11326000"))>0 AND len(Session("HM11327000"))>0 AND len(Session("HM11328000"))>0 AND len(Session("HM11329000"))>0 AND len(Session("HM11330000"))>0 then

strPayload=strPayload&" \par \tab MDASI Symptom Severity: "&Session("MDASICMLScore")&"  (Range: 0 – 10. Lower score is better) "
end if


dim MDASICML2Score
MDASICML2Score=0

Session("MDASICML2Score")=CInt(Session("HM11331000")) + CInt(Session("HM11332000")) + CInt(Session("HM11333000")) + CInt(Session("HM11334000")) + CInt(Session("HM11335000")) + CInt(Session("HM11336000")) + CInt(Session("HM11337000")) 

Session("MDASICML2Score")=Round((Session("MDASICML2Score")/7),1)

if len(Session("HM11331000"))>0 AND len(Session("HM11332000"))>0 AND len(Session("HM11333000"))>0 AND len(Session("HM11334000"))>0 AND len(Session("HM11335000"))>0 AND len(Session("HM11336000"))>0 AND len(Session("HM11337000"))>0 then

strPayload=strPayload&" \par \tab MDASI-CML/CLL Specific Symptom Subscale: "&Session("MDASICML2Score")&" (Range: 0 – 10. Lower score is better) "
end if


Session("MDASIDistressScore")=CInt(Session("HM11338000")) + CInt(Session("HM11339000")) + CInt(Session("HM11340000")) + CInt(Session("HM11341000")) + CInt(Session("HM11342000")) + CInt(Session("HM11343000"))

Session("MDASIDistressScore")=Round((Session("MDASIDistressScore")/6),1)

if len(Session("HM11338000"))>0 AND len(Session("HM11339000"))>0 AND len(Session("HM11340000"))>0 AND len(Session("HM11341000"))>0 AND len(Session("HM11342000"))>0 AND len(Session("HM11343000"))>0 then

strPayload=strPayload&" \par \tab MDASI Symptom Distress: "&Session("MDASIDistressScore")&" (Range: 0 – 10. Lower score is better) "
end if
end if


if Session("HM10204000") = "1" OR Session("HM10207000") = "1" then
dim IADLMMScore
Session("IADLMMScore")=0

Session("IADLMMScore")=(CInt(Session("HM11345000")) + CInt(Session("HM11346000")) + CInt(Session("HM11347000")) + CInt  (Session("HM11348000")) + CInt(Session("HM11349000")) + CInt(Session("HM11350000")) + CInt(Session("HM11351000")) + CInt(Session("HM11352000")) + CInt(Session("HM11353000")) + CInt(Session("HM11354000")) + CInt(Session("HM11355000")))


if (len(Session("HM11345000"))>0 AND len(Session("HM11346000"))>0 AND len(Session("HM11347000"))>0 AND len(Session("HM11348000"))>0    AND len(Session("HM11349000"))>0 AND len(Session("HM11350000"))>0 AND len(Session("HM11351000"))>0 AND len(Session("HM11352000"))>0  AND len(Session("HM11355000"))>0) AND (len(Session("HM11353000"))>0 OR len(Session("HM11354000"))>0) then

strPayload=strPayload&" \par \tab ADL: " &Session("IADLMMScore")&" (Range: 0 – 29. Lower score indicates increased disability)"
end if


dim BarthelScore
BarthelScore=0
Session("BarthelScore")=(CInt(Session("HM11356000"))) +(CInt(Session("HM11357000"))) +(CInt(Session("HM11358000"))) +(CInt(Session  ("HM11359000"))) +(CInt(Session("HM11360000"))) + (CInt(Session("HM11361000"))) + (CInt(Session("HM11362000"))) + (CInt(Session  ("HM11363000"))) + (CInt(Session("HM11364000"))) + (CInt(Session("HM11365000"))) 

if len(Session("HM11356000"))>0 AND len(Session("HM11357000"))>0 AND len(Session("HM11358000"))>0 AND len(Session("HM11359000"))>0 AND len(Session("HM11360000"))>0 AND len(Session("HM11361000"))>0 AND len(Session("HM11362000"))>0 AND len(Session("HM11363000"))>0 AND len(Session("HM11364000"))>0 AND len(Session("HM11365000"))>0 then
strPayload=strPayload&" \par \tab Barthel Index: " &Session("BarthelScore")&" (Range: 0 – 20. Lower score indicates increased disability)"
end if

end if

%>