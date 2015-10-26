
<%
Session("FamilyHistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30902010")="1" then
		strEPQ30902010answer1="checked"
	end if
	if Session("EPQ30902020")="1" then
		strEPQ30902020answer1="checked"
	end if
	if Session("EPQ30902030")="1" then
		strEPQ30902030answer1="checked"
	end if
	if Session("EPQ30902040")="1" then
		strEPQ30902040answer1="checked"
	end if
	if Session("EPQ30902050")="1" then
		strEPQ30902050answer1="checked"
	end if
	if Session("EPQ30902050")="2" then
		strEPQ30902050answer2="checked"
	end if
	if Session("EPQ30902050")="77" then
		strEPQ30902050answer3="checked"
	end if


	if Session("EPQ30903010")="1" then
		strEPQ30903010answer1="checked"
	end if
	if Session("EPQ30903020")="1" then
		strEPQ30903020answer1="checked"
	end if
	if Session("EPQ30903030")="1" then
		strEPQ30903030answer1="checked"
	end if
	if Session("EPQ30903040")="1" then
		strEPQ30903040answer1="checked"
	end if
	if Session("EPQ30903050")="1" then
		strEPQ30903050answer1="checked"
	end if
	if Session("EPQ30903050")="2" then
		strEPQ30903050answer2="checked"
	end if
	if Session("EPQ30903050")="77" then
		strEPQ30903050answer3="checked"
	end if


	if Session("EPQ30904010")="1" then
		strEPQ30904010answer1="checked"
	end if
	if Session("EPQ30904020")="1" then
		strEPQ30904020answer1="checked"
	end if
	if Session("EPQ30904030")="1" then
		strEPQ30904030answer1="checked"
	end if
	if Session("EPQ30904040")="1" then
		strEPQ30904040answer1="checked"
	end if
	if Session("EPQ30904050")="1" then
		strEPQ30904050answer1="checked"
	end if
	if Session("EPQ30904050")="2" then
		strEPQ30904050answer2="checked"
	end if
	if Session("EPQ30904050")="77" then
		strEPQ30904050answer3="checked"
	end if


	if Session("EPQ30905010")="1" then
		strEPQ30905010answer1="checked"
	end if
	if Session("EPQ30905020")="1" then
		strEPQ30905020answer1="checked"
	end if
	if Session("EPQ30905030")="1" then
		strEPQ30905030answer1="checked"
	end if
	if Session("EPQ30905040")="1" then
		strEPQ30905040answer1="checked"
	end if
	if Session("EPQ30905050")="1" then
		strEPQ30905050answer1="checked"
	end if
	if Session("EPQ30905050")="2" then
		strEPQ30905050answer2="checked"
	end if
	if Session("EPQ30905050")="77" then
		strEPQ30905050answer3="checked"
	end if

	if Session("EPQ30906010")="1" then
		strEPQ30906010answer1="checked"
	end if
	if Session("EPQ30906020")="1" then
		strEPQ30906020answer1="checked"
	end if
	if Session("EPQ30906030")="1" then
		strEPQ30906030answer1="checked"
	end if
	if Session("EPQ30906040")="1" then
		strEPQ30906040answer1="checked"
	end if
	if Session("EPQ30906050")="1" then
		strEPQ30906050answer1="checked"
	end if
	if Session("EPQ30906050")="0" then
		strEPQ30906050answer2="checked"
	end if
	if Session("EPQ30906050")="77" then
		strEPQ30906050answer3="checked"
	end if

	if Session("EPQ30907010")="1" then
		strEPQ30907010answer1="checked"
	end if
	if Session("EPQ30907020")="1" then
		strEPQ30907020answer1="checked"
	end if
	if Session("EPQ30907030")="1" then
		strEPQ30907030answer1="checked"
	end if
	if Session("EPQ30907040")="1" then
		strEPQ30907040answer1="checked"
	end if
	if Session("EPQ30907050")="1" then
		strEPQ30907050answer1="checked"
	end if
	if Session("EPQ30907050")="2" then
		strEPQ30907050answer2="checked"
	end if
	if Session("EPQ30907050")="77" then
		strEPQ30907050answer3="checked"
	end if

	if Session("EPQ30908010")="1" then
		strEPQ30908010answer1="checked"
	end if
	if Session("EPQ30908020")="1" then
		strEPQ30908020answer1="checked"
	end if
	if Session("EPQ30908030")="1" then
		strEPQ30908030answer1="checked"
	end if
	if Session("EPQ30908040")="1" then
		strEPQ30908040answer1="checked"
	end if
	if Session("EPQ30908050")="1" then
		strEPQ30908050answer1="checked"
	end if
	if Session("EPQ30908050")="0" then
		strEPQ30908050answer2="checked"
	end if
	if Session("EPQ30908050")="77" then
		strEPQ30908050answer3="checked"
	end if

	if Session("EPQ30909010")="1" then
		strEPQ30909010answer1="checked"
	end if
	if Session("EPQ30909020")="1" then
		strEPQ30909020answer1="checked"
	end if
	if Session("EPQ30909030")="1" then
		strEPQ30909030answer1="checked"
	end if
	if Session("EPQ30909040")="1" then
		strEPQ30909040answer1="checked"
	end if
	if Session("EPQ30909050")="1" then
		strEPQ30909050answer1="checked"
	end if
	if Session("EPQ30909050")="2" then
		strEPQ30909050answer2="checked"
	end if
	if Session("EPQ30909050")="77" then
		strEPQ30909050answer3="checked"
	end if


	if Session("EPQ30910010")="1" then
		strEPQ30910010answer1="checked"
	end if
	if Session("EPQ30910020")="1" then
		strEPQ30910020answer1="checked"
	end if
	if Session("EPQ30910030")="1" then
		strEPQ30910030answer1="checked"
	end if
	if Session("EPQ30910040")="1" then
		strEPQ30910040answer1="checked"
	end if
	if Session("EPQ30910050")="1" then
		strEPQ30910050answer1="checked"
	end if
	if Session("EPQ30910050")="2" then
		strEPQ30910050answer2="checked"
	end if
	if Session("EPQ30910050")="77" then
		strEPQ30910050answer3="checked"
	end if

	if Session("EPQ30911010")="1" then
		strEPQ30911010answer1="checked"
	end if
	if Session("EPQ30911020")="1" then
		strEPQ30911020answer1="checked"
	end if
	if Session("EPQ30911030")="1" then
		strEPQ30911030answer1="checked"
	end if
	if Session("EPQ30911040")="1" then
		strEPQ30911040answer1="checked"
	end if
	if Session("EPQ30911050")="1" then
		strEPQ30911050answer1="checked"
	end if
	if Session("EPQ30911050")="2" then
		strEPQ30911050answer2="checked"
	end if
	if Session("EPQ30911050")="77" then
		strEPQ30911050answer3="checked"
	end if

	if Session("EPQ30912010")="1" then
		strEPQ30912010answer1="checked"
	end if
	if Session("EPQ30912020")="1" then
		strEPQ30912020answer1="checked"
	end if
	if Session("EPQ30912030")="1" then
		strEPQ30912030answer1="checked"
	end if
	if Session("EPQ30912040")="1" then
		strEPQ30912040answer1="checked"
	end if
	if Session("EPQ30912050")="1" then
		strEPQ30912050answer1="checked"
	end if
	if Session("EPQ30912050")="2" then
		strEPQ30912050answer2="checked"
	end if
	if Session("EPQ30912050")="77" then
		strEPQ30912050answer3="checked"
	end if

	if Session("EPQ30914010")="1" then
		strEPQ30914010answer1="checked"
	end if
	if Session("EPQ30914020")="1" then
		strEPQ30914020answer1="checked"
	end if
	if Session("EPQ30914030")="1" then
		strEPQ30914030answer1="checked"
	end if
	if Session("EPQ30914040")="1" then
		strEPQ30914040answer1="checked"
	end if
	if Session("EPQ30914050")="1" then
		strEPQ30914050answer1="checked"
	end if
	if Session("EPQ30914050")="2" then
		strEPQ30914050answer2="checked"
	end if
	if Session("EPQ30914050")="77" then
		strEPQ30914050answer3="checked"
	end if
	if Session("EPQ30915010")="1" then
		strEPQ30915010answer1="checked"
	end if
	if Session("EPQ30915020")="1" then
		strEPQ30915020answer1="checked"
	end if
	if Session("EPQ30915030")="1" then
		strEPQ30915030answer1="checked"
	end if
	if Session("EPQ30915040")="1" then
		strEPQ30915040answer1="checked"
	end if
	if Session("EPQ30915050")="1" then
		strEPQ30915050answer1="checked"
	end if
	if Session("EPQ30915050")="2" then
		strEPQ30915050answer2="checked"
	end if
	if Session("EPQ30915050")="77" then
		strEPQ30915050answer3="checked"
	end if

	if Session("EPQ30916010")="1" then
		strEPQ30916010answer1="checked"
	end if
	if Session("EPQ30916020")="1" then
		strEPQ30916020answer1="checked"
	end if
	if Session("EPQ30916030")="1" then
		strEPQ30916030answer1="checked"
	end if
	if Session("EPQ30916040")="1" then
		strEPQ30916040answer1="checked"
	end if
	if Session("EPQ30916050")="1" then
		strEPQ30916050answer1="checked"
	end if
	if Session("EPQ30916050")="2" then
		strEPQ30916050answer2="checked"
	end if
	if Session("EPQ30917010")="1" then
		strEPQ30917010answer1="checked"
	end if
	if Session("EPQ30917020")="1" then
		strEPQ30917020answer1="checked"
	end if
	if Session("EPQ30917030")="1" then
		strEPQ30917030answer1="checked"
	end if
	if Session("EPQ30917040")="1" then
		strEPQ30917040answer1="checked"
	end if
	if Session("EPQ30917050")="1" then
		strEPQ30917050answer1="checked"
	end if
	if Session("EPQ30917050")="2" then
		strEPQ30917050answer2="checked"
	end if
	if Session("EPQ30917050")="77" then
		strEPQ30917050answer3="checked"
	end if

	if Session("EPQ30918010")="1" then
		strEPQ30918010answer1="checked"
	end if
	if Session("EPQ30918020")="1" then
		strEPQ30918020answer1="checked"
	end if
	if Session("EPQ30918030")="1" then
		strEPQ30918030answer1="checked"
	end if
	if Session("EPQ30918040")="1" then
		strEPQ30918040answer1="checked"
	end if
	if Session("EPQ30918050")="1" then
		strEPQ30918050answer1="checked"
	end if
	if Session("EPQ30918050")="2" then
		strEPQ30918050answer2="checked"
	end if
	if Session("EPQ30918050")="77" then
		strEPQ30918050answer3="checked"
	end if


