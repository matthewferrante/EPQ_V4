
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC30200000")="1" then
		strTHRC30200000answer1="checked"
	end if
	if Session("THRC30200010")="1" then
		strTHRC30200010answer1="checked"
	end if
	if Session("THRC30200020")="1" then
		strTHRC30200020answer1="checked"
	end if
	if Session("THRC30200030")="1" then
		strTHRC30200030answer1="checked"
	end if
	if Session("THRC30200040")="1" then
		strTHRC30200040answer1="checked"
	end if
	if Session("THRC30200050")="1" then
		strTHRC30200050answer1="checked"
	end if
	if Session("THRC30200060")="1" then
		strTHRC30200060answer1="checked"
	end if
	if Session("THRC30200070")="1" then
		strTHRC30200070answer1="checked"
	end if
	if Session("THRC30200080")="1" then
		strTHRC30200080answer1="checked"
	end if
	if Session("THRC30200090")="1" then
		strTHRC30200090answer1="checked"
	end if
	if Session("THRC30200100")="1" then
		strTHRC30200100answer1="checked"
	end if
	if Session("THRC30200110")="1" then
		strTHRC30200110answer1="checked"
	end if
	if Session("THRC30200120")="1" then
		strTHRC30200120answer1="checked"
	end if
	if Session("THRC30200130")="1" then
		strTHRC30200130answer1="checked"
	end if

	if Session("GI10801000")="1" then
		strGI10801000answer1="checked"
	end if
	if Session("GI10802000")="1" then
		strGI10802000answer1="checked"
	end if

end if

if Request.Form("ispostback")="1" then

	Session("THRC30200000")= Request.Form("THRC30200000")
	Session("THRC30200010")= Request.Form("THRC30200010")
	Session("THRC30200020")= Request.Form("THRC30200020")
	Session("THRC30200030")= Request.Form("THRC30200030")
	Session("THRC30200040")= Request.Form("THRC30200040")
	Session("THRC30200050")= Request.Form("THRC30200050")
	Session("THRC30200060")= Request.Form("THRC30200060")
	Session("THRC30200070")= Request.Form("THRC30200070")
	Session("THRC30200080")= Request.Form("THRC30200080")
	Session("THRC30200090")= Request.Form("THRC30200090")
	Session("THRC30200100")= Request.Form("THRC30200100")
	Session("THRC30200110")= Request.Form("THRC30200110")
	Session("THRC30200120")= Request.Form("THRC30200120")
	Session("THRC30200130")= Request.Form("THRC30200130")

	Session("GI10801000")= Request.Form("GI10801000")
	Session("GI10802000")= Request.Form("GI10802000")

end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
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

	Session("Page")="8"
	Session("FamilyHistoryCancerSectionStatus")=""

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
    <form action="familyhistorycancer8thoracic.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset class='eitherNoneOrChecked'>
<%
if Session("SurveyVersion")="GI" then
if Session("GI10201000")="1" or Session("GI10202000")="1" then 
%>

  	<legend class='QuestionBox'>
	Have any of your blood-related grandparents, aunts or uncles, or nieces or nephews ever been
	diagnosed with the following types of cancer? Check all that apply.
	</legend>
<% else %>
	<legend class='QuestionBox'>
	Have any of your blood-related grandparents, aunts or uncles ever been diagnosed with cancer? Check all that apply.
	</legend>
<% end if %>

<% else %>
	<legend class='QuestionBox'>
	Have any of your blood-related grandparents, aunts or uncles ever been diagnosed with cancer? Check all that apply.
	</legend>
<% end if %>

	<div class="QuestionAnswersBox">


			<input type="checkbox" name="THRC30200020" value="1" 
id="THRC30200020" <%=strTHRC30200020answer1%>>
		<label for="THRC30200020">Colon or rectal cancer</label><br>
		<input type="checkbox" name="THRC30200030" value="1" 
id="THRC302000030" <%=strTHRC30200030answer1%>>
		<label for="THRC302000030">Endometrial or uterine cancer</label><br>
	<input type="checkbox" name="THRC30200000" value="1" 
id="THRC30200000" <%=strTHRC30200000answer1%>>
		<label for="THRC30200000">Female breast cancer</label><br>
		

		<input type="checkbox" name="THRC30200040" value="1" 
id="THRC30200040" <%=strTHRC30200040answer1%>>
		<label for="THRC30200040">Kidney (renal cell) cancer</label><br>
		<input type="checkbox" name="THRC30200050" value="1" 
id="THRC30200050" <%=strTHRC30200050answer1%>>
		<label for="THRC30200050">Leukemia</label><br>
		<input type="checkbox" name="THRC30200060" value="1" 
id="THRC30200060" <%=strTHRC30200060answer1%>>
		<label for="THRC30200060">Lung cancer</label><br>
	<input type="checkbox" name="THRC30200010" value="1" 
id="THRC30200010" <%=strTHRC30200010answer1%>>
		<label for="THRC30200010">Male breast cancer</label><br>
	<input type="checkbox" name="THRC30200070" value="1" 
id="THRC30200070" <%=strTHRC30200070answer1%>>
		<label for="THRC30200070">Melanoma cancer</label><br>
		<input type="checkbox" name="THRC30200080" value="1" 
id="THRC30200080" <%=strTHRC30200080answer1%>>
		<label for="THRC30200080">Ovarian cancer</label><br>
		<input type="checkbox" name="THRC30200090" value="1" 
id="THRC30200090" <%=strTHRC30200090answer1%>>
		<label for="THRC30200090">Pancreatic cancer</label><br>
		<input type="checkbox" name="THRC30200100" value="1" 
id="THRC30200100" <%=strTHRC30200100answer1%>>
		<label for="THRC30200100">Prostate cancer</label><br>

<%
if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
%>

		<input type="checkbox" name="GI10801000" class="atLeastOneCheckboxRequired" value="1" 
id="GI10801000" <%=strGI10801000answer1%>>
		<label for="GI10801000">Small bowel or intestine cancer</label><br>

		<input type="checkbox" name="GI10802000" class="atLeastOneCheckboxRequired" value="1" 
id="GI10802000" <%=strGI10802000answer1%>>
		<label for="GI10802000">Stomach or gastric cancer</label><br>


<%
end if
end if
%>

		<input type="checkbox" name="THRC30200110" value="1" 
id="THRC30200110" <%=strTHRC30200110answer1%>>
		<label for="THRC30200110">Thyroid cancer</label><br>
		<input type="checkbox" name="THRC30200120" value="1" 
id="THRC30200120" <%=strTHRC30200120answer1%>>
		<label for="THRC30200120">A type of cancer not listed above</label><br>
		<br>
		<input type="radio" name="THRC30200130" value="1" 
id="THRC30200130" <%=strTHRC30200130answer1%>>
		<label for="THRC30200130">None</label><br>
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
