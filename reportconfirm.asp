<% '$Revision: 3 $ %>
<!--#include file="include/moduleStatusFunctions.asp"-->
<!--#include file="include/savedSessionFunctions.asp"-->
<%
Session("sessionState")="loggingIn"
if Request.Form("ispostback") <> "1" then

dim displayLocation
set displayLocation = Server.CreateObject("Scripting.Dictionary")

displayLocation.add "BRST", "Breast clinic"	
displayLocation.add "BRS2", "Breast clinic"	
displayLocation.add "BMTC", "BMT Clinic"
displayLocation.add "CUTA", "Cutaneous"
displayLocation.add "ECRI", "Endocrine"
displayLocation.add "EPV", "Endo Pain Vads"
displayLocation.add "GI", "GI Clinic"	
displayLocation.add "GU", "GU clinic"	
displayLocation.add "HEMM", "Hematology"
displayLocation.add "H-N", "Head and neck clinic"
displayLocation.add "INFU", "Infusion"	
displayLocation.add "LCS", "Lifetime Cancer Screening"	
displayLocation.add "MSMO", "MED ONC SOUTH"
displayLocation.add "MSMS", "MED SURG SOUTH"
displayLocation.add "MSRD", "RADIOLOGY SOUTH"
displayLocation.add "MSRT", "RAD THERAPY SO"
displayLocation.add "NEUR", "Neurology"
displayLocation.add "NMED", "NUCLEAR MEDICINE"
displayLocation.add "PALL", "PALLIATIVE CARE"
displayLocation.add "PAT", "PRE ANESTHESIA TESTING"
displayLocation.add "PET", "POSITRON EMISSION TOMOGRAPHY"
displayLocation.add "PHOT", "PHOTOPHERESIS"
displayLocation.add "PICC", "PICC"	
displayLocation.add "PSYC", "PSYCHOSOCIAL ONCOLOGY"
displayLocation.add "PULM", "PULMONARY"	
displayLocation.add "RAD", "RADIOLOGY"	
displayLocation.add "RESP", "RESPIRATORY"
displayLocation.add "SARC", "SARCOMA"	
displayLocation.add "SPCH", "SPEECH"	
displayLocation.add "SPRM", "SPRM"	
displayLocation.add "SRAD", "SENIOR ADULT"		
displayLocation.add "THNE", "THORACIC ONCOLOGY"
displayLocation.add "ULSD", "ULTRASOUND"	
displayLocation.add "ULSD_BRST", "ULTRASOUND_BRST"	
displayLocation.add "ULSD_RAD", "ULTRASOUND_RAD"
displayLocation.add "WDC", "WOMEN'S DIAGNOSTIC"	
displayLocation.add "XRT", "RADIATION ONCOLOGY"	
displayLocation.add "CWIP", "MIP CLINIC WING"	
displayLocation.add "BDIP", "MIP BLOOD DRAW"	
displayLocation.add "ROIP", "MIP RADIATION ONCOLOGY"
displayLocation.add "RAIP", "MIP RADIOLOGY"	
displayLocation.add "ICIP", "MIP INFUSION CENTER"
displayLocation.add "BOIP", "MIP BUSINESS OFFICE"	
displayLocation.add "RHIP", "MIP REHAB SERVICES"	
displayLocation.add "BRS1", "WOMEN'S BREAST	"
displayLocation.add "RHAB", "REHABILITATION"
displayLocation.add "ITPN", "INTERVENTIONAL PAIN"	
displayLocation.add "ITGM", "INTEGRATIVE MEDICINE"	
displayLocation.add "AIM", "AMBULATORY INTERNAL MEDICINE"	


	


	

	



if CInt(Session("strDISPLAYAPPTHour")) > 12 then
Session("strDISPLAYAPPTHourCALC")=(CInt(Session("strDISPLAYAPPTHour"))-12)
else
Session("strDISPLAYAPPTHourCALC")=Session("strDISPLAYAPPTHour")
end if


	if Session("KIOSKCONFIRMED")="1" then
		strKIOSKCONFIRMEDanswer1="checked"
	end if
	if Session("KIOSKCONFIRMED")="2" then
		strKIOSKCONFIRMEDanswer2="checked"
	end if
end if

if Request.Form("ispostback") = 1 then

	Session("KIOSKCONFIRMED") = Request.Form("KIOSKCONFIRMED")

	if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Response.Redirect "reportrequest.asp"
	end if

	if Request.Form("ContinueID")="1" then
	

	if Session("KIOSKCONFIRMED")="1" then
	Dim assessmentDataId, serializedSession
'	assessmentDataId = assessmentDataIdFromAppointmentId(Session("strAppointmentID"))
	assessmentDataId = assessmentDataIdFromAppointmentId(Session("AppointmentID"))
	Session("assessmentDataId") = assessmentDataId
	serializedSession = getSavedSession(assessmentDataId)
		if (len(serializedSession) > 0) then
		loadSerializedSession(serializedSession)
		Session("sessionState") = "restored"
		Response.Redirect "moffittreport.asp"
		else
		Response.Redirect "reportrequesterror2.asp"
		end if
	end if
	
	if Session("KIOSKCONFIRMED")="2" then
		Session("Page")=""
		Response.Redirect "reportrequesterror.asp"
	end if

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
</div>

<div id="wrapper">


<div id="formWrapper">
<div id="formBlock">
	<div id="SpecialNote">Find Patient Appointment</div>
    <form action="reportconfirm.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

      <br>
<fieldset>


      <div class="QuestionBox">Is this information correct for your request?</div>
<legend></legend>
      <div class="QuestionAnswersBox">
        <input type="radio" class="required" name="KIOSKCONFIRMED" value="1" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer1%>>
        <label for="EPQ31155000">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="radio" name="KIOSKCONFIRMED" value="2" id="KIOSKCONFIRMED" <%=strKIOSKCONFIRMEDanswer2%>>
        <label for="EPQ31155000">No</label>&nbsp;&nbsp;&nbsp;&nbsp;
      </div>
</fieldset>

      Patient Name: <b><%=Session("strLastName")%> , <%=Session("FirstName")%></b><BR>
      Patient Medical Record Number (MRN): <b><%=Session("AccountNumber") %><br></b>
      <BR>
      Location: <b><%=displayLocation.item(Session("AppointmentLocation"))%></b><BR>
      Your Appointment Date:
        <b><%=Session("strDISPLAYAPPTMonth")%>
          / <%=Session("strDISPLAYAPPTDay")%>
          / <%=Session("strDISPLAYAPPTYear")%>
        </b>
        <BR>
      Appointment Time:
        <b>
          <%=Session("strDISPLAYAPPTHourCALC")%> : <%=Session("strDISPLAYAPPTMinute")%> &nbsp;
          <% if CInt(Session("strDISPLAYAPPTHour")) >= 12 then %> PM <% end if %> 
          <% if CInt(Session("strDISPLAYAPPTHour")) < 12 then %> AM <% end if %> 
</b>
        <BR>
      Appointment ID:
<b>
	<%=Session("APpointmentID")%>

        </b>
</div> <!-- [ /#formBlock ] -->

	<div id="buttonBox">
	 <!--#include file="buttonboxbegin.asp"-->
	</div> <!-- [ /#buttonBox ] -->

	</form>
 </div> <!-- [ /#formWrapper ] -->


 <div id="rightbar">
 <!--#include file="navigationmenu2.asp"-->

 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->

 </body>
</html>