end if

	

if Request.Form("ispostback")="1" then


 if Session("EPQ30901010Page2")= "1" then 
	Session("EPQ30902010") = Request.Form("EPQ30902010")
	Session("EPQ30902020") = Request.Form("EPQ30902020")
	Session("EPQ30902030") = Request.Form("EPQ30902030")
	Session("EPQ30902040") = Request.Form("EPQ30902040")
	Session("EPQ30902050") = Request.Form("EPQ30902050")
 end if

 if Session("EPQ30901020Page2")= "1" then 
	Session("EPQ30903010") = Request.Form("EPQ30903010")
	Session("EPQ30903020") = Request.Form("EPQ30903020")
	Session("EPQ30903030") = Request.Form("EPQ30903030")
	Session("EPQ30903040") = Request.Form("EPQ30903040")
	Session("EPQ30903050") = Request.Form("EPQ30903050")
 end if

 if Session("EPQ30901030Page2")= "1" then 
	Session("EPQ30904010") = Request.Form("EPQ30904010")
	Session("EPQ30904020") = Request.Form("EPQ30904020")
	Session("EPQ30904030") = Request.Form("EPQ30904030")
	Session("EPQ30904040") = Request.Form("EPQ30904040")
	Session("EPQ30904050") = Request.Form("EPQ30904050")
 end if

 if Session("EPQ30901040Page2")= "1" then 
	Session("EPQ30905010") = Request.Form("EPQ30905010")
	Session("EPQ30905020") = Request.Form("EPQ30905020")
	Session("EPQ30905030") = Request.Form("EPQ30905030")
	Session("EPQ30905040") = Request.Form("EPQ30905040")
	Session("EPQ30905050") = Request.Form("EPQ30905050")
 end if

 if Session("EPQ30901050Page2")= "1" then
	Session("EPQ30906010") = Request.Form("EPQ30906010")
	Session("EPQ30906020") = Request.Form("EPQ30906020")
	Session("EPQ30906030") = Request.Form("EPQ30906030")
	Session("EPQ30906040") = Request.Form("EPQ30906040")
	Session("EPQ30906050") = Request.Form("EPQ30906050")
 end if

 if Session("EPQ30901060Page2")= "1" then
	Session("EPQ30907010") = Request.Form("EPQ30907010")
	Session("EPQ30907020") = Request.Form("EPQ30907020")
	Session("EPQ30907030") = Request.Form("EPQ30907030")
	Session("EPQ30907040") = Request.Form("EPQ30907040")
	Session("EPQ30907050") = Request.Form("EPQ30907050")
 end if

 if Session("EPQ30901080Page2")= "1" then
	Session("EPQ30908010") = Request.Form("EPQ30908010")
	Session("EPQ30908020") = Request.Form("EPQ30908020")
	Session("EPQ30908030") = Request.Form("EPQ30908030")
	Session("EPQ30908040") = Request.Form("EPQ30908040")
	Session("EPQ30908050") = Request.Form("EPQ30908050")
 end if

 if Session("EPQ30901070Page2")= "1" then
	Session("EPQ30909010") = Request.Form("EPQ30909010")
	Session("EPQ30909020") = Request.Form("EPQ30909020")
	Session("EPQ30909030") = Request.Form("EPQ30909030")
	Session("EPQ30909040") = Request.Form("EPQ30909040")
	Session("EPQ30909050") = Request.Form("EPQ30909050")
 end if

 if Session("EPQ30901090Page2")= "1" then
	Session("EPQ30910010") = Request.Form("EPQ30910010")
	Session("EPQ30910020") = Request.Form("EPQ30910020")
	Session("EPQ30910030") = Request.Form("EPQ30910030")
	Session("EPQ30910040") = Request.Form("EPQ30910040")
	Session("EPQ30910050") = Request.Form("EPQ30910050")
 end if

 if Session("EPQ30901100Page2")= "1" then
	Session("EPQ30911010") = Request.Form("EPQ30911010")
	Session("EPQ30911020") = Request.Form("EPQ30911020")
	Session("EPQ30911030") = Request.Form("EPQ30911030")
	Session("EPQ30911040") = Request.Form("EPQ30911040")
	Session("EPQ30911050") = Request.Form("EPQ30911050")
 end if

 if Session("EPQ30901110Page2")= "1" then
	Session("EPQ30912010") = Request.Form("EPQ30912010")
	Session("EPQ30912020") = Request.Form("EPQ30912020")
	Session("EPQ30912030") = Request.Form("EPQ30912030")
	Session("EPQ30912040") = Request.Form("EPQ30912040")
	Session("EPQ30912050") = Request.Form("EPQ30912050")
 end if

 if Session("EPQ30901130Page2")= "1" then
	Session("EPQ30914010") = Request.Form("EPQ30914010")
	Session("EPQ30914020") = Request.Form("EPQ30914020")
	Session("EPQ30914030") = Request.Form("EPQ30914030")
	Session("EPQ30914040") = Request.Form("EPQ30914040")
	Session("EPQ30914050") = Request.Form("EPQ30914050")
 end if

