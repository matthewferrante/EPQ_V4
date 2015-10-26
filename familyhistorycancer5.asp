
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("CUTA10803000")="1" then
		strCUTA10803000answer1="checked"
	end if

	if Session("HM10802000")="1" then
		strHM10802000answer1="checked"
	end if

	if Session("EPQ30808010")="1" then
		strEPQ30808010answer1="checked"
	end if

	if Session("TEMPEPQ30808010F")="1" then
		strTEMPEPQ30808010Fanswer1="checked"
	end if
	if Session("EPQ30808020")="1" then
		strEPQ30808020answer1="checked"
	end if
	if Session("EPQ30808030")="1" then
		strEPQ30808030answer1="checked"
	end if
	if Session("EPQ30808040")="1" then
		strEPQ30808040answer1="checked"
	end if
	if Session("EPQ30808050")="1" then
		strEPQ30808050answer1="checked"
	end if
	if Session("EPQ30808060")="1" then
		strEPQ30808060answer1="checked"
	end if
	if Session("EPQ30808070")="1" then
		strEPQ30808070answer1="checked"
	end if
	if Session("EPQ30808080")="1" then
		strEPQ30808080answer1="checked"
	end if
	if Session("EPQ30808090")="1" then
		strEPQ30808090answer1="checked"
	end if
	if Session("EPQ30808100")="1" then
		strEPQ30808100answer1="checked"
	end if
	if Session("EPQ30808110")="1" then
		strEPQ30808110answer1="checked"
	end if
	if Session("EPQ30808120")="1" then
		strEPQ30808120answer1="checked"
	end if

end if

if Request.Form("ispostback")="1" then
	Session("CUTA10803000")= ""
	Session("HM10802000")= ""

	Session("EPQ30808010string")= ""
	Session("EPQ30808020string")= ""
	Session("EPQ30808030string")= ""
	Session("EPQ30808040string")= ""
	Session("EPQ30808050string")= ""
	Session("EPQ30808060string")= ""
	Session("EPQ30808070string")= ""
	Session("EPQ30808080string")= ""
	Session("EPQ30808090string")= ""
	Session("EPQ30808100string")= ""
	Session("EPQ30808110string")= ""

	Session("CUTA10803000")= Request.Form("CUTA10803000")
	Session("HM10802000")= Request.Form("HM10802000")

	Session("EPQ30808010")= Request.Form("EPQ30808010")
	Session("EPQ30808020")= Request.Form("EPQ30808020")
	Session("EPQ30808030")= Request.Form("EPQ30808030")
	Session("EPQ30808040")= Request.Form("EPQ30808040")
	Session("EPQ30808050")= Request.Form("EPQ30808050")
	Session("EPQ30808060")= Request.Form("EPQ30808060")
	Session("EPQ30808070")= Request.Form("EPQ30808070")
	Session("EPQ30808080")= Request.Form("EPQ30808080")
	Session("EPQ30808090")= Request.Form("EPQ30808090")
	Session("EPQ30808100")= Request.Form("EPQ30808100")
	Session("EPQ30808110")= Request.Form("EPQ30808110")
	Session("EPQ30808120")= Request.Form("EPQ30808120")

	Session("TEMP1EPQ30808110")= Request.Form("TEMP1EPQ30808110")
	Session("TEMP2EPQ30808110")= Request.Form("TEMP2EPQ30808110")

	Session("TEMPEPQ30820010F")= Request.Form("TEMPEPQ30820010F")
	Session("TEMP1EPQ30820090F")= Request.Form("TEMP1EPQ30820090F")
	Session("TEMP2EPQ30820090F")= Request.Form("TEMP2EPQ30820090F")
	Session("TEMPEPQ30341000F")= Request.Form("TEMPEPQ30341000F")

	Session("TEMP4EPQ30341000")= Request.Form("TEMP4EPQ30341000")
	Session("TEMP5EPQ30341000")= Request.Form("TEMP5EPQ30341000")
	Session("TEMP6EPQ30341000")= Request.Form("TEMP6EPQ30341000")

	if Session("CUTA10803000") = "1" then 
		Session("CUTA10803000string")= "Skin cancer (includes basal, squamous, etc. but not melanoma)"
	else
	Session("CUTA30803000") = "0"
	end if

	if Session("EPQ30808010") = "1" then 
		Session("EPQ30808010string")= "Breast cancer"
	else
	Session("EPQ30808010") = "0"
	end if
	if Session("EPQ30808020") = "1" then 
		Session("EPQ30808020string")= "Colon and rectal cancer"
	else
	Session("EPQ30808020") = "0"
	end if
	if Session("EPQ30808030") = "1" then 
		Session("EPQ30808030string")= "Endometrial cancer"
	else
	Session("EPQ30808030") = "0"
	end if
	if Session("EPQ30808040") = "1" then 
		Session("EPQ30808040string")= "Renal cancer"
	else
	Session("EPQ30808040") = "0"
	end if
	if Session("EPQ30808050") = "1" then 
		Session("EPQ30808050string")= "Leukemia"
	else
	Session("EPQ30808050") = "0"
	end if
	if Session("EPQ30808060") = "1" then 
		Session("EPQ30808060string")= "Lung"
	else
	Session("EPQ30808060") = "0"
	end if
	if Session("EPQ30808070") = "1" then 
		Session("EPQ30808070string")= "Melanoma"
	else
	Session("EPQ30808070") = "0"
	end if

	if Session("HM10802000") = "1" then 
		Session("HM10802000string")= "Multiple myeloma or plasma cell tumor"
	else
	Session("HM10802000") = "0"
	end if

	if Session("EPQ30808080") = "1" then 
		Session("EPQ30808080string")= "Ovarian cancer"
	else
	Session("EPQ30808080") = "0"
	end if
	if Session("EPQ30808090") = "1" then 
		Session("EPQ30808090string")= "Pancreatic"
	else
	Session("EPQ30808090") = "0"
	end if
	if Session("EPQ30808100") = "1" then 
		Session("EPQ30808100string")= "Thyroid cancer"
	else
	Session("EPQ30808100") = "0"
	end if
	if Session("EPQ30808110") = "1" then 
		Session("EPQ30808110string")= "Other"
	else
	Session("EPQ30808110") = "0"
	end if

	if Session("EPQ30808120") = "1" then 
	Session("EPQ30808120string")= "Oral Cancer"
	else
	Session("EPQ30808120") = "0"
	end if
