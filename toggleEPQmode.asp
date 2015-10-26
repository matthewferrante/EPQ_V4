<%
 if Session("SurveyVersion") = "Thoracic" then
 Session("SurveyVersion") = "EPQ"
 else
 Session("SurveyVersion") = "Thoracic" end if %>
SurveyVersion=<%=Session("SurveyVersion")%>