if Session("EPQ30901140Page2")= "1" then
	Session("EPQ30915010") = Request.Form("EPQ30915010")
	Session("EPQ30915020") = Request.Form("EPQ30915020")
	Session("EPQ30915030") = Request.Form("EPQ30915030")
	Session("EPQ30915040") = Request.Form("EPQ30915040")
	Session("EPQ30915050") = Request.Form("EPQ30915050")
end if
 if Session("EPQ30901150Page2")= "1" then
	Session("EPQ30916010") = Request.Form("EPQ30916010")
	Session("EPQ30916020") = Request.Form("EPQ30916020")
	Session("EPQ30916030") = Request.Form("EPQ30916030")
	Session("EPQ30916040") = Request.Form("EPQ30916040")
	Session("EPQ30916050") = Request.Form("EPQ30916050")
 end if

 if Session("EPQ30901160Page2")= "1" then
	Session("EPQ30917010") = Request.Form("EPQ30917010")
	Session("EPQ30917020") = Request.Form("EPQ30917020")
	Session("EPQ30917030") = Request.Form("EPQ30917030")
	Session("EPQ30917040") = Request.Form("EPQ30917040")
	Session("EPQ30917050") = Request.Form("EPQ30917050")
 end if

 if Session("EPQ30901170Page2")= "1" then
	Session("EPQ30918010") = Request.Form("EPQ30918010")
	Session("EPQ30918020") = Request.Form("EPQ30918020")
	Session("EPQ30918030") = Request.Form("EPQ30918030")
	Session("EPQ30918040") = Request.Form("EPQ30918040")
	Session("EPQ30918050") = Request.Form("EPQ30918050")
 end if

