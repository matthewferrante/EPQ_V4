<%

if Session("GI10201000") = "1" then

dim FACTCScore
FACTCScore=0

Session("FACTCScore")=(4-CInt(Session("GI11301000"))) + (4-CInt(Session("GI11302000"))) + CInt(Session("GI11303000")) + CInt(Session("GI11304000")) + (4-CInt(Session("GI11305000"))) + CInt(Session("GI11306000")) + CInt(Session("GI11319000"))

if len(Session("GI11301000"))>0 AND len(Session("GI11302000"))>0 AND len(Session("GI11303000"))>0 AND len(Session("GI11304000"))>0 AND len(Session("GI11305000"))>0 AND len(Session("GI11306000"))>0 AND len(Session("GI11319000"))>0 then

strPayload=strPayload&" \par \tab Colorectal Cancer Subscale Score: "&Session("FACTCScore")&" (Range: 0 – 28. Higher score is better) "
end if

dim FACTGOGScore
FACTGOGScore=0

Session("FACTGOGScore")=(4-CInt(Session("GI11323000"))) + (4-CInt(Session("GI11324000"))) + (4-CInt(Session("GI11325000"))) + (4-CInt(Session("GI11326000")))

if len(Session("GI11323000"))>0 AND len(Session("GI11324000"))>0 AND len(Session("GI11325000"))>0 AND len(Session("GI11326000"))>0 then

strPayload=strPayload&" \par \tab Neurotoxicity Subscale Score: "&Session("FACTGOGScore")&" (Range: 0 – 16. Higher score is better) "
end if

if Session("GI11327000") = "1" then
strPayload=strPayload&" \par \tab Fecal Incontinence Scale "
end if


dim FecalLifestyleScore
FecalLifestyleScore=0

Session("FecalLifestyleScore")=CInt(Session("GI11328000")) + CInt(Session("GI11329000")) + CInt(Session("GI11330000")) + CInt(Session("GI11331000")) + CInt(Session("GI11332000")) + CInt(Session("GI11334000")) + CInt(Session("GI11335000")) + CInt(Session("GI11342000")) + CInt(Session("GI11352000")) + CInt(Session("GI11353000"))

Session("FecalLifestyleScore")=Round((Session("FecalLifestyleScore")/10),1)

if len(Session("GI11328000"))>0 AND len(Session("GI11329000"))>0 AND len(Session("GI11330000"))>0 AND len(Session("GI11331000"))>0 AND len(Session("GI11332000"))>0 AND len(Session("GI11334000"))>0 AND len(Session("GI11335000"))>0 AND len(Session("GI11342000"))>0 AND len(Session("GI11352000"))>0 AND len(Session("GI11353000"))>0 then

strPayload=strPayload&" \par \tab  Lifestyle: "&Session("FecalLifestyleScore")&" (Range: 0 – 5. Higher score is better) "
end if


dim FecalCopingScore
FecalCopingScore=0

Session("FecalCopingScore")=CInt(Session("GI11333000")) + CInt(Session("GI11336000")) + CInt(Session("GI11337000")) + CInt(Session("GI11338000")) + CInt(Session("GI11340000")) + CInt(Session("GI11344000")) + CInt(Session("GI11348000")) + CInt(Session("GI11350000")) + CInt(Session("GI11354000"))

Session("FecalCopingScore")=Round((Session("FecalCopingScore")/9),1)

if len(Session("GI11333000"))>0 AND len(Session("GI11336000"))>0 AND len(Session("GI11337000"))>0 AND len(Session("GI11338000"))>0 AND len(Session("GI11340000"))>0 AND len(Session("GI11344000"))>0 AND len(Session("GI11348000"))>0 AND len(Session("GI11350000"))>0 AND len(Session("GI11354000"))>0 then

strPayload=strPayload&" \par \tab Coping/Behavior: "&Session("FecalCopingScore")&" (Range: 0 – 5. Higher score is better) "
end if


dim FecalDepressionScore
FecalDepressionScore=0

Session("FecalDepressionScore")=(6-CInt(Session("EPQ31302000"))) + CInt(Session("GI11351000")) + CInt(Session("GI11346000")) + CInt(Session("GI11347000")) + CInt(Session("GI11349000")) + CInt(Session("GI11351000")) + CInt(Session("GI11355000"))

Session("FecalDepressionScore")=Round((Session("FecalDepressionScore")/7),1)

if len(Session("EPQ31302000"))>0 AND len(Session("GI11351000"))>0 AND len(Session("GI11346000"))>0 AND len(Session("GI11347000"))>0 AND len(Session("GI11349000"))>0 AND len(Session("GI11351000"))>0 AND len(Session("GI11355000"))>0  then

strPayload=strPayload&" \par \tab Depression/Self Perception:  "&Session("FecalDepressionScore")&" (Range: 0 – 5. Higher score is better) "
end if


dim FecalEmbarrassmentScore
FecalEmbarrassmentScore=0

Session("FecalEmbarrassmentScore")=CInt(Session("GI11339000")) + CInt(Session("GI11341000")) + CInt(Session("GI11345000")) 

Session("FecalEmbarrassmentScore")=Round((Session("FecalEmbarrassmentScore")/3),1)

if len(Session("GI11339000"))>0 AND len(Session("GI11341000"))>0 AND len(Session("GI11345000"))>0 then

strPayload=strPayload&" \par \tab Embarrassment: "&Session("FecalEmbarrassmentScore")&" (Range: 0 – 5. Higher score is better) "
end if

end if


if Session("GI10202000") = "1" then

dim FACTHepScore
FACTHepScore=0

Session("FACTHepScore")=(4-CInt(Session("GI11301000"))) + (4-CInt(Session("GI11302000"))) + CInt(Session("GI11303000")) + CInt(Session("GI11304000")) + (4-CInt(Session("GI11305000"))) + CInt(Session("GI11306000")) + (4-CInt(Session("GI11307000"))) + (4-CInt(Session("GI11308000"))) + (4-CInt(Session("GI11309000"))) + (4-CInt(Session("GI11310000"))) + CInt(Session("GI11311000")) + (4-CInt(Session("GI11312000"))) + (4-CInt(Session("GI11313000"))) + (4-CInt(Session("GI11314000"))) + (4-CInt(Session("GI11315000"))) + (4-CInt(Session("GI11316000"))) + (4-CInt(Session("GI11317000"))) + (4-CInt(Session("GI11318000")))



if len(Session("GI11301000"))>0 AND len(Session("GI11302000"))>0 AND len(Session("GI11303000"))>0 AND len(Session("GI11304000"))>0 AND len(Session("GI11305000"))>0 AND len(Session("GI11306000"))>0 AND len(Session("GI11307000"))>0 AND len(Session("GI11308000"))>0 AND len(Session("GI11309000"))>0 AND len(Session("GI11310000"))>0 AND len(Session("GI11311000"))>0 AND len(Session("GI11313000"))>0 AND len(Session("GI11312000"))>0 AND len(Session("GI11314000"))>0 AND len(Session("GI11315000"))>0 AND len(Session("GI11316000"))>0 AND len(Session("GI11317000"))>0 AND len(Session("GI11318000"))>0 then

strPayload=strPayload&" \par \tab Hepatobilary Cancer Subscale Score: "&Session("FACTHepScore")&" (Range: 0 – 72. Higher score is better) "
end if
end if


%>