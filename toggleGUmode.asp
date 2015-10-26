<%
 if Session("SurveyVersion") = "GU" then
 Session("SurveyVersion") = "EPQ"
 else
 Session("SurveyVersion") = "GU" end if %>
SurveyVersion=<%=Session("SurveyVersion")%>
