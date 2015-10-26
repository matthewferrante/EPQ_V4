<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("CUTA10801000")="1" then
		strCUTA10801000answer1="checked"
	end if

	if Session("HM10801000")="1" then
		strHM10801000answer1="checked"
	end if

	if Session("EPQ30820010")="1" then
		strEPQ30820010answer1="checked"
	end if
	if Session("EPQ30820020")="1" then
		strEPQ30820020answer1="checked"
	end if
	if Session("EPQ30820030")="1" then
		strEPQ30820030answer1="checked"
	end if
	if Session("EPQ30820040")="1" then
		strEPQ30820040answer1="checked"
	end if
	if Session("EPQ30820050")="1" then
		strEPQ30820050answer1="checked"
	end if
	if Session("EPQ30820060")="1" then
		strEPQ30820060answer1="checked"
	end if
	if Session("EPQ30820070")="1" then
		strEPQ30820070answer1="checked"
	end if
	if Session("EPQ30820080")="1" then
		strEPQ30820080answer1="checked"
	end if
	if Session("EPQ30820090")="1" then
		strEPQ30820090answer1="checked"
	end if
	if Session("EPQ30820100")="1" then
		strEPQ30820100answer1="checked"
	end if
	if Session("EPQ30820110")="1" then
		strEPQ30820110answer1="checked"
	end if

end if

if Request.Form("ispostback")="1" then

	Session("CUTA10801000")= Request.Form("CUTA10801000")
	Session("HM10801000")= Request.Form("HM10801000")

	Session("EPQ30820010")= Request.Form("EPQ30820010")
	Session("TEMPEPQ30820010")= Request.Form("TEMPEPQ30820010")
	Session("EPQ30820020")= Request.Form("EPQ30820020")
	Session("EPQ30820030")= Request.Form("EPQ30820030")
	Session("EPQ30820040")= Request.Form("EPQ30820040")
	Session("EPQ30820050")= Request.Form("EPQ30820050")
	Session("EPQ30820060")= Request.Form("EPQ30820060")
	Session("EPQ30820070")= Request.Form("EPQ30820070")
	Session("EPQ30820080")= Request.Form("EPQ30820080")
	Session("EPQ30820090")= Request.Form("EPQ30820090")
	Session("TEMP1EPQ30820090")= Request.Form("TEMP1EPQ30820090")
	Session("TEMP2EPQ30820090")= Request.Form("TEMP2EPQ30820090")
	Session("EPQ30820100")= Request.Form("EPQ30820100")
	Session("EPQ30820110")= Request.Form("EPQ30820110")
	Session("TEMPEPQ30341000")= Request.Form("TEMPEPQ30341000")

	Session("TEMP1EPQ30820100")= Request.Form("TEMP1EPQ30820100")
	Session("TEMP2EPQ30820100")= Request.Form("TEMP2EPQ30820100")
	Session("TEMP2EPQ30341000")= Request.Form("TEMP2EPQ30341000")
	Session("TEMP3EPQ30341000")= Request.Form("TEMP3EPQ30341000")


	if Session("CUTA30801000") = "1" then 
		Session("CUTA30801000string")= "Skin cancer (includes basal, squamous, but not melanoma)"
	else
	Session("CUTA30801000") = "0"
	end if

	if Session("EPQ30820010") = "1" then 
		Session("EPQ30820010string")= "Breast cancer"
	else
	Session("EPQ30820010") = "0"
	end if
	if Session("EPQ30820020") = "1" then 
		Session("EPQ30820020string")= "Colon and rectal cancer"
	else
	Session("EPQ30820020") = "0"
	end if
	if Session("EPQ30820030") = "1" then 
		Session("EPQ30820030string")= "Renal cancer"
	else
	Session("EPQ30820030") = "0"
	end if
	if Session("EPQ30820040") = "1" then 
		Session("EPQ30820040string")= "Leukemia"
	else
	Session("EPQ30820040") = "0"
	end if
	if Session("EPQ30820050") = "1" then 
		Session("EPQ30820050string")= "Lung cancer"
	else
	Session("EPQ30820050") = "0"
	end if
	if Session("EPQ30820060") = "1" then 
		Session("EPQ30820060string")= "Melanoma cancer"
	else
	Session("EPQ30820060") = "0"
	end if

	if Session("HM10801000") = "1" then 
		Session("HM10801000string")= "Multiple myeloma or plasma cell tumor"
	else
	Session("HM10801000") = "0"
	end if

	if Session("EPQ30820070") = "1" then 
		Session("EPQ30820070string")= "Pancreatic cancer"
	else
	Session("EPQ30820070") = "0"
	end if
	if Session("EPQ30820080") = "1" then 
		Session("EPQ30820080string")= "Prostate cancer"
	else
	Session("EPQ30820080") = "0"
	end if
	if Session("EPQ30820090") = "1" then 
		Session("EPQ30820090string")= "Thyroid cancer"
	else
	Session("EPQ30820090") = "0"
	end if
	if Session("EPQ30820100") = "1" then 
		Session("EPQ30820100string")= "Other"
	else
	Session("EPQ30820100") = "0"
	end if
	if Session("EPQ30820110") = "1" then 
		Session("EPQ30820110string")= "Oral cancer"
	else
	Session("EPQ30820110") = "0"
	end if