end if

if Request.Form("StopID")="1" then
		Session("FamilyHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Response.Redirect "familyhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("FHDisplayCounter") > 12 then
	Session("Page")="3a"
	Response.Redirect "familyhistorymaster.asp"
	end if

	if Session("GI10202000")="1" then
		Session("Page")="4"
		Response.Redirect "familyhistorymaster.asp"
	end if

if Session("SurveyVersion")="GI" then
	if Session("GI10202000")="1" then
		Session("Page")="4"
		Response.Redirect "familyhistorymaster.asp"
	else
	  if Session("GI10201000")="1" then 
	  Session("Page")="5"
	  Response.Redirect "familyhistorymaster.asp"
	  else
	  Session("Page")="0"
	  Session("FamilyHistorySectionStatus")="Completed"
	  Response.Redirect "familyhistorymaster.asp"
	  end if
	end if
end if


	Session("Page")="0"
	Session("FamilyHistorySectionStatus")="Completed"
	Response.Redirect "familyhistorymaster.asp"
end if
%>

<?xml version="1.0" encoding="iso-7759-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-7759-1" />
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
<div id="formBlock2">


    <form action="familyhistory3.asp" method="post" id="formQuestion" name="formQuestion">
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
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th colspan="1"></th>
				<th colspan="10">Who has had this type of major chronic health problem?<br> Check all that apply.</th>
				<th colspan="3">Were any of these relatives diagnosed at or before age 50?</th>
			</tr>

			<tr class="tableSubHeading">
				<th>Health Problems</th>
				<th>Father</th>
				<th>Mother</th>
				<th>1 sister</th>
				<th>2 or more sisters</th>
				<th>1 brother</th>
				<th>2 or more brothers</th>
				<th>1 son</th>
				<th>2 or more sons</th>
				<th>1 daughter</th>
				<th>2 or more daughters</th>

				<th>Yes</th>
				<th>No</th>
				<th>Don't<br>know</th>
			</tr>
		   <tbody>

<% if Session("EPQ30901040")= "1" then %>
<% if Session("EPQ30901040Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Alzheimer's disease
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905010" type="text" value="1" size="3" name="EPQ30905010" <%=strEPQ30905010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905020" type="text" value="1" size="3" name="EPQ30905020" <%=strEPQ30905020answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905060" type="text" value="1" size="3" name="EPQ30905030" <%=strEPQ30905030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905065" type="text" value="1" size="3" name="EPQ30905040" <%=strEPQ30905040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905070" type="text" value="1" size="3" name="EPQ30905030" <%=strEPQ30905030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905075" type="text" value="1" size="3" name="EPQ30905040" <%=strEPQ30905040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905080" type="text" value="1" size="3" name="EPQ30905030" <%=strEPQ30905030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905085" type="text" value="1" size="3" name="EPQ30905040" <%=strEPQ30905040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905090" type="text" value="1" size="3" name="EPQ30905030" <%=strEPQ30905030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30905095" type="text" value="1" size="3" name="EPQ30905040" <%=strEPQ30905040answer1%> >
		</td>


		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30905050" type="text" value="1" size="3" name="EPQ30905050" <%=strEPQ30905050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30905050" type="text" value="2" size="3" name="EPQ30905050" <%=strEPQ30905050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30905050" type="text" value="77" size="3" name="EPQ30905050" <%=strEPQ30905050answer3%> >
		</td>

	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901090")= "1" then %>
<% if Session("EPQ30901090Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Anemia</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910010" type="text" value="1" size="3" name="EPQ30910010" <%=strEPQ30910010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910020" type="text" value="1" size="3" name="EPQ30910020" <%=strEPQ30910020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910060" type="text" value="1" size="3" name="EPQ30910040" <%=strEPQ30910040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910065" type="text" value="1" size="3" name="EPQ30910030" <%=strEPQ30910030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910070" type="text" value="1" size="3" name="EPQ30910040" <%=strEPQ30910040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910075" type="text" value="1" size="3" name="EPQ30910030" <%=strEPQ30910030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910080" type="text" value="1" size="3" name="EPQ30910040" <%=strEPQ30910040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910085" type="text" value="1" size="3" name="EPQ30910030" <%=strEPQ30910030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910090" type="text" value="1" size="3" name="EPQ30910040" <%=strEPQ30910040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30910095" type="text" value="1" size="3" name="EPQ30910040" <%=strEPQ30910040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30910050" type="text" value="1" size="3" name="EPQ30910050" <%=strEPQ30910050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30910050" type="text" value="2" size="3" name="EPQ30910050" <%=strEPQ30910050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30910050" type="text" value="77" size="3" name="EPQ30910050" <%=strEPQ30910050answer3%> >
		</td>

	</tr>
<% end if %>
<% end if %>


<% if Session("EPQ30901150")= "1" then %>
<% if Session("EPQ30901150Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Arthritis</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916010" type="text" value="1" size="3" name="EPQ30916010" <%=strEPQ30916010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916020" type="text" value="1" size="3" name="EPQ30916020" <%=strEPQ30916020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916060" type="text" value="1" size="3" name="EPQ30916030" <%=strEPQ30916030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916065" type="text" value="1" size="3" name="EPQ30916040" <%=strEPQ30916040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916070" type="text" value="1" size="3" name="EPQ30916030" <%=strEPQ30916030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916075" type="text" value="1" size="3" name="EPQ30916040" <%=strEPQ30916040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916080" type="text" value="1" size="3" name="EPQ30916030" <%=strEPQ30916030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916085" type="text" value="1" size="3" name="EPQ30916040" <%=strEPQ30916040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916090" type="text" value="1" size="3" name="EPQ30916030" <%=strEPQ30916030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30916095" type="text" value="1" size="3" name="EPQ30916040" <%=strEPQ30916040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30916050" type="text" value="1" size="3" name="EPQ30916050" <%=strEPQ30916050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30916050" type="text" value="2" size="3" name="EPQ30916050" <%=strEPQ30916050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30916050" type="text" value="77" size="3" name="EPQ30916050" <%=strEPQ30916050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901140")= "1" then %>
<% if Session("EPQ30901140Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Asthma</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915010" type="text" value="1" size="3" name="EPQ30915010" <%=strEPQ30915010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915020" type="text" value="1" size="3" name="EPQ30915020" <%=strEPQ30915020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915060" type="text" value="1" size="3" name="EPQ30915030" <%=strEPQ30915030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915065" type="text" value="1" size="3" name="EPQ30915040" <%=strEPQ30915040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915070" type="text" value="1" size="3" name="EPQ30915030" <%=strEPQ30915030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915075" type="text" value="1" size="3" name="EPQ30915040" <%=strEPQ30915040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915080" type="text" value="1" size="3" name="EPQ30915030" <%=strEPQ30915030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915085" type="text" value="1" size="3" name="EPQ30915040" <%=strEPQ30915040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915090" type="text" value="1" size="3" name="EPQ30915030" <%=strEPQ30915030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30915095" type="text" value="1" size="3" name="EPQ30915040" <%=strEPQ30915040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30915050" type="text" value="1" size="3" name="EPQ30915050" <%=strEPQ30915050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30915050" type="text" value="2" size="3" name="EPQ30915050" <%=strEPQ30915050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30915050" type="text" value="77" size="3" name="EPQ30915050" <%=strEPQ30915050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>


<% if Session("EPQ30901100")= "1" then %>
<% if Session("EPQ30901100Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Bleeding tendency</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911010" type="text" value="1" size="3" name="EPQ30911010" <%=strEPQ30911010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911020" type="text" value="1" size="3" name="EPQ30911020" <%=strEPQ30911020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911060" type="text" value="1" size="3" name="EPQ30911030" <%=strEPQ30911030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911065" type="text" value="1" size="3" name="EPQ30911040" <%=strEPQ30911040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911070" type="text" value="1" size="3" name="EPQ30911030" <%=strEPQ30911030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911075" type="text" value="1" size="3" name="EPQ30911040" <%=strEPQ30911040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911080" type="text" value="1" size="3" name="EPQ30911030" <%=strEPQ30911030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911085" type="text" value="1" size="3" name="EPQ30911040" <%=strEPQ30911040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911090" type="text" value="1" size="3" name="EPQ30911030" <%=strEPQ30911030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30911095" type="text" value="1" size="3" name="EPQ30911040" <%=strEPQ30911040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30911050" type="text" value="1" size="3" name="EPQ30911050" <%=strEPQ30911050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30911050" type="text" value="2" size="3" name="EPQ30911050" <%=strEPQ30911050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30911050" type="text" value="77" size="3" name="EPQ30911050" <%=strEPQ30911050answer3%> >
		</td>

	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901060")= "1" then %>
<% if Session("EPQ30901060Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Chronic liver disease or hepatitis
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907010" type="text" value="1" size="3" name="EPQ30907010" <%=strEPQ30907010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907020" type="text" value="1" size="3" name="EPQ30907020" <%=strEPQ30907020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907060" type="text" value="1" size="3" name="EPQ30907030" <%=strEPQ30907030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907065" type="text" value="1" size="3" name="EPQ30907040" <%=strEPQ30907040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907070" type="text" value="1" size="3" name="EPQ30907030" <%=strEPQ30907030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907075" type="text" value="1" size="3" name="EPQ30907040" <%=strEPQ30907040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907080" type="text" value="1" size="3" name="EPQ30907030" <%=strEPQ30907030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907085" type="text" value="1" size="3" name="EPQ30907040" <%=strEPQ30907040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907090" type="text" value="1" size="3" name="EPQ30907030" <%=strEPQ30907030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30907095" type="text" value="1" size="3" name="EPQ30907040" <%=strEPQ30907040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30907050" type="text" value="1" size="3" name="EPQ30907050" <%=strEPQ30907050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30907050" type="text" value="2" size="3" name="EPQ30907050" <%=strEPQ30907050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30907050" type="text" value="77" size="3" name="EPQ30907050" <%=strEPQ30907050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901070")= "1" then %>
<% if Session("EPQ30901070Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Chronic respiratory disease<br>
(emphysema, chronic bronchitis, COPD) 
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909010" type="text" value="1" size="3" name="EPQ30909010" <%=strEPQ30909010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909020" type="text" value="1" size="3" name="EPQ30909020" <%=strEPQ30909020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909060" type="text" value="1" size="3" name="EPQ30909030" <%=strEPQ30909030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909065" type="text" value="1" size="3" name="EPQ30909040" <%=strEPQ30909040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909070" type="text" value="1" size="3" name="EPQ30909030" <%=strEPQ30909030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909075" type="text" value="1" size="3" name="EPQ30909040" <%=strEPQ30909040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909080" type="text" value="1" size="3" name="EPQ30909030" <%=strEPQ30909030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909085" type="text" value="1" size="3" name="EPQ30909040" <%=strEPQ30909040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909090" type="text" value="1" size="3" name="EPQ30909030" <%=strEPQ30909030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30909095" type="text" value="1" size="3" name="EPQ30909040" <%=strEPQ30909040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30909050" type="text" value="1" size="3" name="EPQ30909050" <%=strEPQ30909050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30909050" type="text" value="2" size="3" name="EPQ30909050" <%=strEPQ30909050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30909050" type="text" value="77" size="3" name="EPQ30909050" <%=strEPQ30909050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901020")= "1" then %>
<% if Session("EPQ30901020Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Diabetes
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903010" type="text" value="1" size="3" name="EPQ30903010" <%=strEPQ30903010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903020" type="text" value="1" size="3" name="EPQ30903020" <%=strEPQ30903020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903060" type="text" value="1" size="3" name="EPQ30903030" <%=strEPQ30903030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903065" type="text" value="1" size="3" name="EPQ30903040" <%=strEPQ30903040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903070" type="text" value="1" size="3" name="EPQ30903030" <%=strEPQ30903030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903075" type="text" value="1" size="3" name="EPQ30903040" <%=strEPQ30903040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903080" type="text" value="1" size="3" name="EPQ30903030" <%=strEPQ30903030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903085" type="text" value="1" size="3" name="EPQ30903040" <%=strEPQ30903040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903090" type="text" value="1" size="3" name="EPQ30903030" <%=strEPQ30903030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30903095" type="text" value="1" size="3" name="EPQ30903040" <%=strEPQ30903040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30903050" type="text" value="1" size="3" name="EPQ30903050" <%=strEPQ30903050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30903050" type="text" value="2" size="3" name="EPQ30903050" <%=strEPQ30903050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30903050" type="text" value="77" size="3" name="EPQ30903050" <%=strEPQ30903050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901080")= "1" then %>
<% if Session("EPQ30901080Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Drug or alcohol abuse
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908010" type="text" value="1" size="3" name="EPQ30908010" <%=strEPQ30908010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908020" type="text" value="1" size="3" name="EPQ30908020" <%=strEPQ30908020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908060" type="text" value="1" size="3" name="EPQ30908030" <%=strEPQ30908030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908065" type="text" value="1" size="3" name="EPQ30908040" <%=strEPQ30908040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908070" type="text" value="1" size="3" name="EPQ30908030" <%=strEPQ30908030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908075" type="text" value="1" size="3" name="EPQ30908040" <%=strEPQ30908040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908080" type="text" value="1" size="3" name="EPQ30908030" <%=strEPQ30908030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908085" type="text" value="1" size="3" name="EPQ30908040" <%=strEPQ30908040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908090" type="text" value="1" size="3" name="EPQ30908030" <%=strEPQ30908030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30908095" type="text" value="1" size="3" name="EPQ30908040" <%=strEPQ30908040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30908050" type="text" value="1" size="3" name="EPQ30908050" <%=strEPQ30908050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30908050" type="text" value="2" size="3" name="EPQ30908050" <%=strEPQ30908050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30908050" type="text" value="77" size="3" name="EPQ30908050" <%=strEPQ30908050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901050")= "1" then %>
<% if Session("EPQ30901050Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Heart disease (includes heart attack)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906010" type="text" value="1" size="3" name="EPQ30906010" <%=strEPQ30906010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906020" type="text" value="1" size="3" name="EPQ30906020" <%=strEPQ30906020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906060" type="text" value="1" size="3" name="EPQ30906030" <%=strEPQ30906030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906065" type="text" value="1" size="3" name="EPQ30906040" <%=strEPQ30906040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906070" type="text" value="1" size="3" name="EPQ30906030" <%=strEPQ30906030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906075" type="text" value="1" size="3" name="EPQ30906040" <%=strEPQ30906040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906080" type="text" value="1" size="3" name="EPQ30906030" <%=strEPQ30906030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906085" type="text" value="1" size="3" name="EPQ30906040" <%=strEPQ30906040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906090" type="text" value="1" size="3" name="EPQ30906030" <%=strEPQ30906030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30906095" type="text" value="1" size="3" name="EPQ30906040" <%=strEPQ30906040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30906050" type="text" value="1" size="3" name="EPQ30906050" <%=strEPQ30906050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30906050" type="text" value="2" size="3" name="EPQ30906050" <%=strEPQ30906050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30906050" type="text" value="77" size="3" name="EPQ30906050" <%=strEPQ30906050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901010")= "1" then %>
<% if Session("EPQ30901010Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
High blood pressure (hypertension)
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902010" type="text" value="1" size="3" name="EPQ30902010" <%=strEPQ30902010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902020" type="text" value="1" size="3" name="EPQ30902020" <%=strEPQ30902020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902060" type="text" value="1" size="3" name="EPQ30902030" <%=strEPQ30902030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902065" type="text" value="1" size="3" name="EPQ30902040" <%=strEPQ30902040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902070" type="text" value="1" size="3" name="EPQ30902030" <%=strEPQ30902030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902075" type="text" value="1" size="3" name="EPQ30902040" <%=strEPQ30902040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902080" type="text" value="1" size="3" name="EPQ30902030" <%=strEPQ30902030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902085" type="text" value="1" size="3" name="EPQ30902040" <%=strEPQ30902040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902090" type="text" value="1" size="3" name="EPQ30902030" <%=strEPQ30902030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30902095" type="text" value="1" size="3" name="EPQ30902040" <%=strEPQ30902040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30902050" type="text" value="1" size="3" name="EPQ30902050" <%=strEPQ30902050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30902050" type="text" value="2" size="3" name="EPQ30902050" <%=strEPQ30902050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30902050" type="text" value="77" size="3" name="EPQ30902050" <%=strEPQ30902050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901160")= "1" then %>
<% if Session("EPQ30901160Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>High cholesterol</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917010" type="text" value="1" size="3" name="EPQ30917010" <%=strEPQ30917010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917020" type="text" value="1" size="3" name="EPQ30917020" <%=strEPQ30917020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917060" type="text" value="1" size="3" name="EPQ30917030" <%=strEPQ30917030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917065" type="text" value="1" size="3" name="EPQ30917040" <%=strEPQ30917040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917070" type="text" value="1" size="3" name="EPQ30917030" <%=strEPQ30917030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917075" type="text" value="1" size="3" name="EPQ30917040" <%=strEPQ30917040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917080" type="text" value="1" size="3" name="EPQ30917030" <%=strEPQ30917030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917085" type="text" value="1" size="3" name="EPQ30917040" <%=strEPQ30917040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917090" type="text" value="1" size="3" name="EPQ30917030" <%=strEPQ30917030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30917095" type="text" value="1" size="3" name="EPQ30917040" <%=strEPQ30917040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30917050" type="text" value="1" size="3" name="EPQ30917050" <%=strEPQ30917050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30917050" type="text" value="2" size="3" name="EPQ30917050" <%=strEPQ30917050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30917050" type="text" value="77" size="3" name="EPQ30917050" <%=strEPQ30917050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>


<% if Session("EPQ30901110")= "1" then %>
<% if Session("EPQ30901110Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Neurological or mental disorder</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912010" type="text" value="1" size="3" name="EPQ30912010" <%=strEPQ30912010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912020" type="text" value="1" size="3" name="EPQ30912020" <%=strEPQ30912020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912060" type="text" value="1" size="3" name="EPQ30912030" <%=strEPQ30912030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912065" type="text" value="1" size="3" name="EPQ30912040" <%=strEPQ30912040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912070" type="text" value="1" size="3" name="EPQ30912030" <%=strEPQ30912030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912075" type="text" value="1" size="3" name="EPQ30912040" <%=strEPQ30912040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912080" type="text" value="1" size="3" name="EPQ30912030" <%=strEPQ30912030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912085" type="text" value="1" size="3" name="EPQ30912040" <%=strEPQ30912040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912090" type="text" value="1" size="3" name="EPQ30912030" <%=strEPQ30912030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30912095" type="text" value="1" size="3" name="EPQ30912040" <%=strEPQ30912040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30912050" type="text" value="1" size="3" name="EPQ30912050" <%=strEPQ30912050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30912050" type="text" value="2" size="3" name="EPQ30912050" <%=strEPQ30912050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30912050" type="text" value="77" size="3" name="EPQ30912050" <%=strEPQ30912050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901130")= "1" then %>
<% if Session("EPQ30901130Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>Pneumonia</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914010" type="text" value="1" size="3" name="EPQ30914010" <%=strEPQ30914010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914020" type="text" value="1" size="3" name="EPQ30914020" <%=strEPQ30914020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914060" type="text" value="1" size="3" name="EPQ30914030" <%=strEPQ30914030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914065" type="text" value="1" size="3" name="EPQ30914040" <%=strEPQ30914040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914070" type="text" value="1" size="3" name="EPQ30914030" <%=strEPQ30914030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914075" type="text" value="1" size="3" name="EPQ30914040" <%=strEPQ30914040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914080" type="text" value="1" size="3" name="EPQ30914030" <%=strEPQ30914030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914085" type="text" value="1" size="3" name="EPQ30914040" <%=strEPQ30914040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914090" type="text" value="1" size="3" name="EPQ30914030" <%=strEPQ30914030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30914095" type="text" value="1" size="3" name="EPQ30914040" <%=strEPQ30914040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30914050" type="text" value="1" size="3" name="EPQ30914050" <%=strEPQ30914050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30914050" type="text" value="2" size="3" name="EPQ30914050" <%=strEPQ30914050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30914050" type="text" value="77" size="3" name="EPQ30914050" <%=strEPQ30914050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901030")= "1" then %>
<% if Session("EPQ30901030Page2")= "1" then %>


	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
Stroke or cerebrovascular disease
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904010" type="text" value="1" size="3" name="EPQ30904010" <%=strEPQ30904010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904020" type="text" value="1" size="3" name="EPQ30904020" <%=strEPQ30904020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904060" type="text" value="1" size="3" name="EPQ30904030" <%=strEPQ30904030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904065" type="text" value="1" size="3" name="EPQ30904040" <%=strEPQ30904040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904070" type="text" value="1" size="3" name="EPQ30904030" <%=strEPQ30904030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904075" type="text" value="1" size="3" name="EPQ30904040" <%=strEPQ30904040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904080" type="text" value="1" size="3" name="EPQ30904030" <%=strEPQ30904030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904085" type="text" value="1" size="3" name="EPQ30904040" <%=strEPQ30904040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904090" type="text" value="1" size="3" name="EPQ30904030" <%=strEPQ30904030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30904095" type="text" value="1" size="3" name="EPQ30904040" <%=strEPQ30904040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30904050" type="text" value="1" size="3" name="EPQ30904050" <%=strEPQ30904050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30904050" type="text" value="2" size="3" name="EPQ30904050" <%=strEPQ30904050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30904050" type="text" value="77" size="3" name="EPQ30904050" <%=strEPQ30904050answer3%> >
		</td>
	</tr>
<% end if %>
<% end if %>

<% if Session("EPQ30901170")= "1" then %>
<% if Session("EPQ30901170Page2")= "1" then %>

	<tr class='eitherOneOrTwoOrMoreCheckboxes'>
		<td>
<%
=Session("EPQ30901180")
%>
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918010" type="text" value="1" size="3" name="EPQ30918010" <%=strEPQ30918010answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918020" type="text" value="1" size="3" name="EPQ30918020" <%=strEPQ30918020answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918060" type="text" value="1" size="3" name="EPQ30918030" <%=strEPQ30918030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918065" type="text" value="1" size="3" name="EPQ30918040" <%=strEPQ30918040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918070" type="text" value="1" size="3" name="EPQ30918030" <%=strEPQ30918030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918075" type="text" value="1" size="3" name="EPQ30918040" <%=strEPQ30918040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918080" type="text" value="1" size="3" name="EPQ30918030" <%=strEPQ30918030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918085" type="text" value="1" size="3" name="EPQ30918040" <%=strEPQ30918040answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918090" type="text" value="1" size="3" name="EPQ30918030" <%=strEPQ30918030answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="checkbox" id="EPQ30918095" type="text" value="1" size="3" name="EPQ30918040" <%=strEPQ30918040answer1%> >
		</td>

		<td style="text-align: center;">
		<input type="radio" class="required" id="EPQ30918050" type="text" value="1" size="3" name="EPQ30918050" <%=strEPQ30918050answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30918050" type="text" value="0" size="3" name="EPQ30918050" <%=strEPQ30918050answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="EPQ30918050" type="text" value="77" size="3" name="EPQ30918050" <%=strEPQ30918050answer3%> >
		</td>
	</tr>
<% end if %>
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
