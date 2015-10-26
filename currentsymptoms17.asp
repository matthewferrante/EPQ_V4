
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="CurrentSymptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30522010")="1" then
		strEPQ30522010answer1="checked"
	end if
	if Session("EPQ30522020")="1" then
		strEPQ30522020answer1="checked"
	end if
	if Session("EPQ30522030")="1" then
		strEPQ30522030answer1="checked"
	end if
	if Session("EPQ30522040")="1" then
		strEPQ30522040answer1="checked"
	end if
	if Session("EPQ30522050")="1" then
		strEPQ30522050answer1="checked"
	end if
	if Session("EPQ30522060")="1" then
		strEPQ30522060answer1="checked"
	end if
	if Session("EPQ30522070")="1" then
		strEPQ30522070answer1="checked"
	end if
	if Session("EPQ30522080")="1" then
		strEPQ30522080answer1="checked"
	end if
	if Session("EPQ30522090")="1" then
		strEPQ30522090answer1="checked"
	end if
	if Session("EPQ30522100")="1" then
		strEPQ30522100answer1="checked"
	end if
	if Session("EPQ30522110")="1" then
		strEPQ30522110answer1="checked"
	end if
	if Session("EPQ30522120")="1" then
		strEPQ30522120answer1="checked"
	end if
	if Session("EPQ30522130")="1" then
		strEPQ30522130answer1="checked"
	end if
	if Session("EPQ30522140")="1" then
		strEPQ30522140answer1="checked"
	end if
	if Session("EPQ30522150")="1" then
		strEPQ30522150answer1="checked"
	end if
	if Session("EPQ30522160")="1" then
		strEPQ30522160answer1="checked"
	end if
	if Session("EPQ30522170")="1" then
		strEPQ30522170answer1="checked"
	end if
	if Session("EPQ30522180")="1" then
		strEPQ30522180answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30522010") = Request.Form("EPQ30522010")
	Session("EPQ30522020") = Request.Form("EPQ30522020")
	Session("EPQ30522030") = Request.Form("EPQ30522030")
	Session("EPQ30522040") = Request.Form("EPQ30522040")
	Session("EPQ30522050") = Request.Form("EPQ30522050")
	Session("EPQ30522060") = Request.Form("EPQ30522060")
	Session("EPQ30522070") = Request.Form("EPQ30522070")
	Session("EPQ30522080") = Request.Form("EPQ30522080")
	Session("EPQ30522090") = Request.Form("EPQ30522090")
	Session("EPQ30522100") = Request.Form("EPQ30522100")
	Session("EPQ30522110") = Request.Form("EPQ30522110")
	Session("EPQ30522120") = Request.Form("EPQ30522120")
	Session("EPQ30522130") = Request.Form("EPQ30522130")
	Session("EPQ30522140") = Request.Form("EPQ30522140")
	Session("EPQ30522150") = Request.Form("EPQ30522150")
	Session("EPQ30522160") = Request.Form("EPQ30522160")
	Session("EPQ30522170") = Request.Form("EPQ30522170")
	Session("EPQ30522180") = Request.Form("EPQ30522180")


	
end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
Session("ReturnID")="1"

if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
	if Session("GU10201000")="1" then
		Session("Page")="28"
		Response.Redirect "currentsymptomsmaster.asp"
	else
	end if
