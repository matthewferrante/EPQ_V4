
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
	if Session("EPQ30902050")="88" then
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
	if Session("EPQ30903050")="88" then
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
	if Session("EPQ30904050")="88" then
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
	if Session("EPQ30905050")="88" then
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
	if Session("EPQ30906050")="2" then
		strEPQ30906050answer2="checked"
	end if
	if Session("EPQ30906050")="88" then
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
	if Session("EPQ30907050")="88" then
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
	if Session("EPQ30908050")="2" then
		strEPQ30908050answer2="checked"
	end if
	if Session("EPQ30908050")="88" then
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
	if Session("EPQ30909050")="88" then
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
	if Session("EPQ30910050")="88" then
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
	if Session("EPQ30911050")="88" then
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
	if Session("EPQ30912050")="88" then
		strEPQ30912050answer3="checked"
	end if
end if

	

if Request.Form("ispostback")="1" then
	Session("EPQ30902010string")= ""
	Session("EPQ30902020string")= ""
	Session("EPQ30902030string")= ""
	Session("EPQ30902040string")= ""
	Session("EPQ30902050string")= ""
	Session("EPQ30903010string")= ""
	Session("EPQ30903020string")= ""
	Session("EPQ30903030string")= ""
	Session("EPQ30903040string")= ""
	Session("EPQ30903050string")= ""
	Session("EPQ30904010string")= ""
	Session("EPQ30904020string")= ""
	Session("EPQ30904030string")= ""
	Session("EPQ30904040string")= ""
	Session("EPQ30904050string")= ""
	Session("EPQ30905010string")= ""
	Session("EPQ30905020string")= ""
	Session("EPQ30905030string")= ""
	Session("EPQ30905040string")= ""
	Session("EPQ30905050string")= ""
	Session("EPQ30906010string")= ""
	Session("EPQ30906020string")= ""
	Session("EPQ30906030string")= ""
	Session("EPQ30906040string")= ""
	Session("EPQ30906050string")= ""
	Session("EPQ30907010string")= ""
	Session("EPQ30907020string")= ""
	Session("EPQ30907030string")= ""
	Session("EPQ30907040string")= ""
	Session("EPQ30907050string")= ""
	Session("EPQ30908010string")= ""
	Session("EPQ30908020string")= ""
	Session("EPQ30908030string")= ""
	Session("EPQ30908040string")= ""
	Session("EPQ30908050string")= ""
	Session("EPQ30909010string")= ""
	Session("EPQ30909020string")= ""
	Session("EPQ30909030string")= ""
	Session("EPQ30909040string")= ""
	Session("EPQ30909050string")= ""
	Session("EPQ30910010string")= ""
	Session("EPQ30910020string")= ""
	Session("EPQ30910030string")= ""
	Session("EPQ30910040string")= ""
	Session("EPQ30910050string")= ""
	Session("EPQ30911010string")= ""
	Session("EPQ30911020string")= ""
	Session("EPQ30911030string")= ""
	Session("EPQ30911040string")= ""
	Session("EPQ30911050string")= ""
	Session("EPQ30912010string")= ""
	Session("EPQ30912020string")= ""
	Session("EPQ30912030string")= ""
	Session("EPQ30912040string")= ""
	Session("EPQ30912050string")= ""


	Session("EPQ30902010") = Request.Form("EPQ30902010")
	Session("EPQ30902020") = Request.Form("EPQ30902020")
	Session("EPQ30902030") = Request.Form("EPQ30902030")
	Session("EPQ30902040") = Request.Form("EPQ30902040")
	Session("EPQ30902050") = Request.Form("EPQ30902050")
	Session("EPQ30903010") = Request.Form("EPQ30903010")
	Session("EPQ30903020") = Request.Form("EPQ30903020")
	Session("EPQ30903030") = Request.Form("EPQ30903030")
	Session("EPQ30903040") = Request.Form("EPQ30903040")
	Session("EPQ30903050") = Request.Form("EPQ30903050")
	Session("EPQ30904010") = Request.Form("EPQ30904010")
	Session("EPQ30904020") = Request.Form("EPQ30904020")
	Session("EPQ30904030") = Request.Form("EPQ30904030")
	Session("EPQ30904040") = Request.Form("EPQ30904040")
	Session("EPQ30904050") = Request.Form("EPQ30904050")
	Session("EPQ30905010") = Request.Form("EPQ30905010")
	Session("EPQ30905020") = Request.Form("EPQ30905020")
	Session("EPQ30905030") = Request.Form("EPQ30905030")
	Session("EPQ30905040") = Request.Form("EPQ30905040")
	Session("EPQ30905050") = Request.Form("EPQ30905050")
	Session("EPQ30906010") = Request.Form("EPQ30906010")
	Session("EPQ30906020") = Request.Form("EPQ30906020")
	Session("EPQ30906030") = Request.Form("EPQ30906030")
	Session("EPQ30906040") = Request.Form("EPQ30906040")
	Session("EPQ30906050") = Request.Form("EPQ30906050")
	Session("EPQ30907010") = Request.Form("EPQ30907010")
	Session("EPQ30907020") = Request.Form("EPQ30907020")
	Session("EPQ30907030") = Request.Form("EPQ30907030")
	Session("EPQ30907040") = Request.Form("EPQ30907040")
	Session("EPQ30907050") = Request.Form("EPQ30907050")
	Session("EPQ30908010") = Request.Form("EPQ30908010")
	Session("EPQ30908020") = Request.Form("EPQ30908020")
	Session("EPQ30908030") = Request.Form("EPQ30908030")
	Session("EPQ30908040") = Request.Form("EPQ30908040")
	Session("EPQ30908050") = Request.Form("EPQ30908050")
	Session("EPQ30909010") = Request.Form("EPQ30909010")
	Session("EPQ30909020") = Request.Form("EPQ30909020")
	Session("EPQ30909030") = Request.Form("EPQ30909030")
	Session("EPQ30909040") = Request.Form("EPQ30909040")
	Session("EPQ30909050") = Request.Form("EPQ30909050")
	Session("EPQ30910010") = Request.Form("EPQ30910010")
	Session("EPQ30910020") = Request.Form("EPQ30910020")
	Session("EPQ30910030") = Request.Form("EPQ30910030")
	Session("EPQ30910040") = Request.Form("EPQ30910040")
	Session("EPQ30910050") = Request.Form("EPQ30910050")
	Session("EPQ30911010") = Request.Form("EPQ30911010")
	Session("EPQ30911020") = Request.Form("EPQ30911020")
	Session("EPQ30911030") = Request.Form("EPQ30911030")
	Session("EPQ30911040") = Request.Form("EPQ30911040")
	Session("EPQ30911050") = Request.Form("EPQ30911050")
	Session("EPQ30912010") = Request.Form("EPQ30912010")
	Session("EPQ30912020") = Request.Form("EPQ30912020")
	Session("EPQ30912030") = Request.Form("EPQ30912030")
	Session("EPQ30912040") = Request.Form("EPQ30912040")
	Session("EPQ30912050") = Request.Form("EPQ30912050")

	if Session("EPQ30902010") = "1" then 
		Session("EPQ30902010string")= ""
	end if
	if Session("EPQ30902020") = "1" then 
		Session("EPQ30902020string")= ""
	end if
	if Session("EPQ30902030") = "1" then 
		Session("EPQ30902030string")= ""
	end if
	if Session("EPQ30902040") = "1" then 
		Session("EPQ30902040string")= ""
	end if
	if Session("EPQ30902050") = "1" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30902050") = "2" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30902050") = "88" then 
		Session("EPQ30902050string")= ""
	end if

	if Session("EPQ30903010") = "1" then 
		Session("EPQ30903010string")= ""
	end if
	if Session("EPQ30903020") = "1" then 
		Session("EPQ30903020string")= ""
	end if
	if Session("EPQ30903030") = "1" then 
		Session("EPQ30903030string")= ""
	end if
	if Session("EPQ30903040") = "1" then 
		Session("EPQ30903040string")= ""
	end if
	if Session("EPQ30903050") = "1" then 
		Session("EPQ30903050string")= ""
	end if
	if Session("EPQ30903050") = "2" then 
		Session("EPQ30903050string")= ""
	end if
	if Session("EPQ30903050") = "88" then 
		Session("EPQ30903050string")= ""
	end if

	if Session("EPQ30904010") = "1" then 
		Session("EPQ30904010string")= ""
	end if
	if Session("EPQ30904020") = "1" then 
		Session("EPQ30904020string")= ""
	end if
	if Session("EPQ30904030") = "1" then 
		Session("EPQ30904030string")= ""
	end if
	if Session("EPQ30904040") = "1" then 
		Session("EPQ30904040string")= ""
	end if
	if Session("EPQ30904050") = "1" then 
		Session("EPQ30904050string")= ""
	end if
	if Session("EPQ30904050") = "2" then 
		Session("EPQ30904050string")= ""
	end if
	if Session("EPQ30904050") = "88" then 
		Session("EPQ30904050string")= ""
	end if

	if Session("EPQ30905010") = "1" then 
		Session("EPQ30905010string")= ""
	end if
	if Session("EPQ30905020") = "1" then 
		Session("EPQ30905020string")= ""
	end if
	if Session("EPQ30905030") = "1" then 
		Session("EPQ30905030string")= ""
	end if
	if Session("EPQ30905040") = "1" then 
		Session("EPQ30905040string")= ""
	end if
	if Session("EPQ30905050") = "1" then 
		Session("EPQ30905050string")= ""
	end if
	if Session("EPQ30905050") = "2" then 
		Session("EPQ30905050string")= ""
	end if
	if Session("EPQ30905050") = "88" then 
		Session("EPQ30905050string")= ""
	end if

	if Session("EPQ30906010") = "1" then 
		Session("EPQ30902010string")= ""
	end if
	if Session("EPQ30906020") = "1" then 
		Session("EPQ30902020string")= ""
	end if
	if Session("EPQ30906030") = "1" then 
		Session("EPQ30902030string")= ""
	end if
	if Session("EPQ30906040") = "1" then 
		Session("EPQ30902040string")= ""
	end if
	if Session("EPQ30906050") = "1" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30906050") = "2" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30906050") = "88" then 
		Session("EPQ30902050string")= ""
	end if

	if Session("EPQ30907010") = "1" then 
		Session("EPQ30902010string")= ""
	end if
	if Session("EPQ30907020") = "1" then 
		Session("EPQ30902020string")= ""
	end if
	if Session("EPQ30907030") = "1" then 
		Session("EPQ30902030string")= ""
	end if
	if Session("EPQ30907040") = "1" then 
		Session("EPQ30902040string")= ""
	end if
	if Session("EPQ30907050") = "1" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30907050") = "2" then 
		Session("EPQ30902050string")= ""
	end if
	if Session("EPQ30907050") = "88" then 
		Session("EPQ30902050string")= ""
	end if

	if Session("EPQ30908010") = "1" then 
		Session("EPQ30908010string")= ""
	end if
	if Session("EPQ30908020") = "1" then 
		Session("EPQ30908020string")= ""
	end if
	if Session("EPQ30908030") = "1" then 
		Session("EPQ30908030string")= ""
	end if
	if Session("EPQ30908040") = "1" then 
		Session("EPQ30908040string")= ""
	end if
	if Session("EPQ30908050") = "1" then 
		Session("EPQ30908050string")= ""
	end if
	if Session("EPQ30908050") = "2" then 
		Session("EPQ30908050string")= ""
	end if
	if Session("EPQ30908050") = "88" then 
		Session("EPQ30908050string")= ""
	end if

	if Session("EPQ30909010") = "1" then 
		Session("EPQ30909010string")= ""
	end if
	if Session("EPQ30909020") = "1" then 
		Session("EPQ30909020string")= ""
	end if
	if Session("EPQ30909030") = "1" then 
		Session("EPQ30909030string")= ""
	end if
	if Session("EPQ30909040") = "1" then 
		Session("EPQ30909040string")= ""
	end if
	if Session("EPQ30909050") = "1" then 
		Session("EPQ30909050string")= ""
	end if
	if Session("EPQ30909050") = "2" then 
		Session("EPQ30909050string")= ""
	end if
	if Session("EPQ30909050") = "88" then 
		Session("EPQ30909050string")= ""
	end if
	if Session("EPQ30910010") = "1" then 
		Session("EPQ30910010string")= ""
	end if
	if Session("EPQ30910020") = "1" then 
		Session("EPQ30910020string")= ""
	end if
	if Session("EPQ30910030") = "1" then 
		Session("EPQ30910030string")= ""
	end if
	if Session("EPQ30910040") = "1" then 
		Session("EPQ30910040string")= ""
	end if
	if Session("EPQ30910050") = "1" then 
		Session("EPQ30910050string")= ""
	end if
	if Session("EPQ30910050") = "2" then 
		Session("EPQ30910050string")= ""
	end if
	if Session("EPQ30910050") = "88" then 
		Session("EPQ30910050string")= ""
	end if

	if Session("EPQ30911010") = "1" then 
		Session("EPQ30911010string")= ""
	end if
	if Session("EPQ30911020") = "1" then 
		Session("EPQ30911020string")= ""
	end if
	if Session("EPQ30911030") = "1" then 
		Session("EPQ30911030string")= ""
	end if
	if Session("EPQ30911040") = "1" then 
		Session("EPQ30911040string")= ""
	end if
	if Session("EPQ30911050") = "1" then 
		Session("EPQ30911050string")= ""
	end if
	if Session("EPQ30911050") = "2" then 
		Session("EPQ30911050string")= ""
	end if
	if Session("EPQ30911050") = "88" then 
		Session("EPQ30911050string")= ""
	end if

	if Session("EPQ30912010") = "1" then 
		Session("EPQ30912010string")= ""
	end if
	if Session("EPQ30912020") = "1" then 
		Session("EPQ30912020string")= ""
	end if
	if Session("EPQ30912030") = "1" then 
		Session("EPQ30912030string")= ""
	end if
	if Session("EPQ30912040") = "1" then 
		Session("EPQ30912040string")= ""
	end if
	if Session("EPQ30912050") = "1" then 
		Session("EPQ30912050string")= ""
	end if
	if Session("EPQ30912050") = "2" then 
		Session("EPQ30912050string")= ""
	end if
	if Session("EPQ30912050") = "88" then 
		Session("EPQ30912050string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("FamilyHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "familyhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30902010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="3"

	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"
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
		<img src="images/moffitt.gif" />
</div>

<div id="wrapper">


<div id="formWrapper">
	<div id="SectionHeader">
	 <!--#include file="sectionheader.asp"-->
	</div>
	<div id="DirectionsHeader">
	Please answer the following questions and click CONTINUE
	</div>

<div id="formBlock">


    <form action="familyhistory2.asp" method="post" id="formQuestion" name="formQuestion">
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
				<th colspan="5">Please indicate who has this type of major chronic health problem (Check all that apply)</th>
				<th colspan="3">Were any of these relatives told that they had this health problem at or before age 50?</th>
			</tr>

			<tr class="tableSubHeading">
				<th>Health Problems</th>
				<th>Father</th>
				<th>Mother</th>
				<th>1 Sibling or Child</th>
				<th>2 or more siblings or children</th>
				<th>Yes</th>
				<th>No</th>
				<th>Not that I know of</th>
			</tr>
		   <tbody>

<% if Session("EPQ30901010")= "1" then %>
	<tr>
		<td>
High blood pressure
		</td>
		<td>
		<input type="checkbox" id="EPQ30902010" type="text" value="1" size="3" name="EPQ30902010" <%=strEPQ30902010answer1%> >
		</td>
		<td>
		<input type="checkbox" id="EPQ30902020" type="text" value="1" size="3" name="EPQ30902020" <%=strEPQ30902020answer1%> >
		</td>
		<td>
		<input type="checkbox" id="EPQ30902030" type="text" value="1" size="3" name="EPQ30902030" <%=strEPQ30902030answer1%> >
		</td>
		<td>
		<input type="checkbox" id="EPQ30902040" type="text" value="1" size="3" name="EPQ30902040" <%=strEPQ30902040answer1%> >
		</td>
		<td>
		<input type="radio" id="EPQ30902050" type="text" value="1" size="3" name="EPQ30902050" <%=strEPQ30902050answer1%> >
		</td>
		<td>
		<input type="radio" id="EPQ30902050" type="text" value="2" size="3" name="EPQ30902050" <%=strEPQ30902050answer2%> >
		</td>
		<td>
		<input type="radio" id="EPQ30902050" type="text" value="88" size="3" name="EPQ30902050" <%=strEPQ30902050answer3%> >
		</td>
	</tr>
<% end if %>


		   </tbody>
		</table>

</div><!-- [ /#tableQualityofLife ] -->

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
