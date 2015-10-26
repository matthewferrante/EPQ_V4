<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))

select case Session("Page")
	case "1"
    Server.Execute("personalhistorycancer1.asp")
	case "1cuta"
    Server.Execute("personalhistorycancer1cuta.asp")
	case "2cuta"
    Server.Execute("personalhistorycancer2cuta.asp")
	case "3cuta"
    Server.Execute("personalhistorycancer3cuta.asp")
	case "2"
    Server.Execute("personalhistorycancer2.asp")
	case "3"
    Server.Execute("personalhistorycancer3.asp")
	case "31"
    Server.Execute("personalhistorycancer31.asp")
	case "32"
    Server.Execute("personalhistorycancer32.asp")
	case "33"
    Server.Execute("personalhistorycancer33.asp")
	case "34"
    Server.Execute("personalhistorycancer34.asp")
	case "4"
    Server.Execute("personalhistorycancer4.asp")
	case "5"
    Server.Execute("personalhistorycancer5.asp")
	case "0"
    Server.Execute("personalhistorycancer0.asp")

end select
%>

