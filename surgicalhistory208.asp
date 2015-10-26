
<%

Session("SurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEMP1EPQ30755400")="1" then
		strTEMP1EPQ30755400answer1="checked"
	end if
	if Session("TEMP2EPQ30755400")="1" then
		strTEMP2EPQ30755400answer1="checked"
	end if
	if Session("TEMP3EPQ30755400")="1" then
		strTEMP3EPQ30755400answer1="checked"
	end if
	if Session("EPQ30755450")="1" then
		strEPQ30755450answer1="checked"
	end if
	if Session("TEMP4EPQ30755400")="1" then
		strTEMP4EPQ30755400answer1="checked"
	end if
	if Session("TEMP5EPQ30755400")="1" then
		strTEMP5EPQ30755400answer1="checked"
	end if
	if Session("TEMP6EPQ30755400")="1" then
		strTEMP6EPQ30755400answer1="checked"
	end if
	if Session("TEMP7EPQ30755400")="1" then
		strTEMP7EPQ30755400answer1="checked"
	end if
	if Session("TEMP8EPQ30755600")="1" then
		strTEMP8EPQ30755600answer1="checked"
	end if
	if Session("EPQ30755700")="1" then
		strEPQ30755700answer1="checked"
	end if
	if Session("EPQ30755400")="1" then
		strEPQ30755400answer1="checked"
	end if
	if Session("EPQ30755750")="1" then
		strEPQ30755750answer1="checked"
	end if
	if Session("EPQ30755790Describe")="1" then
		strEPQ30755790Describeanswer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("TEMP1EPQ30755400") = Request.Form("TEMP1EPQ30755400")
	Session("TEMP2EPQ30755400") = Request.Form("TEMP2EPQ30755400")
	Session("TEMP3EPQ30755400") = Request.Form("TEMP3EPQ30755400")
	Session("EPQ30755450") = Request.Form("EPQ30755450")
	Session("EPQ30755550") = Request.Form("EPQ30755550")
	Session("TEMP4EPQ30755400") = Request.Form("TEMP4EPQ30755400")
	Session("TEMP5EPQ30755400") = Request.Form("TEMP5EPQ30755400")
	Session("TEMP6EPQ30755400") = Request.Form("TEMP6EPQ30755400")
	Session("TEMP7EPQ30755650") = Request.Form("TEMP7EPQ30755650")
	Session("TEMP8EPQ30755600") = Request.Form("TEMP8EPQ30755600")
	Session("EPQ30755700") = Request.Form("EPQ30755700")
	Session("EPQ30755400") = Request.Form("EPQ30755400")
	Session("EPQ30755750") = Request.Form("EPQ30755750")
	Session("EPQ30755790Describe") = Request.Form("EPQ30755790Describe")

end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=207
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("TEMPEPQ30714101") <> "1" then 
	Session("Page")="207"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Session("ReturnID")<> "1" then
	if Session("TEMPEPQ30714101") <> "1" then 
	Session("Page")="209"
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if



if Request.Form("ContinueID")="1" then
	Session("Page")="209"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
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


    <form action="surgicalhistory208.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>orthopedic (bone, joint, ligaments, and muscles)</u> surgeries or procedures have you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP1EPQ30755400" value="1" <%=strTEMP1EPQ30755400answer1%>>Ankle surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired" name="TEMP2EPQ30755400" value="1" <%=strTEMP2EPQ30755400answer1%>>Arm surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP3EPQ30755400" value="1" <%=strTEMP3EPQ30755400answer1%>>Elbow surgery (ulnar nerve transposition)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755450" value="1" <%=strEPQ30755450answer1%>>Foot surgery (including bunions)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755550" value="1" <%=strEPQ30755550answer1%>>Hand surgery (including carpal tunnel)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP4EPQ30755400" value="1" <%=strTEMP4EPQ30755400answer1%>>Hip fracture surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP5EPQ30755400" value="1" <%=strTEMP5EPQ30755400answer1%>>Hip replacement<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP6EPQ30755400" value="1" <%=strTEMP6EPQ30755400answer1%>>Hip resurfacing surgery (shaving of bone<br>&nbsp;&nbsp;&nbsp;&nbsp
or hip impingement)<br>

</span>

<span class="column2">
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP7EPQ30755650" value="1" <%=strTEMP7EPQ30755650answer1%>>Knee replacement<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP7EPQ30755650" value="1" <%=strTEMP7EPQ30755650answer1%>>Knee surgery (including ACL reconstruction<br>&nbsp;&nbsp;&nbsp;&nbsp
and arthroscopic procedures)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="TEMP8EPQ30755600" value="1" <%=strTEMP8EPQ30755600answer1%>>Leg surgery<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755700" value="1" <%=strEPQ30755700answer1%>>Shoulder surgery (including rotator cuff repair)<br>

		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755400" value="1" <%=strEPQ30755400answer1%>>Spine or back surgery (including discectomy or laminectomy)<br>
		<input type="checkbox" class="atLeastOneCheckboxRequired"name="EPQ30755750" value="1" <%=strEPQ30755750answer1%>>Other orthopedic surgery, specify:<br>&nbsp;&nbsp;&nbsp;&nbsp

		<input id="EPQ30755790Describe" type="text" class="requiredIfPreviousCheckbox" maxlength="75" size="25" name="EPQ30755790Describe" value='<%=Session("EPQ30755790Describe")%>' >
		
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
