
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30515010")="1" then
		strEPQ30515010answer1="checked"
	end if
	if Session("EPQ30515020")="1" then
		strEPQ30515020answer1="checked"
	end if
	if Session("EPQ30515030")="1" then
		strEPQ30515030answer1="checked"
	end if
	if Session("EPQ30515040")="1" then
		strEPQ30515040answer1="checked"
	end if
	if Session("EPQ30515050")="1" then
		strEPQ30515050answer1="checked"
	end if
	if Session("EPQ30515060")="1" then
		strEPQ30515060answer1="checked"
	end if
	if Session("EPQ30515070")="1" then
		strEPQ30515070answer1="checked"
	end if
	if Session("EPQ30515080")="1" then
		strEPQ30515080answer1="checked"
	end if
	if Session("EPQ30515090")="1" then
		strEPQ30515090answer1="checked"
	end if
	if Session("EPQ30515100")="1" then
		strEPQ30515100answer1="checked"
	end if
	if Session("EPQ30515110")="1" then
		strEPQ30515110answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30515010string")= ""
	Session("EPQ30515020string")= ""
	Session("EPQ30515030string")= ""
	Session("EPQ30515040string")= ""
	Session("EPQ30515050string")= ""
	Session("EPQ30515060string")= ""
	Session("EPQ30515070string")= ""
	Session("EPQ30515080string")= ""
	Session("EPQ30515090string")= ""
	Session("EPQ30515100string")= ""
	Session("EPQ30515110string")= ""



	Session("EPQ30515000") = Request.Form("EPQ30515000")
	Session("EPQ30515010") = Request.Form("EPQ30515010")
	Session("EPQ30515020") = Request.Form("EPQ30515020")
	Session("EPQ30515030") = Request.Form("EPQ30515030")
	Session("EPQ30515040") = Request.Form("EPQ30515040")
	Session("EPQ30515050") = Request.Form("EPQ30515050")
	Session("EPQ30515060") = Request.Form("EPQ30515060")
	Session("EPQ30515070") = Request.Form("EPQ30515070")
	Session("EPQ30515080") = Request.Form("EPQ30515080")
	Session("EPQ30515090") = Request.Form("EPQ30515090")
	Session("EPQ30515100") = Request.Form("EPQ30515100")
	Session("EPQ30515110") = Request.Form("EPQ30515110")

	if Session("EPQ30515010") = "1" then 
		Session("EPQ30515010string")= ""
	end if
	if Session("EPQ30515020") = "1" then 
		Session("EPQ30515020string")= ""
	end if
	if Session("EPQ30515030") = "1" then 
		Session("EPQ30515030string")= ""
	end if
	if Session("EPQ30515040") = "1" then 
		Session("EPQ30515040string")= ""
	end if
	if Session("EPQ30515050") = "1" then 
		Session("EPQ30515050string")= ""
	end if
	if Session("EPQ30515060") = "1" then 
		Session("EPQ30515060string")= ""
	end if
	if Session("EPQ30515070") = "1" then 
		Session("EPQ30515070string")= ""
	end if
	if Session("EPQ30515080") = "1" then 
		Session("EPQ30515080string")= ""
	end if
	if Session("EPQ30515090") = "1" then 
		Session("EPQ30515090string")= ""
	end if
	if Session("EPQ30515100") = "1" then 
		Session("EPQ30515100string")= ""
	end if
	if Session("EPQ30515110") = "1" then 
		Session("EPQ30515110string")= ""
	end if

	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=9
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30515010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("HM10204000")="1"  OR Session("HM10207000")="1" then
if Session("EPQ30515050")="1" then

	Session("Page")="10a"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"

end if
end if

if Session("HM10207000")="1"  OR Session("HM10204000")="1" then
if Session("EPQ30515040")="1" then

	Session("Page")="10a1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"

end if
end if

if Session("EPQ30515050")<>"1" then
	Session.Contents.Remove("HM10402000")
	Session.Contents.Remove("HM10403000")
	Session.Contents.Remove("HM10404000")
	Session.Contents.Remove("HM10405000")
	Session.Contents.Remove("HM10406000")
	Session.Contents.Remove("HM10407000")
	Session.Contents.Remove("HM10416000")
	Session.Contents.Remove("HM10417000")
end if

if Session("EPQ30515040")<>"1" then
	Session.Contents.Remove("HM10408000")
	Session.Contents.Remove("HM10409000")
	Session.Contents.Remove("HM10410000")
	Session.Contents.Remove("HM10411000")
	Session.Contents.Remove("HM10412000")
	Session.Contents.Remove("HM10413000")
	Session.Contents.Remove("HM10414000")
	Session.Contents.Remove("HM10415000")
end if


	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms10.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any brain or nervous system symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30515070" value="1" id="EPQ30515070" <%=strEPQ30515070answer1%>>
		<label for="EPQ30515070">Clumsiness of hands or feet</label><br>
		<input type="checkbox" name="EPQ30515090" value="1" id="EPQ30515090" <%=strEPQ30515090answer1%>>
		<label for="EPQ30515090">Difficulty talking</label>	<br>
		<input type="checkbox" name="EPQ30515050" value="1" id="EPQ30515050" <%=strEPQ30515050answer1%>>
		<label for="EPQ30515050">Forgetfulness (memory loss)</label><br>
		<input type="checkbox" name="EPQ30515010" value="1" id="EPQ30515010" <%=strEPQ30515010answer1%>>
		<label for="EPQ30515010">Frequent or severe headaches</label><br>
		<input type="checkbox" name="EPQ30515020" value="1" id="EPQ30515020" <%=strEPQ30515020answer1%>>
		<label for="EPQ30515020">Light headedness or dizziness</label><br>

<br><br>

		<input type="radio" name="EPQ30515110" value="1" id="EPQ30515110" <%=strEPQ30515110answer1%>>
		<label for="EPQ30515110">None</label><br>
</span>

<span class="column2">
		<input type="checkbox" name="EPQ30515030" value="1" id="EPQ30515030" <%=strEPQ30515030answer1%>>
		<label for="EPQ30515030">Loss of consciousness</label><br>

		<input type="checkbox" name="EPQ30515040" value="1" id="EPQ30515040" <%=strEPQ30515040answer1%>>
		<label for="EPQ30515040">Numbness or tingling of hands or feet (neuropathy)</label><br>
		<input type="checkbox" name="EPQ30515080" value="1" id="EPQ30515080" <%=strEPQ30515080answer1%>>
		<label for="EPQ30515080">Seizures or convulsions</label><br>
		<input type="checkbox" name="TENOEPQ30515080" value="1" id="TEMPEPQ30515080" <%=strEPQ30515080answer1%>>
		<label for="TEMPEPQ30515080">Tremors or shaking</label><br>

		<input type="checkbox" name="EPQ30515060" value="1" id="EPQ30515060" <%=strEPQ30515060answer1%>>
		<label for="EPQ30515060">Weakness or change in sensation in an arm or leg</label><br>

		<input type="checkbox" name="EPQ30515100" value="1" id="EPQ30515100" <%=strEPQ30515100answer1%>>
		<label for="EPQ30515100">Other, specify:</label>	

	<input id="EPQ30515000" type="text" maxlength="75" size="15" name="EPQ30515000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30515000")%>'><br>
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
