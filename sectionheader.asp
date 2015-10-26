
	<% if Session("DemographicsSectionStatus")="Current" then %>
			Demographics
	<% end if %>

	<% if Session("VisitBackgroundSectionStatus")="Current" then %>
			Visit Background
	<% end if %>

	<% if Session("PersonalHistoryCancerSectionStatus")="Current" then %>
			Personal History of Cancer
	<% end if %>

	<% if Session("PastMedicalHistorySectionStatus")="Current" then %>
			Past Medical History
	<% end if %>

	<% if Session("WomensRiskScreeningSectionStatus")="Current" then %>
			Women's Risk Assessment
	<% end if %>

	<% if Session("PastSurgicalHistorySectionStatus")="Current" then %>
			Surgical Clinical History
	<% end if%>

	<% if Session("FamilyHistoryCancerSectionStatus")="Current" then %>
			Family History of Cancer
	<% end if %>

	<% if Session("FamilyHistorySectionStatus")="Current" then %>
			Family History
	<% end if %>

	<% if Session("CancerScreeningSectionStatus")="Current" then %>
			Cancer Screening History
	<% end if %>

	<% if Session("CurrentSymptomsSectionStatus")="Current" then %>
			Current Symptoms
	<% end if %>

	<% if Session("CancerRiskSectionStatus")="Current" then %>
			Cancer Risk Assessment
	<% end if %>

	<% if Session("PsychosocialSectionStatus")="Current" then %>
			Psychosocial
	<% end if %>

	<% if Session("QOLSectionStatus")="Current" then %>
			Quality of Life
	<% end if %>
