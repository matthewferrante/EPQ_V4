
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30805000")="88" then
		strEPQ30805000answer1="checked"
	end if
	if Session("EPQ30805010")="1" then
		strEPQ30805010answer1="checked"
	end if
	if Session("EPQ30805020")="1" then
		strEPQ30805020answer1="checked"
	end if
	if Session("EPQ30805030")="1" then
		strEPQ30805030answer1="checked"
	end if
	if Session("EPQ30805040")="1" then
		strEPQ30805040answer1="checked"
	end if
	if Session("EPQ30805050")="1" then
		strEPQ30805050answer1="checked"
	end if
	if Session("EPQ30805060")="1" then
		strEPQ30805060answer1="checked"
	end if
	if Session("EPQ30805070")="1" then
		strEPQ30805070answer1="checked"
	end if


	if Session("EPQ30805000")="88" then
		strEPQ30805000answer1="checked"
	end if




end if

if Request.Form("ispostback")="1" then
	Session("EPQ30805000")= Request.Form("EPQ30805000")
	Session("EPQ30805010")= Request.Form("EPQ30805010")
	Session("EPQ30805020")= Request.Form("EPQ30805020")
	Session("EPQ30805030")= Request.Form("EPQ30805030")
	Session("EPQ30805040")= Request.Form("EPQ30805040")
	Session("EPQ30805050")= Request.Form("EPQ30805050")
	Session("EPQ30805060")= Request.Form("EPQ30805060")
	Session("EPQ30805070")= Request.Form("EPQ30805070")

	Session("EPQ30805000")= Request.Form("EPQ30805000")

end if


