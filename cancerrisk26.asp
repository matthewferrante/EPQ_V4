
<%
'code
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("THRC31102200")="1" then
		strTHRC31102200answer1="checked"
	end if
	if Session("THRC31102200")="0" then
		strTHRC31102200answer2="checked"
	end if
	if Session("THRC31102300")="1" then
		strTHRC31102300answer1="checked"
	end if
	if Session("THRC31102300")="0" then
		strTHRC31102300answer2="checked"
	end if
	if Session("THRC31102400")="1" then
		strTHRC31102400answer1="checked"
	end if
	if Session("THRC31102400")="0" then
		strTHRC31102400answer2="checked"
	end if
	if Session("THRC31102500")="1" then
		strTHRC31102500answer1="checked"
	end if
	if Session("THRC31102500")="0" then
		strTHRC31102500answer2="checked"
	end if
	if Session("THRC31102600")="1" then
		strTHRC31102600answer1="checked"
	end if
	if Session("THRC31102600")="0" then
		strTHRC31102600answer2="checked"
	end if
	if Session("THRC31102700")="1" then
		strTHRC31102700answer1="checked"
	end if
	if Session("THRC31102700")="0" then
		strTHRC31102700answer2="checked"
	end if
	if Session("THRC31102800")="1" then
		strTHRC31102800answer1="checked"
	end if
	if Session("THRC31102800")="0" then
		strTHRC31102800answer2="checked"
	end if
	if Session("THRC31102900")="1" then
		strTHRC31102900answer1="checked"
	end if
	if Session("THRC31102900")="0" then
		strTHRC31102900answer2="checked"
	end if
	if Session("THRC31103000")="1" then
		strTHRC31103000answer1="checked"
	end if
	if Session("THRC31103000")="0" then
		strTHRC31103000answer2="checked"
	end if
	if Session("THRC31103100")="1" then
		strTHRC31103100answer1="checked"
	end if
	if Session("THRC31103100")="0" then
		strTHRC31103100answer2="checked"
	end if
	if Session("THRC31103200")="1" then
		strTHRC31103200answer1="checked"
	end if
	if Session("THRC31103200")="0" then
		strTHRC31103200answer2="checked"
	end if
	if Session("GI11101200")="1" then
		strGI11101200answer1="checked"
	end if
	if Session("GI11101200")="0" then
		strGI11101200answer2="checked"
	end if
	if Session("GI11101300")="1" then
		strGI11101300answer1="checked"
	end if
	if Session("GI11101300")="0" then
		strGI11101300answer0="checked"
	end if
	if Session("HM11103000")="1" then
		strHM11103000answer1="checked"
	end if
	if Session("HM11103000")="0" then
		strHM11103000answer2="checked"
	end if

end if


if Request.Form("ispostback")="1" then

	Session("THRC31102200") = Request.Form("THRC31102200")
	Session("THRC31102300") = Request.Form("THRC31102300")
	Session("THRC31102400") = Request.Form("THRC31102400")
	Session("THRC31102500") = Request.Form("THRC31102500")
	Session("THRC31102600") = Request.Form("THRC31102600")
	Session("THRC31102700") = Request.Form("THRC31102700")
	Session("THRC31102800") = Request.Form("THRC31102800")
	Session("THRC31102900") = Request.Form("THRC31102900")
	Session("THRC31103000") = Request.Form("THRC31103000")
	Session("THRC31103100") = Request.Form("THRC31103100")
	Session("THRC31103200") = Request.Form("THRC31103200")
	Session("THRC31103300") = Request.Form("THRC31103300")
	Session("THRC31103400") = Request.Form("THRC31103400")
	Session("THRC31103500") = Request.Form("THRC31103500")
	Session("THRC31103600") = Request.Form("THRC31103600")
	Session("THRC31103700") = Request.Form("THRC31103700")
	Session("THRC31103800") = Request.Form("THRC31103800")
	Session("THRC31103900") = Request.Form("THRC31103900")
	Session("THRC31104000") = Request.Form("THRC31104000")
	Session("THRC31104100") = Request.Form("THRC31104100")
	Session("THRC31104200") = Request.Form("THRC31104200")
	Session("THRC31104300") = Request.Form("THRC31104300")

	Session("GI11101200") = Request.Form("GI11101200")
	Session("GI11101400") = Request.Form("GI11101400")
	Session("GI11101300") = Request.Form("GI11101300")
	Session("GI11101500") = Request.Form("GI11101500")

	Session("HM11103000") = Request.Form("HM11103000")
	Session("HM11104000") = Request.Form("HM11104000")

end if


if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("SurveyVersion")="HEME" then
	if Session("HM10201000")="1" or Session("HM10206000")="1" or Session("HM10207000")="1" or Session("HM10202000")="1" or Session("HM10203000")="1" or Session("HM10204000")="1" then
		Session("Page")="25a"
		Response.Redirect "cancerriskmaster.asp"
	else
			Session("Page")="25"
		Response.Redirect "cancerriskmaster.asp"
	end if
end if

		Session("ReturnID")="1"
		Session("Page")=25
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("HM10204000")="1" then
	Session("Page")="30"
	Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("HM10207000")="1" then
	Session("Page")="30"
	Response.Redirect "cancerriskmaster.asp"
	end if

if Session("GI10201000")="1" then
	Session("Page")="27"
	Response.Redirect "cancerriskmaster.asp"
else
	Session("Page")="0"
	Response.Redirect "cancerriskmaster.asp"
