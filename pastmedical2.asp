
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30402010")="1" then
		strEPQ30402010answer1="checked"
	end if
	if Session("EPQ30402020")="1" then
		strEPQ30402020answer1="checked"
	end if
	if Session("EPQ30402030")="1" then
		strEPQ30402030answer1="checked"
	end if
	if Session("EPQ30402040")="1" then
		strEPQ30402040answer1="checked"
	end if
	if Session("EPQ30402050")="1" then
		strEPQ30402050answer1="checked"
	end if
	if Session("EPQ30402060")="1" then
		strEPQ30402060answer1="checked"
	end if
	if Session("EPQ30402070")="1" then
		strEPQ30402070answer1="checked"
	end if
	if Session("EPQ30402080")="1" then
		strEPQ30402080answer1="checked"
	end if
	if Session("EPQ30402090")="1" then
		strEPQ30402090answer1="checked"
	end if
	if Session("EPQ30402100")="1" then
		strEPQ30402100answer1="checked"
	end if
	if Session("EPQ30402110")="1" then
		strEPQ30402110answer1="checked"
	end if
	if Session("EPQ30402120")="1" then
		strEPQ30402120answer1="checked"
	end if
	if Session("EPQ30402130")="1" then
		strEPQ30402130answer1="checked"
	end if
	if Session("EPQ30402140")="1" then
		strEPQ30402140answer1="checked"
	end if
	if Session("EPQ30402150")="1" then
		strEPQ30402150answer1="checked"
	end if
	if Session("EPQ30402160")="1" then
		strEPQ30402160answer1="checked"
	end if
	if Session("EPQ30402180")="1" then
		strEPQ30402180answer1="checked"
	end if

	if Session("EPQ30402190")="1" then
		strEPQ30402190answer1="checked"
	end if
	if Session("EPQ30402170")="1" then
		strEPQ30402170answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30402000") = Request.Form("EPQ30402000")
	Session("EPQ30402010") = Request.Form("EPQ30402010")
	Session("EPQ30402020") = Request.Form("EPQ30402020")
	Session("EPQ30402030") = Request.Form("EPQ30402030")
	Session("EPQ30402040") = Request.Form("EPQ30402040")
	Session("EPQ30402050") = Request.Form("EPQ30402050")
	Session("EPQ30402060") = Request.Form("EPQ30402060")
	Session("EPQ30402070") = Request.Form("EPQ30402070")
	Session("EPQ30402080") = Request.Form("EPQ30402080")
	Session("EPQ30402090") = Request.Form("EPQ30402090")
	Session("EPQ30402100") = Request.Form("EPQ30402100")
	Session("EPQ30402110") = Request.Form("EPQ30402110")
	Session("EPQ30402120") = Request.Form("EPQ30402120")
	Session("EPQ30402130") = Request.Form("EPQ30402130")
	Session("EPQ30402140") = Request.Form("EPQ30402140")
	Session("EPQ30402150") = Request.Form("EPQ30402150")
	Session("EPQ30402160") = Request.Form("EPQ30402160")
	Session("EPQ30402170") = Request.Form("EPQ30402170")
	Session("EPQ30402180") = Request.Form("EPQ30402180")
	Session("EPQ30402190") = Request.Form("EPQ30402190")

	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

	if Session("SurveyVersion")="Cutaneous" then
		Session("Page")="1b"
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "pastmedicalmaster.asp"

