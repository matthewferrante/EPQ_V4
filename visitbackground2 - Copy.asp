<%
Session("VisitBackgroundSectionStatus")="Current"
Session("PageHolder")="Visit Background"


if Request.Form("ispostback") <> "1" then
	if Session("GU10202000")="1" then
		strGU10202000answer1="checked"
	end if
	if Session("GU10201000")="1" then
		strGU10201000answer1="checked"
	end if
	if Session("GU10203000")="1" then
		strGU10203000answer1="checked"
	end if

	if Session("GI10201000")="1" then
		strGI10201000answer1="checked"
	end if
	if Session("GI10202000")="1" then
		strGI10202000answer1="checked"
	end if
	if Session("GI10203000")="1" then
		strGI10203000answer1="checked"
	end if

	if Session("HM10201000")="1" then
		strHM10201000answer1="checked"
	end if
	if Session("HM10202000")="1" then
		strHM10202000answer1="checked"
	end if
	if Session("HM10203000")="1" then
		strHM10203000answer1="checked"
	end if
	if Session("HM10204000")="1" then
		strHM10204000answer1="checked"
	end if
	if Session("HM10205000")="1" then
		strHM10205000answer1="checked"
	end if
	if Session("HM10206000")="1" then
		strHM10206000answer1="checked"
	end if
	if Session("HM10207000")="1" then
		strHM10207000answer1="checked"
	end if

	if Session("EPQ30206000")="1" then
		strEPQ30206000answer1="checked"
	end if
	
	if Session("EPQ30206000")="0" then
		strEPQ30206000answer2="checked"
	end if
	if Session("EPQ30207000")="1" then
		strEPQ30207000answer1="checked"
	end if
	if Session("EPQ30207000")="2" then
		strEPQ30207000answer2="checked"
	end if
	if Session("EPQ30207000")="3" then
		strEPQ30207000answer3="checked"
	end if
	if Session("EPQ30207000")="4" then
		strEPQ30207000answer4="checked"
	end if
	if Session("EPQ30207000")="5" then
		strEPQ30207000answer5="checked"
	end if

	if Session("EPQ30207000")="6" then
		strEPQ30207000answer6="checked"
	end if

end if	

if Request.Form("ispostback")="1" then

	
	Session("GU10202000string")= ""
	Session("GU10201000string")= ""
	Session("GU10203000string")= ""

	Session("GI10201000string")= ""
	Session("GI10202000string")= ""
	Session("GI10203000string")= ""

	Session("HM10201000string")= ""
	Session("HM10202000string")= ""
	Session("HM10203000string")= ""
	Session("HM10204000string")= ""
	Session("HM10205000string")= ""
	Session("HM10206000string")= ""
	Session("HM10207000string")= ""

	Session("GU10202000") = Request.Form("GU10202000")
	Session("GU10201000") = Request.Form("GU10201000")
	Session("GU10203000") = Request.Form("GU10203000")

	Session("GI10201000") = Request.Form("GI10201000")
	Session("GI10202000") = Request.Form("GI10202000")
	Session("GI10203000") = Request.Form("GI10203000")

	Session("HM10201000") = Request.Form("HM10201000")
	Session("HM10202000") = Request.Form("HM10202000")
	Session("HM10203000") = Request.Form("HM10203000")
	Session("HM10204000") = Request.Form("HM10204000")
	Session("HM10205000") = Request.Form("HM10205000")
	Session("HM10206000") = Request.Form("HM10206000")
	Session("HM10207000") = Request.Form("HM10207000")

	if Session("GU10202000") = "1" then 
		Session("GU10202000string")= ""
	end if
	if Session("GU10201000") = "1" then 
		Session("GU10201000string")= ""
	end if
	if Session("GU10203000") = "1" then 
		Session("GU10203000string")= ""
	end if

	if Session("GI10201000") = "1" then 
		Session("GI10201000string")= ""
	end if
	if Session("GI10202000") = "1" then 
		Session("GI10202000string")= ""
	end if
	if Session("GI10203000") = "1" then 
		Session("GI10203000string")= ""
	end if

	if Session("HM10201000") = "1" then 
		Session("HM10201000string")= ""
	end if
	if Session("HM10202000") = "1" then 
		Session("HM10202000string")= ""
	end if
	if Session("HM10203000") = "1" then 
		Session("HM10203000string")= ""
	end if
	if Session("HM10204000") = "1" then 
		Session("HM10204000string")= ""
	end if
	if Session("HM10205000") = "1" then 
		Session("HM10205000string")= ""
	end if
	if Session("HM10206000") = "1" then 
		Session("HM10206000string")= ""
	end if

	if Session("HM10207000") = "1" then 
		Session("HM10207000string")= ""
	end if


