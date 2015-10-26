<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))

select case Session("Page")
	case "1"
    Server.Execute("psychosocial1.asp")
	case "2"
    Server.Execute("psychosocial2.asp")
	case "3"
    Server.Execute("psychosocial3.asp")
	case "4"
    Server.Execute("psychosocial4.asp")
	case "5"
    Server.Execute("psychosocial5.asp")
	case "0"
    Server.Execute("psychosocial0.asp")

end select
%>