end if
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


    <form action="cancerrisk26.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
	<!-- [ Sample Question boxes ] -->


		<!-- [ Tables - the div container is given a class name that governs the CSS:
			either 	.tableBasic
					.tablePersonalHistory
					.tableFamilyHistory

			each table is given the class name .dataTable, which is
			used for the jQuery alternating color scheme; ] -->

  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">Exposure</th>
				<th rowspan="2">For how many years were you exposed?</th>
				<th colspan="2">Are you currently exposed?</th>
			</tr>

			<tr class="tableSubHeading">
				<th>Yes</th>
				<th>No</th>
			</tr>
		   <tbody>

<%if session("HM11102000")=1 then%>
		    <tr>
				<td>Agent Orange</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="HM11104000" name="HM11104000" value=<%=Session("HM11104000")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="HM11103000" value="1"
id="HM11103000" <%=strHM11103000answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="HM11103000" value="0"
id="HM11103000" <%=strHM11103000answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101600")=1 then%>
		    <tr>
				<td>Ammonia, other ammonia-based chemicals</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103900" name="THRC31103900" value=<%=Session("THRC31103900")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102800" value="1"
id="THRC31102800" <%=strTHRC31102800answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102800" value="0"
id="THRC31102800" <%=strTHRC31102800answer2%>> </td>
			</tr>
<% end if %>


<%if session("THRC31101700")=1 then%>
		    <tr>
				<td>Arsenic</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31104000" name="THRC31104000" value=<%=Session("THRC31104000")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102900" value="1"
id="THRC31102900" <%=strTHRC31102900answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102900" value="0"
id="THRC31102900" <%=strTHRC31102900answer2%>> </td>
			</tr>
<% end if %>


<%if session("THRC31101000")=1 then%>
		    <tr>
				<td>Asbestos</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103300" name="THRC31103300" value=<%=Session("THRC31103300")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102200" value="1"
id="THRC31102200" <%=strTHRC31102200answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102200" value="0"
id="THRC31102200" <%=strTHRC31102200answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101900")=1 then%>
		    <tr>
				<td>Benzene</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31104200" name="THRC31104200" value=<%=Session("THRC31104200")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31103100" value="1"
id="THRC31103100" <%=strTHRC31103100answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31103100" value="0"
id="THRC31103100" <%=strTHRC31103100answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101200")=1 then%>
		    <tr>
				<td>Coal dust, soot</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103500" name="THRC31103500" value=<%=Session("THRC31103500")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102400" value="1"
id="THRC31102400" <%=strTHRC31102400answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102400" value="0"
id="THRC31102400" <%=strTHRC31102400answer2%>> </td>
			</tr>
<% end if %>

<%if session("GI11101000")=1 then%>
		    <tr>
				<td>Dry cleaning agents</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="GI11101400" name="GI11101400" value=<%=Session("GI11101400")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="GI11101200" value="1"
id="GI11101200" <%=strGI11101200answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="GI11101200" value="0"
id="GI11101200" <%=strGI11101200answer2%>> </td>
			</tr>
<% end if %>


<%if session("GI11101100")=1 then%>
		    <tr>
				<td>Metal or welding products</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="GI11101500" name="GI11101500" value=<%=Session("GI11101500")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="GI11101300" value="1"
id="GI11101300" <%=strGI11101300answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="GI11101300" value="0"
id="GI11101300" <%=strGI11101300answer0%>> </td>
			</tr>
<% end if %>


<%if session("THRC31101500")=1 then%>
		    <tr>
				<td>Pesticides, herbicides, insecticides, fertilizers</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103800" name="THRC31103800" value=<%=Session("THRC31103800")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102700" value="1"
id="THRC31102700" <%=strTHRC31102700answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102700" value="0"
id="THRC31102700" <%=strTHRC31102700answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101400")=1 then%>
		    <tr>
				<td>Printer’s inks or dyes, paints, lacquers, pigments</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103700" name="THRC31103700" value=<%=Session("THRC31103700")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102600" value="1"
id="THRC31102600" <%=strTHRC31102600answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102600" value="0"
id="THRC31102600" <%=strTHRC31102600answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101800")=1 then%>
		    <tr>
				<td>Radon, uranium</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31104100" name="THRC31104100" value=<%=Session("THRC31104100")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31103000" value="1"
id="THRC31103000" <%=strTHRC31103000answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31103000" value="0"
id="THRC31103000" <%=strTHRC31103000answer2%>> </td>
			</tr>
<% end if %>


<%if session("THRC31101100")=1 then%>
		    <tr>
				<td>Sawdust, wood dust</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103400" name="THRC31103400" value=<%=Session("THRC31103400")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102300" value="1"
id="THRC31102300" <%=strTHRC31102300answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102300" value="0"
id="THRC31102300" <%=strTHRC31102300answer2%>> </td>
			</tr>
<% end if %>

<%if session("THRC31101300")=1 then%>
		    <tr>
				<td>Solvents, paint thinners, toluene, xylene</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31103600" name="THRC31103600" value=<%=Session("THRC31103600")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31102500" value="1"
id="THRC31102400" <%=strTHRC31102500answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31102500" value="0"
id="THRC31102400" <%=strTHRC31102500answer2%>> </td>
			</tr>
<% end if %>


<%if session("THRC31102000")=1 then%>
		    <tr>
				<td>Other substances like these</td>
<td style="text-align: center;"><input type="text" class="yearsExposed required" maxlength="3" size="5" id="THRC31104300" name="THRC31104300" value=<%=Session("THRC31104300")%> > years </td>

				<td style="text-align: center;"><input class="required" type="radio" name="THRC31103200" value="1"
id="THRC31103200" <%=strTHRC31103200answer1%>> </td>
				<td style="text-align: center;"><input type="radio" name="THRC31103200" value="0"
id="THRC31103200" <%=strTHRC31103200answer2%>> </td>
			</tr>
<% end if %>




		   </tbody>
		</table>
	</div> <!-- [ /.tablePersonalHistory ] -->
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
