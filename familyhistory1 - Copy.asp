
<%

Session("FamilyHistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30901010")="1" then
		strEPQ30901010answer1="checked"
	end if
	if Session("EPQ30901020")="1" then
		strEPQ30901020answer1="checked"
	end if
	if Session("EPQ30901030")="1" then
		strEPQ30901030answer1="checked"
	end if
	if Session("EPQ30901040")="1" then
		strEPQ30901040answer1="checked"
	end if
	if Session("EPQ30901050")="1" then
		strEPQ30901050answer1="checked"
	end if
	if Session("EPQ30901060")="1" then
		strEPQ30901060answer1="checked"
	end if
	if Session("EPQ30901070")="1" then
		strEPQ30901070answer1="checked"
	end if
	if Session("EPQ30901080")="1" then
		strEPQ30901080answer1="checked"
	end if
	if Session("EPQ30901090")="1" then
		strEPQ30901090answer1="checked"
	end if
	if Session("EPQ30901100")="1" then
		strEPQ30901100answer1="checked"
	end if
	if Session("EPQ30901110")="1" then
		strEPQ30901110answer1="checked"
	end if
	if Session("EPQ30901120")="0" then
		strEPQ30901120answer1="checked"
	end if

	if Session("EPQ30901120")="77" then
		strEPQ30901120answer2="checked"
	end if

	if Session("EPQ30901130")="1" then
		strEPQ30901130answer1="checked"
	end if
	if Session("EPQ30901140")="1" then
		strEPQ30901140answer1="checked"
	end if
	if Session("EPQ30901150")="1" then
		strEPQ30901150answer1="checked"
	end if
	if Session("EPQ30901160")="1" then
		strEPQ30901160answer1="checked"
	end if
	if Session("EPQ30901170")="1" then
		strEPQ30901170answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30901010") = Request.Form("EPQ30901010")
	Session("EPQ30901020") = Request.Form("EPQ30901020")
	Session("EPQ30901030") = Request.Form("EPQ30901030")
	Session("EPQ30901040") = Request.Form("EPQ30901040")
	Session("EPQ30901050") = Request.Form("EPQ30901050")
	Session("EPQ30901060") = Request.Form("EPQ30901060")
	Session("EPQ30901070") = Request.Form("EPQ30901070")
	Session("EPQ30901080") = Request.Form("EPQ30901080")
	Session("EPQ30901090") = Request.Form("EPQ30901090")
	Session("EPQ30901100") = Request.Form("EPQ30901100")
	Session("EPQ30901110") = Request.Form("EPQ30901110")
	Session("EPQ30901120") = Request.Form("EPQ30901120")
	Session("EPQ30901130") = Request.Form("EPQ30901130")
	Session("EPQ30901140") = Request.Form("EPQ30901140")
	Session("EPQ30901150") = Request.Form("EPQ30901150")
	Session("EPQ30901160") = Request.Form("EPQ30901160")
	Session("EPQ30901170") = Request.Form("EPQ30901170")
	Session("EPQ30901180") = Request.Form("EPQ30901180")



	
end if

