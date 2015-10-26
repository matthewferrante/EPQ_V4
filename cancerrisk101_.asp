
<%
Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31164000")="0" then
		strEPQ31164000answer1="checked"
	end if
	if Session("EPQ31164000")="1" then
		strEPQ31164000answer2="checked"
	end if
	if Session("EPQ31164000")="2" then
		strEPQ31164000answer3="checked"
	end if
	if Session("EPQ31164000")="3" then
		strEPQ31164000answer4="checked"
	end if
	if Session("EPQ31164000")="4" then
		strEPQ31164000answer5="checked"
	end if
	if Session("EPQ31164000")="5" then
		strEPQ31164000answer6="checked"
	end if

	if Session("EPQ31165000")="0" then
		strEPQ31165000answer1="checked"
	end if
	if Session("EPQ31165000")="1" then
		strEPQ31165000answer2="checked"
	end if
	if Session("EPQ31165000")="2" then
		strEPQ31165000answer3="checked"
	end if
	if Session("EPQ31165000")="3" then
		strEPQ31165000answer4="checked"
	end if
	if Session("EPQ31165000")="4" then
		strEPQ31165000answer5="checked"
	end if
	if Session("EPQ31165000")="5" then
		strEPQ31165000answer6="checked"
	end if

	if Session("EPQ31166000")="0" then
		strEPQ31166000answer1="checked"
	end if
	if Session("EPQ31166000")="1" then
		strEPQ31166000answer2="checked"
	end if
	if Session("EPQ31166000")="2" then
		strEPQ31166000answer3="checked"
	end if
	if Session("EPQ31166000")="3" then
		strEPQ31166000answer4="checked"
	end if
	if Session("EPQ31166000")="4" then
		strEPQ31166000answer5="checked"
	end if
	if Session("EPQ31166000")="5" then
		strEPQ31166000answer6="checked"
	end if

	if Session("EPQ31167000")="0" then
		strEPQ31167000answer1="checked"
	end if
	if Session("EPQ31167000")="1" then
		strEPQ31167000answer2="checked"
	end if
	if Session("EPQ31167000")="2" then
		strEPQ31167000answer3="checked"
	end if
	if Session("EPQ31167000")="3" then
		strEPQ31167000answer4="checked"
	end if
	if Session("EPQ31167000")="4" then
		strEPQ31167000answer5="checked"
	end if
	if Session("EPQ31167000")="5" then
		strEPQ31167000answer6="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31164000string")= ""
	Session("EPQ31165000string")= ""
	Session("EPQ31166000string")= ""
	Session("EPQ31167000string")= ""

	Session("EPQ31164000") = Request.Form("EPQ31164000")
	Session("EPQ31165000") = Request.Form("EPQ31165000")
	Session("EPQ31166000") = Request.Form("EPQ31166000")
	Session("EPQ31167000") = Request.Form("EPQ31167000")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=10
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31164000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31165000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="11"

	 <!--#include file="autosavefunction.asp"-->
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
	<div id="SectionHeader">
	 <!--#include file="sectionheader.asp"-->
	</div>
	<div id="DirectionsHeader">
	Please answer the following questions and click CONTINUE
	</div>
	<div id="SpecialNote">
	Over the past 12 months, did you drink any of the following caffeinated beverages at least once per week? (Check all that apply.) Please indicate how many of these caffeinated drinks you drink per week.
These questions are not intended to assess your total liquid consumption, and you may not find all the items you drink listed.
	</div>

<div id="formBlock">


    <form action="cancerrisk101.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<div class="sub_qualityoflife">
	<div class="row0">
		<div class="header0">Item</div>
		<div class="header1">Serving Size</div>
		<div class="header1">Never</div>
		<div class="header1">Less than 1 cup per week</div>
		<div class="header1">1 cup per week</div>
		<div class="header1">2-4 cups per week</div>
		<div class="header1">Nearly 1 cup daily or daily</div>
		<div class="header1">2 or more cups per day</div>
	</div>

	<div class="row1">
		<div class="cell0">
Coffee?
		</div>
		<div class="cell1">
6 oz. cup
	</div>

		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="0" size="1" name="EPQ31164000" <%=strEPQ31164000answer1%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="1" size="1" name="EPQ31164000" <%=strEPQ31164000answer2%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="2" size="1" name="EPQ31164000" <%=strEPQ31164000answer3%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="3" size="1" name="EPQ31164000" <%=strEPQ31164000answer4%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="4" size="1" name="EPQ31164000" <%=strEPQ31164000answer5%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31164000" type="text" value="5" size="1" name="EPQ31164000" <%=strEPQ31164000answer6%>>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">
Hot tea?
		</div>
		<div class="cell1">
6 oz. cup
	</div>

		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="0" size="1" name="EPQ31165000" <%=strEPQ31165000answer1%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="1" size="1" name="EPQ31165000" <%=strEPQ31165000answer2%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="2" size="1" name="EPQ31165000" <%=strEPQ31165000answer3%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="3" size="1" name="EPQ31165000" <%=strEPQ31165000answer4%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="4" size="1" name="EPQ31165000" <%=strEPQ31165000answer5%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31165000" type="text" value="5" size="1" name="EPQ31165000" <%=strEPQ31165000answer6%>>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">
Iced tea?
		</div>
		<div class="cell1">
12 oz. glass
	</div>

		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="0" size="1" name="EPQ31166000" <%=strEPQ31166000answer1%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="1" size="1" name="EPQ31166000" <%=strEPQ31166000answer2%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="2" size="1" name="EPQ31166000" <%=strEPQ31166000answer3%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="3" size="1" name="EPQ31166000" <%=strEPQ31166000answer4%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="4" size="1" name="EPQ31166000" <%=strEPQ31166000answer5%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31166000" type="text" value="5" size="1" name="EPQ31166000" <%=strEPQ31166000answer6%>>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">
Soda or energy drink?
		</div>
		<div class="cell1">
12 oz. can
	</div>

		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="0" size="1" name="EPQ31167000" <%=strEPQ31167000answer1%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="1" size="1" name="EPQ31167000" <%=strEPQ31167000answer2%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="2" size="1" name="EPQ31167000" <%=strEPQ31167000answer3%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="3" size="1" name="EPQ31167000" <%=strEPQ31167000answer4%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="4" size="1" name="EPQ31167000" <%=strEPQ31167000answer5%>>
		</div>
		<div class="cell1">
		<input type="radio" id="EPQ31167000" type="text" value="5" size="1" name="EPQ31167000" <%=strEPQ31167000answer6%>>
		</div>
	</div>


</div><!-- [ /#tableQualityofLife ] -->


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