end if

		if Session("EPQ30310000")<>"1" then
		Session("Page")=1
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		else
		Session("Page")=5
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		end if

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30402010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30402180")<>"1" then

		Session.Contents.Remove("EPQ30422010")
		Session.Contents.Remove("EPQ30422020")
		Session.Contents.Remove("EPQ30422030")
		Session.Contents.Remove("EPQ30422040")
		Session.Contents.Remove("EPQ30422050")
		Session.Contents.Remove("EPQ30422060")
		Session.Contents.Remove("EPQ30422070")
		Session.Contents.Remove("EPQ30422080")
		Session.Contents.Remove("THRC30130000")
		Session.Contents.Remove("THRC30131000")



	end if

	if Session("EPQ30402040")<>"1" then

		Session.Contents.Remove("EPQ30413000")
		Session.Contents.Remove("EPQ30413010")
		Session.Contents.Remove("EPQ30413020")
		Session.Contents.Remove("EPQ30413040")
		Session.Contents.Remove("EPQ30413050")
		Session.Contents.Remove("EPQ30413060")
		Session.Contents.Remove("EPQ30413070")
		Session.Contents.Remove("EPQ30413080")
		Session.Contents.Remove("EPQ30413090")
		Session.Contents.Remove("EPQ30413100")
		Session.Contents.Remove("EPQ30413011")
		Session.Contents.Remove("EPQ30413120")
		Session.Contents.Remove("EPQ30413130")
		Session.Contents.Remove("EPQ30413140")
		Session.Contents.Remove("EPQ30413150")
		Session.Contents.Remove("EPQ30413160")

	end if

	if Session("EPQ30402140")<>"1" then

		Session.Contents.Remove("EPQ30417000")
		Session.Contents.Remove("EPQ30417010")
		Session.Contents.Remove("EPQ30417020")
		Session.Contents.Remove("EPQ30417030")
		Session.Contents.Remove("EPQ30417040")
		Session.Contents.Remove("EPQ30417050")
		Session.Contents.Remove("EPQ30417060")
		Session.Contents.Remove("EPQ30417070")
		Session.Contents.Remove("EPQ30417080")
		Session.Contents.Remove("EPQ30417090")
		Session.Contents.Remove("EPQ30417100")
		Session.Contents.Remove("EPQ30417110")
		Session.Contents.Remove("EPQ30417120")
	end if

	if Session("EPQ30402050")<>"1" then

		Session.Contents.Remove("EPQ30412000")
		Session.Contents.Remove("EPQ30412010")
		Session.Contents.Remove("EPQ30412020")
		Session.Contents.Remove("EPQ30412030")
		Session.Contents.Remove("EPQ30412040")
		Session.Contents.Remove("EPQ30412050")
		Session.Contents.Remove("EPQ30412060")
		Session.Contents.Remove("EPQ30412070")
		Session.Contents.Remove("EPQ30412090")
		Session.Contents.Remove("EPQ30412100")
		Session.Contents.Remove("EPQ30412110")
		Session.Contents.Remove("EPQ30412120")
		Session.Contents.Remove("EPQ30412130")
		Session.Contents.Remove("EPQ30412140")
		Session.Contents.Remove("EPQ30412150")
		Session.Contents.Remove("EPQ30412160")


	end if

	if Session("EPQ30402060")<>"1" then

		Session.Contents.Remove("EPQ30410000")
		Session.Contents.Remove("EPQ30410010")
		Session.Contents.Remove("EPQ30410020")
		Session.Contents.Remove("EPQ30410030")
		Session.Contents.Remove("EPQ30410040")
		Session.Contents.Remove("EPQ30410050")
		Session.Contents.Remove("EPQ30410060")
		Session.Contents.Remove("EPQ30410070")
		Session.Contents.Remove("EPQ30410080")
		Session.Contents.Remove("EPQ30410090")
		Session.Contents.Remove("EPQ30410100")


	end if

	if Session("EPQ30402020")<>"1" then

		Session.Contents.Remove("EPQ30407000")
		Session.Contents.Remove("EPQ30407010")
		Session.Contents.Remove("EPQ30407020")
		Session.Contents.Remove("EPQ30407030")
		Session.Contents.Remove("EPQ30407040")
		Session.Contents.Remove("EPQ30407050")
		Session.Contents.Remove("EPQ30407060")
		Session.Contents.Remove("EPQ30407070")
		Session.Contents.Remove("EPQ30407080")
		Session.Contents.Remove("EPQ30407090")
		Session.Contents.Remove("EPQ30407100")
		Session.Contents.Remove("EPQ30407110")
		Session.Contents.Remove("EPQ30407120")
		Session.Contents.Remove("EPQ30407130")
		Session.Contents.Remove("EPQ30407140")
		Session.Contents.Remove("EPQ30407150")
		Session.Contents.Remove("EPQ30407160")
		Session.Contents.Remove("EPQ30407170")
		Session.Contents.Remove("EPQ30407190")
		Session.Contents.Remove("EPQ30407280")
		Session.Contents.Remove("EPQ30407200")
		Session.Contents.Remove("EPQ30407270")
		Session.Contents.Remove("EPQ30407220")
		Session.Contents.Remove("EPQ30407230")
		Session.Contents.Remove("EPQ30407240")
		Session.Contents.Remove("EPQ30407250")
		Session.Contents.Remove("EPQ30407260")


	end if

	if Session("EPQ30402030")<>"1" then

		Session.Contents.Remove("EPQ30408000")
		Session.Contents.Remove("EPQ30408010")
		Session.Contents.Remove("EPQ30408020")
		Session.Contents.Remove("EPQ30408030")
		Session.Contents.Remove("EPQ30408040")
		Session.Contents.Remove("EPQ30408050")
		Session.Contents.Remove("EPQ30408060")
		Session.Contents.Remove("EPQ30408070")
		Session.Contents.Remove("EPQ30408080")
		Session.Contents.Remove("EPQ30408090")
		Session.Contents.Remove("EPQ30408100")
		Session.Contents.Remove("EPQ30408110")
		Session.Contents.Remove("EPQ30408120")
		Session.Contents.Remove("EPQ30408130")

	end if

	if Session("EPQ30402120")<>"1" then

		Session.Contents.Remove("EPQ30416000")
		Session.Contents.Remove("EPQ30416010")
		Session.Contents.Remove("EPQ30416020")
		Session.Contents.Remove("EPQ30416030")
		Session.Contents.Remove("EPQ30416040")
		Session.Contents.Remove("EPQ30416050")
		Session.Contents.Remove("EPQ30416060")
		Session.Contents.Remove("EPQ30416070")
		Session.Contents.Remove("EPQ30416080")
		Session.Contents.Remove("EPQ30416090")
		Session.Contents.Remove("EPQ30416100")
		Session.Contents.Remove("EPQ30416110")
		Session.Contents.Remove("EPQ30416130")


	end if

	if Session("EPQ30402090")<>"1" then

		Session.Contents.Remove("EPQ30409000")
		Session.Contents.Remove("EPQ30409010")
		Session.Contents.Remove("EPQ30409020")
		Session.Contents.Remove("EPQ30409030")
		Session.Contents.Remove("EPQ30409040")
		Session.Contents.Remove("EPQ30409050")
		Session.Contents.Remove("EPQ30409060")
		Session.Contents.Remove("EPQ30409070")
		Session.Contents.Remove("EPQ30409080")
		Session.Contents.Remove("EPQ30409090")
		Session.Contents.Remove("EPQ30409100")


	end if

	if Session("EPQ30402130")<>"1" then

		Session.Contents.Remove("EPQ30415000")
		Session.Contents.Remove("EPQ30415010")
		Session.Contents.Remove("EPQ30415020")
		Session.Contents.Remove("EPQ30415030")
		Session.Contents.Remove("EPQ30415040")
		Session.Contents.Remove("EPQ30415050")
		Session.Contents.Remove("EPQ30415060")
		Session.Contents.Remove("EPQ30415070")
		Session.Contents.Remove("EPQ30415080")
		Session.Contents.Remove("EPQ30415090")
		Session.Contents.Remove("EPQ30415100")
		Session.Contents.Remove("EPQ30415110")
		Session.Contents.Remove("EPQ30415120")
		Session.Contents.Remove("EPQ30415130")
		Session.Contents.Remove("EPQ30415140")
		Session.Contents.Remove("THRC30117000")
		Session.Contents.Remove("THRC30118000")
		Session.Contents.Remove("THRC30119000")
		Session.Contents.Remove("THRC30120000")
		Session.Contents.Remove("THRC30121000")
		Session.Contents.Remove("THRC30122000")
		Session.Contents.Remove("THRC30123000")
		Session.Contents.Remove("THRC30124000")
		Session.Contents.Remove("THRC30125000")
		Session.Contents.Remove("THRC30126000")
		Session.Contents.Remove("THRC30127000")

	end if

	if Session("EPQ30402100")<>"1" then

		Session.Contents.Remove("EPQ30414000")
		Session.Contents.Remove("EPQ30414010")
		Session.Contents.Remove("EPQ30414020")
		Session.Contents.Remove("EPQ30414030")
		Session.Contents.Remove("EPQ30414040")
		Session.Contents.Remove("EPQ30414050")
		Session.Contents.Remove("EPQ30414060")
		Session.Contents.Remove("EPQ30414070")
		Session.Contents.Remove("EPQ30414080")
		Session.Contents.Remove("EPQ30414090")
		Session.Contents.Remove("EPQ30414100")

	end if

	if Session("EPQ30402110")<>"1" then

		Session.Contents.Remove("EPQ304130000")
		Session.Contents.Remove("EPQ304130010")
		Session.Contents.Remove("EPQ304130020")
		Session.Contents.Remove("EPQ304130030")
		Session.Contents.Remove("EPQ304130040")
		Session.Contents.Remove("EPQ304140000")

	end if

	if Session("EPQ30402070")<>"1" then

		Session.Contents.Remove("EPQ30411000")
		Session.Contents.Remove("EPQ30411010")
		Session.Contents.Remove("EPQ30411020")
		Session.Contents.Remove("EPQ30411030")
		Session.Contents.Remove("EPQ30411040")
		Session.Contents.Remove("EPQ30411050")
		Session.Contents.Remove("EPQ30411060")
		Session.Contents.Remove("EPQ30411070")
		Session.Contents.Remove("EPQ30411080")
		Session.Contents.Remove("EPQ30411090")
		Session.Contents.Remove("EPQ30411100")

	end if

	if Session("EPQ30402080")<>"1" then

		Session.Contents.Remove("EPQ30420000")
		Session.Contents.Remove("EPQ30419000")
		Session.Contents.Remove("EPQ30418000")
		Session.Contents.Remove("EPQ30418010")
		Session.Contents.Remove("EPQ30418020")
		Session.Contents.Remove("EPQ30418030")
		Session.Contents.Remove("EPQ30418040")
		Session.Contents.Remove("EPQ30418050")
		Session.Contents.Remove("EPQ30418060")
		Session.Contents.Remove("EPQ30418070")
		Session.Contents.Remove("EPQ30418080")
		Session.Contents.Remove("EPQ30418090")
		Session.Contents.Remove("EPQ30418100")
		Session.Contents.Remove("EPQ30418110")
		Session.Contents.Remove("THRC30128000")
		Session.Contents.Remove("THRC30129000")

	end if

	if Session("EPQ30402010")<>"1" then

		Session.Contents.Remove("EPQ30403000")
		Session.Contents.Remove("EPQ30403010")
		Session.Contents.Remove("EPQ30403020")
		Session.Contents.Remove("EPQ30403030")
		Session.Contents.Remove("EPQ30403040")
		Session.Contents.Remove("EPQ30403050")
		Session.Contents.Remove("EPQ30403060")
		Session.Contents.Remove("EPQ30403070")
		Session.Contents.Remove("EPQ30403080")
		Session.Contents.Remove("EPQ30403090")
		Session.Contents.Remove("EPQ30403100")
		Session.Contents.Remove("EPQ30403110")
		Session.Contents.Remove("EPQ30403120")
		Session.Contents.Remove("EPQ30403130")
		Session.Contents.Remove("EPQ30403140")
		Session.Contents.Remove("EPQ30403150")
		Session.Contents.Remove("EPQ30403160")
		Session.Contents.Remove("EPQ30403170")
		Session.Contents.Remove("EPQ30403180")
		Session.Contents.Remove("EPQ30404000")
		Session.Contents.Remove("EPQ30405000")
		Session.Contents.Remove("EPQ30406000")

	end if
	if Session("EPQ30402150")<>"1" then

		Session.Contents.Remove("EPQ30421000")

	end if

	if Session("EPQ30402160")="1" then

		Session.Contents.Remove("THRC30130000")
		Session.Contents.Remove("THRC30131000")

		Session.Contents.Remove("EPQ30422010")
		Session.Contents.Remove("EPQ30422020")
		Session.Contents.Remove("EPQ30422030")
		Session.Contents.Remove("EPQ30422040")
		Session.Contents.Remove("EPQ30422050")
		Session.Contents.Remove("EPQ30422060")
		Session.Contents.Remove("EPQ30422070")
		Session.Contents.Remove("EPQ30413000")
		Session.Contents.Remove("EPQ30413010")
		Session.Contents.Remove("EPQ30413020")
		Session.Contents.Remove("EPQ30413040")
		Session.Contents.Remove("EPQ30413050")
		Session.Contents.Remove("EPQ30413060")
		Session.Contents.Remove("EPQ30413070")
		Session.Contents.Remove("EPQ30413080")
		Session.Contents.Remove("EPQ30413090")
		Session.Contents.Remove("EPQ30413100")
		Session.Contents.Remove("EPQ30413011")
		Session.Contents.Remove("EPQ30413120")
		Session.Contents.Remove("EPQ30413130")
		Session.Contents.Remove("EPQ30413140")
		Session.Contents.Remove("EPQ30413150")
		Session.Contents.Remove("EPQ30413160")

		Session.Contents.Remove("EPQ30417000")
		Session.Contents.Remove("EPQ30417010")
		Session.Contents.Remove("EPQ30417020")
		Session.Contents.Remove("EPQ30417030")
		Session.Contents.Remove("EPQ30417040")
		Session.Contents.Remove("EPQ30417050")
		Session.Contents.Remove("EPQ30417060")
		Session.Contents.Remove("EPQ30417070")
		Session.Contents.Remove("EPQ30417080")
		Session.Contents.Remove("EPQ30417090")
		Session.Contents.Remove("EPQ30417100")
		Session.Contents.Remove("EPQ30417110")
		Session.Contents.Remove("EPQ30417120")

		Session.Contents.Remove("EPQ30412000")
		Session.Contents.Remove("EPQ30412010")
		Session.Contents.Remove("EPQ30412020")
		Session.Contents.Remove("EPQ30412030")
		Session.Contents.Remove("EPQ30412040")
		Session.Contents.Remove("EPQ30412050")
		Session.Contents.Remove("EPQ30412060")
		Session.Contents.Remove("EPQ30412070")
		Session.Contents.Remove("EPQ30412090")
		Session.Contents.Remove("EPQ30412100")
		Session.Contents.Remove("EPQ30412110")
		Session.Contents.Remove("EPQ30412120")
		Session.Contents.Remove("EPQ30412130")
		Session.Contents.Remove("EPQ30412140")
		Session.Contents.Remove("EPQ30412150")
		Session.Contents.Remove("EPQ30412160")

		Session.Contents.Remove("EPQ30410000")
		Session.Contents.Remove("EPQ30410010")
		Session.Contents.Remove("EPQ30410020")
		Session.Contents.Remove("EPQ30410030")
		Session.Contents.Remove("EPQ30410040")
		Session.Contents.Remove("EPQ30410050")
		Session.Contents.Remove("EPQ30410060")
		Session.Contents.Remove("EPQ30410070")
		Session.Contents.Remove("EPQ30410080")
		Session.Contents.Remove("EPQ30410090")
		Session.Contents.Remove("EPQ30410100")

		Session.Contents.Remove("EPQ30407000")
		Session.Contents.Remove("EPQ30407010")
		Session.Contents.Remove("EPQ30407020")
		Session.Contents.Remove("EPQ30407030")
		Session.Contents.Remove("EPQ30407040")
		Session.Contents.Remove("EPQ30407050")
		Session.Contents.Remove("EPQ30407060")
		Session.Contents.Remove("EPQ30407070")
		Session.Contents.Remove("EPQ30407080")
		Session.Contents.Remove("EPQ30407090")
		Session.Contents.Remove("EPQ30407100")
		Session.Contents.Remove("EPQ30407110")
		Session.Contents.Remove("EPQ30407120")
		Session.Contents.Remove("EPQ30407130")
		Session.Contents.Remove("EPQ30407140")
		Session.Contents.Remove("EPQ30407150")
		Session.Contents.Remove("EPQ30407160")
		Session.Contents.Remove("EPQ30407170")
		Session.Contents.Remove("EPQ30407190")
		Session.Contents.Remove("EPQ30407280")
		Session.Contents.Remove("EPQ30407200")
		Session.Contents.Remove("EPQ30407270")
		Session.Contents.Remove("EPQ30407220")
		Session.Contents.Remove("EPQ30407230")
		Session.Contents.Remove("EPQ30407240")
		Session.Contents.Remove("EPQ30407250")
		Session.Contents.Remove("EPQ30407260")

		Session.Contents.Remove("EPQ30416000")
		Session.Contents.Remove("EPQ30416010")
		Session.Contents.Remove("EPQ30416020")
		Session.Contents.Remove("EPQ30416030")
		Session.Contents.Remove("EPQ30416040")
		Session.Contents.Remove("EPQ30416050")
		Session.Contents.Remove("EPQ30416060")
		Session.Contents.Remove("EPQ30416070")
		Session.Contents.Remove("EPQ30416080")
		Session.Contents.Remove("EPQ30416090")
		Session.Contents.Remove("EPQ30416100")
		Session.Contents.Remove("EPQ30416110")
		Session.Contents.Remove("EPQ30416130")

		Session.Contents.Remove("EPQ30409000")
		Session.Contents.Remove("EPQ30409010")
		Session.Contents.Remove("EPQ30409020")
		Session.Contents.Remove("EPQ30409030")
		Session.Contents.Remove("EPQ30409040")
		Session.Contents.Remove("EPQ30409050")
		Session.Contents.Remove("EPQ30409060")
		Session.Contents.Remove("EPQ30409070")
		Session.Contents.Remove("EPQ30409080")
		Session.Contents.Remove("EPQ30409090")
		Session.Contents.Remove("EPQ30409100")

		Session.Contents.Remove("EPQ30415000")
		Session.Contents.Remove("EPQ30415010")
		Session.Contents.Remove("EPQ30415020")
		Session.Contents.Remove("EPQ30415030")
		Session.Contents.Remove("EPQ30415040")
		Session.Contents.Remove("EPQ30415050")
		Session.Contents.Remove("EPQ30415060")
		Session.Contents.Remove("EPQ30415070")
		Session.Contents.Remove("EPQ30415080")
		Session.Contents.Remove("EPQ30415090")
		Session.Contents.Remove("EPQ30415100")
		Session.Contents.Remove("EPQ30415110")
		Session.Contents.Remove("EPQ30415120")
		Session.Contents.Remove("EPQ30415130")
		Session.Contents.Remove("EPQ30415140")
		Session.Contents.Remove("THRC30117000")
		Session.Contents.Remove("THRC30118000")
		Session.Contents.Remove("THRC30119000")
		Session.Contents.Remove("THRC30120000")
		Session.Contents.Remove("THRC30121000")
		Session.Contents.Remove("THRC30122000")
		Session.Contents.Remove("THRC30123000")
		Session.Contents.Remove("THRC30124000")
		Session.Contents.Remove("THRC30125000")
		Session.Contents.Remove("THRC30126000")
		Session.Contents.Remove("THRC30127000")

		Session.Contents.Remove("EPQ30414000")
		Session.Contents.Remove("EPQ30414010")
		Session.Contents.Remove("EPQ30414020")
		Session.Contents.Remove("EPQ30414030")
		Session.Contents.Remove("EPQ30414040")
		Session.Contents.Remove("EPQ30414050")
		Session.Contents.Remove("EPQ30414060")
		Session.Contents.Remove("EPQ30414070")
		Session.Contents.Remove("EPQ30414080")
		Session.Contents.Remove("EPQ30414090")
		Session.Contents.Remove("EPQ30414100")

		Session.Contents.Remove("EPQ304130000")
		Session.Contents.Remove("EPQ304130010")
		Session.Contents.Remove("EPQ304130020")
		Session.Contents.Remove("EPQ304130030")
		Session.Contents.Remove("EPQ304130040")
		Session.Contents.Remove("EPQ304140000")

		Session.Contents.Remove("EPQ30411000")
		Session.Contents.Remove("EPQ30411010")
		Session.Contents.Remove("EPQ30411020")
		Session.Contents.Remove("EPQ30411030")
		Session.Contents.Remove("EPQ30411040")
		Session.Contents.Remove("EPQ30411050")
		Session.Contents.Remove("EPQ30411060")
		Session.Contents.Remove("EPQ30411070")
		Session.Contents.Remove("EPQ30411080")
		Session.Contents.Remove("EPQ30411090")
		Session.Contents.Remove("EPQ30411100")

		Session.Contents.Remove("EPQ30420000")
		Session.Contents.Remove("EPQ30419000")
		Session.Contents.Remove("EPQ30418000")
		Session.Contents.Remove("EPQ30418010")
		Session.Contents.Remove("EPQ30418020")
		Session.Contents.Remove("EPQ30418030")
		Session.Contents.Remove("EPQ30418040")
		Session.Contents.Remove("EPQ30418050")
		Session.Contents.Remove("EPQ30418060")
		Session.Contents.Remove("EPQ30418070")
		Session.Contents.Remove("EPQ30418080")
		Session.Contents.Remove("EPQ30418090")
		Session.Contents.Remove("EPQ30418100")
		Session.Contents.Remove("EPQ30418110")
		Session.Contents.Remove("THRC30128000")
		Session.Contents.Remove("THRC30129000")

		Session.Contents.Remove("EPQ30403000")
		Session.Contents.Remove("EPQ30403010")
		Session.Contents.Remove("EPQ30403020")
		Session.Contents.Remove("EPQ30403030")
		Session.Contents.Remove("EPQ30403040")
		Session.Contents.Remove("EPQ30403050")
		Session.Contents.Remove("EPQ30403060")
		Session.Contents.Remove("EPQ30403070")
		Session.Contents.Remove("EPQ30403080")
		Session.Contents.Remove("EPQ30403090")
		Session.Contents.Remove("EPQ30403100")
		Session.Contents.Remove("EPQ30403110")
		Session.Contents.Remove("EPQ30403120")
		Session.Contents.Remove("EPQ30403130")
		Session.Contents.Remove("EPQ30403140")
		Session.Contents.Remove("EPQ30403150")
		Session.Contents.Remove("EPQ30403160")
		Session.Contents.Remove("EPQ30403170")
		Session.Contents.Remove("EPQ30403180")
		Session.Contents.Remove("EPQ30404000")
		Session.Contents.Remove("EPQ30405000")
		Session.Contents.Remove("EPQ30406000")

		Session.Contents.Remove("EPQ30421000")

		Session.Contents.Remove("EPQ30408000")
		Session.Contents.Remove("EPQ30408010")
		Session.Contents.Remove("EPQ30408020")
		Session.Contents.Remove("EPQ30408030")
		Session.Contents.Remove("EPQ30408040")
		Session.Contents.Remove("EPQ30408050")
		Session.Contents.Remove("EPQ30408060")
		Session.Contents.Remove("EPQ30408070")
		Session.Contents.Remove("EPQ30408080")
		Session.Contents.Remove("EPQ30408090")
		Session.Contents.Remove("EPQ30408100")
		Session.Contents.Remove("EPQ30408110")
		Session.Contents.Remove("EPQ30408120")
		Session.Contents.Remove("EPQ30408130")


	end if


	if Session("EPQ30402160") = "1" then

	Session("Page")="1"
	if Session("GI10202000")="1" then
		Session("Page")="10a"
		Response.Redirect "pastmedicalmaster.asp"
	end if

	else
	Session("Page")="3"
	end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
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
<div id="SpecialNote">
In this module, we will ask you about any past or current medical problems that a doctor has ever said you have. We will ask first about general areas of the body and then about specific conditions.
<br><br>
Please list medical problems, diseases, or conditions that you may have been diagnosed with other than cancer.
</div>
<br>
    <form action="pastmedical2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset class="eitherNoneOrChecked">
    <div class="QuestionBox">
      Other than the cancer diagnoses that you may have already reported, have you ever been diagnosed with any other medical problem, disease, or condition?  Check all that apply.
	</div>
	<legend>
    </legend>

	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30402180" value="1" id="EPQ30402180"  <%=strEPQ30402180answer1%>>
		<label for="EPQ30402180">Allergies, sinuses, or hay fever</label><br>

		<input type="checkbox" name="EPQ30402040" value="1" id="EPQ30402040"  <%=strEPQ30402040answer1%>>
		<label for="EPQ30402040">Arthritis, autoimmune diseases, or joint problems</label><br>

		<input type="checkbox" name="EPQ30402140" value="1" id="EPQ30402140"  <%=strEPQ30402140answer1%>>
		<label for="EPQ30402140">Bleeding, clotting, or other blood problems</label><br>

		<input type="checkbox" name="EPQ30402050" value="1" id="EPQ30402050"  <%=strEPQ30402050answer1%>>
		<label for="EPQ30402050">Brain and neurological system problems such as stroke, headaches, or seizures</label><br>
		<input type="checkbox" name="EPQ30402060" value="1" id="EPQ30402060"  <%=strEPQ30402060answer1%>>
		<label for="EPQ30402060">Breast or nipple problems</label><br>
		<input type="checkbox" name="EPQ30402100" value="1" id="EPQ30402100"  <%=strEPQ30402100answer1%>>
		<label for="EPQ30402100">Depression, anxiety, or other mental health problems</label><br>

		<input type="checkbox" name="EPQ30402020" value="1" id="EPQ30402020"  <%=strEPQ30402020answer1%>>
		<label for="EPQ30402020">Diabetes, thyroid, or gland problems</label><br>

		<input type="checkbox" name="EPQ30402010" value="1" id="EPQ30402010"  <%=strEPQ30402010answer1%>>
		<label for="EPQ30402010">Digestive tract problems including stomach, colon, bowels, pancreas, liver, and gallbladder</label><br>