end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("TEMPEPQ31140080")="1" OR Session("TEMPEPQ31140060")="1" OR Session("TEMPEPQ31140010")="1" OR Session("TEMPEPQ31140100")="1" then

		Session("ReturnID")="1"
		Session("Page")=3
else
		Session("ReturnID")="1"
		Session("Page")=2
end if
		Response.Redirect "familyhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30820010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

Session("EPQ30820010Page1") =0
Session("EPQ30820010Page2") =0
Session("TEMPEPQ30820010Page1") =0
Session("TEMPEPQ30820010Page2") =0
Session("EPQ30820020Page1") =0
Session("EPQ30820020Page2") =0
Session("EPQ30820030Page1") =0
Session("EPQ30820030Page2") =0
Session("EPQ30820040Page1") =0
Session("EPQ30820040Page2") =0
Session("EPQ30820050Page1") =0
Session("EPQ30820050Page2") =0
Session("EPQ30820060Page1") =0
Session("EPQ30820060Page2") =0
Session("CUTA10801000Page1") =0
Session("CUTA10801000Page2") =0
Session("HM10801000Page1") =0
Session("HM10801000Page2") =0
Session("EPQ30820070Page1") =0
Session("EPQ30820070Page2") =0
Session("EPQ30820080Page1") =0
Session("EPQ30820080Page2") =0
Session("EPQ30820090Page1") =0
Session("EPQ30820090Page2") =0
Session("EPQ30820100Page1") =0
Session("EPQ30820100Page2") =0
Session("EPQ30820110Page1") =0
Session("EPQ30820110Page2") =0

Session("TEMP1EPQ30820090Page1") =0
Session("TEMP1EPQ30820090Page2") =0
Session("TEMP1EPQ30820100Page1") =0
Session("TEMP1EPQ30820100Page2") =0
Session("TEMP2EPQ30820090Page1") =0
Session("TEMP2EPQ30820090Page2") =0
Session("TEMP2EPQ30820100Page1") =0
Session("TEMP2EPQ30820100Page2") =0



dim FHCDisplayCounter
FHCDisplayCounter=0

