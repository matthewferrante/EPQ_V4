
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30618001")="1" then
		strEPQ30618001answer1="checked"
	end if
	if Session("EPQ30618002")="1" then
		strEPQ30618002answer1="checked"
	end if
	if Session("EPQ30618003")="1" then
		strEPQ30618003answer1="checked"
	end if
	if Session("EPQ30618004")="1" then
		strEPQ30618004answer1="checked"
	end if
	if Session("EPQ30618005")="1" then
		strEPQ30618005answer1="checked"
	end if
	if Session("EPQ30618006")="1" then
		strEPQ30618006answer1="checked"
	end if
	if Session("EPQ30618007")="1" then
		strEPQ30618007answer1="checked"
	end if
	if Session("EPQ30618008")="1" then
		strEPQ30618008answer1="checked"
	end if
	if Session("EPQ30618009")="1" then
		strEPQ30618009answer1="checked"
	end if
	if Session("EPQ30618010")="1" then
		strEPQ30618010answer1="checked"
	end if
	if Session("EPQ30618011")="1" then
		strEPQ30618011answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30618001string")= ""
	Session("EPQ30618002string")= ""
	Session("EPQ30618003string")= ""
	Session("EPQ30618004string")= ""
	Session("EPQ30618005string")= ""
	Session("EPQ30618006string")= ""
	Session("EPQ30618007string")= ""
	Session("EPQ30618008string")= ""
	Session("EPQ30618009string")= ""
	Session("EPQ30618010string")= ""
	Session("EPQ30618011string")= ""
	Session("EPQ30618012string")= ""

	Session("EPQ30618001") = Request.Form("EPQ30618001")
	Session("EPQ30618002") = Request.Form("EPQ30618002")
	Session("EPQ30618003") = Request.Form("EPQ30618003")
	Session("EPQ30618004") = Request.Form("EPQ30618004")
	Session("EPQ30618005") = Request.Form("EPQ30618005")
	Session("EPQ30618006") = Request.Form("EPQ30618006")
	Session("EPQ30618007") = Request.Form("EPQ30618007")
	Session("EPQ30618008") = Request.Form("EPQ30618008")
	Session("EPQ30618009") = Request.Form("EPQ30618009")
	Session("EPQ30618010") = Request.Form("EPQ30618010")
	Session("EPQ30618011") = Request.Form("EPQ30618011")
	Session("EPQ30618012") = Request.Form("EPQ30618012")

	if Session("EPQ306180001") = "1" then 
		Session("EPQ30618001string")= "Copper IUD (e.g. ParaGard)"
	end if
	if Session("EPQ306180002") = "1" then 
		Session("EPQ30618002string")= "Sterilization of sex partner vasectomy)"
	end if
	if Session("EPQ306180003") = "1" then 
		Session("EPQ30618003string")= "Condoms"
	end if
	if Session("EPQ306180004") = "1" then 
		Session("EPQ30618004string")= "Abstinence"
	end if
	if Session("EPQ306180005") = "1" then 
		Session("EPQ30618005string")= "Foam, cream, jelly, suppositories"
	end if
	if Session("EPQ306180006") = "1" then 
		Session("EPQ30618006string")= "Withdrawal"
	end if
	if Session("EPQ306180007") = "1" then 
		Session("EPQ30618007string")= "Sponge"
	end if
	if Session("EPQ306180008") = "1" then 
		Session("EPQ30618008string")= "None of the above"
	end if
	if Session("EPQ306180009") = "1" then 
		Session("EPQ30618009string")= "Rhythm method"
	end if
	if Session("EPQ306180010") = "1" then 
		Session("EPQ30618010string")= "Diaphragm"
	end if
	if Session("EPQ30618011") = "11" then 
		Session("EPQ30618011string")= "Tubal ligation tubes tied"
	end if

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=12
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30618001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="14"
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


    <form action="womensrisk13.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked"><legend class='QuestionBox'>
Please mark what non-hormonal birth control you are <u>currently</u> using: Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
	<span class="column1">
		<input type="checkbox" name="EPQ30618004" value="1" id="EPQ30618004" <%=strEPQ30618004answer1%>>
		<label for="EPQ30618004">Abstinence</label><br>
		<input type="checkbox" name="EPQ30618003" value="1" id="EPQ30618003" <%=strEPQ30618003answer1%>>
		<label for="EPQ30618003">Condoms</label><br>
		<input type="checkbox" name="EPQ30618001" value="1" id="EPQ30618001" <%=strEPQ30618001answer1%>>
		<label for="EPQ30618001">Copper IUD (e.g., ParaGard)</label><br>

		<input type="checkbox" name="EPQ30618010" value="1" id="EPQ30618010" <%=strEPQ30618010answer1%>>
		<label for="EPQ30618010">Diaphragm</label><br>
		<input type="checkbox" name="EPQ30618005" value="1" id="EPQ30618005" <%=strEPQ30618005answer1%>>
		<label for="EPQ30618005">Foam, cream, jelly, suppositories</label><br>
<br><br><br>
		<input type="radio" name="EPQ30618008" value="1" id="EPQ30618008" <%=strEPQ30618008answer1%>>
		<label for="EPQ30618008">None of these</label><br>

</span>
	<span class="column2">
		<input type="checkbox" name="EPQ30618009" value="1" id="EPQ30618009" <%=strEPQ30618009answer1%>>
		<label for="EPQ30618009">Rhythm method</label><br>

		<input type="checkbox" name="EPQ30618007" value="1" id="EPQ30618007" <%=strEPQ30618007answer1%>>
		<label for="EPQ30618007">Sponge</label><br>
		<input type="checkbox" name="EPQ30618002" value="1" id="EPQ30618002" <%=strEPQ30618002answer1%>>
		<label for="EPQ30618002">Sterilization of sex partner (vasectomy)</label><br>

		<input type="checkbox" name="EPQ30618011" value="1" id="EPQ30618011" <%=strEPQ30618011answer1%>>
		<label for="EPQ30618011">Tubal ligation (tubes tied)</label><br>
		<input type="checkbox" name="EPQ30618006" value="1" id="EPQ30618006" <%=strEPQ30618006answer1%>>
		<label for="EPQ30618006">Withdrawal</label><br>
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