if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("TEMPEPQ31140080")="1" OR Session("TEMPEPQ31140060")="1" OR Session("TEMPEPQ31140010")="1" OR Session("TEMPEPQ31140100")="1" then
	Session("Page")="2"
	else 
	Session("Page")="1"
	end if

		Session("ReturnID")="1"
		Response.Redirect "familyhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

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

	if Session("EPQ30805060")<>"1"  and Session("EPQ30805030")<>"1" and Session("EPQ30805040")<>"1" then
	
		Session.Contents.Remove("EPQ30820010")
		Session.Contents.Remove("EPQ30820020")
		Session.Contents.Remove("EPQ30820030")
		Session.Contents.Remove("EPQ30820040")
		Session.Contents.Remove("EPQ30820050")
		Session.Contents.Remove("EPQ30820060")
		Session.Contents.Remove("EPQ30820070")
		Session.Contents.Remove("EPQ30820080")
		Session.Contents.Remove("EPQ30820090")
		Session.Contents.Remove("EPQ30820100")
		Session.Contents.Remove("EPQ30820110")
	end if


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


	if Session("EPQ30805010")<>"1" AND Session("EPQ30805020")<>"1" AND Session("EPQ30805070")<>"1" then
		Session.Contents.Remove("EPQ30808010")
		Session.Contents.Remove("EPQ30808020")
		Session.Contents.Remove("EPQ30808030")
		Session.Contents.Remove("EPQ30808040")
		Session.Contents.Remove("EPQ30808050")
		Session.Contents.Remove("EPQ30808060")
		Session.Contents.Remove("EPQ30808070")
		Session.Contents.Remove("EPQ30808080")
		Session.Contents.Remove("EPQ30808090")
		Session.Contents.Remove("EPQ30808100")
		Session.Contents.Remove("EPQ30808110")
		Session.Contents.Remove("EPQ30808120")

	end if

	if Session("EPQ30805050")="1" then

	Session.Contents.Remove("EPQ30821010")
	Session.Contents.Remove("EPQ30821020")
	Session.Contents.Remove("EPQ30821030")
	Session.Contents.Remove("EPQ30821040")
	Session.Contents.Remove("EPQ30822010")
	Session.Contents.Remove("EPQ30822020")
	Session.Contents.Remove("EPQ30822030")
	Session.Contents.Remove("EPQ30822040")
	Session.Contents.Remove("EPQ30825010")
	Session.Contents.Remove("EPQ30825020")
	Session.Contents.Remove("EPQ30825030")
	Session.Contents.Remove("EPQ30825040")
	Session.Contents.Remove("EPQ30826010")
	Session.Contents.Remove("EPQ30826020")
	Session.Contents.Remove("EPQ30826030")
	Session.Contents.Remove("EPQ30826040")
	Session.Contents.Remove("EPQ30824010")
	Session.Contents.Remove("EPQ30824020")
	Session.Contents.Remove("EPQ30824030")
	Session.Contents.Remove("EPQ30824040")
	Session.Contents.Remove("EPQ30823010")
	Session.Contents.Remove("EPQ30823020")
	Session.Contents.Remove("EPQ30823030")
	Session.Contents.Remove("EPQ30823040")
	Session.Contents.Remove("CUTA10802010")
	Session.Contents.Remove("CUTA10802020")
	Session.Contents.Remove("CUTA10802030")
	Session.Contents.Remove("CUTA10802040")
	Session.Contents.Remove("EPQ30831010")
	Session.Contents.Remove("EPQ30831020")
	Session.Contents.Remove("EPQ30831030")
	Session.Contents.Remove("EPQ30831040")
	Session.Contents.Remove("EPQ30827010")
	Session.Contents.Remove("EPQ30827020")
	Session.Contents.Remove("EPQ30827030")
	Session.Contents.Remove("EPQ30827040")
	Session.Contents.Remove("EPQ30829010")
	Session.Contents.Remove("EPQ30829020")
	Session.Contents.Remove("EPQ30829030")
	Session.Contents.Remove("EPQ30829040")
	Session.Contents.Remove("EPQ30828010")
	Session.Contents.Remove("EPQ30828020")
	Session.Contents.Remove("EPQ30828030")
	Session.Contents.Remove("EPQ30828040")
	Session.Contents.Remove("EPQ30830010")
	Session.Contents.Remove("EPQ30830020")
	Session.Contents.Remove("EPQ30830030")
	Session.Contents.Remove("EPQ30830040")


	Session.Contents.Remove("EPQ30809010")
	Session.Contents.Remove("EPQ30809020")
	Session.Contents.Remove("EPQ30809030")
	Session.Contents.Remove("EPQ30809040")
	Session.Contents.Remove("EPQ30812010")
	Session.Contents.Remove("EPQ30812020")
	Session.Contents.Remove("EPQ30812030")
	Session.Contents.Remove("EPQ30812040")
	Session.Contents.Remove("EPQ30811010")
	Session.Contents.Remove("EPQ30811020")
	Session.Contents.Remove("EPQ30811030")
	Session.Contents.Remove("EPQ30811040")
	Session.Contents.Remove("EPQ30815010")
	Session.Contents.Remove("EPQ30815020")
	Session.Contents.Remove("EPQ30815030")
	Session.Contents.Remove("EPQ30815040")
	Session.Contents.Remove("EPQ30816010")
	Session.Contents.Remove("EPQ30816020")
	Session.Contents.Remove("EPQ30816030")
	Session.Contents.Remove("EPQ30816040")
	Session.Contents.Remove("EPQ30814010")
	Session.Contents.Remove("EPQ30814020")
	Session.Contents.Remove("EPQ30814030")
	Session.Contents.Remove("EPQ30814040")
	Session.Contents.Remove("EPQ30813010")
	Session.Contents.Remove("EPQ30813020")
	Session.Contents.Remove("EPQ30813030")
	Session.Contents.Remove("EPQ30813040")
	Session.Contents.Remove("CUTA10804010")
	Session.Contents.Remove("CUTA10804020")
	Session.Contents.Remove("CUTA10804030")
	Session.Contents.Remove("CUTA10804040")
	Session.Contents.Remove("EPQ30832010")
	Session.Contents.Remove("EPQ30832020")
	Session.Contents.Remove("EPQ30832030")
	Session.Contents.Remove("EPQ30832040")
	Session.Contents.Remove("EPQ30810010")
	Session.Contents.Remove("EPQ30810020")
	Session.Contents.Remove("EPQ30810030")
	Session.Contents.Remove("EPQ30810040")
	Session.Contents.Remove("EPQ30817010")
	Session.Contents.Remove("EPQ30817020")
	Session.Contents.Remove("EPQ30817030")
	Session.Contents.Remove("EPQ30817040")
	Session.Contents.Remove("EPQ30818010")
	Session.Contents.Remove("EPQ30818020")
	Session.Contents.Remove("EPQ30818030")
	Session.Contents.Remove("EPQ30818040")
	Session.Contents.Remove("EPQ30819010")
	Session.Contents.Remove("EPQ30819020")
	Session.Contents.Remove("EPQ30819030")
	Session.Contents.Remove("EPQ30819040")


	if Session("EPQ30805050")<>"1" then

		Session.Contents.Remove("EPQ30808010")
		Session.Contents.Remove("EPQ30808020")
		Session.Contents.Remove("EPQ30808030")
		Session.Contents.Remove("EPQ30808040")
		Session.Contents.Remove("EPQ30808050")
		Session.Contents.Remove("EPQ30808060")
		Session.Contents.Remove("EPQ30808070")
		Session.Contents.Remove("EPQ30808080")
		Session.Contents.Remove("EPQ30808090")
		Session.Contents.Remove("EPQ30808100")
		Session.Contents.Remove("EPQ30808110")
		Session.Contents.Remove("EPQ30808120")
		Session.Contents.Remove("EPQ30820010")
		Session.Contents.Remove("EPQ30820020")
		Session.Contents.Remove("EPQ30820030")
		Session.Contents.Remove("EPQ30820040")
		Session.Contents.Remove("EPQ30820050")
		Session.Contents.Remove("EPQ30820060")
		Session.Contents.Remove("EPQ30820070")
		Session.Contents.Remove("EPQ30820080")
		Session.Contents.Remove("EPQ30820090")
		Session.Contents.Remove("EPQ30820100")
		Session.Contents.Remove("EPQ30820110")

	end if


	Session("Page")="8"
	If Session("SurveyVersion")="Thoracic" OR Session("GI10201000")="1" OR Session("GI10202000")="1" then
	Session("Page")="8thoracic"
	end if


	Response.Redirect "familyhistorycancermaster.asp"
	end if

	if Session("EPQ30805000")="88" then

	Session.Contents.Remove("EPQ30821010")
	Session.Contents.Remove("EPQ30821020")
	Session.Contents.Remove("EPQ30821030")
	Session.Contents.Remove("EPQ30821040")
	Session.Contents.Remove("EPQ30822010")
	Session.Contents.Remove("EPQ30822020")
	Session.Contents.Remove("EPQ30822030")
	Session.Contents.Remove("EPQ30822040")
	Session.Contents.Remove("EPQ30825010")
	Session.Contents.Remove("EPQ30825020")
	Session.Contents.Remove("EPQ30825030")
	Session.Contents.Remove("EPQ30825040")
	Session.Contents.Remove("EPQ30826010")
	Session.Contents.Remove("EPQ30826020")
	Session.Contents.Remove("EPQ30826030")
	Session.Contents.Remove("EPQ30826040")
	Session.Contents.Remove("EPQ30824010")
	Session.Contents.Remove("EPQ30824020")
	Session.Contents.Remove("EPQ30824030")
	Session.Contents.Remove("EPQ30824040")
	Session.Contents.Remove("EPQ30823010")
	Session.Contents.Remove("EPQ30823020")
	Session.Contents.Remove("EPQ30823030")
	Session.Contents.Remove("EPQ30823040")
	Session.Contents.Remove("CUTA10802010")
	Session.Contents.Remove("CUTA10802020")
	Session.Contents.Remove("CUTA10802030")
	Session.Contents.Remove("CUTA10802040")
	Session.Contents.Remove("EPQ30831010")
	Session.Contents.Remove("EPQ30831020")
	Session.Contents.Remove("EPQ30831030")
	Session.Contents.Remove("EPQ30831040")
	Session.Contents.Remove("EPQ30827010")
	Session.Contents.Remove("EPQ30827020")
	Session.Contents.Remove("EPQ30827030")
	Session.Contents.Remove("EPQ30827040")
	Session.Contents.Remove("EPQ30829010")
	Session.Contents.Remove("EPQ30829020")
	Session.Contents.Remove("EPQ30829030")
	Session.Contents.Remove("EPQ30829040")
	Session.Contents.Remove("EPQ30828010")
	Session.Contents.Remove("EPQ30828020")
	Session.Contents.Remove("EPQ30828030")
	Session.Contents.Remove("EPQ30828040")
	Session.Contents.Remove("EPQ30830010")
	Session.Contents.Remove("EPQ30830020")
	Session.Contents.Remove("EPQ30830030")
	Session.Contents.Remove("EPQ30830040")


	Session.Contents.Remove("EPQ30809010")
	Session.Contents.Remove("EPQ30809020")
	Session.Contents.Remove("EPQ30809030")
	Session.Contents.Remove("EPQ30809040")
	Session.Contents.Remove("EPQ30812010")
	Session.Contents.Remove("EPQ30812020")
	Session.Contents.Remove("EPQ30812030")
	Session.Contents.Remove("EPQ30812040")
	Session.Contents.Remove("EPQ30811010")
	Session.Contents.Remove("EPQ30811020")
	Session.Contents.Remove("EPQ30811030")
	Session.Contents.Remove("EPQ30811040")
	Session.Contents.Remove("EPQ30815010")
	Session.Contents.Remove("EPQ30815020")
	Session.Contents.Remove("EPQ30815030")
	Session.Contents.Remove("EPQ30815040")
	Session.Contents.Remove("EPQ30816010")
	Session.Contents.Remove("EPQ30816020")
	Session.Contents.Remove("EPQ30816030")
	Session.Contents.Remove("EPQ30816040")
	Session.Contents.Remove("EPQ30814010")
	Session.Contents.Remove("EPQ30814020")
	Session.Contents.Remove("EPQ30814030")
	Session.Contents.Remove("EPQ30814040")
	Session.Contents.Remove("EPQ30813010")
	Session.Contents.Remove("EPQ30813020")
	Session.Contents.Remove("EPQ30813030")
	Session.Contents.Remove("EPQ30813040")
	Session.Contents.Remove("CUTA10804010")
	Session.Contents.Remove("CUTA10804020")
	Session.Contents.Remove("CUTA10804030")
	Session.Contents.Remove("CUTA10804040")
	Session.Contents.Remove("EPQ30832010")
	Session.Contents.Remove("EPQ30832020")
	Session.Contents.Remove("EPQ30832030")
	Session.Contents.Remove("EPQ30832040")
	Session.Contents.Remove("EPQ30810010")
	Session.Contents.Remove("EPQ30810020")
	Session.Contents.Remove("EPQ30810030")
	Session.Contents.Remove("EPQ30810040")
	Session.Contents.Remove("EPQ30817010")
	Session.Contents.Remove("EPQ30817020")
	Session.Contents.Remove("EPQ30817030")
	Session.Contents.Remove("EPQ30817040")
	Session.Contents.Remove("EPQ30818010")
	Session.Contents.Remove("EPQ30818020")
	Session.Contents.Remove("EPQ30818030")
	Session.Contents.Remove("EPQ30818040")
	Session.Contents.Remove("EPQ30819010")
	Session.Contents.Remove("EPQ30819020")
	Session.Contents.Remove("EPQ30819030")
	Session.Contents.Remove("EPQ30819040")


	Session("Page")="8"
	If Session("SurveyVersion")="Thoracic" OR Session("GI10201000")="1" OR Session("GI10202000")="1" then
	Session("Page")="8thoracic"
	end if

	if Session("EPQ30805000")<>"88" then

		Session.Contents.Remove("EPQ30808010")
		Session.Contents.Remove("EPQ30808020")
		Session.Contents.Remove("EPQ30808030")
		Session.Contents.Remove("EPQ30808040")
		Session.Contents.Remove("EPQ30808050")
		Session.Contents.Remove("EPQ30808060")
		Session.Contents.Remove("EPQ30808070")
		Session.Contents.Remove("EPQ30808080")
		Session.Contents.Remove("EPQ30808090")
		Session.Contents.Remove("EPQ30808100")
		Session.Contents.Remove("EPQ30808110")
		Session.Contents.Remove("EPQ30808120")
		Session.Contents.Remove("EPQ30820010")
		Session.Contents.Remove("EPQ30820020")
		Session.Contents.Remove("EPQ30820030")
		Session.Contents.Remove("EPQ30820040")
		Session.Contents.Remove("EPQ30820050")
		Session.Contents.Remove("EPQ30820060")
		Session.Contents.Remove("EPQ30820070")
		Session.Contents.Remove("EPQ30820080")
		Session.Contents.Remove("EPQ30820090")
		Session.Contents.Remove("EPQ30820100")
		Session.Contents.Remove("EPQ30820110")

	end if

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
	end if


	Session("Page")="4"
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
<script type="text/javascript">
	// make sure that mutually exclusive radio buttons cannot both be selected
	$(function() {
		$('#EPQ30805050').change(function() { $(this).is(':checked') && $('#EPQ30805000').removeAttr('checked'); });
		$('#EPQ30805000').change(function() { $(this).is(':checked') && $('#EPQ30805050').removeAttr('checked'); });
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

    <form action="familyhistorycancer3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class='eitherNoneDontKnowOrChecked'>
  <legend class='QuestionBox'>
Have any of your <u>IMMEDIATE</u> blood-related family members been told by a doctor or other health care<br> professional that they had cancer? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30805010" value="1" 
id="EPQ30805010" <%=strEPQ30805010answer1%>>
		<label for="EPQ30805010">Mother</label><br>
		<input type="checkbox" name="EPQ30805030" value="1" 
id="EPQ30805030" <%=strEPQ30805030answer1%>>
		<label for="EPQ30805030">Father</label><br>
		<input type="checkbox" name="EPQ30805060" value="1" 
id="EPQ30805060" <%=strEPQ30805060answer1%>>
		<label for="EPQ30805060">Brother(s)</label><br>
</span>
<span class="column2">
		<input type="checkbox" name="EPQ30805020" value="1" 
id="EPQ30805020" <%=strEPQ30805020answer1%>>
		<label for="EPQ30805020">Sister(s)</label><br>
		<input type="checkbox" name="EPQ30805040" value="1" 
id="EPQ30805040" <%=strEPQ30805040answer1%>>
		<label for="EPQ30805040">Son(s)</label><br>
		<input type="checkbox" name="EPQ30805070" value="1" 
id="EPQ30805070" <%=strEPQ30805070answer1%>>
		<label for="EPQ30805070">Daughter(s)</label><br>
</span>
<span class="column3">
		<input type="radio" name="EPQ30805050" value="1" 
id="EPQ30805050" <%=strEPQ30805050answer1%>>
		<label for="EPQ30805050">None</label><br>
		<input type="radio" name="EPQ30805000" value="88" 
id="EPQ30805000" <%=strEPQ30805000answer1%>>
		<label for="EPQ30805000">Don't Know</label><br>
</span>
<br><BR>
</div><!-- [ /#AnswerBox] -->
</fieldset>
<div>
<BR>
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
