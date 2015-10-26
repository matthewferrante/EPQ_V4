
<%

Session("PersonalHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Personal History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30311010")="1" then
		strEPQ30311010answer1="checked"
	end if
	if Session("EPQ30311011")="1" then
		strEPQ30311011answer1="checked"
	end if
	if Session("EPQ30311012")="1" then
		strEPQ30311012answer1="checked"
	end if
	if Session("EPQ30311013")="1" then
		strEPQ30311013answer1="checked"
	end if
	if Session("EPQ30311014")="1" then
		strEPQ30311014answer1="checked"
	end if
	if Session("EPQ30311015")="1" then
		strEPQ30311015answer1="checked"
	end if
	if Session("EPQ30311016")="1" then
		strEPQ30311016answer1="checked"
	end if
	if Session("EPQ30311017")="1" then
		strEPQ30311017answer1="checked"
	end if
	if Session("EPQ30311018")="1" then
		strEPQ30311018answer1="checked"
	end if
	if Session("EPQ30311019")="1" then
		strEPQ30311019answer1="checked"
	end if
	if Session("EPQ30311020")="1" then
		strEPQ30311020answer1="checked"
	end if
	if Session("EPQ30311021")="1" then
		strEPQ30311021answer1="checked"
	end if
	if Session("EPQ30311022")="1" then
		strEPQ30311022answer1="checked"
	end if
	if Session("EPQ30311023")="1" then
		strEPQ30311023answer1="checked"
	end if
	if Session("EPQ30311024")="1" then
		strEPQ30311024answer1="checked"
	end if
	if Session("EPQ30311025")="1" then
		strEPQ30311025answer1="checked"
	end if
	if Session("EPQ30311026")="1" then
		strEPQ30311026answer1="checked"
	end if
	if Session("EPQ30311027")="1" then
		strEPQ30311027answer1="checked"
	end if
	if Session("EPQ30311028")="1" then
		strEPQ30311028answer1="checked"
	end if
	if Session("EPQ30311029")="1" then
		strEPQ30311029answer1="checked"
	end if
	if Session("EPQ30311030")="1" then
		strEPQ30311030answer1="checked"
	end if
	if Session("EPQ30311031")="1" then
		strEPQ30311031answer1="checked"
	end if
	if Session("EPQ30311032")="1" then
		strEPQ30311032answer1="checked"
	end if
	if Session("EPQ30311033")="1" then
		strEPQ30311033answer1="checked"
	end if
	if Session("EPQ30311034")="1" then
		strEPQ30311034answer1="checked"
	end if
	if Session("EPQ30311035")="1" then
		strEPQ30311035answer1="checked"
	end if
	if Session("EPQ30311036")="1" then
		strEPQ30311036answer1="checked"
	end if
	if Session("EPQ30311037")="1" then
		strEPQ30311037answer1="checked"
	end if
	if Session("EPQ30311038")="1" then
		strEPQ30311038answer1="checked"
	end if
	if Session("EPQ30311039")="1" then
		strEPQ30311039answer1="checked"
	end if
end if

