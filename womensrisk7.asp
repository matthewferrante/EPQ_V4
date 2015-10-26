
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30610001")="1" then
		strEPQ30610001answer1="checked"
	end if
	if Session("EPQ30610002")="1" then
		strEPQ30610002answer1="checked"
	end if
	if Session("EPQ30610003")="1" then
		strEPQ30610003answer1="checked"
	end if
	if Session("EPQ30610004")="1" then
		strEPQ30610004answer1="checked"
	end if
	if Session("EPQ30610005")="1" then
		strEPQ30610005answer1="checked"
	end if
	if Session("EPQ30610006")="1" then
		strEPQ30610006answer1="checked"
	end if
	if Session("EPQ30610007")="1" then
		strEPQ30610007answer1="checked"
	end if
	if Session("EPQ30610008")="88" then
		strEPQ30610008answer1="checked"
	end if
	if Session("EPQ30610010")="1" then
		strEPQ30610010answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30610001string")= ""
	Session("EPQ30610002string")= ""
	Session("EPQ30610003string")= ""
	Session("EPQ30610004string")= ""
	Session("EPQ30610005string")= ""
	Session("EPQ30610006string")= ""
	Session("EPQ30610007string")= ""
	Session("EPQ30610008string")= ""
	Session("EPQ30610010string")= ""

	Session("EPQ30610001") = Request.Form("EPQ30610001")
	Session("EPQ30610002") = Request.Form("EPQ30610002")
	Session("EPQ30610003") = Request.Form("EPQ30610003")
	Session("EPQ30610004") = Request.Form("EPQ30610004")
	Session("EPQ30610005") = Request.Form("EPQ30610005")
	Session("EPQ30610006") = Request.Form("EPQ30610006")
	Session("EPQ30610007") = Request.Form("EPQ30610007")
	Session("EPQ30610008") = Request.Form("EPQ30610008")
	Session("EPQ30610009") = Request.Form("EPQ30610009")
	Session("EPQ30610010") = Request.Form("EPQ30610010")

	if Session("EPQ306100001") = "1" then 
		Session("EPQ30610001string")= "Estrogen patches or gels (Climara, Estrogel, Menostar, Vivelle-Dot)"
	end if
	if Session("EPQ306100002") = "1" then 
		Session("EPQ30610002string")= "Estrogen pills (Estrace, Premarian, Ortho-EST, Estradiol)"
	end if
	if Session("EPQ306100003") = "1" then 
		Session("EPQ30610003string")= "Estrogen vaginal creams and suppositories (Estrace, Estring, Vagifem)"
	end if
	if Session("EPQ306100004") = "1" then 
		Session("EPQ30610004string")= "Estrogen and Progesterone combination patch (Climara Pro, Combipatch)"
	end if
	if Session("EPQ306100005") = "1" then 
		Session("EPQ30610005string")= "Estrogen and Progesterone combination pills (Premphase, Prempro, Activella, femHRT)"
	end if
	if Session("EPQ306100006") = "1" then 
		Session("EPQ30610006string")= "Progesterone pills (Provera, Prometrium)"
	end if
	if Session("EPQ306100007") = "1" then 
		Session("EPQ30610007string")= "Other please describe"
	end if
	if Session("EPQ306100008") = "1" then 
		Session("EPQ30610008string")= "I do not know"
	end if
	if Session("EPQ306100010") = "1" then 
		Session("EPQ30610010string")= "Bio-identical hormone replacement therapy (BHRT)"
	end if

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=6
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30610001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="8"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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


    <form action="womensrisk7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
  <legend class='QuestionBox'>
Please check what type of hormones usually prescribed for menopause or perimenopause you have ever taken. Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30610010" value="1" id="EPQ30610010" <%=strEPQ30610010answer1%>>
		<label for="EPQ30610010">Bio-identical hormone replacement therapy (BHRT) drugs from a compounding pharmacy</label><br>
		<input type="checkbox" name="EPQ30610004" value="1" id="EPQ30610004" <%=strEPQ30610004answer1%>>
		<label for="EPQ30610004">Estrogen and progesterone combination patch (such as Climara Pro, Combipatch)</label><br>
		<input type="checkbox" name="EPQ30610005" value="1" id="EPQ30610005" <%=strEPQ30610005answer1%>>
		<label for="EPQ30610005">Estrogen and progesterone combination pills (such as Premphase, Prempro, Activella, femhrt)</label><br>

		<input type="checkbox" name="EPQ30610001" value="1" id="EPQ30610001" <%=strEPQ30610001answer1%>>
		<label for="EPQ30610001">Estrogen patches, gels, or sprays (such as Climara, Estrogel, Menostar, Vivelle-Dot)</label><br>
		<input type="checkbox" name="EPQ30610002" value="1" id="EPQ30610002" <%=strEPQ30610002answer1%>>
		<label for="EPQ30610002">Estrogen pills (such as Estrace, Premarin, Ogen, Estradiol)</label><br>
		<input type="checkbox" name="EPQ30610003" value="1" id="EPQ30610003" <%=strEPQ30610003answer1%>>
		<label for="EPQ30610003">Estrogen vaginal creams, rings, and suppositories (such as Estrace, Estring, Premarin, Vagifem)</label><br>
		<input type="checkbox" name="EPQ30610006" value="1" id="EPQ30610006" <%=strEPQ30610006answer1%>>
		<label for="EPQ30610006">Progesterone pills (such as Provera, Prometrium)</label><br>

		<input type="checkbox" name="EPQ30610007" value="1" id="EPQ30610007" <%=strEPQ30610007answer1%>>
		<label for="EPQ30610007">Other, specify:</label>
		<input id="EPQ30610009" type="text" maxlength="75" size="15" name="EPQ30610009" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30610009")%>' ><br>

		<input type="radio" name="EPQ30610008" value="88" id="EPQ30610008" <%=strEPQ30610008answer1%>>
		<label for="EPQ30610008">I don't know</label>
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