end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30805030")="1" then
	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805040")="1" then
	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805060")="1" then
	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "familyhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30808010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

Session("TEMPEPQ30820010FPage1") =0
Session("TEMPEPQ30820010FPage2") =0
Session("EPQ30808010Page1") =0
Session("EPQ30808010Page2") =0
Session("EPQ30808020Page1") =0
Session("EPQ30808020Page2") =0
Session("EPQ30808040Page1") =0
Session("EPQ30808040Page2") =0
Session("EPQ30808050Page1") =0
Session("EPQ30808050Page2") =0
Session("EPQ30808060Page1") =0
Session("EPQ30808060Page2") =0
Session("EPQ30808070Page1") =0
Session("EPQ30808070Page2") =0
Session("CUTA10803000Page1") =0
Session("CUTA10803000Page2") =0
Session("HM10802000Page1") =0
Session("HM10802000Page2") =0
Session("EPQ30808080Page1") =0
Session("EPQ30808080Page2") =0
Session("EPQ30808090Page1") =0
Session("EPQ30808090Page2") =0
Session("TEMP1EPQ30820090FPage1") =0
Session("TEMP1EPQ30820090FPage2") =0
Session("TEMP2EPQ30820090FPage1") =0
Session("TEMP2EPQ30820090FPage2") =0
Session("EPQ30808100Page1") =0
Session("EPQ30808100Page2") =0
Session("EPQ30808030Page1") =0
Session("EPQ30808030Page2") =0
Session("EPQ30808110Page1") =0
Session("EPQ30808110Page2") =0
Session("TEMP1EPQ30808110Page1") =0
Session("TEMP1EPQ30808110Page2") =0
Session("TEMP2EPQ30808110Page1") =0
Session("TEMP2EPQ30808110Page2") =0
Session("TEMP3EPQ30808110Page1") =0
Session("TEMP3EPQ30808110Page2") =0


dim FHCFemaleDisplayCounter
FHCFemaleDisplayCounter=0

           
if Session("TEMPEPQ30820010F") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMPEPQ30820010FPage1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMPEPQ30820010FPage2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if
if Session("EPQ30808010") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808010Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808010Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808020") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808020Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808020Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808040") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808040Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808040Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808050") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808050Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808050Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808060") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808060Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808060Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808070") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808070Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808070Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("HM10802000") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("HM10802000Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("HM10802000Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("CUTA10803000") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("CUTA10803000Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("CUTA10803000Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808080") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808080Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808080Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("EPQ30808090") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808090Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808090Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if


if Session("TEMP1EPQ30820090F") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMP1EPQ30820090FPage1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMP1EPQ30820090FPage2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if


if Session("TEMP2EPQ30820090F") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMP2EPQ30820090FPage1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMP2EPQ30820090FPage2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30808100") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808100Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808100Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30808030") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808030Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808030Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if


