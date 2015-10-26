<%

if Session("AppointmentType")="NP" then
	Session("SurveyVersion")="EPQ"

	if Session("Location")="THNE" then
	Session("SurveyVersion")="Thoracic"
	end if

	if Session("Location")="CUTA" then
	Session("SurveyVersion")="Cutaneous"
	end if

	if Session("Location")="GU" then
		Session("SurveyVersion")="GU"
	end if


	if Session("Location")="HEMM" then
		Session("SurveyVersion")="HEME"
	end if
	if Session("Location")="BMTC" then
		Session("SurveyVersion")="HEME"
	end if
	if Session("Location")="SRAD" then
		Session("SurveyVersion")="HEME"
	end if

	if Session("Location")="GI" then
		Session("SurveyVersion")="GI"
	end if

	if Session("Location")="CUMK" then
	Session("SurveyVersion")="Cutaneous"
		if Session("AppointmentTypeCode")="CD:348964618" then
			Session("SurveyVersion")="Cutaneous"
		end if
		if Session("AppointmentTypeCode")="CD:322686565" then
			Session("SurveyVersion")="Cutaneous"
		end if
	end if

	if Session("Location")="BRMK" then
	Session("SurveyVersion")="EPQ"
		if Session("AppointmentTypeCode")="CD:348964214" then
			Session("SurveyVersion")="EPQ"
		end if
		if Session("AppointmentTypeCode")="CD:322686562" then
			Session("SurveyVersion")="EPQ"
		end if
	end if


	if Session("Location")="SP" then
		if Session("AppointmentTypeCode")="CD:295492689" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295491904" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295492191" then
			Session("SurveyVersion")="THOR"
		end if
		if Session("AppointmentTypeCode")="CD:295410400" then
			Session("SurveyVersion")="Cutaneous"
		end if
		if Session("AppointmentTypeCode")="CD:295410932" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AppointmentTypeCode")="CD:295410986" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AppointmentTypeCode")="CD:295492370" then
			Session("SurveyVersion")="HEME"
		end if
	end if 

	if Session("Location")="MSP" then
		if Session("AppointmentTypeCode")="CD:295492689" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295491904" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295492191" then
			Session("SurveyVersion")="THOR"
		end if
		if Session("AppointmentTypeCode")="CD:295410400" then
			Session("SurveyVersion")="Cutaneous"
		end if
		if Session("AppointmentTypeCode")="CD:295410932" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AppointmentTypeCode")="CD:295410986" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AppointmentTypeCode")="CD:295492370" then
			Session("SurveyVersion")="HEME"
		end if
	end if 

	if Session("Location")="CWIP" then
		if Session("AppointmentTypeCode")="CD:295492689" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295491904" then
			Session("SurveyVersion")="HEME"
		end if
		if Session("AppointmentTypeCode")="CD:295492191" then
			Session("SurveyVersion")="THOR"
		end if
		if Session("AppointmentTypeCode")="CD:295410400" then
			Session("SurveyVersion")="Cutaneous"
		end if
		if Session("AppointmentTypeCode")="CD:295410932" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AppointmentTypeCode")="CD:295410986" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AppointmentTypeCode")="CD:295492370" then
			Session("SurveyVersion")="HEME"
		end if


		if Session("AttendingDoctor")="RAJ" then
		if Session("AppointmentTypeCode")="CD:248507322" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AppointmentTypeCode")="CD:248507316" then
			Session("SurveyVersion")="GI"
		end if

		if Session("AppointmentTypeCode")="CD:295410986" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AppointmentTypeCode")="CD:295410932" then
			Session("SurveyVersion")="GI"
		end if
		end if

		if Session("AttendingDoctor")="HOFFE" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AttendingDoctor")="JOHNSTONE" then
			Session("SurveyVersion")="GU"
		end if

		if Session("AttendingDoctor")="YU" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AttendingDoctor")="GUPTA" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AttendingDoctor")="MALAGA" then
			Session("SurveyVersion")="GI"
		end if
 
		if Session("AttendingDoctor")="POCH" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AttendingDoctor")="POW-SANG" then
			Session("SurveyVersion")="GU"
		end if
 
		if Session("AttendingDoctor")="SPRINGETT" then
			Session("SurveyVersion")="GI"
		end if
 
		if Session("AttendingDoctor")="ZHANG" then
			Session("SurveyVersion")="GU"
		end if
		if Session("AttendingDoctor")="FORINASH" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AttendingDoctor")="PRZYCHODZEN" then
			Session("SurveyVersion")="Cutaneous"
		end if
		if Session("AttendingDoctor")="STROSBERG" then
			Session("SurveyVersion")="GI"
		end if
		if Session("AttendingDoctor")="TANVETYANON" then
			Session("SurveyVersion")="Thoracic"
		end if
	end if


end if



%>