if Request.Form("ispostback")="1" then

	Session("EPQ30311010")=Request.Form("EPQ30311010")
	Session("EPQ30311011")=Request.Form("EPQ30311011")
	Session("EPQ30311012")=Request.Form("EPQ30311012")
	Session("EPQ30311013")=Request.Form("EPQ30311013")
	Session("EPQ30311014")=Request.Form("EPQ30311014")
	Session("EPQ30311015")=Request.Form("EPQ30311015")
	Session("EPQ30311016")=Request.Form("EPQ30311016")
	Session("EPQ30311017")=Request.Form("EPQ30311017")
	Session("EPQ30311018")=Request.Form("EPQ30311018")
	Session("EPQ30311019")=Request.Form("EPQ30311019")
	Session("EPQ30311020")=Request.Form("EPQ30311020")
	Session("EPQ30311021")=Request.Form("EPQ30311021")
	Session("EPQ30311022")=Request.Form("EPQ30311022")
	Session("EPQ30311023")=Request.Form("EPQ30311023")
	Session("EPQ30311024")=Request.Form("EPQ30311024")
	Session("EPQ30311025")=Request.Form("EPQ30311025")
	Session("EPQ30311026")=Request.Form("EPQ30311026")
	Session("EPQ30311027")=Request.Form("EPQ30311027")
	Session("EPQ30311028")=Request.Form("EPQ30311028")
	Session("EPQ30311029")=Request.Form("EPQ30311029")
	Session("EPQ30311030")=Request.Form("EPQ30311030")
	Session("EPQ30311031")=Request.Form("EPQ30311031")
	Session("EPQ30311032")=Request.Form("EPQ30311032")
	Session("EPQ30311033")=Request.Form("EPQ30311033")
	Session("EPQ30311034")=Request.Form("EPQ30311034")
	Session("EPQ30311035")=Request.Form("EPQ30311035")
	Session("EPQ30311036")=Request.Form("EPQ30311036")
	Session("EPQ30311037")=Request.Form("EPQ30311037")
	Session("EPQ30311038")=Request.Form("EPQ30311038")
	Session("EPQ30311039")=Request.Form("EPQ30311039")
	Session("EPQ30341000")=Request.Form("EPQ30341000")

	if Session("EPQ30311010") <> "1" then
		Session("EPQ30311010") = "0"
	end if
	if Session("EPQ30311011") <> "1" then
		Session("EPQ30311011") = "0"
	end if
	if Session("EPQ30311012") <> "1" then
		Session("EPQ30311012") = "0"
	end if
	if Session("EPQ30311013") <> "1" then
		Session("EPQ30311013") = "0"
	end if
	if Session("EPQ30311014") <> "1" then
		Session("EPQ30311014") = "0"
	end if
	if Session("EPQ30311015") <> "1" then
		Session("EPQ30311015") = "0"
	end if
	if Session("EPQ30311016") <> "1" then
		Session("EPQ30311016") = "0"
	end if
	if Session("EPQ30311017") <> "1" then
		Session("EPQ30311017") = "0"
	end if
	if Session("EPQ30311018") <> "1" then
		Session("EPQ30311018") = "0"
	end if
	if Session("EPQ30311019") <> "1" then
		Session("EPQ30311019") = "0"
	end if
	if Session("EPQ30311020") <> "1" then
		Session("EPQ30311020") = "0"
	end if
	if Session("EPQ30311021") <> "1" then
		Session("EPQ30311021") = "0"
	end if
	if Session("EPQ30311022") <> "1" then
		Session("EPQ30311022") = "0"
	end if
	if Session("EPQ30311023") <> "1" then
		Session("EPQ30311023") = "0"
	end if
	if Session("EPQ30311024") <> "1" then
		Session("EPQ30311024") = "0"
	end if
	if Session("EPQ30311025") <> "1" then
		Session("EPQ30311025") = "0"
	end if
	if Session("EPQ30311026") <> "1" then
		Session("EPQ30311026") = "0"
	end if
	if Session("EPQ30311027") <> "1" then
		Session("EPQ30311027") = "0"
	end if
	if Session("EPQ30311028") <> "1" then
		Session("EPQ30311028") = "0"
	end if
	if Session("EPQ30311029") <> "1" then
		Session("EPQ30311029") = "0"
	end if
	if Session("EPQ30311030") <> "1" then
		Session("EPQ30311030") = "0"
	end if
	if Session("EPQ30311031") <> "1" then
		Session("EPQ30311031") = "0"
	end if
	if Session("EPQ30311032") <> "1" then
		Session("EPQ30311032") = "0"
	end if
	if Session("EPQ30311033") <> "1" then
		Session("EPQ30311033") = "0"
	end if
	if Session("EPQ30311034") <> "1" then
		Session("EPQ30311034") = "0"
	end if
	if Session("EPQ30311035") <> "1" then
		Session("EPQ30311035") = "0"
	end if
	if Session("EPQ30311036") <> "1" then
		Session("EPQ30311036") = "0"
	end if
	if Session("EPQ30311037") <> "1" then
		Session("EPQ30311037") = "0"
	end if
	if Session("EPQ30311038") <> "1" then
		Session("EPQ30311038") = "0"
	end if
	if Session("EPQ30311039") <> "1" then
		Session("EPQ30311039") = "0"
	end if

	if Session("EPQ30311010") = "2" then
		Session("EPQ30311010string")= "None Reported"
	end if
	if Session("EPQ30311011") = "2" then
		Session("EPQ30311011string")= "None Reported"
	end if
	if Session("EPQ30311012") = "2" then
		Session("EPQ30311012string")= "None Reported"
	end if
	if Session("EPQ30311013") = "2" then
		Session("EPQ30311013string")= "None Reported"
	end if
	if Session("EPQ30311014") = "2" then
		Session("EPQ30311014string")= "None Reported"
	end if
	if Session("EPQ30311015") = "2" then
		Session("EPQ30311015string")= "None Reported"
	end if
	if Session("EPQ30311016") = "2" then
		Session("EPQ30311016string")= "None Reported"
	end if
	if Session("EPQ30311017") = "2" then
		Session("EPQ30311017string")= "None Reported"
	end if
	if Session("EPQ30311018") = "2" then
		Session("EPQ30311018string")= "None Reported"
	end if
	if Session("EPQ30311019") = "2" then
		Session("EPQ30311019string")= "None Reported"
	end if
	if Session("EPQ30311020") = "2" then
		Session("EPQ30311020string")= "None Reported"
	end if
	if Session("EPQ30311021") = "2" then
		Session("EPQ30311021string")= "None Reported"
	end if
	if Session("EPQ30311022") = "2" then
		Session("EPQ30311022string")= "None Reported"
	end if
	if Session("EPQ30311023") = "2" then
		Session("EPQ30311023string")= "None Reported"
	end if
	if Session("EPQ30311024") = "2" then
		Session("EPQ30311024string")= "None Reported"
	end if
	if Session("EPQ30311025") = "2" then
		Session("EPQ30311025string")= "None Reported"
	end if
	if Session("EPQ30311026") = "2" then
		Session("EPQ30311026string")= "None Reported"
	end if
	if Session("EPQ30311027") = "2" then
		Session("EPQ30311027string")= "None Reported"
	end if
	if Session("EPQ30311028") = "2" then
		Session("EPQ30311028string")= "None Reported"
	end if
	if Session("EPQ30311029") = "2" then
		Session("EPQ30311029string")= "None Reported"
	end if
	if Session("EPQ30311030") = "2" then
		Session("EPQ30311030string")= "None Reported"
	end if
	if Session("EPQ30311031") = "2" then
		Session("EPQ30311031string")= "None Reported"
	end if
	if Session("EPQ30311032") = "2" then
		Session("EPQ30311032string")= "None Reported"
	end if
	if Session("EPQ30311033") = "2" then
		Session("EPQ30311033string")= "None Reported"
	end if
	if Session("EPQ30311034") = "2" then
		Session("EPQ30311034string")= "None Reported"
	end if
	if Session("EPQ30311035") = "2" then
		Session("EPQ30311035string")= "None Reported"
	end if
	if Session("EPQ30311036") = "2" then
		Session("EPQ30311036string")= "None Reported"
	end if
	if Session("EPQ30311037") = "2" then
		Session("EPQ30311037string")= "None Reported"
	end if
	if Session("EPQ30311038") = "2" then
		Session("EPQ30311038string")= "None Reported"
	end if
	if Session("EPQ30311039") = "2" then
		Session("EPQ30311039string")= "None Reported"
	end if