Session("EPQ30206000string")=""
Session("EPQ30207000string")=""

	Session("EPQ30206000") = Request.Form("EPQ30206000")
	Session("EPQ30207000") = Request.Form("EPQ30207000")
	Session("EPQ30207000specify") = Server.htmlencode(Request.Form("EPQ30207000specify"))

	Session("EPQ30208000") = Request.Form("EPQ30208000")
	Session("EPQ30209000") = Request.Form("EPQ30209000")


	if Session("EPQ30206000")="1" then
		Session("EPQ30206000string")="Questionnaire completed by patient"
		Session("EPQ30207000")="100"
		Session("EPQ30208000")=""
		Session("EPQ30209000")=""
	end if
	

	if Session("EPQ30207000")="1" then
		Session("EPQ30207000string")="Questionnaire completed by patient's spouse, "
	end if
	if Session("EPQ30207000")="3" then
		Session("EPQ30207000string")="Questionnaire completed by patient's child, "
	end if
	if Session("EPQ30207000")="4" then
		Session("EPQ30207000string")="Questionnaire completed by patient's parent, "
	end if
	if Session("EPQ30207000")="2" then
		Session("EPQ30207000string")="Questionnaire completed by patient's friend, "
	end if
	if Session("EPQ30207000")="5" then
		Session("EPQ30207000string")="Questionnaire completed by "&Session("EPQ30207000specify")&", "
	end if
               
end if