end if
end if


	If Session("Gender")="F" then 
		Session("Page")="162"
	else
		Session("Page")="16"
	end if
		Response.Redirect "currentsymptomsmaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30522010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	if Session("EPQ30522010") = "1" then 
	Session("Page")="18"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522010")<>"1" then

		Session.Contents.Remove("EPQ30523000")
		Session.Contents.Remove("EPQ30524000")
	end if

	if Session("EPQ30522060") = "1" OR Session("EPQ30518040") = "1" then 
	Session("Page")="19"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522060")<>"1" AND Session("EPQ30518040")<>"1" then

		Session.Contents.Remove("EPQ30525000")
		Session.Contents.Remove("EPQ30525010")
		Session.Contents.Remove("EPQ30525020")
		Session.Contents.Remove("EPQ30525030")
		Session.Contents.Remove("EPQ30525050")

	end if

	if Session("EPQ30522040") = "1" then 
	Session("Page")="20"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522040")<>"1" then

		Session.Contents.Remove("EPQ30526000")
		Session.Contents.Remove("EPQ30526010")
		Session.Contents.Remove("EPQ30526020")
		Session.Contents.Remove("EPQ30526030")
		Session.Contents.Remove("EPQ30526040")
		Session.Contents.Remove("EPQ30526050")
		Session.Contents.Remove("EPQ30526060")
		Session.Contents.Remove("EPQ30526070")
		Session.Contents.Remove("EPQ30526080")
		Session.Contents.Remove("EPQ30526090")
		Session.Contents.Remove("EPQ30526100")
		Session.Contents.Remove("EPQ30526110")
		Session.Contents.Remove("EPQ30526120")
		Session.Contents.Remove("EPQ30526130")
		Session.Contents.Remove("EPQ30526140")


	end if

	if Session("EPQ30522170") = "1" then 
	Session("Page")="21"
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	if Session("EPQ30522060")<>"1" then

		Session.Contents.Remove("EPQ30527000")
		Session.Contents.Remove("EPQ30525010")
		Session.Contents.Remove("EPQ30525020")
		Session.Contents.Remove("EPQ30525050")
		Session.Contents.Remove("EPQ30525030")
		Session.Contents.Remove("EPQ30525000")
	
	end if

	if Session("EPQ30522170")<>"1" then

		Session.Contents.Remove("EPQ30527000")

	end if


	if Session("ProductionModeSpoke2")="GU" then
	if Session("SurveyVersion")="GU" then


	'if Session("GU10202000")="1" then
	'	Session("Page")="29"
	'	Response.Redirect "currentsymptomsmaster.asp"
	' end if 
	'Remove Bladder Branch
	if Session("GU10201000")="1" then
		Session("Page")="29"
		Response.Redirect "currentsymptomsmaster.asp"
	end if 

	end if
	end if


	Session("Page")="22"
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


    <form action="currentsymptoms17.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
      Have you had any digestive or digestive tract symptoms in the past 3 months? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30522090" value="1" id="EPQ30522090" <%=strEPQ30522090answer1%>>
		<label for="EPQ30522090">Abdominal pain or pressure (includes stomach)</label><br>
		<input type="checkbox" name="EPQ30522160" value="1" id="EPQ30522160" <%=strEPQ30522160answer1%>>
		<label for="EPQ30522160">Bad reaction to some foods</label><br>
		<input type="checkbox" name="EPQ30522140" value="1" id="EPQ30522140" <%=strEPQ30522140answer1%>>
		<label for="EPQ30522140">Bloating of stomach or increased abdomen size</label><br>

		<input type="checkbox" name="EPQ30522040" value="1" id="EPQ30522040" <%=strEPQ30522040answer1%>>
		<label for="EPQ30522040">Change in stools or bowel habits<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (such as appearance or frequency)</label><br>

		<input type="checkbox" name="EPQ30522100" value="1" id="EPQ30522100" <%=strEPQ30522100answer1%>>
		<label for="EPQ30522100">Frequent heartburn and indigestion</label><br>
		<input type="checkbox" name="EPQ30522120" value="1" id="EPQ30522120" <%=strEPQ30522120answer1%>>
		<label for="EPQ30522120">Getting full quickly after eating</label><br>
		<input type="checkbox" name="EPQ30522150" value="1" id="EPQ30522150" <%=strEPQ30522150answer1%>>
		<label for="EPQ30522150">Hemorrhoids</label><br>
		<input type="checkbox" name="EPQ30522130" value="1" id="EPQ30522130" <%=strEPQ30522130answer1%>>
		<label for="EPQ30522130">Itching or burning in rectal area</label><br>


<br><br>
		<input type="radio" name="EPQ30522180" value="1" id="EPQ30522180" <%=strEPQ30522180answer1%>>
		<label for="EPQ30522180">None</label><br>
</span>

<span class="column2">

		<input type="checkbox" name="EPQ30522020" value="1" id="EPQ30522020" <%=strEPQ30522020answer1%>>
		<label for="EPQ30522020">Jaundice (yellowing of eyes and/or skin)</label><br>
		<input type="checkbox" name="EPQ30522010" value="1" id="EPQ30522010" <%=strEPQ30522010answer1%>>
		<label for="EPQ30522010">Nausea</label><br>

		<input type="checkbox" name="EPQ30522070" value="1" id="EPQ30522070" <%=strEPQ30522070answer1%>>
		<label for="EPQ30522070">Pain while having a bowel movement</label><br>
		<input type="checkbox" name="EPQ30522110" value="1" id="EPQ30522110" <%=strEPQ30522110answer1%>>
		<label for="EPQ30522110">Rectal pain</label><br>

		<input type="checkbox" name="EPQ30522060" value="1" id="EPQ30522060" <%=strEPQ30522060answer1%>>
		<label for="EPQ30522060">Trouble swallowing</label><br>
		<input type="checkbox" name="EPQ30522080" value="1" id="EPQ30522080" <%=strEPQ30522080answer1%>>
		<label for="EPQ30522080">Ulcers</label><br>
		<input type="checkbox" name="EPQ30522030" value="1" id="EPQ30522030" <%=strEPQ30522030answer1%>>
		<label for="EPQ30522030">Vomiting</label><br>
		<input type="checkbox" name="EPQ30522050" value="1" id="EPQ30522050" <%=strEPQ30522050answer1%>>
		<label for="EPQ30522050">Vomiting blood</label><br>
		<input type="checkbox" name="EPQ30522170" value="1" id="EPQ30522170" <%=strEPQ30522170answer1%>>
		<label for="EPQ30522170">Other</label>	
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