if Request.Form("StopID")="1" then
		Session("FamilyHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	Session("FamilyHistorySectionStatus")="Incomplete"
	Session("ReturnID")="1"
	Session("FamilyHistoryCancerSectionStatus")=""
	Session("Page")=8
	Response.Redirect "familyhistorycancermaster.asp"
end if



if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30901010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30901120")="0" then

		Session.Contents.Remove("EPQ30901040")
		Session.Contents.Remove("EPQ30905010")
		Session.Contents.Remove("EPQ30905020")
		Session.Contents.Remove("EPQ30905030")
		Session.Contents.Remove("EPQ30905040")
		Session.Contents.Remove("EPQ30905050")

		Session.Contents.Remove("EPQ30901090")
		Session.Contents.Remove("EPQ30910010")
		Session.Contents.Remove("EPQ30910020")
		Session.Contents.Remove("EPQ30910030")
		Session.Contents.Remove("EPQ30910040")
		Session.Contents.Remove("EPQ30910050")

		Session.Contents.Remove("EPQ30901140")
		Session.Contents.Remove("EPQ30915010")
		Session.Contents.Remove("EPQ30915020")
		Session.Contents.Remove("EPQ30915030")
		Session.Contents.Remove("EPQ30915040")
		Session.Contents.Remove("EPQ30915050")

		Session.Contents.Remove("EPQ30901150")
		Session.Contents.Remove("EPQ30916010")
		Session.Contents.Remove("EPQ30916020")
		Session.Contents.Remove("EPQ30916030")
		Session.Contents.Remove("EPQ30916040")
		Session.Contents.Remove("EPQ30916050")

		Session.Contents.Remove("EPQ30901100")
		Session.Contents.Remove("EPQ30911010")
		Session.Contents.Remove("EPQ30911020")
		Session.Contents.Remove("EPQ30911030")
		Session.Contents.Remove("EPQ30911040")
		Session.Contents.Remove("EPQ30911050")

		Session.Contents.Remove("EPQ30901060")
		Session.Contents.Remove("EPQ30907010")
		Session.Contents.Remove("EPQ30907020")
		Session.Contents.Remove("EPQ30907030")
		Session.Contents.Remove("EPQ30907040")
		Session.Contents.Remove("EPQ30907050")

		Session.Contents.Remove("EPQ30901070")
		Session.Contents.Remove("EPQ30909010")
		Session.Contents.Remove("EPQ30909020")
		Session.Contents.Remove("EPQ30909030")
		Session.Contents.Remove("EPQ30909040")
		Session.Contents.Remove("EPQ30909050")

		Session.Contents.Remove("EPQ30901020")
		Session.Contents.Remove("EPQ30903010")
		Session.Contents.Remove("EPQ30903020")
		Session.Contents.Remove("EPQ30903030")
		Session.Contents.Remove("EPQ30903040")
		Session.Contents.Remove("EPQ30903050")

		Session.Contents.Remove("EPQ30901080")
		Session.Contents.Remove("EPQ30908010")
		Session.Contents.Remove("EPQ30908020")
		Session.Contents.Remove("EPQ30908030")
		Session.Contents.Remove("EPQ30908040")
		Session.Contents.Remove("EPQ30908050")

		Session.Contents.Remove("EPQ30901050")
		Session.Contents.Remove("EPQ30906010")
		Session.Contents.Remove("EPQ30906020")
		Session.Contents.Remove("EPQ30906030")
		Session.Contents.Remove("EPQ30906040")
		Session.Contents.Remove("EPQ30906050")

		Session.Contents.Remove("EPQ30901010")
		Session.Contents.Remove("EPQ30902010")
		Session.Contents.Remove("EPQ30902020")
		Session.Contents.Remove("EPQ30902030")
		Session.Contents.Remove("EPQ30902040")
		Session.Contents.Remove("EPQ30902050")

		Session.Contents.Remove("EPQ30901160")
		Session.Contents.Remove("EPQ30917010")
		Session.Contents.Remove("EPQ30917020")
		Session.Contents.Remove("EPQ30917030")
		Session.Contents.Remove("EPQ30917040")
		Session.Contents.Remove("EPQ30917050")

		Session.Contents.Remove("EPQ30901110")
		Session.Contents.Remove("EPQ30912010")
		Session.Contents.Remove("EPQ30912020")
		Session.Contents.Remove("EPQ30912030")
		Session.Contents.Remove("EPQ30912040")
		Session.Contents.Remove("EPQ30912050")

		Session.Contents.Remove("EPQ30901130")
		Session.Contents.Remove("EPQ30914010")
		Session.Contents.Remove("EPQ30914020")
		Session.Contents.Remove("EPQ30914030")
		Session.Contents.Remove("EPQ30914040")
		Session.Contents.Remove("EPQ30914050")

		Session.Contents.Remove("EPQ30901030")
		Session.Contents.Remove("EPQ30904010")
		Session.Contents.Remove("EPQ30904020")
		Session.Contents.Remove("EPQ30904030")
		Session.Contents.Remove("EPQ30904040")
		Session.Contents.Remove("EPQ30904050")

		Session.Contents.Remove("EPQ30901170")
		Session.Contents.Remove("EPQ30918010")
		Session.Contents.Remove("EPQ30918020")
		Session.Contents.Remove("EPQ30918030")
		Session.Contents.Remove("EPQ30918040")
		Session.Contents.Remove("EPQ30918050")

	end if

	if Session("EPQ30901120")="0" then

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
if Session("GI10202000")="1" then 
	Session("Page")="4"
	Response.Redirect "familyhistorymaster.asp"
else
if Session("GI10201000")="1" then 
	Session("Page")="5"
	Response.Redirect "familyhistorymaster.asp"
else
	Session("Page")="0"
	Response.Redirect "familyhistorymaster.asp"
end if
end if
end if
end if



	Session("FamilyHistorySectionStatus")="Completed"
	Session("Page")="0"
	Response.Redirect "familyhistorymaster.asp"
	end if

Session("EPQ30901040Page1")=0
Session("EPQ30901040Page2")=0
Session("EPQ30901040Page3")=0
Session("EPQ30901090Page1")=0
Session("EPQ30901090Page2")=0
Session("EPQ30901090Page3")=0
Session("EPQ30901140Page1")=0
Session("EPQ30901140Page2")=0
Session("EPQ30901140Page3")=0
Session("EPQ30901150Page1")=0
Session("EPQ30901150Page2")=0
Session("EPQ30901150Page3")=0
Session("EPQ30901100Page1")=0
Session("EPQ30901100Page2")=0
Session("EPQ30901100Page3")=0
Session("EPQ30901060Page1")=0
Session("EPQ30901060Page2")=0
Session("EPQ30901060Page3")=0
Session("EPQ30901070Page1")=0
Session("EPQ30901070Page2")=0
Session("EPQ30901070Page3")=0
Session("EPQ30901020Page1")=0
Session("EPQ30901020Page2")=0
Session("EPQ30901020Page3")=0
Session("EPQ30901080Page1")=0
Session("EPQ30901080Page2")=0
Session("EPQ30901080Page3")=0
Session("EPQ30901050Page1")=0
Session("EPQ30901050Page2")=0
Session("EPQ30901050Page3")=0
Session("EPQ30901010Page1")=0
Session("EPQ30901010Page2")=0
Session("EPQ30901010Page3")=0
Session("EPQ30901160Page1")=0
Session("EPQ30901160Page2")=0
Session("EPQ30901160Page3")=0
Session("EPQ30901110Page1")=0
Session("EPQ30901110Page2")=0
Session("EPQ30901110Page3")=0
Session("EPQ30901130Page1")=0
Session("EPQ30901130Page2")=0
Session("EPQ30901130Page3")=0
Session("EPQ30901170Page1")=0
Session("EPQ30901170Page2")=0
Session("EPQ30901170Page3")=0
Session("EPQ30901030Page1")=0
Session("EPQ30901030Page2")=0
Session("EPQ30901030Page3")=0

dim FHDisplayCounter
FHDisplayCounter=0


if Session("EPQ30901040") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901040Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901040Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901040Page3")=1
	end if 

else 
	if Session("EPQ30901040")<>"1" then

		Session.Contents.Remove("EPQ30905010")
		Session.Contents.Remove("EPQ30905020")
		Session.Contents.Remove("EPQ30905030")
		Session.Contents.Remove("EPQ30905040")
		Session.Contents.Remove("EPQ30905050")

	end if
end if
if Session("EPQ30901090") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901090Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901090Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901090Page3")=1
	end if 
else 
	if Session("EPQ30901090")<>"1" then

		Session.Contents.Remove("EPQ30910010")
		Session.Contents.Remove("EPQ30910020")
		Session.Contents.Remove("EPQ30910030")
		Session.Contents.Remove("EPQ30910040")
		Session.Contents.Remove("EPQ30910050")

	end if
end if
if Session("EPQ30901140") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901140Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901140Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901140Page3")=1
	end if 


else 
	if Session("EPQ30901140")<>"1" then

		Session.Contents.Remove("EPQ30915010")
		Session.Contents.Remove("EPQ30915020")
		Session.Contents.Remove("EPQ30915030")
		Session.Contents.Remove("EPQ30915040")
		Session.Contents.Remove("EPQ30915050")

	end if
end if
if Session("EPQ30901150") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901150Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901150Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901150Page3")=1
	end if 
else 
	if Session("EPQ30901150")<>"1" then

		Session.Contents.Remove("EPQ30916010")
		Session.Contents.Remove("EPQ30916020")
		Session.Contents.Remove("EPQ30916030")
		Session.Contents.Remove("EPQ30916040")
		Session.Contents.Remove("EPQ30916050")

	end if

end if
if Session("EPQ30901100") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901100Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901100Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901100Page3")=1
	end if 
else 
	if Session("EPQ30901100")<>"1" then

		Session.Contents.Remove("EPQ30911010")
		Session.Contents.Remove("EPQ30911020")
		Session.Contents.Remove("EPQ30911030")
		Session.Contents.Remove("EPQ30911040")
		Session.Contents.Remove("EPQ30911050")

	end if

end if
if Session("EPQ30901060") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901060Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901060Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901060Page3")=1
	end if 

else 
	if Session("EPQ30901060")<>"1" then

		Session.Contents.Remove("EPQ30907010")
		Session.Contents.Remove("EPQ30907020")
		Session.Contents.Remove("EPQ30907030")
		Session.Contents.Remove("EPQ30907040")
		Session.Contents.Remove("EPQ30907050")

	end if 
end if
if Session("EPQ30901070") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901070Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901070Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901070Page3")=1
	end if 

else 
	if Session("EPQ30901070")<>"1" then

		Session.Contents.Remove("EPQ30909010")
		Session.Contents.Remove("EPQ30909020")
		Session.Contents.Remove("EPQ30909030")
		Session.Contents.Remove("EPQ30909040")
		Session.Contents.Remove("EPQ30909050")

	end if
end if
if Session("EPQ30901020") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901020Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901020Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901020Page3")=1
	end if 

else 
	if Session("EPQ30901020")<>"1" then

		Session.Contents.Remove("EPQ30903010")
		Session.Contents.Remove("EPQ30903020")
		Session.Contents.Remove("EPQ30903030")
		Session.Contents.Remove("EPQ30903040")
		Session.Contents.Remove("EPQ30903050")

	end if
end if
if Session("EPQ30901080") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901080Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901080Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901080Page3")=1
	end if 

else 
	if Session("EPQ30901080")<>"1" then

		Session.Contents.Remove("EPQ30908010")
		Session.Contents.Remove("EPQ30908020")
		Session.Contents.Remove("EPQ30908030")
		Session.Contents.Remove("EPQ30908040")
		Session.Contents.Remove("EPQ30908050")

	end if
end if
if Session("EPQ30901050") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901050Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901050Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901050Page3")=1
	end if 

else 
	if Session("EPQ30901050")<>"1" then

		Session.Contents.Remove("EPQ30906010")
		Session.Contents.Remove("EPQ30906020")
		Session.Contents.Remove("EPQ30906030")
		Session.Contents.Remove("EPQ30906040")
		Session.Contents.Remove("EPQ30906050")

	end if
end if
if Session("EPQ30901010") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901010Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901010Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901010Page3")=1
	end if 

else 
	if Session("EPQ30901010")<>"1" then

		Session.Contents.Remove("EPQ30902010")
		Session.Contents.Remove("EPQ30902020")
		Session.Contents.Remove("EPQ30902030")
		Session.Contents.Remove("EPQ30902040")
		Session.Contents.Remove("EPQ30902050")

	end if
end if
if Session("EPQ30901160") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901160Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901160Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901160Page3")=1
	end if 

else 
	if Session("EPQ30901160")<>"1" then

		Session.Contents.Remove("EPQ30917010")
		Session.Contents.Remove("EPQ30917020")
		Session.Contents.Remove("EPQ30917030")
		Session.Contents.Remove("EPQ30917040")
		Session.Contents.Remove("EPQ30917050")

	end if
end if
if Session("EPQ30901110") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901110Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901110Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901110Page3")=1
	end if 

else 
	if Session("EPQ30901110")<>"1" then

		Session.Contents.Remove("EPQ30912010")
		Session.Contents.Remove("EPQ30912020")
		Session.Contents.Remove("EPQ30912030")
		Session.Contents.Remove("EPQ30912040")
		Session.Contents.Remove("EPQ30912050")

	end if
end if
if Session("EPQ30901130") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901130Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901130Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901130Page3")=1
	end if 

else 
	if Session("EPQ30901130")<>"1" then

		Session.Contents.Remove("EPQ30914010")
		Session.Contents.Remove("EPQ30914020")
		Session.Contents.Remove("EPQ30914030")
		Session.Contents.Remove("EPQ30914040")
		Session.Contents.Remove("EPQ30914050")

	end if
end if
if Session("EPQ30901030") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901030Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901030Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901030Page3")=1
	end if 

else 
	if Session("EPQ30901030")<>"1" then

		Session.Contents.Remove("EPQ30904010")
		Session.Contents.Remove("EPQ30904020")
		Session.Contents.Remove("EPQ30904030")
		Session.Contents.Remove("EPQ30904040")
		Session.Contents.Remove("EPQ30904050")

	end if
end if
if Session("EPQ30901170") ="1" then
	if FHDisplayCounter < 7 then 
	Session("EPQ30901170Page1")=1
	FHDisplayCounter=FHDisplayCounter+1
	else
	if FHDisplayCounter < 14 then 
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901170Page2")=1
	else
	FHDisplayCounter=FHDisplayCounter+1
	Session("EPQ30901170Page3")=1
	end if 

else 
	if Session("EPQ30901170")<>"1" then

		Session.Contents.Remove("EPQ30918010")
		Session.Contents.Remove("EPQ30918020")
		Session.Contents.Remove("EPQ30918030")
		Session.Contents.Remove("EPQ30918040")
		Session.Contents.Remove("EPQ30918050")

	end if 
end if

Session("FHDisplayCounter")=FHDisplayCounter

	if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090") OR Session("EPQ30901140") OR Session("EPQ30901150") OR Session("EPQ30901100") OR Session("EPQ30901060") OR Session("EPQ30901070") OR Session("EPQ30901020") OR Session("EPQ30901170") then
	Session("Page")="2"
	else

	Session("FamilyHistorySectionStatus")="Completed"
	Session("Page")="0"
	end if



	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"
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
It is very important that we know additional information about your biological relatives who were diagnosed with chronic health problems.  Please note that in this section we are referring to only your blood-related (biological) relatives.
</div>
<br>
    <form action="familyhistory1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
	<fieldset class="eitherNoneDontKnowOrChecked">
  <legend class="QuestionBox">
Other than the cancer diagnoses that you may have already reported, have any of your parents, siblings or children related to you by blood had chronic health problems or died from the following? Check all that apply.
<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30901040" value="1" id="EPQ30901040" <%=strEPQ30901040answer1%>>
		<label for="EPQ30901040">Alzheimer's disease</label><br>
		<input type="checkbox" name="EPQ30901090" value="1" id="EPQ30901090" <%=strEPQ30901090answer1%>>
		<label for="EPQ30901090">Anemia</label><br>
		<input type="checkbox" name="EPQ30901150" value="1" id="EPQ30901150" <%=strEPQ30901150answer1%>>
		<label for="EPQ30901150">Arthritis</label><br>

		<input type="checkbox" name="EPQ30901140" value="1" id="EPQ30901140" <%=strEPQ30901140answer1%>>
		<label for="EPQ30901140">Asthma</label><br>
		<input type="checkbox" name="EPQ30901100" value="1" id="EPQ30901100" <%=strEPQ30901100answer1%>>
		<label for="EPQ30901100">Bleeding tendency</label><br>

		<input type="checkbox" name="EPQ30901060" value="1" id="EPQ30901060" <%=strEPQ30901060answer1%>>
		<label for="EPQ30901060">Chronic liver disease or hepatitis</label><br>

		<input type="checkbox" name="EPQ30901070" value="1" id="EPQ30901070" <%=strEPQ30901070answer1%>>
		<label for="EPQ30901070">Chronic respiratory disease <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(emphysema, chronic bronchitis, COPD)</label><br>
		<input type="checkbox" name="EPQ30901020" value="1" id="EPQ30901020" <%=strEPQ30901020answer1%>>
		<label for="EPQ30901020">Diabetes</label><br>
<br>
<br>
<input type="radio" name="EPQ30901120" value="77" id="EPQ30901120" <%=strEPQ30901120answer2%>>
		<label for="EPQ30901120">Don’t know medical history of <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;my immediate blood-related relatives </label><br>
<br>
		<input type="radio" name="EPQ30901120" value="0" id="EPQ30901120" <%=strEPQ30901120answer1%>>
		<label for="TEMPEPQ30901120">No</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30901080" value="1" id="EPQ30901080" <%=strEPQ30901080answer1%>>
		<label for="EPQ30901080">Drug or alcohol abuse</label><br>

		<input type="checkbox" name="EPQ30901050" value="1" id="EPQ30901050" <%=strEPQ30901050answer1%>>
		<label for="EPQ30901050">Heart disease (includes heart attack)</label><br>

		<input type="checkbox" name="EPQ30901010" value="1" id="EPQ30901010" <%=strEPQ30901010answer1%>>
		<label for="EPQ30901010">High blood pressure (hypertension)</label><br>

		<input type="checkbox" name="EPQ30901160" value="1" id="EPQ30901160" <%=strEPQ30901160answer1%>>
		<label for="EPQ30901160">High cholesterol</label><br>

		<input type="checkbox" name="EPQ30901110" value="1" id="EPQ30901110" <%=strEPQ30901110answer1%>>
		<label for="EPQ30901110">Neurological or mental disorder</label><br>

		<input type="checkbox" name="EPQ30901130" value="1" id="EPQ30901130" <%=strEPQ30901130answer1%>>
		<label for="EPQ30901130">Pneumonia</label><br>

		<input type="checkbox" name="EPQ30901030" value="1" id="EPQ30901030" <%=strEPQ30901030answer1%>>
		<label for="EPQ30901030">Stroke or cerebrovascular disease</label><br>

		<input type="checkbox" name="EPQ30901170" value="1" id="EPQ30901170" <%=strEPQ30901170answer1%>>
		<label for="EPQ30901170">Other, specify:</label>
    <input id="EPQ30901180" type="text" maxlength="20" size="15" name="EPQ30901180" class="requiredIfPreviousCheckbox"  value='<%=Session("EPQ30901180")%>' ><br>

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
