
<%
Session("FamilyHistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("GI10908000")="1" then
		strGI10908000answer1="checked"
	end if
	if Session("GI10908000")="2" then
		strGI10908000answer2="checked"
	end if
	if Session("GI10908000")="88" then
		strGI10908000answer3="checked"
	end if

	if Session("GI10909000")="1" then
		strGI10909000answer1="checked"
	end if
	if Session("GI10909000")="2" then
		strGI10909000answer2="checked"
	end if
	if Session("GI10909000")="88" then
		strGI10909000answer3="checked"
	end if

	if Session("GI10910000")="1" then
		strGI10910000answer1="checked"
	end if
	if Session("GI10910000")="2" then
		strGI10910000answer2="checked"
	end if
	if Session("GI10910000")="88" then
		strGI10910000answer3="checked"
	end if

	if Session("GI10911000")="1" then
		strGI10911000answer1="checked"
	end if
	if Session("GI10911000")="2" then
		strGI10911000answer2="checked"
	end if
	if Session("GI10911000")="88" then
		strGI10911000answer3="checked"
	end if

	if Session("GI10912000")="1" then
		strGI10912000answer1="checked"
	end if
	if Session("GI10912000")="2" then
		strGI10912000answer2="checked"
	end if
	if Session("GI10912000")="88" then
		strGI10912000answer3="checked"
	end if

	if Session("GI10913000")="1" then
		strGI10913000answer1="checked"
	end if
	if Session("GI10913000")="2" then
		strGI10913000answer2="checked"
	end if
	if Session("GI10913000")="88" then
		strGI10913000answer3="checked"
	end if

	if Session("GI10914000")="1" then
		strGI10914000answer1="checked"
	end if
	if Session("GI10914000")="2" then
		strGI10914000answer2="checked"
	end if
	if Session("GI10914000")="88" then
		strGI10914000answer3="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then


	Session("GI10908000") = Request.Form("GI10908000")
	Session("GI10909000") = Request.Form("GI10909000")
	Session("GI10910000") = Request.Form("GI10910000")
	Session("GI10911000") = Request.Form("GI10911000")
	Session("GI10912000") = Request.Form("GI10912000")
	Session("GI10913000") = Request.Form("GI10913000")
	Session("GI10914000") = Request.Form("GI10914000")

 
end if

if Request.Form("StopID")="1" then
		Session("FamilyHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
			Session("Page")=4
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"


end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

if Session("SurveyVersion")="GI" then
	Session("Page")="5"
	Response.Redirect "familyhistorymaster.asp"
end if

	Session("Page")="0"
	Session("FamilyHistorySectionStatus")="Completed"
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


    <form action="familyhistory4a.asp" method="post" id="formQuestion" name="formQuestion">
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

			<tr>
			<th colspan="4">Were any of these relatives diagnosed at or before age 50?</th>
			</tr>

			<tr class="tableSubHeading">
				<th></th>
				<th>Yes</th>
				<th>No</th>
				<th>Don't know</th>

			</tr>
		   <tbody>


<% if Session("GI10901000") ="1" then %>
		<tr>
		<td>
Father
		</td>
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10908000" type="text" value="1" size="3" name="GI10908000" <%=strGI10908000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10908000" type="text" value="2" size="3" name="GI10908000" <%=strGI10908000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10908000" type="text" value="88" size="3" name="GI10908000" <%=strGI10908000answer3%> >
		</td>
		</tr>

<% end if %>
<% if Session("GI10902000") ="1" then %>
		<tr>
		<td>
Mother
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10909000" type="text" value="1" size="3" name="GI10909000" <%=strGI10909000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10909000" type="text" value="2" size="3" name="GI10909000" <%=strGI10909000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10909000" type="text" value="88" size="3" name="GI10909000" <%=strGI10909000answer3%> >
		</td>
		</tr>

<% end if %>
<% if Session("GI10903000") ="1" then %>
		<tr>
		<td>
Brother
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10910000" type="text" value="1" size="3" name="GI10910000" <%=strGI10910000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10910000" type="text" value="2" size="3" name="GI10910000" <%=strGI10910000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10910000" type="text" value="88" size="3" name="GI10910000" <%=strGI10910000answer3%> >
		</td>

		</tr>
<% end if %>
<% if Session("GI10904000") ="1" then %>
		<tr>
		<td>
Sister
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10911000" type="text" value="1" size="3" name="GI10911000" <%=strGI10911000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10911000" type="text" value="2" size="3" name="GI10911000" <%=strGI10911000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10911000" type="text" value="88" size="3" name="GI10911000" <%=strGI10911000answer3%> >
		</td>

		</tr>

<% end if %>
<% if Session("GI10905000") ="1" then %>
		<tr>
		<td>
Son
		</td>
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10912000" type="text" value="1" size="3" name="GI10912000" <%=strGI10912000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10912000" type="text" value="2" size="3" name="GI10912000" <%=strGI10912000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10912000" type="text" value="88" size="3" name="GI10912000" <%=strGI10912000answer3%> >
		</td>
		</tr>

<% end if %>
<% if Session("GI10906000") ="1" then %>
		<tr>
		<td>
Daughter
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10913000" type="text" value="1" size="3" name="GI10913000" <%=strGI10913000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10913000" type="text" value="2" size="3" name="GI10913000" <%=strGI10913000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10913000" type="text" value="88" size="3" name="GI10913000" <%=strGI10913000answer3%> >
		</td>
		</tr>

<% end if %>
<% if Session("GI10907000") ="1" then %>
		<tr>
		<td>
<%=Session("GI10907000_TXT")%>
<br></td>
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10914000" type="text" value="1" size="3" name="GI10914000" <%=strGI10914000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10914000" type="text" value="2" size="3" name="GI10914000" <%=strGI10914000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10914000" type="text" value="88" size="3" name="GI10914000" <%=strGI10914000answer3%> >
		</td>

		</tr>

<% end if %>
		   </tbody>
		</table>

</div><!-- [ /#tableQualityofLife ] -->
</fieldset>

</div><!-- [ /#formBlock ] -->
<div class="ResetBox">
</div>
	
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