end if


if Request.Form("StopID")="1" then
		Session("PersonalHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "personalhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30403000")) = 0 then
		 <!--#include file="questionscomplete.asp"-->
	else
	end if

Session("EPQ30311010Page1")=0
Session("EPQ30311010Page2")=0
Session("EPQ30311010Page3")=0
Session("EPQ30311010Page4")=0
Session("EPQ30311011Page1")=0
Session("EPQ30311011Page2")=0
Session("EPQ30311011Page3")=0
Session("EPQ30311011Page4")=0
Session("EPQ30311012Page1")=0
Session("EPQ30311012Page2")=0
Session("EPQ30311012Page3")=0
Session("EPQ30311012Page4")=0
Session("EPQ30311013Page1")=0
Session("EPQ30311013Page2")=0
Session("EPQ30311013Page3")=0
Session("EPQ30311013Page4")=0
Session("EPQ30311014Page1")=0
Session("EPQ30311014Page2")=0
Session("EPQ30311014Page3")=0
Session("EPQ30311014Page4")=0
Session("EPQ30311015Page1")=0
Session("EPQ30311015Page2")=0
Session("EPQ30311015Page3")=0
Session("EPQ30311015Page4")=0
Session("EPQ30311016Page1")=0
Session("EPQ30311016Page2")=0
Session("EPQ30311016Page3")=0
Session("EPQ30311016Page4")=0
Session("EPQ30311017Page1")=0
Session("EPQ30311017Page2")=0
Session("EPQ30311017Page3")=0
Session("EPQ30311017Page4")=0
Session("EPQ30311018Page1")=0
Session("EPQ30311018Page2")=0
Session("EPQ30311018Page3")=0
Session("EPQ30311018Page4")=0
Session("EPQ30311019Page1")=0
Session("EPQ30311019Page2")=0
Session("EPQ30311019Page3")=0
Session("EPQ30311019Page4")=0
Session("EPQ30311020Page1")=0
Session("EPQ30311020Page2")=0
Session("EPQ30311020Page3")=0
Session("EPQ30311020Page4")=0
Session("EPQ30311021Page1")=0
Session("EPQ30311021Page2")=0
Session("EPQ30311021Page3")=0
Session("EPQ30311021Page4")=0
Session("EPQ30311022Page1")=0
Session("EPQ30311022Page2")=0
Session("EPQ30311022Page3")=0
Session("EPQ30311022Page4")=0
Session("EPQ30311023Page1")=0
Session("EPQ30311023Page2")=0
Session("EPQ30311023Page3")=0
Session("EPQ30311023Page4")=0
Session("EPQ30311024Page1")=0
Session("EPQ30311024Page2")=0
Session("EPQ30311024Page3")=0
Session("EPQ30311024Page4")=0
Session("EPQ30311025Page1")=0
Session("EPQ30311025Page2")=0
Session("EPQ30311025Page3")=0
Session("EPQ30311025Page4")=0
Session("EPQ30311026Page1")=0
Session("EPQ30311026Page2")=0
Session("EPQ30311026Page3")=0
Session("EPQ30311026Page4")=0
Session("EPQ30311027Page1")=0
Session("EPQ30311027Page2")=0
Session("EPQ30311027Page3")=0
Session("EPQ30311027Page4")=0
Session("EPQ30311028Page1")=0
Session("EPQ30311028Page2")=0
Session("EPQ30311028Page3")=0
Session("EPQ30311028Page4")=0
Session("EPQ30311029Page1")=0
Session("EPQ30311029Page2")=0
Session("EPQ30311029Page3")=0
Session("EPQ30311029Page4")=0
Session("EPQ30311030Page1")=0
Session("EPQ30311030Page2")=0
Session("EPQ30311030Page3")=0
Session("EPQ30311030Page4")=0
Session("EPQ30311031Page1")=0
Session("EPQ30311031Page2")=0
Session("EPQ30311031Page3")=0
Session("EPQ30311031Page4")=0
Session("EPQ30311032Page1")=0
Session("EPQ30311032Page2")=0
Session("EPQ30311032Page3")=0
Session("EPQ30311032Page4")=0
Session("EPQ30311033Page1")=0
Session("EPQ30311033Page2")=0
Session("EPQ30311033Page3")=0
Session("EPQ30311033Page4")=0
Session("EPQ30311034Page1")=0
Session("EPQ30311034Page2")=0
Session("EPQ30311034Page3")=0
Session("EPQ30311034Page4")=0
Session("EPQ30311035Page1")=0
Session("EPQ30311035Page2")=0
Session("EPQ30311035Page3")=0
Session("EPQ30311035Page4")=0
Session("EPQ30311036Page1")=0
Session("EPQ30311036Page2")=0
Session("EPQ30311036Page3")=0
Session("EPQ30311036Page4")=0
Session("EPQ30311037Page1")=0
Session("EPQ30311037Page2")=0
Session("EPQ30311037Page3")=0
Session("EPQ30311037Page4")=0
Session("EPQ30311038Page1")=0
Session("EPQ30311038Page2")=0
Session("EPQ30311038Page3")=0
Session("EPQ30311038Page4")=0
Session("EPQ30311039Page1")=0
Session("EPQ30311039Page2")=0
Session("EPQ30311039Page3")=0
Session("EPQ30311039Page4")=0

dim PHCDisplayCounter
PHCDisplayCounter=0


if Session("EPQ30311010") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311010Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311010Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311010Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311010Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311010")<>"1" then

		Session.Contents.Remove("EPQ30312000")
		Session.Contents.Remove("EPQ30312010")
		Session.Contents.Remove("EPQ30312020")
		Session.Contents.Remove("EPQ30312030")
		Session.Contents.Remove("EPQ30312040")
		Session.Contents.Remove("EPQ30312050")

	end if
end if
if Session("EPQ30311011") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311011Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311011Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311011Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311011Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311011")<>"1" then

		Session.Contents.Remove("EPQ30313000")
		Session.Contents.Remove("EPQ30313010")
		Session.Contents.Remove("EPQ30313020")
		Session.Contents.Remove("EPQ30313030")
		Session.Contents.Remove("EPQ30313040")
		Session.Contents.Remove("EPQ30313050")

	end if
end if
if Session("EPQ30311012") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311012Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311012Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311012Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311012Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311012")<>"1" then

		Session.Contents.Remove("EPQ30314000")
		Session.Contents.Remove("EPQ30314010")
		Session.Contents.Remove("EPQ30314020")
		Session.Contents.Remove("EPQ30314030")
		Session.Contents.Remove("EPQ30314040")
		Session.Contents.Remove("EPQ30314050")

	end if
end if
if Session("EPQ30311013") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311013Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311013Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311013Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311013Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311013")<>"1" then

		Session.Contents.Remove("EPQ30315000")
		Session.Contents.Remove("EPQ30315010")
		Session.Contents.Remove("EPQ30315020")
		Session.Contents.Remove("EPQ30315030")
		Session.Contents.Remove("EPQ30315040")
		Session.Contents.Remove("EPQ30315050")


	end if
end if
if Session("EPQ30311014") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311014Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311014Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311014Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311014Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311014")<>"1" then

		Session.Contents.Remove("EPQ30316000")
		Session.Contents.Remove("EPQ30316010")
		Session.Contents.Remove("EPQ30316020")
		Session.Contents.Remove("EPQ30316030")
		Session.Contents.Remove("EPQ30316040")
		Session.Contents.Remove("EPQ30316050")


	end if

end if
if Session("EPQ30311015") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311015Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311015Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311015Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311015Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311015")<>"1" then

		Session.Contents.Remove("EPQ30317000")
		Session.Contents.Remove("EPQ30317010")
		Session.Contents.Remove("EPQ30317020")
		Session.Contents.Remove("EPQ30317030")
		Session.Contents.Remove("EPQ30317040")
		Session.Contents.Remove("EPQ30317050")



	end if
end if
if Session("EPQ30311016") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311016Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311016Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311016Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311016Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311016")<>"1" then

		Session.Contents.Remove("EPQ30318000")
		Session.Contents.Remove("EPQ30318010")
		Session.Contents.Remove("EPQ30318020")
		Session.Contents.Remove("EPQ30318030")
		Session.Contents.Remove("EPQ30318040")
		Session.Contents.Remove("EPQ30318050")


	end if
end if
if Session("EPQ30311018") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311018Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311018Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311018Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311018Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311018")<>"1" then

		Session.Contents.Remove("EPQ30320000")
		Session.Contents.Remove("EPQ30320010")
		Session.Contents.Remove("EPQ30320020")
		Session.Contents.Remove("EPQ30320030")
		Session.Contents.Remove("EPQ30320040")
		Session.Contents.Remove("EPQ30320050")


	end if

end if
if Session("EPQ30311019") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311019Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311019Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311019Page3")=1
		end if 
		end if 
	end if

else 
	if Session("EPQ30311019")<>"1" then

		Session.Contents.Remove("EPQ30321000")
		Session.Contents.Remove("EPQ30321010")
		Session.Contents.Remove("EPQ30321020")
		Session.Contents.Remove("EPQ30321030")
		Session.Contents.Remove("EPQ30321040")
		Session.Contents.Remove("EPQ30321050")

	end if
end if
if Session("EPQ30311020") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311020Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311020Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311020Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311020Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311020")<>"1" then

		Session.Contents.Remove("EPQ30322000")
		Session.Contents.Remove("EPQ30322010")
		Session.Contents.Remove("EPQ30322020")
		Session.Contents.Remove("EPQ30322030")
		Session.Contents.Remove("EPQ30322040")
		Session.Contents.Remove("EPQ30322050")

	end if

end if

if Session("EPQ30311022") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311022Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311022Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311022Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311022Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311022")<>"1" then

		Session.Contents.Remove("EPQ30324000")
		Session.Contents.Remove("EPQ30324010")
		Session.Contents.Remove("EPQ30324020")
		Session.Contents.Remove("EPQ30324030")
		Session.Contents.Remove("EPQ30324040")
		Session.Contents.Remove("EPQ30324050")

	end if
end if
if Session("EPQ30311023") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311023Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311023Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311023Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311023Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311023")<>"1" then

		Session.Contents.Remove("EPQ30325000")
		Session.Contents.Remove("EPQ30325010")
		Session.Contents.Remove("EPQ30325020")
		Session.Contents.Remove("EPQ30325030")
		Session.Contents.Remove("EPQ30325040")
		Session.Contents.Remove("EPQ30325050")

	end if

end if
if Session("EPQ30311024") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311024Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311024Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311024Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311024Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311024")<>"1" then

		Session.Contents.Remove("EPQ30326000")
		Session.Contents.Remove("EPQ30326010")
		Session.Contents.Remove("EPQ30326020")
		Session.Contents.Remove("EPQ30326030")
		Session.Contents.Remove("EPQ30326040")
		Session.Contents.Remove("EPQ30326050")

	end if

end if
if Session("EPQ30311021") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311021Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311021Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311021Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311021Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311021")<>"1" then

		Session.Contents.Remove("EPQ30323000")
		Session.Contents.Remove("EPQ30323010")
		Session.Contents.Remove("EPQ30323020")
		Session.Contents.Remove("EPQ30323030")
		Session.Contents.Remove("EPQ30323040")
		Session.Contents.Remove("EPQ30323050")

	end if
end if
if Session("EPQ30311028") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311028Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311028Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311028Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311028Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311028")<>"1" then

		Session.Contents.Remove("EPQ30330000")
		Session.Contents.Remove("EPQ30330010")
		Session.Contents.Remove("EPQ30330020")
		Session.Contents.Remove("EPQ30330030")
		Session.Contents.Remove("EPQ30330040")
		Session.Contents.Remove("EPQ30330050")

	end if
end if

if Session("EPQ30311025") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311025Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311025Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311025Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311025Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311025")<>"1" then

		Session.Contents.Remove("EPQ30327000")
		Session.Contents.Remove("EPQ30327010")
		Session.Contents.Remove("EPQ30327020")
		Session.Contents.Remove("EPQ30327030")
		Session.Contents.Remove("EPQ30327040")
		Session.Contents.Remove("EPQ30327050")

	end if
end if
if Session("EPQ30311026") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311026Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311026Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311026Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311026Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311026")<>"1" then

		Session.Contents.Remove("EPQ30328000")
		Session.Contents.Remove("EPQ30328010")
		Session.Contents.Remove("EPQ30328020")
		Session.Contents.Remove("EPQ30328030")
		Session.Contents.Remove("EPQ30328040")
		Session.Contents.Remove("EPQ30328050")
		Session.Contents.Remove("CUTA10301000")
		Session.Contents.Remove("CUTA10302000")

	end if

end if
if Session("EPQ30311027") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311027Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311027Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311027Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311027Page4")=1
		end if 
		end if 
		end if 
	end if

else 
	if Session("EPQ30311027")<>"1" then

		Session.Contents.Remove("EPQ30329000")
		Session.Contents.Remove("EPQ30329010")
		Session.Contents.Remove("EPQ30329020")
		Session.Contents.Remove("EPQ30329030")
		Session.Contents.Remove("EPQ30329040")
		Session.Contents.Remove("EPQ30329050")

	end if
end if
if Session("EPQ30311029") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311029Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311029Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311029Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311029Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311029")<>"1" then

		Session.Contents.Remove("EPQ30331000")
		Session.Contents.Remove("EPQ30331010")
		Session.Contents.Remove("EPQ30331020")
		Session.Contents.Remove("EPQ30331030")
		Session.Contents.Remove("EPQ30331040")
		Session.Contents.Remove("EPQ30331050")

	end if

end if
if Session("EPQ30311030") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311030Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311030Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311030Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311030Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311030")<>"1" then

		Session.Contents.Remove("EPQ30332000")
		Session.Contents.Remove("EPQ30332010")
		Session.Contents.Remove("EPQ30332020")
		Session.Contents.Remove("EPQ30332030")
		Session.Contents.Remove("EPQ30332040")
		Session.Contents.Remove("EPQ30332050")

	end if

end if
if Session("EPQ30311031") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311031Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311031Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311031Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311031Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311031")<>"1" then

		Session.Contents.Remove("EPQ30333000")
		Session.Contents.Remove("EPQ30333010")
		Session.Contents.Remove("EPQ30333020")
		Session.Contents.Remove("EPQ30333030")
		Session.Contents.Remove("EPQ30333040")
		Session.Contents.Remove("EPQ30333050")

	end if

end if
if Session("EPQ30311032") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311032Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311032Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311032Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311032Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311032")<>"1" then

		Session.Contents.Remove("EPQ30334000")
		Session.Contents.Remove("EPQ30334010")
		Session.Contents.Remove("EPQ30334020")
		Session.Contents.Remove("EPQ30334030")
		Session.Contents.Remove("EPQ30334040")
		Session.Contents.Remove("EPQ30334050")

	end if

end if
if Session("EPQ30311033") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311033Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311033Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311033Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311033Page4")=1
		end if 
		end if 
		end if 
	end if

else 
	if Session("EPQ30311033")<>"1" then

		Session.Contents.Remove("EPQ30335000")
		Session.Contents.Remove("EPQ30335010")
		Session.Contents.Remove("EPQ30335020")
		Session.Contents.Remove("EPQ30335030")
		Session.Contents.Remove("EPQ30335040")
		Session.Contents.Remove("EPQ30335050")

	end if
end if
if Session("EPQ30311034") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311034Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311034Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311034Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311034Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311034")<>"1" then

		Session.Contents.Remove("EPQ30336000")
		Session.Contents.Remove("EPQ30336010")
		Session.Contents.Remove("EPQ30336020")
		Session.Contents.Remove("EPQ30336030")
		Session.Contents.Remove("EPQ30336040")
		Session.Contents.Remove("EPQ30336050")

	end if

end if
if Session("EPQ30311035") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311035Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311035Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311035Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311035Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311035")<>"1" then

		Session.Contents.Remove("EPQ30337000")
		Session.Contents.Remove("EPQ30337010")
		Session.Contents.Remove("EPQ30337020")
		Session.Contents.Remove("EPQ30337030")
		Session.Contents.Remove("EPQ30337040")
		Session.Contents.Remove("EPQ30337050")
		Session.Contents.Remove("CUTA10303000")
		Session.Contents.Remove("CUTA10304010")
		Session.Contents.Remove("CUTA10304020")
		Session.Contents.Remove("CUTA10304030")
		Session.Contents.Remove("CUTA10304040")
		Session.Contents.Remove("CUTA10304050")

	end if

end if
if Session("EPQ30311036") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311036Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311036Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311036Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311036Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311036")<>"1" then

		Session.Contents.Remove("EPQ30338000")
		Session.Contents.Remove("EPQ30338010")
		Session.Contents.Remove("EPQ30338020")
		Session.Contents.Remove("EPQ30338030")
		Session.Contents.Remove("EPQ30338040")
		Session.Contents.Remove("EPQ30338050")

	end if

end if
if Session("EPQ30311037") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311037Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311037Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311037Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311037Page4")=1
		end if 
		end if 
		end if 
	end if
else 
	if Session("EPQ30311037")<>"1" then

		Session.Contents.Remove("EPQ30339000")
		Session.Contents.Remove("EPQ30339010")
		Session.Contents.Remove("EPQ30339020")
		Session.Contents.Remove("EPQ30339030")
		Session.Contents.Remove("EPQ30339040")
		Session.Contents.Remove("EPQ30339050")

	end if

end if
if Session("EPQ30311038") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311038Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311038Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311038Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311038Page4")=1
		end if 
		end if 
		end if 
	end if

else 
	if Session("EPQ30311038")<>"1" then

		Session.Contents.Remove("EPQ30340000")
		Session.Contents.Remove("EPQ30340010")
		Session.Contents.Remove("EPQ30340020")
		Session.Contents.Remove("EPQ30340030")
		Session.Contents.Remove("EPQ30340040")
		Session.Contents.Remove("EPQ30340050")

	end if
end if

if Session("EPQ30311017") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311017Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311017Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311017Page3")=1

		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311017Page4")=1
		end if 
		end if 
		end if 
	end if

else 
	if Session("EPQ30311017")<>"1" then

		Session.Contents.Remove("EPQ30319000")
		Session.Contents.Remove("EPQ30319010")
		Session.Contents.Remove("EPQ30319020")
		Session.Contents.Remove("EPQ30319030")
		Session.Contents.Remove("EPQ30319040")
		Session.Contents.Remove("EPQ30319050")



	end if
end if

if Session("EPQ30311039") ="1" then
	if PHCDisplayCounter < 8 then 
	Session("EPQ30311039Page1")=1
	PHCDisplayCounter=PHCDisplayCounter+1
	else
		if PHCDisplayCounter < 16 then 
		Session("EPQ30311039Page2")=1
		PHCDisplayCounter=PHCDisplayCounter+1
		else
		if PHCDisplayCounter < 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311039Page3")=1
		else
		if PHCDisplayCounter >= 24 then 
		PHCDisplayCounter=PHCDisplayCounter+1
		Session("EPQ30311039Page4")=1
		end if 
		end if 
		end if 
	end if

else 
	if Session("EPQ30311039")<>"1" then

		Session.Contents.Remove("EPQ30341000")
		Session.Contents.Remove("EPQ30342000")
		Session.Contents.Remove("EPQ30342010")
		Session.Contents.Remove("EPQ30342020")
		Session.Contents.Remove("EPQ30342030")
		Session.Contents.Remove("EPQ30342040")
		Session.Contents.Remove("EPQ30342050")

	end if
end if


Session("PHCDisplayCounter")=PHCDisplayCounter


	Session("Page")="3"
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
f<![endif]-->

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

    <form action="personalhistorycancer2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

  <fieldset>
    <div class="QuestionBox">
	     Please check the type(s) of cancer diagnosed. Please think about the main cancer <br> diagnosis, not the location where the cancer might have spread. Check all that apply.
	</div>
	<legend>
	  </legend>

<!-- [Question boxes ] -->
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30311010" value="1"
id="EPQ30311010" class="atLeastOneCheckboxRequired" <%=strEPQ30311010answer1%>>
		<label for="EPQ30311010">Anal cancer</label><br>

		<input type="checkbox" name="EPQ30311011" value="1"
id="EPQ30311011" class="atLeastOneCheckboxRequired" <%=strEPQ30311011answer1%>>
		<label for="EPQ30311011">Bladder cancer</label><br>

		<input type="checkbox" name="EPQ30311012" value="1"
id="EPQ30311012" class="atLeastOneCheckboxRequired" <%=strEPQ30311012answer1%>>
		<label for="EPQ30311012">Brain cancer</label><br>

		<input type="checkbox" name="EPQ30311013" value="1"
id="EPQ30311013" class="atLeastOneCheckboxRequired" <%=strEPQ30311013answer1%>>
		<label for="EPQ30311013">Breast cancer</label><br>

		<input type="checkbox" name="EPQ30311014" value="1"
id="EPQ30311014" class="atLeastOneCheckboxRequired" <%=strEPQ30311014answer1%>>
		<label for="EPQ30311014">Carcinoid tumor or neuroendocrine tumor</label><br>

<% if session("Gender") = "F" then %>
		<input type="checkbox" name="EPQ30311015" value="1"
id="EPQ30311015" class="atLeastOneCheckboxRequired" <%=strEPQ30311015answer1%>>
		<label for="EPQ30311015">Cervical cancer</label><br>
<% end if %>
		<input type="checkbox" name="EPQ30311016" value="1"
id="EPQ30311016" class="atLeastOneCheckboxRequired" <%=strEPQ30311016answer1%>>
		<label for="EPQ30311016">Colon cancer</label><br>

		<input type="checkbox" name="EPQ30311018" value="1"
id="EPQ30311018" class="atLeastOneCheckboxRequired" <%=strEPQ30311018answer1%>>
		<label for="EPQ30311018">Esophageal cancer</label><br>


		<input type="checkbox" name="EPQ30311019" value="1"
id="EPQ30311019" class="atLeastOneCheckboxRequired" <%=strEPQ30311019answer1%>>
		<label for="EPQ30311019">Gall bladder cancer</label><br>

		<input type="checkbox" name="EPQ30311020" value="1"
id="EPQ30311020" class="atLeastOneCheckboxRequired" <%=strEPQ30311020answer1%>>
		<label for="EPQ30311020">Gastrointestinal stromal tumor (GIST)</label><br>


		<input type="checkbox" name="EPQ30311022" value="1"
id="EPQ30311022" class="atLeastOneCheckboxRequired" <%=strEPQ30311022answer1%>>
		<label for="EPQ30311022">Kidney (renal cell) cancer</label><br>

		<input type="checkbox" name="EPQ30311023" value="1"
id="EPQ30311023" class="atLeastOneCheckboxRequired" <%=strEPQ30311023answer1%>>
		<label for="EPQ30311023">Leukemia</label><br>

		<input type="checkbox" name="EPQ30311024" value="1"
id="EPQ30311024" class="atLeastOneCheckboxRequired" <%=strEPQ30311024answer1%>>
		<label for="EPQ30311024">Liver cancer</label><br>

		<input type="checkbox" name="EPQ30311025" value="1"
id="EPQ30311025" class="atLeastOneCheckboxRequired" <%=strEPQ30311025answer1%>>
		<label for="EPQ30311025">Lung cancer</label><br>

</span>

<span class="column2">


		<input type="checkbox" name="EPQ30311021" value="1"
id="EPQ30311021" class="atLeastOneCheckboxRequired" <%=strEPQ30311021answer1%>>
		<label for="EPQ30311021">Lymphoma - Hodgkin’s</label><br>

		<input type="checkbox" name="EPQ30311028" value="1"
id="EPQ30311028" class="atLeastOneCheckboxRequired" <%=strEPQ30311028answer1%>>
		<label for="EPQ30311028">Lymphoma - other than Hodgkin’s</label><br>

		<input type="checkbox" name="EPQ30311026" value="1"
id="EPQ30311026" class="atLeastOneCheckboxRequired" <%=strEPQ30311026answer1%>>
		<label for="EPQ30311026">Melanoma</label><br>

		<input type="checkbox" name="EPQ30311027" value="1"
id="EPQ30311027" class="atLeastOneCheckboxRequired" <%=strEPQ30311027answer1%>>
		<label for="EPQ30311027">Multiple myeloma or plasma cell tumor</label><br>


		<input type="checkbox" name="EPQ30311029" value="1"
id="EPQ30311029" class="atLeastOneCheckboxRequired" <%=strEPQ30311029answer1%>>
		<label for="EPQ30311029">Oral cavity or throat cancer</label><br>

<% if session("Gender") = "F" then %>
		<input type="checkbox" name="EPQ30311030" value="1"
id="EPQ30311030" class="atLeastOneCheckboxRequired" <%=strEPQ30311030answer1%>>
		<label for="EPQ30311030">Ovarian cancer (includes fallopian and peritoneal cancers)</label><br>
<% end if%>
		<input type="checkbox" name="EPQ30311031" value="1"
id="EPQ30311031" class="atLeastOneCheckboxRequired" <%=strEPQ30311031answer1%>>
		<label for="EPQ30311031">Pancreatic cancer</label><br>

<%if Session("gender")= "M" then %>
		<input type="checkbox" name="EPQ30311032" value="1"
id="EPQ30311032" class="atLeastOneCheckboxRequired" <%=strEPQ30311032answer1%>>
		<label for="EPQ30311032">Prostate cancer</label><br>
<%end if%>

		<input type="checkbox" name="EPQ30311033" value="1"
id="EPQ30311033" class="atLeastOneCheckboxRequired" <%=strEPQ30311033answer1%>>
		<label for="EPQ30311033">Rectal cancer</label><br>

		<input type="checkbox" name="EPQ30311034" value="1"
id="EPQ30311034" class="atLeastOneCheckboxRequired" <%=strEPQ30311034answer1%>>
		<label for="EPQ30311034">Sarcoma</label><br>

		<input type="checkbox" name="EPQ30311035" value="1"
id="EPQ30311035" class="atLeastOneCheckboxRequired" <%=strEPQ30311035answer1%>>
		<label for="EPQ30311035">Skin cancer other than melanoma<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(includes basal and squamous cell carcinoma)</label><br>

		<input type="checkbox" name="EPQ30311036" value="1"
id="EPQ30311036" class="atLeastOneCheckboxRequired" <%=strEPQ30311036answer1%>>
		<label for="EPQ30311036">Stomach (gastric) cancer</label><br>

<%if Session("gender")= "M" then %>
		<input type="checkbox" name="EPQ30311037" value="1"
id="EPQ30311037" class="atLeastOneCheckboxRequired" <%=strEPQ30311037answer1%>>
		<label for="EPQ30311037">Testicular cancer</label><br>
<% end if %>

		<input type="checkbox" name="EPQ30311038" value="1"
id="EPQ30311038" class="atLeastOneCheckboxRequired" <%=strEPQ30311038answer1%>>
		<label for="EPQ30311038">Thyroid cancer</label><br>

<%if Session("gender")= "F" then %>
		<input type="checkbox" name="EPQ30311017" value="1"
id="EPQ30311017" class="atLeastOneCheckboxRequired" <%=strEPQ30311017answer1%>>
		<label for="EPQ30311017">Uterine (endometrial) cancer</label><br>
<% end if %>

		<input type="checkbox" name="EPQ30311039" value="1"
id="EPQ30311039" class="atLeastOneCheckboxRequired" <%=strEPQ30311039answer1%>>
		<label for="EPQ30311039">Other, specify: </label><input id="EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="EPQ30341000" value='<%=Session("EPQ30341000")%>' > <br>

</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

<div class="ResetBox">
</div>

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
