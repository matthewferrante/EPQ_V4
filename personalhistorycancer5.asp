<%

Session("PersonalHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Personal History of Cancer"

Session("SurveyStatus")="Incomplete"



if Request.Form("ispostback") <> "1" then

	if Session("EPQ30344000")="1" then
		strEPQ30344000answer1="checked"
	end if
	if Session("EPQ30344000")="0" then
		strEPQ30344000answer2="checked"
	end if
	if Session("EPQ30344000")="2" then
		strEPQ30344000answer3="checked"
	end if
	if Session("EPQ30345010")="1" then
		strEPQ30345010answer1="checked"
	end if
	if Session("EPQ30345020")="1" then
		strEPQ30345020answer1="checked"
	end if
	if Session("EPQ30345030")="1" then
		strEPQ30345030answer1="checked"
	end if
	if Session("EPQ30345040")="1" then
		strEPQ30345040answer1="checked"
	end if
	if Session("EPQ30345050")="1" then
		strEPQ30345050answer1="checked"
	end if
	if Session("EPQ30345060")="1" then
		strEPQ30345060answer1="checked"
	end if

	if Session("HM10301000")="1" then
		strHM10301000answer1="checked"
	end if
	if Session("HM10302000")="1" then
		strHM10302000answer1="checked"
	end if
	if Session("HM10303000")="1" then
		strHM10303000answer1="checked"
	end if
	if Session("HM10304000")="1" then
		strHM10304000answer1="checked"
	end if
	if Session("HM10305000")="1" then
		strHM10305000answer1="checked"
	end if


end if

if Request.Form("ispostback")="1" then

	Session("HM10301000string")= ""
	Session("HM10302000string")= ""
	Session("HM10303000string")= ""
	Session("HM10304000string")= ""
	Session("HM10305000string")= ""

	Session("HM10301000") = Request.Form("HM10301000")
	Session("HM10302000") = Request.Form("HM10302000")
	Session("HM10303000") = Request.Form("HM10303000")
	Session("HM10304000") = Request.Form("HM10304000")
	Session("HM10305000") = Request.Form("HM10305000")

	Session("EPQ30344000")= Request.Form("EPQ30344000")
	Session("EPQ30345000")= Request.Form("EPQ30345000")
	Session("EPQ30345010")= Request.Form("EPQ30345010")
	Session("EPQ30345020")= Request.Form("EPQ30345020")
	Session("EPQ30345030")= Request.Form("EPQ30345030")
	Session("EPQ30345040")= Request.Form("EPQ30345040")
	Session("EPQ30345050")= Request.Form("EPQ30345050")
	Session("EPQ30345060")= Request.Form("EPQ30345060")

	if Session("HM10301000") = "1" then 
		Session("HM10301000string")= ""
	end if
	if Session("HM10302000") = "1" then 
		Session("HM10302000string")= ""
	end if
	if Session("HM10303000") = "1" then 
		Session("HM10303000string")= ""
	end if
	if Session("HM10304000") = "1" then 
		Session("HM10304000string")= ""
	end if
	if Session("HM10305000") = "1" then 
		Session("HM10305000string")= ""
	end if
	if Session("HM10303000") = "1" then 
		Session("HM10303000string")= ""
	end if

end if


if Request.Form("StopID")="1" then
		Session("PersonalHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="3cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if

	if Session("EPQ30312040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30313040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30314040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30315040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30316040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30317040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30318040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30319040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30320040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30321040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30322040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30323040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30324040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30325040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30326040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30327040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30328040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30329040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30330040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30331040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30332040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30333040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30334040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30335040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30337040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30338040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30339040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30340040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30342040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if





		Session("Page")="3"
		if Session("PHCDisplayCounter") > 9 then
		Session("Page")="31"
		end if

		if Session("PHCDisplayCounter") > 18 then
		Session("Page")="32"
		end if

		if Session("PHCDisplayCounter") > 27 then
		Session("Page")="32"
		end if

		Session("ReturnID")="1"
		Response.Redirect "personalhistorycancermaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30344000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
Session("PersonalHistoryCancerSectionStatus")="Completed"

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
    <form action="personalhistorycancer5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->	

<%
if Session("HM10204000")="1" then
%>

  <fieldset>
	<legend class="QuestionBox">
      Which type(s) of plasma cell disorders have you been diagnosed with? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10301000" value="1" id="HM10301000" <%=strHM10301000answer1%>>
		<label for="HM10301000">Amyloidosis</label><br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10302000" value="1" id="HM10302000" <%=strHM10302000answer1%>>
		<label for="HM10302000">MGUS (Monoclonal Gammopathy of Undetermined Significance)</label><br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10303000" value="1" id="HM10303000" <%=strHM10303000answer1%>>
		<label for="HM10303000">Multiple myeloma</label><br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10304000" value="1" id="HM10304000" <%=strHM10304000answer1%>>
		<label for="HM10304000">Plasma cell leukemia</label><br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10305000" value="1" id="HM10305000" <%=strHM10305000answer1%>>
		<label for="HM10305000">Plasmacytoma</label><br>

	</div></fieldset>	
<%
end if
%>

  <fieldset>
    <legend class="QuestionBox">
Have you ever been told by a doctor or other health care professional that your cancer spread or metastasized<br> to other parts of your body?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30344000" class="qTrigger2 required" value="1" 
id="EPQ303440001" <%=strEPQ30344000answer1%>>
		<label for="EPQ303440001">Yes</label><br>
		<input type="radio" name="EPQ30344000" class="qTriggerOff2" value="0" id="EPQ303440002" <%=strEPQ30344000answer2%>>
		<label for="EPQ303440002">No</label><br>
		<input type="radio" name="EPQ30344000" value="2" id="EPQ303440003" class="qTriggerOff2" <%=strEPQ30344000answer3%>>
		<label for="EPQ303440003">I am being evaluated at Moffitt for metastases</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>


<div class="hiddenQ2 atLeastOneCheckboxIfBranchActive">
  <fieldset class="hiddenQ2">
    <legend class="QuestionBox">
To which organ(s) or body part(s) did your cancer metastasize (spread)? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30345040" value="1" id="EPQ30345040" <%=strEPQ30345040answer1%>>
		<label for="EPQ30345040">Brain</label><br>
		<input type="checkbox" name="EPQ30345030" value="1" id="EPQ30345030" <%=strEPQ30345030answer1%>>
		<label for="EPQ30345030">Bone or spine</label><br>
		<input type="checkbox" name="EPQ30345010" value="1" id="EPQ30345010" <%=strEPQ30345010answer1%>>
		<label for="EPQ30345010">Liver</label><br>
		<input type="checkbox" name="EPQ30345020" value="1" id="EPQ30345020" <%=strEPQ30345020answer1%>>
		<label for="EPQ30345020">Lung</label><br>

		<input type="checkbox" name="EPQ30345060" value="1" id="EPQ30345060" <%=strEPQ30345060answer1%>>
		<label for="EPQ30345060">Lymph nodes</label><br>

		<input type="checkbox" name="EPQ30345050" value="1" id="EPQ30345050" <%=strEPQ30345050answer1%>>
		<label for="EPQ30345050">Other, specify:</label>

		<input id="EPQ30345000" type="text" size="28" maxlength="75" name="EPQ30345000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30345000")%>' ><br>
</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
</div><!-- [ /#hiddenQ ] -->

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
