
<%

Session("PastMedicalHistoryStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA10301000")="1" then
		strCUTA10301000answer1="checked"
	end if
	if Session("CUTA10301000")="2" then
		strCUTA10301000answer2="checked"
	end if
	if Session("CUTA10301000")="88" then
		strCUTA10301000answer3="checked"
	end if


	if Session("CUTA10302000")="1" then
		strCUTA10302000answer1="checked"
	end if
	if Session("CUTA10302000")="2" then
		strCUTA10302000answer2="checked"
	end if
	if Session("CUTA10302000")="3" then
		strCUTA10302000answer3="checked"
	end if
	if Session("CUTA10302000")="4" then
		strCUTA10302000answer4="checked"
	end if
	if Session("CUTA10302000")="5" then
		strCUTA10302000answer5="checked"
	end if
	if Session("CUTA10302000")="6" then
		strCUTA10302000answer6="checked"
	end if
	if Session("CUTA10302000")="7" then
		strCUTA10302000answer7="checked"
	end if
	if Session("CUTA10302000")="8" then
		strCUTA10302000answer8="checked"
	end if

	if Session("CUTA10302000")="9" then
		strCUTA10302000answer9="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("CUTA10301000") = Request.Form("CUTA10301000")
	Session("CUTA10302000") = Request.Form("CUTA10302000")

	if Session("CUTA10302000") = "1" then 
	Session("CUTA10302000string")= "Less than 18"
	end if

	if Session("CUTA10302000") = "2" then 
	Session("CUTA10302000string")= "18-20"
	end if
	if Session("CUTA10302000") = "3" then 
	Session("CUTA10302000string")= "21-29"
	end if

	if Session("CUTA10302000") = "4" then 
	Session("CUTA10302000string")= "30-39"
	end if

	if Session("CUTA10302000") = "5" then 
	Session("CUTA10302000string")= "40-49"
	end if

	if Session("CUTA10302000") = "6" then 
	Session("CUTA10302000string")= "50-59"
	end if

	if Session("CUTA10302000") = "7" then 
	Session("CUTA10302000string")= "60-69"
	end if

	if Session("CUTA10302000") = "8" then 
	Session("CUTA10302000string")= "70-79"
	end if
	if Session("CUTA10302000") = "9" then 
	Session("CUTA10302000string")= "More than 79"
	end if


end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	
	if Session("EPQ30312040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30313040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30314040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30315040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30316040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30317040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30318040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30319040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30320040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30321040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30322040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30323040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30324040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30325040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30326040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30327040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30328040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30329040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30330040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30331040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30332040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30333040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30334040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30335040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30336040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30337040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30338040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30339040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30340040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if
	if Session("EPQ30342040")="1" then
	Session("Page")="4"
	Response.Redirect "personalhistorycancermaster.asp"
	end if

		Session("Page")="3"
		if Session("PHCDisplayCounter") > 9 then
		Session("Page")="31"
		end if

		if Session("PHCDisplayCounter") > 18 then
		Session("Page")="32"
		end if

		Session("ReturnID")="1"
		Response.Redirect "personalhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("EPQ30311035")="1" then
	Session("Page")="2cuta"
	Response.Redirect "personalhistorycancermaster.asp"
end if
end if
end if

	Session("Page")="3cuta"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "personalhistorycancermaster.asp"
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

    <form action="personalhistorycancer1cuta.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<%
if Session("ProductionModeSpoke")="C" then
if Session("SurveyVersion")="Cutaneous" then
if Session("Gender")="F" then
%>
	<fieldset><legend class='QuestionBox'>
Were you pregnant when diagnosed with melanoma?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA10301000" value="1" id="CUTA10301001" class="required" <%=strCUTA10301000answer1%>>
		<label for="CUTA10301001">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA10301000" value="2" id="CUTA10301001" class="required" <%=strCUTA10301000answer2%>>
		<label for="CUTA10301002">No</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="CUTA10301000" value="88" id="CUTA10301001" class="required" <%=strCUTA10301000answer3%>>
		<label for="CUTA106301003">Unknown</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</fieldset>
<%
end if 
end if
end if
%>

	<div id="SpecialNote">
It is not uncommon to be diagnosed with the same type of skin cancer more than once in one’s lifetime. 
	</div>
<br>

  
  <fieldset>
    <legend class="QuestionBox">
Please provide your age when you were <u>first</u> diagnosed with melanoma:<br>

	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA10302000" value="1" id="CUTA10302001" class="required" <%=strCUTA10302000answer1%> >
		<label for="CUTA10302001">Less than 18</label><br>
		<input type="radio" name="CUTA10302000" value="2" id="CUTA10302002" class="required" <%=strCUTA10302000answer2%> >
		<label for="CUTA10302002">18-20</label><br>
		<input type="radio" name="CUTA10302000" value="3" id="CUTA10302003" class="required" <%=strCUTA10302000answer3%> >
		<label for="CUTA10302003">21-29</label><br>
		<input type="radio" name="CUTA10302000" value="4" id="CUTA10302004" class="required" <%=strCUTA10302000answer4%> >
		<label for="CUTA10302004">30-39</label><br>
		<input type="radio" name="CUTA10302000" value="5" id="CUTA10302005" class="required" <%=strCUTA10302000answer5%> >
		<label for="CUTA10302005">40-49</label><br>
		<input type="radio" name="CUTA10302000" value="6" id="CUTA10302006" class="required" <%=strCUTA10302000answer6%> >
		<label for="CUTA10302006">50-59</label><br>
		<input type="radio" name="CUTA10302000" value="7" id="CUTA10302007" class="required" <%=strCUTA10302000answer7%> >
		<label for="CUTA10302007">60-69</label><br>
		<input type="radio" name="CUTA10302000" value="8" id="CUTA10302008" class="required" <%=strCUTA10302000answer8%> >
		<label for="CUTA10302008">70-79</label><br>
		<input type="radio" name="CUTA10302000" value="9" id="CUTA10302009" class="required" <%=strCUTA10302000answer9%> >
		<label for="CUTA10302009">More than 79</label><br>

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
