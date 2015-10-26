<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
select case Cstr(Session("Page"))
  case "1"
    Server.Execute("visitbackground1.asp")
  case "2"
    Server.Execute("visitbackground2.asp")
  case "0"
    Server.Execute("visitbackground0.asp")
end select
%>

