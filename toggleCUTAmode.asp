<%
 if Session("SurveyVersion") = "Cutaneous" then
 Session("SurveyVersion") = "EPQ"
 else
 Session("SurveyVersion") = "Cutaneous" end if %>
SurveyVersion=<%=Session("SurveyVersion")%>
