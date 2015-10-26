<%
 if Session("SurveyVersion") = "HEME" then
 Session("SurveyVersion") = "HEME"
 else
 Session("SurveyVersion") = "HEME" end if %>
SurveyVersion=<%=Session("SurveyVersion")%>
