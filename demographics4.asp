<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"
Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	
	If Session("EPQ30101000") <> "3" then
	if Session("gender")="F" then
		strEPQ30101000no="checked"
	end if
	if Session("gender")="M" then
		strEPQ30101000yes="checked"
	end if
	end if
	If Session("EPQ30101000") = "3" then
		strEPQ30101000other="checked"
	end if


	If Session("EPQ30116000") = "1" then
		strEPQ30116000M="checked"
	end if
	If Session("EPQ30116000") = "2" then
		strEPQ30116000F="checked"
	end if

	If Session("EPQ30115000") = "1" then
		strEPQ30115000ans1="checked"
	end if
	If Session("EPQ30115000") = "2" then
		strEPQ30115000ans2="checked"
	end if
	If Session("EPQ30115000") = "3" then
		strEPQ30115000ans3="checked"
	end if
	If Session("EPQ30115000") = "4" then
		strEPQ30115000ans4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30101000string")= ""
	Session("EPQ30102000string")= ""
	Session("EPQ30103000string")= ""

	Session("EPQ30101000") = Request.Form("EPQ30101000")
	Session("gender") = Request.Form("EPQ30101000")

	Session("EPQ30116000") = Request.Form("EPQ30116000")
	Session("EPQ30115000") = Request.Form("EPQ30115000")

	if Session("gender") = "1" then 
		Session("Gender")= "M"
	end if

	if Session("gender") = "2" then 
		Session("Gender")= "F"
	end if


	if Session("gender") = "3" then 
		if Session("EPQ30115000")="2" then 
		Session("Gender")= "M"
		end if
		if Session("EPQ30115000")="3" then 
		Session("Gender")= "F"
		end if

		if Session("EPQ30116000")="1" then 
		Session("Gender")= "M"
		end if
		if Session("EPQ30116000")="2" then 
		Session("Gender")= "F"
		end if

	end if


'DROP A DEMOGRAPHIC UPDATE ON SELF-REPORTED gender CHANGE
	if Session("Originalgender")=Session("gender")  then
	else
	dim aFSOHL7
	set aFSOHL7 = Server.CreateObject("Scripting.FileSystemObject")

	dim strReportPath

	strReportPath = "c:\cernerclinicHL7outbox\moffittprod\gender"
	' File extension
	dim strHL7ReportFileExt
	strHL7ReportFileExt = ".hl7"


	dim strHL7DateTime

		strHL7DateTime = Year(dtNow) & right("0" & Month(dtNow),2) & right("0" & Day(dtNow),2) & right("0" & Hour(dtNow)+1,2) & right("0" & Minute(dtNow),2) & right("0" & Second(dtNow),2)


	dim strHL7ReportFilename
	strHL7ReportFilename = Session("PatientID")& "MRN "& strHL7DateTime & "-" & right("0" & iTry,2)


	dim strHL7Content
		strHL7Content = "MSH|^~\&|IMHNARRATIVE|Primetime Medical|||"&strHL7DateTime&"||MDM^T02|"&strHL7DateTime&"|P|2.3|||AL||"&chr(&H0d)
		strHL7Content = strHL7Content & "PID|||"&Session("PatientID")&"||"&Session("strLastName")&"^"&Session("FirstName")&"||"&Session("strDOBYear")&Session("strDOBMonth")&Session("strDOBDay")&"|"&Session("gender")&"||||||||||||"&chr(&H0d)
		strHL7Content = strHL7Content &chr(&H0d)




	dim strHL7ReportFilespec2

	dim iTry
	iTry = 0
	strHL7ReportFilename = Session("PatientID")& "MRN "& strDateTime & "-" & right("0" & iTry,2)
	strHL7ReportFilespec = strReportPath & "\" & strHL7ReportFilename & strHL7ReportFileExt

	while iTry < 100 and aFSOHL7.FileExists(strHL7ReportFilespec)
		iTry = iTry + 1
		strReportHL7Filename = strHL7DateTime & "-" & right("0" & iTry,2)
		strReportHL7Filespec = strReportPath & "\" & strHL7ReportFilename & strHL7ReportFileExt
	wend


		dim HL7OutputFile
		set HL7OutputFile = aFSOHL7.OpenTextFile (strHL7ReportFileSpec, 2, True)
		HL7OutputFile.write strHL7Content
		HL7OutputFile.Close
	end if


	if Session("EPQ30101000") = "1" then 
		Session("EPQ30101000string")= "Male"
	end if


	if Session("EPQ30101000") = "2" then 
		Session("EPQ30101000string")= "Female"
	end if

	if Session("EPQ30101000") = "3" then 
		Session("EPQ30101000string")= "Other"
	end if

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="3"
		Session("Page")=3
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="5"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "demographicsmaster.asp"
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
    <form action="demographics4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
  <fieldset>
    <legend class="QuestionBox">
      What is your gender?<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="radio" name="EPQ30101000" value="1" id="EPQ30101000M" class="required qTriggerOff qTriggerOff2" <%=strEPQ30101000yes%>>
      <label for="EPQ30101000M">Male</label>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" class="required qTriggerOff qTriggerOff2" name="EPQ30101000" value="2" id="EPQ30101000F" <%=strEPQ30101000no%>>
      <label for="EPQ30101000F">Female</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" class="required qTrigger" name="EPQ30101000" value="3" id="EPQ30101000O" <%=strEPQ30101000other%>>
      <label for="EPQ30101000F">Other</label><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>