if Session("EPQ30820010") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820010Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820010Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMPEPQ30820010") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("TEMPEPQ30820010Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("TEMPEPQ30820010Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30820020") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820020Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820020Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30820030") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820030Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820030Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30820040") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820040Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820040Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30820050") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820050Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820050Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30820060") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820060Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820060Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("CUTA10801000") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("CUTA10801000Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("CUTA10801000Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("HM10801000") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("HM10801000Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("HM108010000Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30820110") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820110Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820110Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30820070") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820070Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820070Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30820080") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820080Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820080Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30820090") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820090Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820090Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("TEMP1EPQ30820090") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("TEMP1EPQ30820090Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("TEMP1EPQ30820090Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMP2EPQ30820090") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("TEMP2EPQ30820090Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("TEMP2EPQ30820090Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30820100") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("EPQ30820100Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("EPQ30820100Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if


if Session("TEMP1EPQ30820100") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("TEMP1EPQ30820100Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("TEMP1EPQ30820100Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMP2EPQ30820100") ="1" then
	if FHCDisplayCounter < 9 then 
	Session("TEMP2EPQ30820100Page1")=1
	FHCDisplayCounter=FHCDisplayCounter+1
	else
		if FHCDisplayCounter < 18 then 
		Session("TEMP2EPQ30820100Page2")=1
		FHCDisplayCounter=FHCDisplayCounter+1
		end if 
	end if
else 
end if

Session("FHCDisplayCounter")=FHCDisplayCounter

	if Session("EPQ30805010")="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805020")="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805070")="1" then
	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


if Session("EPQ30820010")<>"1" then
	Session.Contents.Remove("EPQ30821010")
	Session.Contents.Remove("EPQ30821020")
	Session.Contents.Remove("EPQ30821030")
	Session.Contents.Remove("EPQ30821040")
end if
if Session("TEMPEPQ30820010")<>"1" then
	Session.Contents.Remove("TEMPEPQ30821010")
	Session.Contents.Remove("TEMPEPQ30821020")
	Session.Contents.Remove("TEMPEPQ30821030")
	Session.Contents.Remove("TEMPEPQ30821040")
end if
if Session("EPQ30820020")<>"1" then
	Session.Contents.Remove("EPQ30822010")
	Session.Contents.Remove("EPQ30822020")
	Session.Contents.Remove("EPQ30822030")
	Session.Contents.Remove("EPQ30822040")
end if
if Session("EPQ30820030")<>"1" then
	Session.Contents.Remove("EPQ30825010")
	Session.Contents.Remove("EPQ30825020")
	Session.Contents.Remove("EPQ30825030")
	Session.Contents.Remove("EPQ30825040")
end if
if Session("EPQ30820040")<>"1" then
	Session.Contents.Remove("EPQ30826010")
	Session.Contents.Remove("EPQ30826020")
	Session.Contents.Remove("EPQ30826030")
	Session.Contents.Remove("EPQ30826040")
end if
if Session("EPQ30820050")<>"1" then
	Session.Contents.Remove("EPQ30824010")
	Session.Contents.Remove("EPQ30824020")
	Session.Contents.Remove("EPQ30824030")
	Session.Contents.Remove("EPQ30824040")
end if
if Session("EPQ30820060")<>"1" then
	Session.Contents.Remove("EPQ30823010")
	Session.Contents.Remove("EPQ30823020")
	Session.Contents.Remove("EPQ30823030")
	Session.Contents.Remove("EPQ30823040")
end if
if Session("CUTA10801000")<>"1" then
	Session.Contents.Remove("CUTA10802010")
	Session.Contents.Remove("CUTA10802020")
	Session.Contents.Remove("CUTA10802030")
	Session.Contents.Remove("CUTA10802040")
end if
if Session("HM10801000")<>"1" then
	Session.Contents.Remove("HM10803000")
	Session.Contents.Remove("HM10804000")
	Session.Contents.Remove("HM10805000")
	Session.Contents.Remove("HM10806000")
end if
if Session("EPQ30820110")<>"1" then
	Session.Contents.Remove("EPQ30831010")
	Session.Contents.Remove("EPQ30831020")
	Session.Contents.Remove("EPQ30831030")
	Session.Contents.Remove("EPQ30831040")
end if
if Session("EPQ30820070")<>"1" then
	Session.Contents.Remove("EPQ30827010")
	Session.Contents.Remove("EPQ30827020")
	Session.Contents.Remove("EPQ30827030")
	Session.Contents.Remove("EPQ30827040")
end if
if Session("EPQ30820080")<>"1" then
	Session.Contents.Remove("EPQ30829010")
	Session.Contents.Remove("EPQ30829020")
	Session.Contents.Remove("EPQ30829030")
	Session.Contents.Remove("EPQ30829040")
end if
if Session("EPQ30820090")<>"1" then
	Session.Contents.Remove("EPQ30828010")
	Session.Contents.Remove("EPQ30828020")
	Session.Contents.Remove("EPQ30828030")
	Session.Contents.Remove("EPQ30828040")
end if
if Session("TEMP1EPQ30820090")<>"1" then
	Session.Contents.Remove("TEMP1EPQ30828010")
	Session.Contents.Remove("TEMP1EPQ30828020")
	Session.Contents.Remove("TEMP1EPQ30828030")
	Session.Contents.Remove("TEMP1EPQ30828040")
end if
if Session("TEMP2EPQ30820090")<>"1" then
	Session.Contents.Remove("TEMP2EPQ30828010")
	Session.Contents.Remove("TEMP2EPQ30828020")
	Session.Contents.Remove("TEMP2EPQ30828030")
	Session.Contents.Remove("TEMP2EPQ30828040")
end if
if Session("EPQ30820100")<>"1" then
	Session.Contents.Remove("EPQ30830010")
	Session.Contents.Remove("EPQ30830020")
	Session.Contents.Remove("EPQ30830030")
	Session.Contents.Remove("EPQ30830040")
end if
if Session("TEMP1EPQ30820100")<>"1" then
	Session.Contents.Remove("TEMP1EPQ30830010")
	Session.Contents.Remove("TEMP1EPQ30830020")
	Session.Contents.Remove("TEMP1EPQ30830030")
	Session.Contents.Remove("TEMP1EPQ30830040")
end if
if Session("TEMP2EPQ30820100")<>"1" then
	Session.Contents.Remove("TEMP2EPQ30830010")
	Session.Contents.Remove("TEMP2EPQ30830020")
	Session.Contents.Remove("TEMP2EPQ30830030")
	Session.Contents.Remove("TEMP2EPQ30830040")
end if

	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
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
    <form action="familyhistorycancer4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
What type of cancer did your father, brothers, or sons have? Check all that apply.
<br>
	</legend>
	<div class="QuestionAnswersBox">

		<input type="checkbox" name="TEMPEPQ30820010" class="atLeastOneCheckboxRequired" value="1" 
id="TEMPEPQ30820010" <%=strTEMPEPQ30820010answer1%>>
		<label for="EPQ30820010">Brain cancer</label><br>


		<input type="checkbox" name="EPQ30820010" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820010" <%=strEPQ30820010answer1%>>
		<label for="EPQ30820010">Breast cancer</label><br>

		<input type="checkbox" name="EPQ30820020" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820020" <%=strEPQ30820020answer1%>>
		<label for="EPQ30820020">Colon or rectal cancer</label><br>

		<input type="checkbox" name="EPQ30820030" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820030" <%=strEPQ30820030answer1%>>
		<label for="EPQ30820030">Kidney (renal cell) cancer</label><br>

		<input type="checkbox" name="EPQ30820040" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820040" <%=strEPQ30820040answer1%>>
		<label for="EPQ30820040">Leukemia</label><br>

		<input type="checkbox" name="EPQ30820050" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820050" <%=strEPQ30820050answer1%>>
		<label for="EPQ30820050">Lung cancer</label><br>

		<input type="checkbox" name="EPQ30820060" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820060" <%=strEPQ30820060answer1%>>
		<label for="EPQ30820060">Melanoma</label><br>

<%
if Session("HM10204000")="1" then
%>
		<input type="checkbox" name="HM10801000" class="atLeastOneCheckboxRequired" value="1" 
id="HM10801000" <%=strHM10801000answer1%>>
		<label for="HM10801000">Multiple myeloma or plasma cell tumor</label><br>
<%
end if
%>
	

<%
if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
%>
		<input type="checkbox" name="CUTA10801000" class="atLeastOneCheckboxRequired" value="1" 
id="CUTA10801000" <%=strCUTA10801000answer1%>>
		<label for="CUTA10801000">Non-melanoma skin cancer (includes basal, squamous, but not melanoma)</label><br>
<%
end if
end if
%>

		<input type="checkbox" name="EPQ30820070" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820070" <%=strEPQ30820070answer1%>>
		<label for="EPQ30820070">Pancreatic cancer</label><br>

		<input type="checkbox" name="EPQ30820080" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820080" <%=strEPQ30820080answer1%>>
		<label for="EPQ30820080">Prostate cancer</label><br>

		<input type="checkbox" name="TEMP1EPQ30820090" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP1EPQ30820090" <%=strTEMP1EPQ30820090answer1%>>
		<label for="TEMP1EPQ30820090">Sarcoma</label><br>

		<input type="checkbox" name="TEMP2EPQ30820090" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP2EPQ30820090" <%=strTEMP2EPQ30820090answer1%>>
		<label for="TEMP2EPQ30820090">Stomach (gastric) cancer</label><br>


		<input type="checkbox" name="EPQ30820090" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820090" <%=strEPQ30820090answer1%>>
		<label for="EPQ30820090">Thyroid cancer</label><br>

		<input type="checkbox" name="EPQ30820100" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30820100" <%=strEPQ30820100answer1%>>
		<label for="EPQ30820100">A type of cancer not listed above</label>
<input id="TEMPEPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMPEPQ30341000" value='<%=Session("TEMPEPQ30341000")%>' > <br>

		<input type="checkbox" name="TEMP1EPQ30820100" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP1EPQ30820100" <%=strTEMP1EPQ30820100answer1%>>
		<label for="EPQ30820100">A type of cancer not listed above</label>
<input id="TEMP2EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMP2EPQ30341000" value='<%=Session("TEMP2EPQ30341000")%>' > <br>

		<input type="checkbox" name="TEMP2EPQ30820100" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP2EPQ30820100" <%=strTEMP2EPQ30820100answer1%>>
		<label for="TEMP2EPQ30820100">A type of cancer not listed above</label>
<input id="TEMP3EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMP3EPQ30341000" value='<%=Session("TEMP2EPQ30341000")%>' > 
<br>

<br>


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