if Session("EPQ30808110") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("EPQ30808110Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("EPQ30808110Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMP1EPQ30808110") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMP1EPQ30808110Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMP1EPQ30808110Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMP2EPQ30808110") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMP2EPQ30808110Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMP2EPQ30808110Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

if Session("TEMP3EPQ30808110") ="1" then
	if FHCFemaleDisplayCounter < 9 then 
	Session("TEMP3EPQ30808110Page1")=1
	FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
	else
		if FHCFemaleDisplayCounter < 18 then 
		Session("TEMP3EPQ30808110Page2")=1
		FHCFemaleDisplayCounter=FHCFemaleDisplayCounter+1
		end if 
	end if
else 
end if

Session("FHCFemaleDisplayCounter")=FHCFemaleDisplayCounter


	if Session("EPQ30805030")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805040")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805060")="1" then
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if



	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->






if Session("EPQ30808010")<>"1" then
	Session.Contents.Remove("EPQ30809010")
	Session.Contents.Remove("EPQ30809020")
	Session.Contents.Remove("EPQ30809030")
	Session.Contents.Remove("EPQ30809040")
end if

if Session("EPQ30808020")<>"1" then
	Session.Contents.Remove("EPQ30812010")
	Session.Contents.Remove("EPQ30812020")
	Session.Contents.Remove("EPQ30812030")
	Session.Contents.Remove("EPQ30812040")
end if

if Session("EPQ30808030")<>"1" then
	Session.Contents.Remove("EPQ30811010")
	Session.Contents.Remove("EPQ30811020")
	Session.Contents.Remove("EPQ30811030")
	Session.Contents.Remove("EPQ30811040")
end if

if Session("EPQ30808040")<>"1" then
	Session.Contents.Remove("EPQ30815010")
	Session.Contents.Remove("EPQ30815020")
	Session.Contents.Remove("EPQ30815030")
	Session.Contents.Remove("EPQ30815040")
end if

if Session("EPQ30808050")<>"1" then
	Session.Contents.Remove("EPQ30816010")
	Session.Contents.Remove("EPQ30816020")
	Session.Contents.Remove("EPQ30816030")
	Session.Contents.Remove("EPQ30816040")
end if

if Session("EPQ30808060")<>"1" then
	Session.Contents.Remove("EPQ30814010")
	Session.Contents.Remove("EPQ30814020")
	Session.Contents.Remove("EPQ30814030")
	Session.Contents.Remove("EPQ30814040")
end if

if Session("EPQ30808070")<>"1" then
	Session.Contents.Remove("EPQ30813010")
	Session.Contents.Remove("EPQ30813020")
	Session.Contents.Remove("EPQ30813030")
	Session.Contents.Remove("EPQ30813040")
end if

if Session("CUTA10803000")<>"1" then
	Session.Contents.Remove("CUTA10804010")
	Session.Contents.Remove("CUTA10804020")
	Session.Contents.Remove("CUTA10804030")
	Session.Contents.Remove("CUTA10804040")
end if

if Session("HM10802000")<>"1" then
	Session.Contents.Remove("HM10807000")
	Session.Contents.Remove("HM10808000")
	Session.Contents.Remove("HM10809000")
	Session.Contents.Remove("HM10810000")
end if

if Session("EPQ30808120")<>"1" then
	Session.Contents.Remove("EPQ30832010")
	Session.Contents.Remove("EPQ30832020")
	Session.Contents.Remove("EPQ30832030")
	Session.Contents.Remove("EPQ30832040")
end if

if Session("EPQ30808080")<>"1" then
	Session.Contents.Remove("EPQ30810010")
	Session.Contents.Remove("EPQ30810020")
	Session.Contents.Remove("EPQ30810030")
	Session.Contents.Remove("EPQ30810040")
end if

if Session("EPQ30808090")<>"1" then
	Session.Contents.Remove("EPQ30817010")
	Session.Contents.Remove("EPQ30817020")
	Session.Contents.Remove("EPQ30817030")
	Session.Contents.Remove("EPQ30817040")
end if

if Session("EPQ30808100")<>"1" then
	Session.Contents.Remove("EPQ30818010")
	Session.Contents.Remove("EPQ30818020")
	Session.Contents.Remove("EPQ30818030")
	Session.Contents.Remove("EPQ30818040")
end if

if Session("EPQ30808110")<>"1" then
	Session.Contents.Remove("EPQ30819010")
	Session.Contents.Remove("EPQ30819020")
	Session.Contents.Remove("EPQ30819030")
	Session.Contents.Remove("EPQ30819040")
end if


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
    <form action="familyhistorycancer5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
What type of cancer did your mother, sisters, or daughters have? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">


		<input type="checkbox" name="TEMPEPQ30820010F" class="atLeastOneCheckboxRequired" value="1" 
