<%
 if Session("Gender") = "F" then
 Session("Gender") = "M"
 else
 if Session("Gender") = "M" then
 Session("Gender") = "F"
 end if
end if %>

