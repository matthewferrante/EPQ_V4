
<%

dim PatientAge
dim DateCheck

DateCheck = CStr(Session("strDOBMonth")) + "/" + CStr(Session("strDOBDay")) + "/" + CStr(Session("strDOBYear"))

dim AgeYears
dim ageDate
ageDate=now()

AgeYears= Year(ageDate) - Year(DateCheck)

if Month(ageDate) < Month(DateCheck) then
	AgeYears= AgeYears- 1 

elseif Month(ageDate) = Month(DateCheck) then 
	if Day(ageDate) < Day(DateCheck) then
	AgeYears= AgeYears- 1
	end if
end if

PatientAge = AgeYears


Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31101000") = Request.Form("EPQ31101000")
	Session("EPQ31101000b") = Request.Form("EPQ31101000b")
	Session("EPQ31102000") = Request.Form("EPQ31102000")
	Session("EPQ31103000") = Request.Form("EPQ31103000")

	Session("EPQ31103001") = Request.Form("EPQ31103001")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("CancerRiskSectionStatus")=""

	if Session("TEMPEPQ31140120")="1" then
	Session("Page")="2"
	Session("FamilyHistorySectionStatus")=""
	Response.Redirect "familyhistorycancermaster.asp"
	end if


		Session("ReturnID")="1"

if Session("SurveyVersion")="GI" then

	If Session("EPQ30901120")= "77" then
		Session("Page")=1
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"
	end if


if Session("GI10973000")="1" and Session("GI10974000")="1" then 
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"
end if
if Session("GI10916000")="1" then
		if Session("GI10919000") ="1" OR Session("GI10923000") ="1" OR Session("GI10927000")="1" OR Session("GI10931000")="1" OR Session("GI10935000")="1" OR Session("GI10939000")="1" OR Session("GI10943000")="1" OR Session("GI10947000")="1" OR Session("GI10951000")="1" OR Session("GI10955000")="1" OR Session("GI10959000")="1" OR Session("GI10963000")="1" OR Session("GI10967000")="1" OR Session("GI10971000")="1" then
			if Session("BRFHGeneticDisplayCounter") > 8 then
			Session("Page")="6a4"
			else
			Session("Page")="6a3"
			end if
	else
		if Session("GI10917000") ="1" OR Session("GI10921000") ="1" OR Session("GI10925000")="1" OR Session("GI10929000")="1" OR Session("GI10933000")="1" OR Session("GI10937000")="1" OR Session("GI10941000")="1" OR Session("GI10945000")="1" OR Session("GI10949000")="1" OR Session("GI10953000")="1" OR Session("GI10957000")="1" OR Session("GI10961000")="1" OR Session("GI10965000")="1" OR Session("GI10969000")="1" then
			if Session("FHGeneticDisplayCounter") > 8 then
			Session("Page")="6a2"
			else
			Session("Page")="6a1"
			end if
		End If
	End if

		
		Response.Redirect "familyhistorymaster.asp"
else
		if Session("GI10202000")="1" OR Session("GI10201000")="1" then
			Session("Page")="5"
			Response.Redirect "familyhistorymaster.asp"
		end if
end if
end if



	If Session("EPQ30901120")= "77" then
		Session("Page")=1
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"
	end if

	if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090")="1" OR Session("EPQ30901140")="1" OR Session("EPQ30901150")="1" OR Session("EPQ30901100")="1" OR Session("EPQ30901060")="1" OR Session("EPQ30901070")="1" OR Session("EPQ30901020")="1" then
		if Session("FHDisplayCounter") > 8 then
		Session("Page")="3"
		else
		Session("Page")="2"
		end if
	else
		Session("Page")=1
	End if



	Session("CancerRiskSectionStatus")=""
	Response.Redirect "familyhistorymaster.asp"


end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
if len(Session("EPQ31101000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31101000b")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31102000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31103000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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
This section contains questions that will help us get a more complete picture of your weight history.<br><br> Please complete the following with an answer that best describes you.
	</div>
<br>
    <form action="cancerrisk1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset><legend class='QuestionBox'>
How tall are you? 
	</legend>

	<div class="QuestionAnswersBox">
<input id="EPQ31101000" type="text" size="5" name="EPQ31101000" class="required heightFeet" maxlength="1" value=<%=Session("EPQ31101000")%>>
feet 
&nbsp;&nbsp;&nbsp;&nbsp;<input id="EPQ31101000b" type="text" size="5" name="EPQ31101000b" class="required heightInches" maxlength="2" value=<%=Session("EPQ31101000b")%>>
inches

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset><legend class='QuestionBox'>
How much do you currently weigh? 
	</legend>
	<div class="QuestionAnswersBox">

<input id="EPQ31102000" type="text" size="5" name="EPQ31102000" class="required weightPounds" maxlength="3" value=<%=Session("EPQ31102000")%>>
pounds

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
How much did you weigh one year ago? 
	</legend>
	<div class="QuestionAnswersBox">
<input id="EPQ31103000" type="text" size="5" name="EPQ31103000" class="required weightPounds" maxlength="3" value=<%=Session("EPQ31103000")%>>
pounds

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>
<%
if PatientAge > 18 then 
%>
	<fieldset><legend class='QuestionBox'>
	How much did you weigh when you were 18 years old?
	</legend>
	<div class="QuestionAnswersBox">
<input id="EPQ31103001" type="text" size="5" name="EPQ31103001" class="required weightPounds" maxlength="3" value=<%=Session("EPQ31103001")%>>
pounds

	</div><!-- [ /#AnswerBox] -->   
  </fieldset>
<%
end if
%>


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
