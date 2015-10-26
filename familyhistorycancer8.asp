
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30802000")="1" then
		strEPQ30802000answer1="checked"
	end if
	if Session("EPQ30802000b")="1" then
		strEPQ30802000answer2="checked"
	end if
	if Session("EPQ30802000c")="1" then
		strEPQ30802000answer3="checked"
	end if
	if Session("EPQ30802000d")="88" then
		strEPQ30802000answer4="checked"
	end if
end if

if Request.Form("ispostback")="1" then
	Session("EPQ30802000")= Request.Form("EPQ30802000")
	Session("EPQ30802000b")= Request.Form("EPQ30802000b")
	Session("EPQ30802000c")= Request.Form("EPQ30802000c")
	Session("EPQ30802000d")= Request.Form("EPQ30802000d")
end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


	if Session("SurveyVersion")="Thoracic" OR Session("GI10201000")="1" OR Session("GI10202000")="1" then
	Session("ReturnID")="1"
	Session("FamilyHistoryCancerSectionStatus")=""
	Session("Page")="8thoracic"
	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805010")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805020")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
	if Session("EPQ30805070")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if
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

	Session("ReturnID")="1"
	Session("Page")=3
	Response.Redirect "familyhistorycancermaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("FamilyHistoryCancerSectionStatus")="Completed"
	Session("Page")="0"
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
<script type="text/javascript">
	// make sure that mutually exclusive radio buttons cannot both be selected
	$(function() {
		$('#EPQ30802000c').change(function() { $(this).is(':checked') && $('#EPQ30802000d').removeAttr('checked'); });
		$('#EPQ30802000d').change(function() { $(this).is(':checked') && $('#EPQ30802000c').removeAttr('checked'); });
		$('#EPQ30803000c').change(function() { $(this).is(':checked') && $('#EPQ30803000d').removeAttr('checked'); });
		$('#EPQ30803000d').change(function() { $(this).is(':checked') && $('#EPQ30803000c').removeAttr('checked'); });
	});
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
It is very important that we know additional information about your biological  relatives who were diagnosed with cancer.  Please note that in this section we are  referring only to your blood-related (biological) relatives.
	</div>
<br>
    <form action="familyhistorycancer8.asp" method="post" id="formQuestion"  name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function  above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1"  ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset class="eitherNoneDontKnowOrChecked">
  <legend class='QuestionBox'>
Is your mother or father of Ashkenazi Jewish background? (An Ashkenazi Jew is one  whose ancestry can be<br> traced to the Jews of Central and Eastern Europe. Families  of this background may have increased risk of some<br> cancers). Check all that apply.
	</legend>

	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30802000" value="1" id="EPQ30802000"  <%=strEPQ30802000answer1%>>
		<label for="EPQ30802000">Yes, my biological mother</label><br>
		
		<input type="checkbox" name="EPQ30802000b" value="1" id="EPQ30802000b"  <%=strEPQ30802000answer2%>>
		<label for="EPQ30802000b">Yes, my biological father</label><br>
</span>
<span class="column2">
		<input type="radio" name="EPQ30802000c" value="1" id="EPQ30802000c" <%=strEPQ30802000answer3%>>
		<label for="EPQ30802000c">Neither of my biological parents</label><br>

		<input type="radio" name="EPQ30802000d" value="88" id="EPQ30802000d"  <%=strEPQ30802000answer4%>>
		<label for="EPQ30802000d">Don't know</label><br>
</span>

</div><!-- [ /#AnswerBox] --> 
</fieldset>
	</form>

</div> <!-- [ /#formBlock ] -->
	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->
	</div> <!-- [ /#buttonBox ] -->

</div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
 </div> <!-- [ /#rightbar ] -->

</div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