id="TEMPEPQ30820010F" <%=strTEMPEPQ30820010Fanswer1%>>
		<label for="EPQ30820010">Brain cancer</label><br>

		<input type="checkbox" name="EPQ30808010" class="atLeastOneCheckboxRequired" value="1" 
id="EPQ30803010" <%=strEPQ30808010answer1%>>
		<label for="EPQ30803010">Breast cancer</label><br>

		<input type="checkbox" name="EPQ30808020"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808020" <%=strEPQ30808020answer1%>>
		<label for="EPQ30808020">Colon or rectal cancer</label><br>


		<input type="checkbox" name="EPQ30808040"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808040" <%=strEPQ30808040answer1%>>
		<label for="EPQ30808040">Kidney (renal cell) cancer</label><br>

		<input type="checkbox" name="EPQ30808050"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808050" <%=strEPQ30808050answer1%>>
		<label for="EPQ30808050">Leukemia</label><br>

		<input type="checkbox" name="EPQ30808060"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808060" <%=strEPQ30808060answer1%>>
		<label for="EPQ30808060">Lung cancer</label><br>

		<input type="checkbox" name="EPQ30808070"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808070" <%=strEPQ30808070answer1%>>
		<label for="EPQ30808070">Melanoma</label><br>

<%
if Session("HM10204000")="1" then
%>
		<input type="checkbox" name="HM10802000" class="atLeastOneCheckboxRequired" value="1" 
id="HM10802000" <%=strHM10802000answer1%>>
		<label for="HM10802000">Multiple myeloma or plasma cell tumor</label><br>
<%
end if
%>
	

<%
if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
%>
		<input type="checkbox" name="CUTA10803000" class="atLeastOneCheckboxRequired" value="1" 
id="CUTA10803000" <%=strCUTA10803000answer1%>>
		<label for="CUTA10803000">Non-melanoma skin cancer (includes basal, squamous, but not melanoma)</label><br>
<%
end if
end if
%>


		<input type="checkbox" name="EPQ30808080"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808080" <%=strEPQ30808080answer1%>>
		<label for="EPQ30808080">Ovarian cancer (includes fallopian and peritoneal cancers)</label><br>
		<input type="checkbox" name="EPQ30808090"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808090" <%=strEPQ30808090answer1%>>
		<label for="EPQ30808090">Pancreatic cancer</label><br>

		<input type="checkbox" name="TEMP1EPQ30820090F" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP1EPQ30820090F" <%=strTEMP1EPQ30820090Fanswer1%>>
		<label for="TEMP1EPQ30820090F">Sarcoma</label><br>

		<input type="checkbox" name="TEMP2EPQ30820090F" class="atLeastOneCheckboxRequired" value="1" 
id="TEMP2EPQ30820090F" <%=strTEMP2EPQ30820090Fanswer1%>>
		<label for="TEMP2EPQ30820090F">Stomach (gastric) cancer</label><br>


		<input type="checkbox" name="EPQ30808100"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808100" <%=strEPQ30808100answer1%>>
		<label for="EPQ30808100">Thyroid cancer</label><br>

		<input type="checkbox" name="EPQ30808030"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808030" <%=strEPQ30808030answer1%>>
		<label for="EPQ30808030">Uterine (endometrial) cancer </label><br>

		<input type="checkbox" name="EPQ30808110"class="atLeastOneCheckboxRequired"  value="1" 
id="EPQ30808110" <%=strEPQ30808110answer1%>>
		<label for="EPQ30808110">A type of cancer not listed above</label>
<input id="TEMP4EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMP4EPQ30341000" value='<%=Session("TEMP4EPQ30341000")%>' > <br>
		<input type="checkbox" name="TEMP1EPQ30808110"class="atLeastOneCheckboxRequired"  value="1" 
id="TEMP1EPQ30808110" <%=strTEMP1EPQ30808110answer1%>>
		<label for="EPQ30808110">A type of cancer not listed above</label>
<input id="TEMP5EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMP5EPQ30341000" value='<%=Session("TEMP5EPQ30341000")%>' > <br>
		<input type="checkbox" name="TEMP2EPQ30808110"class="atLeastOneCheckboxRequired"  value="1" 
id="TEMP2EPQ30808110" <%=strTEMP2EPQ30808110answer1%>>
		<label for="TEMP6EPQ30808110">A type of cancer not listed above</label>
<input id="TEMP6EPQ30341000" class="requiredIfPreviousCheckbox" type="text" size="17" maxlength="18" name="TEMP6EPQ30341000" value='<%=Session("TEMP6EPQ30341000")%>' > <br>


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
