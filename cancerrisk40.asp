
<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMPEPQ31164000")="0" then
		strTEMPEPQ31164000answer2="checked"
	end if
	if Session("TEMPEPQ31164000")="1" then
		strTEMPEPQ31164000answer1="checked"
	end if

	if Session("TEMPEPQ31165000")="0" then
		strTEMPEPQ31165000answer2="checked"
	end if
	if Session("TEMPEPQ31165000")="1" then
		strTEMPEPQ31165000answer1="checked"
	end if

	if Session("TEMPEPQ31166000")="0" then
		strTEMPEPQ31166000answer2="checked"
	end if
	if Session("TEMPEPQ31166000")="1" then
		strTEMPEPQ31166000answer1="checked"
	end if

	if Session("TEMPEPQ31167000")="0" then
		strTEMPEPQ31167000answer2="checked"
	end if
	if Session("TEMPEPQ31167000")="1" then
		strTEMPEPQ31167000answer1="checked"
	end if
	if Session("TEMP2EPQ31167000")="0" then
		strTEMP2EPQ31167000answer2="checked"
	end if
	if Session("TEMP2EPQ31167000")="1" then
		strTEMP2EPQ31167000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("TEMPEPQ31164000string")= ""
	Session("TEMPEPQ31165000string")= ""
	Session("TEMPEPQ31166000string")= ""
	Session("TEMPEPQ31167000string")= ""

	Session("TEMPEPQ31164000") = Request.Form("TEMPEPQ31164000")
	Session("TEMPEPQ31165000") = Request.Form("TEMPEPQ31165000")
	Session("TEMPEPQ31166000") = Request.Form("TEMPEPQ31166000")
	Session("TEMPEPQ31167000") = Request.Form("TEMPEPQ31167000")


	Session("TEMP2EPQ31164000") = Request.Form("TEMP2EPQ31164000")
	Session("TEMP2EPQ31165000") = Request.Form("TEMP2EPQ31165000")
	Session("TEMP2EPQ31166000") = Request.Form("TEMP2EPQ31166000")
	Session("TEMP2EPQ31167000") = Request.Form("TEMP2EPQ31167000")

	Session("TEMP2EPQ31168000") = Request.Form("TEMP2EPQ31168000")
	Session("TEMP2EPQ31169000") = Request.Form("TEMP2EPQ31169000")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("SurveyVersion")="Thoracic" then 
		Session("Page")="21b"
	else
		Session("Page")="21"
	end if
		Session("ReturnID")="1"
		
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("TEMPEPQ31164000") = "1" then 
	Session("Page")="41"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31165000") = "1" then 
	Session("Page")="42"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31166000") = "1" then 
	Session("Page")="44"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMPEPQ31167000") = "1" then 
	Session("Page")="46"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("TEMP2EPQ31167000") = "1" then 
	Session("Page")="48"
	Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("TEMP2EPQ31168000") = "1" then 
	Session("Page")="50"
	Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("TEMP2EPQ31169000") = "1" then 
	Session("Page")="52"
	Response.Redirect "cancerriskmaster.asp"
	end if


	

	if Session("SurveyVersion")="HEME" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("SurveyVersion")="GI" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("SurveyVersion")="Thoracic" then 
		Session("ReturnID")="1"
		Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
	Session("Page")="0"

	 <!--#include file="autosavefunction.asp"-->
	Session("CancerRiskSectionStatus")="Complete"
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

    <form action="cancerrisk40.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div class="QuestionBox">
Over the past 12 months, have you ever taken any of the following medications on a regular basis (at least once per week)?
</div>

  <fieldset class="tabular">
  <legend class="QuestionBox">
  </legend>
	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup width="64"></colgroup>
		  <colgroup width="4"></colgroup>
		  <colgroup width="4"></colgroup>
			<tr>
				<th rowspan="2">Medication</th>
				<th rowspan="2">Yes</th>
				<th rowspan="2">No</th>
			</tr>

		   <tbody>
<tr>
<td>Low-dose aspirin (such as baby or low-dose <i>Anacin, Bufferin, Bayer, Excedrin, 100mg/tablet or less</i>)</td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMPEPQ31164000" type="text" value="1" size="1" name="TEMPEPQ31164000" <%=strTEMPEPQ31164000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="TEMPEPQ31164000" type="text" value="0" size="1" name="TEMPEPQ31164000" <%=strTEMPEPQ31164000answer2%>></td>
</tr>




<tr>
<td>Regular or extra strength aspirin (<i>such as regular or extra strength Anacin, Bufferin, Bayer, Excedrin, 325 mg/tablet or more</i>) 
</td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMPEPQ31165000" type="text" value="1" size="1" name="TEMPEPQ31165000" <%=strTEMPEPQ31165000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="TEMPEPQ31165000" type="text" value="0" size="1" name="TEMPEPQ31165000" <%=strTEMPEPQ31165000answer2%>></td>
</tr>

<tr>
<td>Acetaminophen (<i>such as Tylenol, Anacin-3, Aspirin-free Excedrin</i>)</td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMPEPQ31166000" type="text" value="1" size="1" name="TEMPEPQ31166000" <%=strTEMPEPQ31166000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="TEMPEPQ31166000" type="text" value="0" size="1" name="TEMPEPQ31166000" <%=strTEMPEPQ31166000answer2%>> </td>
</tr>

<tr>
<td>
Ibuprofen (<i>such as Advil, Motrin, Nuprin, Mediprin</i>) </td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMPEPQ31167000" type="text" value="1" size="1" name="TEMPEPQ31167000" <%=strTEMPEPQ31167000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="TEMPEPQ31167000" type="text" value="0" size="1" name="TEMPEPQ31167000" <%=strTEMPEPQ31167000answer2%>></td>
</tr>


<tr>
<td>
Naproxen (<i>such as Aleve, Naprosyn, Anaprox, Naprelan</i>)</td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMP2EPQ31167000" type="text" value="1" size="1" name="TEMP2EPQ31167000" <%=strTEMP2EPQ31167000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="TEMP2EPQ31167000" type="text" value="0" size="1" name="TEMP2EPQ31167000" <%=strTEMP2EPQ31167000answer2%>></td>
</tr>

<tr>
<td>
Statins (<i>such as Lipitor, Zocor, Pravachol, Mevacor, Crestor</i>) </td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMP2EPQ31168000" type="text" value="1" size="1" name="TEMP2EPQ31168000" <%=strTEMPEPQ31167000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="TEMP2EPQ31168000" type="text" value="0" size="1" name="TEMP2EPQ31168000" <%=strTEMPEPQ31167000answer2%>></td>
</tr>

<tr>
<td>
Beta-blocker medication (<i>such as Lopressor, Toprol, Tenormin, Coreg, Inderal</i>) </td>
<td style="text-align: center;"><input type="radio" class="required" id="TEMP2EPQ31169000" type="text" value="1" size="1" name="TEMP2EPQ31169000" <%=strTEMPEPQ31167000answer1%>> </td>
<td style="text-align: center;"><input type="radio" id="TEMP2EPQ31169000" type="text" value="0" size="1" name="TEMP2EPQ31169000" <%=strTEMPEPQ31167000answer2%>></td>
</tr>

  </tbody>
</table>

</div><!-- [ /#tableQualityofLife ] -->
</fieldset>
</div><!-- [ /#formBlock ] -->
	
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
