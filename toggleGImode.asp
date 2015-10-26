<%
 if Session("SurveyVersion") = "GI" then
 Session("SurveyVersion") = "EPQ"
 else
 Session("SurveyVersion") = "GI" end if %>
SurveyVersion=<%=Session("SurveyVersion")%>