<%if session("gender")="F" then %>
		<input type="checkbox" name="EPQ30402030" value="1" id="EPQ30402030"  <%=strEPQ30402030answer1%>>
		<label for="EPQ30402030">Gyn (gynecological) problems including problems with uterus, ovaries, vagina, vulva, and cervix</label><br>
<%end if%>
		<input type="checkbox" name="EPQ30402120" value="1" id="EPQ30402120"  <%=strEPQ30402120answer1%>>
		<label for="EPQ30402120">Heart problems or high blood pressure</label><br>
		<input type="checkbox" name="EPQ30402090" value="1" id="EPQ30402090"  <%=strEPQ30402090answer1%>>
		<label for="EPQ30402090">Kidneys, bladder, adrenal gland, or urinary tract problems</label><br>
		<input type="checkbox" name="EPQ30402130" value="1" id="EPQ30402130"  <%=strEPQ30402130answer1%>>
		<label for="EPQ30402130">Lung or other breathing problems</label><br>

<% if session("gender")="M" then %>
		<input type="checkbox" name="EPQ30402170" value="1" id="EPQ30402170"  <%=strEPQ30402170answer1%>>
		<label for="EPQ30402170">Penis, testis, or sperm problems</label><br>
<% end if %>

<% if session("gender")="M" then %>
		<input type="checkbox" name="EPQ30402110" value="1" id="EPQ30402110"  <%=strEPQ30402110answer1%>>
		<label for="EPQ30402110">Prostate problems</label><br>
<% end if %>

		<input type="checkbox" name="EPQ30402080" value="1" id="EPQ30402080"  <%=strEPQ30402080answer1%>>
		<label for="EPQ30402080">Skin or mole related problems</label><br>


		<input type="checkbox" name="EPQ30402150" value="1" id="EPQ30402150"  <%=strEPQ30402150answer1%>>
		<label for="EPQ30402150">Other problems</label><br>
		<input type="radio" name="EPQ30402160" value="1" id="EPQ30402160"  <%=strEPQ30402160answer1%>>
		<label for="EPQ30402160">No, I have had none of these problems</label><br>

</span>
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