if Request.Form("StopID")="1" then
		Session("VisitBackgroundSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "visitbackgroundmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30206000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("VisitBackgroundSectionStatus")="Completed"
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "visitbackgroundmaster.asp"

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
		
    <form action="visitbackground2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
	<legend class="QuestionBox">
Are you, the person filling out this electronic questionnaire, the patient?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30206000" value="1" class="qTriggerOff2 required"
id="EPQ302060001" <%=strEPQ30206000answer1%>>
		<label for="EPQ302060001">Yes, I am the patient</label><br>
		<input type="radio" name="EPQ30206000" value="0" class="qTrigger2"
id="EPQ302060002" <%=strEPQ30206000answer2%>>
		<label for="EPQ302060002">No, I am filling this out for the patient</label><br>
</div>
  </fieldset>

<div class="hiddenQ2">
  <fieldset>
	<legend class="QuestionBox">
What is your relationship to the patient?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30207000" class="requiredIfBranchActive" value="1" 
id="EPQ302070001" <%=strEPQ30207000answer1%>>
		<label for="EPQ302070001">Patient's spouse</label><br>

		<input type="radio" name="EPQ30207000" value="3" 
id="EPQ302070002" <%=strEPQ30207000answer3%>>
		<label for="EPQ302070002">Patient's child</label><br>

		<input type="radio" name="EPQ30207000" value="4" 
id="EPQ302070003" <%=strEPQ30207000answer4%>>
		<label for="EPQ302070003">Patient's parent</label><br>

		<input type="radio" name="EPQ30207000" value="2" 
id="EPQ302070004" <%=strEPQ30207000answer2%>>
		<label for="EPQ302070004">Patient's friend</label><br>

		<input type="radio" name="EPQ30207000" value="6" 
id="EPQ302070006" <%=strEPQ30207000answer6%>>
		<label for="EPQ302070004">Patient's sibling</label><br>

		<input type="radio" name="EPQ30207000" value="5" 
id="EPQ302070005" <%=strEPQ30207000answer5%>>
		<label for="EPQ302070005">Other, specify: </label>

		<input id="EPQ30207000specify" type="text" maxlength="30" size="30" name="EPQ30207000specify" class="requiredIfPreviousRadio" value='<%=Session("EPQ30207000specify")%>' > <br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
	<legend class="QuestionBox">
What is your name?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<label for="EPQ30208000">First Name:</label>
		<input id="EPQ30208000" type="text" maxlength="30" size="18" name="EPQ30208000" class="requiredIfBranchActive" value='<%=Session("EPQ30208000")%>'>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<label for="EPQ30209000">Last Name:</label>
		<input id="EPQ30209000" type="text" maxlength="30" size="18" name="EPQ30209000" class="requiredIfBranchActive" value='<%=Session("EPQ30209000")%>' >
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

</div>

<%
if Session("ProductionModeSpoke2")="GU" then
if Session("SurveyVersion")="GU" then
%>
  <fieldset>
	<legend class="QuestionBox">
      Are you coming to Moffitt to see a doctor for:<br>
	  </legend>
	<div class="QuestionAnswersBox">

	<% if Session("gender")="M" then %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GU10201000" value="1" id="GU10201000" <%=strGU10201000answer1%>>
		<label for="GU10201000">Prostate problem or elevated PSA</label><br>
	<% end if %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GU10202000" value="1" id="GU10202000" <%=strGU10202000answer1%>>
		<label for="GU10202000">Bladder problems</label><br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GU10203000" value="1" id="GU10203000" <%=strGU10203000answer1%>>
		<label for="GU10203000">Other problems like kidney</label><br>
<br>
	</div></fieldset>	
<%
end if
end if
%>

<%
if Session("ProductionModeSpoke3")="GI" then
if Session("SurveyVersion")="GI" then
%>
  <fieldset>
	<legend class="QuestionBox">
      Are you coming to Moffitt to see a doctor for:<br>
	  </legend>
	<div class="QuestionAnswersBox">

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GI10201000" value="1" id="GI10201000" <%=strGI10201000answer1%>>
		<label for="GI10201000">Colon and rectum problems</label><br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GI10202000" value="1" id="GI10202000" <%=strGI10202000answer1%>>
		<label for="GI10202000">Pancreas, liver, bile duct and gall bladder problems</label><br>

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="GI10203000" value="1" id="GI10203000" <%=strGI10203000answer1%>>
		<label for="GI10203000">Other problems</label><br>
<br>
	</div></fieldset>	
<%
end if
end if
%>

<%
if Session("ProductionModeSpoke4")="HEME" then
if Session("SurveyVersion")="HEME" then
%>

  <fieldset>
	<legend class="QuestionBox">
      Are you coming to Moffitt to see a doctor for: Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">

		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10201000" value="1" id="HM10201000" <%=strHM10201000answer1%>>
		<label for="HM10201000">Acute myeloid leukemia (AML)</label><br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10206000" value="1" id="HM10206000" <%=strHM10206000answer1%>>
		<label for="HM10206000">Chronic lymphocytic leukemia (CLL)</label><br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10202000" value="1" id="HM10202000" <%=strHM10202000answer1%>>
		<label for="HM10202000">Chronic myelogenous leukemia (CML)</label><br>

<% if Session("AppointmentLocation") = "BMTC" OR Session("AppointmentLocation") = "SRAD" then %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10207000" value="1" id="HM10207000" <%=strHM10207000answer1%>>
		<label for="HM10207000">Lymphoma</label><br>
<% end if %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10203000" value="1" id="HM10203000" <%=strHM10203000answer1%>>
		<label for="HM10203000">Myelodysplastic syndromes (MDS)</label><br>
<% if Session("AppointmentLocation") <> "SRAD" then %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10204000" value="1" id="HM10204000" <%=strHM10204000answer1%>>
		<label for="HM10204000">Multiple myeloma (MM)</label><br>
<% end if %>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="HM10205000" value="1" id="HM10205000" <%=strHM10205000answer1%>>
		<label for="HM10205000">Other problems</label><br>

<br>
	</div></fieldset>	
<%
end if
end if
%>


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
	
<script>
  if ( $("#EPQ30206000:checked").attr('value') == 0 ) {
    $("#EPQ30206000:checked").click();
  }
</script>
	

 </body>
</html>
