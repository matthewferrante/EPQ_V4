
<%


Session("FamilyHistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Complete"

if Request.Form("ispostback") <> "1" then

	if Session("GI10917000")="1" then
		strGI10917000answer1="checked"
	end if
	if Session("GI10921000")="1" then
		strGI10921000answer1="checked"
	end if
	if Session("GI10925000")="1" then
		strGI10925000answer1="checked"
	end if
	if Session("GI10929000")="1" then
		strGI10929000answer1="checked"
	end if
	if Session("GI10933000")="1" then
		strGI10933000answer1="checked"
	end if
	if Session("GI10937000")="1" then
		strGI10937000answer1="checked"
	end if
	if Session("GI10941000")="1" then
		strGI10941000answer1="checked"
	end if
	if Session("GI10945000")="1" then
		strGI10945000answer1="checked"
	end if
	if Session("GI10949000")="1" then
		strGI10949000answer1="checked"
	end if
	if Session("GI10953000")="1" then
		strGI10953000answer1="checked"
	end if
	if Session("GI10957000")="1" then
		strGI10957000answer1="checked"
	end if
	if Session("GI10961000")="1" then
		strGI10961000answer1="checked"
	end if
	if Session("GI10965000")="1" then
		strGI10965000answer1="checked"
	end if
	if Session("GI10969000")="1" then
		strGI10969000answer1="checked"
	end if
	if Session("GI10973000")="1" then
		strGI10973000answer1="checked"
	end if

	if Session("GI10919000")="1" then
		strGI10919000answer1="checked"
	end if
	if Session("GI10923000")="1" then
		strGI10923000answer1="checked"
	end if
	if Session("GI10927000")="1" then
		strGI10927000answer1="checked"
	end if
	if Session("GI10931000")="1" then
		strGI10931000answer1="checked"
	end if
	if Session("GI10935000")="1" then
		strGI10935000answer1="checked"
	end if
	if Session("GI10939000")="1" then
		strGI10939000answer1="checked"
	end if
	if Session("GI10943000")="1" then
		strGI10943000answer1="checked"
	end if
	if Session("GI10947000")="1" then
		strGI10947000answer1="checked"
	end if
	if Session("GI10951000")="1" then
		strGI10951000answer1="checked"
	end if
	if Session("GI10955000")="1" then
		strGI10955000answer1="checked"
	end if
	if Session("GI10959000")="1" then
		strGI10959000answer1="checked"
	end if
	if Session("GI10963000")="1" then
		strGI10963000answer1="checked"
	end if
	if Session("GI10967000")="1" then
		strGI10967000answer1="checked"
	end if
	if Session("GI10971000")="1" then
		strGI10971000answer1="checked"
	end if
	if Session("GI10974000")="1" then
		strGI10974000answer1="checked"
	end if

end if


if Request.Form("ispostback")="1" then

	Session("GI10917000") = Request.Form("GI10917000")
	Session("GI10921000") = Request.Form("GI10921000")
	Session("GI10925000") = Request.Form("GI10925000")
	Session("GI10929000") = Request.Form("GI10929000")
	Session("GI10933000") = Request.Form("GI10933000")
	Session("GI10937000") = Request.Form("GI10937000")
	Session("GI10941000") = Request.Form("GI10941000")
	Session("GI10945000") = Request.Form("GI10945000")
	Session("GI10949000") = Request.Form("GI10949000")
	Session("GI10953000") = Request.Form("GI10953000")
	Session("GI10957000") = Request.Form("GI10957000")
	Session("GI10961000") = Request.Form("GI10961000")
	Session("GI10965000") = Request.Form("GI10965000")
	Session("GI10969000") = Request.Form("GI10969000")
	Session("GI10973000") = Request.Form("GI10973000")
	Session("GI10969000_TXT") = Request.Form("GI10969000_TXT")

	Session("GI10919000") = Request.Form("GI10919000")
	Session("GI10923000") = Request.Form("GI10923000")
	Session("GI10927000") = Request.Form("GI10927000")
	Session("GI10931000") = Request.Form("GI10931000")
	Session("GI10935000") = Request.Form("GI10935000")
	Session("GI10939000") = Request.Form("GI10939000")
	Session("GI10943000") = Request.Form("GI10943000")
	Session("GI10947000") = Request.Form("GI10947000")
	Session("GI10951000") = Request.Form("GI10951000")
	Session("GI10955000") = Request.Form("GI10955000")
	Session("GI10959000") = Request.Form("GI10959000")
	Session("GI10963000") = Request.Form("GI10963000")
	Session("GI10967000") = Request.Form("GI10967000")
	Session("GI10971000") = Request.Form("GI10971000")
	Session("GI10974000") = Request.Form("GI10974000")
	Session("GI10971000_TXT") = Request.Form("GI10971000_TXT")

end if


if Request.Form("StopID")="1" then
		Session("familyhistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"
		Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
if Session("GI10973000")="1" and Session("GI10974000")="1" then 
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"
end if
end if
end if


Session("GI10917000Page1")=0
Session("GI10917000Page2")=0
Session("GI10921000Page1")=0
Session("GI10921000Page2")=0
Session("GI10925000Page1")=0
Session("GI10925000Page2")=0
Session("GI10929000Page1")=0
Session("GI10929000Page2")=0
Session("GI10933000Page1")=0
Session("GI10933000Page2")=0
Session("GI10937000Page1")=0
Session("GI10937000Page2")=0
Session("GI10941000Page1")=0
Session("GI10941000Page2")=0
Session("GI10945000Page1")=0
Session("GI10945000Page2")=0
Session("GI10949000Page1")=0
Session("GI10949000Page2")=0
Session("GI10953000Page1")=0
Session("GI10953000Page2")=0
Session("GI10957000Page1")=0
Session("GI10957000Page2")=0
Session("GI10961000Page1")=0
Session("GI10961000Page2")=0
Session("GI10965000Page1")=0
Session("GI10965000Page2")=0
Session("GI10969000Page1")=0
Session("GI10969000Page2")=0


Session("GI10919000Page1")=0
Session("GI10919000Page2")=0
Session("GI10923000Page1")=0
Session("GI10923000Page2")=0
Session("GI10927000Page1")=0
Session("GI10927000Page2")=0
Session("GI10931000Page1")=0
Session("GI10931000Page2")=0
Session("GI10935000Page1")=0
Session("GI10935000Page2")=0
Session("GI10939000Page1")=0
Session("GI10939000Page2")=0
Session("GI10943000Page1")=0
Session("GI10943000Page2")=0
Session("GI10949000Page1")=0
Session("GI10949000Page2")=0
Session("GI10951000Page1")=0
Session("GI10951000Page2")=0
Session("GI10955000Page1")=0
Session("GI10955000Page2")=0
Session("GI10959000Page1")=0
Session("GI10959000Page2")=0
Session("GI10963000Page1")=0
Session("GI10963000Page2")=0
Session("GI10967000Page1")=0
Session("GI10967000Page2")=0
Session("GI10971000Page1")=0
Session("GI10971000Page2")=0

dim FHGeneticDisplayCounter
FHGeneticDisplayCounter=0

dim BRFHGeneticDisplayCounter
BRFHGeneticDisplayCounter=0

if Session("GI10917000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10917000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10917000Page2")=1
	end if 

else 
	if Session("GI10917000")<>"1" then
		Session.Contents.Remove("GI10918000")
	end if
end if


if Session("GI10921000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10921000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10921000Page2")=1
	end if 

else 
	if Session("GI10921000")<>"1" then
		Session.Contents.Remove("GI10922000")
	end if
end if

if Session("GI10925000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10925000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10925000Page2")=1
	end if 

else 
	if Session("GI10925000")<>"1" then
		Session.Contents.Remove("GI10926000")
	end if
end if

if Session("GI10929000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10929000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10929000Page2")=1
	end if 

else 
	if Session("GI10929000")<>"1" then
		Session.Contents.Remove("GI10930000")
	end if
end if

if Session("GI10933000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10933000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10933000Page2")=1
	end if 

else 
	if Session("GI10933000")<>"1" then
		Session.Contents.Remove("GI10934000")
	end if
end if

if Session("GI10937000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10937000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10937000Page2")=1
	end if 

else 
	if Session("GI10937000")<>"1" then
		Session.Contents.Remove("GI10938000")
	end if
end if

if Session("GI10941000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10941000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10941000Page2")=1
	end if 

else 
	if Session("GI10941000")<>"1" then
		Session.Contents.Remove("GI10942000")
	end if
end if

if Session("GI10945000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10945000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10945000Page2")=1
	end if 

else 
	if Session("GI10945000")<>"1" then
		Session.Contents.Remove("GI10946000")
	end if
end if

if Session("GI10949000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10949000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10949000Page2")=1
	end if 

else 
	if Session("GI10949000")<>"1" then
		Session.Contents.Remove("GI10950000")
	end if
end if

if Session("GI10953000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10953000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10953000Page2")=1
	end if 

else 
	if Session("GI10953000")<>"1" then
		Session.Contents.Remove("GI10954000")
	end if
end if

if Session("GI10957000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10957000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10957000Page2")=1
	end if 

else 
	if Session("GI10957000")<>"1" then
		Session.Contents.Remove("GI10958000")
	end if
end if

if Session("GI10961000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10961000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10961000Page2")=1
	end if 

else 
	if Session("GI10961000")<>"1" then
		Session.Contents.Remove("GI10962000")
	end if
end if

if Session("GI10965000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10965000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10965000Page2")=1
	end if 

else 
	if Session("GI10965000")<>"1" then
		Session.Contents.Remove("GI10966000")
	end if
end if

if Session("GI10969000") ="1" then
	if FHGeneticDisplayCounter < 8 then 
	Session("GI10969000Page1")=1
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	else
	FHGeneticDisplayCounter=FHGeneticDisplayCounter+1
	Session("GI10969000Page2")=1
	end if 

else 
	if Session("GI10969000")<>"1" then
		Session.Contents.Remove("GI10970000")
	end if
end if


if Session("GI10919000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10919000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10919000Page2")=1
	end if 

else 
	if Session("GI10919000")<>"1" then
		Session.Contents.Remove("GI10920000")
	end if
end if


if Session("GI10923000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10923000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10923000Page2")=1
	end if 

else 
	if Session("GI10923000")<>"1" then
		Session.Contents.Remove("GI10924000")
	end if
end if

if Session("GI10927000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10927000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10927000Page2")=1
	end if 

else 
	if Session("GI10927000")<>"1" then
		Session.Contents.Remove("GI10928000")
	end if
end if

if Session("GI10931000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10931000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10931000Page2")=1
	end if 

else 
	if Session("GI10931000")<>"1" then
		Session.Contents.Remove("GI10932000")
	end if
end if

if Session("GI10935000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10935000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10935000Page2")=1
	end if 

else 
	if Session("GI10935000")<>"1" then
		Session.Contents.Remove("GI10936000")
	end if
end if

if Session("GI10939000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10939000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10939000Page2")=1
	end if 

else 
	if Session("GI10939000")<>"1" then
		Session.Contents.Remove("GI10940000")
	end if
end if

if Session("GI10943000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10943000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10943000Page2")=1
	end if 

else 
	if Session("GI10943000")<>"1" then
		Session.Contents.Remove("GI10944000")
	end if
end if

if Session("GI10947000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10947000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10947000Page2")=1
	end if 

else 
	if Session("GI10947000")<>"1" then
		Session.Contents.Remove("GI10948000")
	end if
end if

if Session("GI10951000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10951000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10951000Page2")=1
	end if 

else 
	if Session("GI10951000")<>"1" then
		Session.Contents.Remove("GI10952000")
	end if
end if

if Session("GI10955000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10955000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10955000Page2")=1
	end if 

else 
	if Session("GI10955000")<>"1" then
		Session.Contents.Remove("GI10956000")
	end if
end if

if Session("GI10959000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10959000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10959000Page2")=1
	end if 

else 
	if Session("GI10959000")<>"1" then
		Session.Contents.Remove("GI10960000")
	end if
end if

if Session("GI10963000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10963000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10963000Page2")=1
	end if 

else 
	if Session("GI10963000")<>"1" then
		Session.Contents.Remove("GI10964000")
	end if
end if

if Session("GI10967000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10967000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10967000Page2")=1
	end if 

else 
	if Session("GI10967000")<>"1" then
		Session.Contents.Remove("GI10968000")
	end if
end if

if Session("GI10971000") ="1" then
	if BRFHGeneticDisplayCounter < 8 then 
	Session("GI10971000Page1")=1
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	else
	BRFHGeneticDisplayCounter=BRFHGeneticDisplayCounter+1
	Session("GI10971000Page2")=1
	end if 

else 
	if Session("GI10971000")<>"1" then
		Session.Contents.Remove("GI10972000")
	end if
end if

Session("FHGeneticDisplayCounter")=FHGeneticDisplayCounter
Session("BRFHGeneticDisplayCounter")=BRFHGeneticDisplayCounter


	if Session("GI10917000") ="1" OR Session("GI10921000") ="1" OR Session("GI10925000") ="1" OR Session("GI10929000") ="1" OR Session("GI10933000") ="1" OR Session("GI10937000") ="1" OR Session("GI10941000") ="1" OR Session("GI10945000") ="1" OR Session("GI10949000") ="1" OR Session("GI10953000") ="1" OR Session("GI10957000") ="1" OR Session("GI10961000") ="1" OR Session("GI10965000") ="1" OR Session("GI10969000") ="1" then
	Session("Page")="6a1"
	else
	if Session("GI10919000") ="1" OR Session("GI10923000") ="1" OR Session("GI10927000") ="1" OR Session("GI10931000") ="1" OR Session("GI10935000") ="1" OR Session("GI10939000") ="1" OR Session("GI10943000") ="1" OR Session("GI10947000") ="1" OR Session("GI10951000") ="1" OR Session("GI10955000") ="1" OR Session("GI10959000") ="1" OR Session("GI10963000") ="1" OR Session("GI10967000") ="1" OR Session("GI10971000") ="1" then
	Session("Page")="6a3"
	else
	Session("Page")="0"
	end if
	end if

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
<div id="formBlock3">
    <form action="familyhistory6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
If you or a family member has had a blood test to determine if cancer runs in your family because of a genetic/inherited condition, please complete the table below for the genetic condition(s) that apply. More conditions listed on next page.
<br>
	</legend>

	<div class="QuestionAnswersBox">
<span class="column1 eitherNoneOrChecked">
<b>Self</b> <br>

		<input type="checkbox" name="GI10917000" value="1" id="GI10917000" <%=strGI10917000answer1%>>
		<label for="GI10917000">Hereditary Breast and Ovarian Cancer (BRCA1/2)</label><br>
		<input type="checkbox" name="GI10921000" value="1" id="GI10921000" <%=strGI10921000answer1%>>
		<label for="GI10921000">Hereditary Non-Polyposis Colorectal Cancer/<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lynch Syndrome</label><br>
		<input type="checkbox" name="GI10925000" value="1" id="GI10925000" <%=strGI10925000answer1%>>
		<label for="GI10925000">Familial Atypical Multiple Mole Melanoma Syndrome</label><br>
		<input type="checkbox" name="GI10929000" value="1" id="GI10929000" <%=strGI10929000answer1%>>
		<label for="GI10929000">Peutz-Jeghers Syndrome</label><br>
		<input type="checkbox" name="GI10933000" value="1" id="GI10933000" <%=strGI10933000answer1%>>
		<label for="GI10933000">Hereditary Pancreatitis</label><br>
		<input type="checkbox" name="GI10937000" value="1" id="GI10937000" <%=strGI10937000answer1%>>
		<label for="GI10937000">Familial Adenomatous Polyposis</label><br>
		<input type="checkbox" name="GI10941000" value="1" id="GI10941000" <%=strGI10941000answer1%>>
		<label for="GI10941000">Familial Pancreatic Cancer</label><br>
		<input type="checkbox" name="GI10945000" value="1" id="GI10945000" <%=strGI10945000answer1%>>
		<label for="GI10945000">Ataxia-Telangiectasia</label><br>
		<input type="checkbox" name="GI10949000" value="1" id="GI10949000" <%=strGI10949000answer1%>>
		<label for="GI10949000">Von Hippel Lindau</label><br>
		<input type="checkbox" name="GI10953000" value="1" id="GI10953000" <%=strGI10953000answer1%>>
		<label for="GI10953000">Cystic Fibrosis</label><br>
		<input type="checkbox" name="GI10957000" value="1" id="GI10957000" <%=strGI10957000answer1%>>
		<label for="GI10957000">Li Fraumeni Syndrome</label><br>
		<input type="checkbox" name="GI10961000" value="1" id="GI10961000" <%=strGI10961000answer1%>>
		<label for="GI10961000">Fanconi Anemia</label><br>
		<input type="checkbox" name="GI10965000" value="1" id="GI10965000" <%=strGI10965000answer1%>>
		<label for="GI10965000">Juvenile Polyposis Syndrome</label><br>
		<input type="checkbox" name="GI10969000" value="1" id="GI10969000" <%=strGI10969000answer1%>>
		<label for="GI10969000">Other: please specify </label><input id="GI10969000_TXT" type="text" size="15" name="GI10969000_TXT" class="requiredIfPreviousCheckbox" maxlength="20" value='<%=Session("GI10969000_TXT")%>'><br>


<br>
	<input type="radio" name="GI10973000" value="1" id="GI10973000" <%=strGI10973000answer1%>>
		<label for="GI10973000">None</label><br>
</span>
<span class="column2 eitherNoneOrChecked2">
<B>Blood relative</b> <br>

		<input type="checkbox" name="GI10919000" value="1" id="GI10919000" <%=strGI10919000answer1%>>
		<label for="GI10919000">Hereditary Breast and Ovarian Cancer (BRCA1/2)</label><br>
		<input type="checkbox" name="GI10923000" value="1" id="GI10923000" <%=strGI10923000answer1%>>
		<label for="GI10923000">Hereditary Non-Polyposis Colorectal Cancer/<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lynch Syndrome</label><br>
		<input type="checkbox" name="GI10927000" value="1" id="GI10927000" <%=strGI10927000answer1%>>
		<label for="GI10927000">Familial Atypical Multiple Mole Melanoma Syndrome</label><br>
		<input type="checkbox" name="GI10931000" value="1" id="GI10931000" <%=strGI10931000answer1%>>
		<label for="GI10931000">Peutz-Jeghers Syndrome</label><br>
		<input type="checkbox" name="GI10935000" value="1" id="GI10935000" <%=strGI10935000answer1%>>
		<label for="GI10935000">Hereditary Pancreatitis</label><br>
		<input type="checkbox" name="GI10939000" value="1" id="GI10939000" <%=strGI10939000answer1%>>
		<label for="GI10939000">Familial Adenomatous Polyposis</label><br>
		<input type="checkbox" name="GI10943000" value="1" id="GI10943000" <%=strGI10943000answer1%>>
		<label for="GI10943000">Familial Pancreatic Cancer</label><br>
		<input type="checkbox" name="GI10947000" value="1" id="GI10947000" <%=strGI10947000answer1%>>
		<label for="GI10947000">Ataxia-Telangiectasia</label><br>
		<input type="checkbox" name="GI10951000" value="1" id="GI10951000" <%=strGI10951000answer1%>>
		<label for="GI10951000">Von Hippel Lindau</label><br>
		<input type="checkbox" name="GI10955000" value="1" id="GI10955000" <%=strGI10955000answer1%>>
		<label for="GI10955000">Cystic Fibrosis</label><br>
		<input type="checkbox" name="GI10959000" value="1" id="GI10959000" <%=strGI10959000answer1%>>
		<label for="GI10959000">Li Fraumeni Syndrome</label><br>
		<input type="checkbox" name="GI10963000" value="1" id="GI10963000" <%=strGI10963000answer1%>>
		<label for="GI10963000">Fanconi Anemia</label><br>
		<input type="checkbox" name="GI10967000" value="1" id="GI10967000" <%=strGI10967000answer1%>>
		<label for="GI10967000">Juvenile Polyposis Syndrome</label><br>
		<input type="checkbox" name="GI10971000" value="1" id="GI10971000" <%=strGI10971000answer1%>>
		<label for="GI10971000">Other: please specify </label><input id="GI10971000_TXT" type="text" size="15" name="GI10971000_TXT" class="requiredIfPreviousCheckbox" maxlength="20" value='<%=Session("GI10971000_TXT")%>'><br>


<br>
	<input type="radio" name="GI10974000" value="1" id="GI10974000" <%=strGI10974000answer1%>>
		<label for="GI10974000">None</label><br>
		
</span>
</div> <!-- [ /#QuestionAnswerBlock ] -->

	</legend><!-- [ /#AnswerBox] -->   </fieldset> 


</div> <!-- [ /#formBlock ] -->
<div class="ResetBox">
</div>
	
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