<div class="hiddenQ">
  <fieldset>
    <legend class="QuestionBox">
      Do you consider yourself transgender?<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="radio" name="EPQ30115000" value="1" id="EPQ301150001" class="requiredifBranchActive qTrigger2 qTriggerOff3 qTriggerOff4" <%=strEPQ30115000ans1%>>
      <label for="EPQ301150001">No</label><br>

      <input type="radio" class="qTriggerOff2  qTrigger3 qTriggerOff4" name="EPQ30115000" value="2" id="EPQ301150002" <%=strEPQ30115000ans2%>>
      <label for="EPQ301150002">Yes, transgender male to female</label><br>

      <input type="radio" class="qTriggerOff2  qTrigger4 qTriggerOff3" name="EPQ30115000" value="3" id="EPQ301150003" <%=strEPQ30115000ans3%>>
      <label for="EPQ301150003">Yes, transgender female to male</label><br>

      <input type="radio" class="qTrigger2 qTriggerOff3 qTriggerOff4" name="EPQ30115000" value="4" id="EPQ301150004" <%=strEPQ30115000ans4%>>
      <label for="EPQ301150004">Yes, transgender, do not identify as male or female</label><br>

    </div><!-- [ /#AnswerBox] -->
  </fieldset>	

</div>

<div class="hiddenQ3">
<div id="SpecialNote">
Although you identify as female, throughout this questionnaire we will need to ask you some questions that specifically relate to male body parts in order to obtain information most meaningful to your current clinical care at Moffitt.
</div>
</div>

<div class="hiddenQ4">
<div id="SpecialNote">
Although you identify as male, throughout this questionnaire we will need to ask you some questions that specifically relate to female body parts in order to obtain information most meaningful to your current clinical care at Moffitt.
</div>
</div>

<div class="hiddenQ2">
<div id="SpecialNote">
Throughout this questionnaire, we will need to ask you some questions that specifically relate either to male body parts or to female body parts.
</div><br>
  <fieldset>
    <legend class="QuestionBox">
In order to obtain information that is most meaningful to your clinical care at Moffitt, what is your biological sex?
<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="radio" class="requiredIfBranchActive" name="EPQ30116000" value="1" id="EPQ30116000M" class="" <%=strEPQ30116000M%>>
      <label for="EPQ30116000M">Male</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="EPQ30116000" value="2" id="EPQ30116000F" <%=strEPQ30116000F%>>
      <label for="EPQ30116000F">Female</label><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>	
</div>

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
