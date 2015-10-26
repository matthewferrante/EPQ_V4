<% if Session("sessionState") = "2blank" then Response.Redirect("sessionTimedOut.asp") end if %>
<% if session("KioskMode")= 1 then %>
<script src="scripts_js/keyboard.js"></script>
<link href="css/keyboard.css" rel="stylesheet">
<% end if %>
<!--#include file="include/productionmode.asp"-->
<!--#include file="include/moduleStatusFunctions.asp"-->
<!--#include file="include/savedSessionFunctions.asp"-->
<%
  ' Record the last page visited, for use in restoring saved sessions
  Session("lastPage") = Request.ServerVariables("SCRIPT_NAME")

  recordAllModuleStatusesFromSession()
  deleteSessionRecord(Session("assessmentDataId"))
  insertSessionRecord(Session("assessmentDataId"))
%>
	<div id="navbarHeader">
		<p>Questionnaire Progress</p>
	</div> <!-- [ /#navbarHeader ] -->
	<div id="navbarWrapper">

	<ul id="navbarList">
	<% if Session("DemographicsSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" height="30px" />Demographics</li>
	<% end if %>

	<% if Session("DemographicsSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="10px" height="30px" alt="" /><span>Demographics</span></li>
	<% end if %>

	<% if Session("DemographicsSectionStatus")= "" OR Session("DemographicsSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="10px" height="30px" alt="" />Demographics</li>
	<% end if %>

	<% if Session("VisitBackgroundSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="10px" height="30px" />Visit Background</li>
	<% end if %>

	<% if Session("VisitBackgroundSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Visit Background</span></li>
	<% end if %>

	<% if Session("VisitBackgroundSectionStatus")= ""  OR Session("VisitBackgroundSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Visit Background</li>
	<% end if %>


	<% if Session("PersonalHistoryCancerSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Personal History of Cancer</li>
	<% end if %>

	<% if Session("PersonalHistoryCancerSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Personal History of Cancer</span></li>
	<% end if %>

	<% if Session("PersonalHistoryCancerSectionStatus")= ""  OR Session("PersonalHistoryCancerSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Personal History of Cancer</li>
	<% end if %>


	<% if Session("PastMedicalHistorySectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Past Medical History</li>
	<% end if %>

	<% if Session("PastMedicalHistorySectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Past Medical History</span></li>
	<% end if %>

	<% if Session("PastMedicalHistorySectionStatus")= ""  OR Session("PastMedicalHistorySectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Past Medical History</li>
	<% end if %>

	<% if Session("CurrentSymptomsSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Current Symptoms</li>
	<% end if %>
	<% if Session("CurrentSymptomsSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Current Symptoms</span></li>
	<% end if %>
	<% if Session("CurrentSymptomsSectionStatus")= ""  OR Session("CurrentSymptomsSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Current Symptoms</li>
	<% end if %>

<%if Session("gender")="F" then %>
	<% if Session("WomensRiskScreeningSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Women's Risk Assessment</li>
	<% end if %>
	<% if Session("WomensRiskScreeningSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Women's Risk Assessment</span></li>
	<% end if %>
	<% if Session("WomensRiskScreeningSectionStatus")= ""  OR Session("WomensRiskScreeningSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Women's Risk Assessment</li>
	<% end if %>
<% end if %>


	<% if Session("PastSurgicalHistorySectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Surgical Clinical History</li>
	<% end if %>
	<% if Session("PastSurgicalHistorySectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Surgical Clinical History</span></li>
	<% end if %>
	<% if Session("PastSurgicalHistorySectionStatus")= ""  OR Session("PastSurgicalHistorySectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Surgical Clinical History</li>
	<% end if %>

	<% if Session("FamilyHistoryCancerSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Family History of Cancer</li>
	<% end if %>
	<% if Session("FamilyHistoryCancerSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Family History of Cancer</span></li>
	<% end if %>
	<% if Session("FamilyHistoryCancerSectionStatus")= ""  OR Session("FamilyHistoryCancerSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Family History of Cancer</li>
	<% end if %>

	<% if Session("FamilyHistorySectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Other Family History</li>
	<% end if %>
	<% if Session("FamilyHistorySectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Other Family History</span></li>
	<% end if %>
	<% if Session("FamilyHistorySectionStatus")= ""  OR Session("FamilyHistorySectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Other Family History</li>
	<% end if %>

	<% if Session("CancerRiskSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Cancer Risk Assessment</li>
	<% end if %>
	<% if Session("CancerRiskSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Cancer Risk Assessment</span></li>
	<% end if %>
	<% if Session("CancerRiskSectionStatus")= ""  OR Session("CancerRiskSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Cancer Risk Assessment</li>
	<% end if %>

	<% if Session("PsychosocialSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Psychosocial</li>
	<% end if %>
	<% if Session("PsychosocialSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Psychosocial</span></li>
	<% end if %>
	<% if Session("PsychosocialSectionStatus")= ""  OR Session("PsychosocialSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Psychosocial</li>
	<% end if %>

	<% if Session("QOLSectionStatus")="Completed" then %>
		  <li class="navbarItemCompleted">
		    <img src="images/rightbar/navbar/greencheckmark3.png" width="5px" height="30px" />Quality of Life</li>
	<% end if %>
	<% if Session("QOLSectionStatus")="Current" then %>
		  <li class="navbarItemCurrent">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" /><span>Quality of Life</span></li>
	<% end if %>
	<% if Session("QOLSectionStatus")= ""  OR Session("QOLSectionStatus")= "Incomplete" then %>
		  <li class="navbarItemToDo">
		    <img src="images/rightbar/navbar/space.png" width="5px" height="30px" alt="" />Quality of Life</li>
	<% end if %>

	</ul>
<% if session("ProductionMode") <> "1" then %>
     <div><%=Session("SurveyVersion")%></div>
  <div id="releaseInfo">
    <div>... loading ...</div>
  </div>
<% end if%>

</div> <!-- [ /#navbarWrapper ] -->
<div id="navbarFooter">
	&nbsp;	&nbsp;<img src="images/moffittnav2.gif" />
</div> <!-- [ /#navbarHeader ] -->

