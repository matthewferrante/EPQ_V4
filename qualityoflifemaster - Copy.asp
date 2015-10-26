<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "1"
    Server.Execute("qualityoflife1.asp")
	case "2"
    Server.Execute("qualityoflife2.asp")
	case "3"
    Server.Execute("qualityoflife3.asp")
	case "4"
    Server.Execute("qualityoflife4.asp")
	case "5"
    Server.Execute("qualityoflife5.asp")
	case "0"
    Server.Execute("qualityoflife0.asp")

end select
%>
