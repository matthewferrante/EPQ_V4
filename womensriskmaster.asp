<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "1"
    Server.Execute("womensrisk1.asp")
	case "2"
    Server.Execute("womensrisk2.asp")
	case "3"
    Server.Execute("womensrisk3.asp")
	case "4"
    Server.Execute("womensrisk4.asp")
	case "5"
    Server.Execute("womensrisk5.asp")
	case "6"
    Server.Execute("womensrisk6.asp")
	case "7"
    Server.Execute("womensrisk7.asp")
	case "8"
    Server.Execute("womensrisk8.asp")
	case "9"
    Server.Execute("womensrisk9.asp")
	case "10"
    Server.Execute("womensrisk10.asp")
	case "11"
    Server.Execute("womensrisk11.asp")
	case "12"
    Server.Execute("womensrisk12.asp")
	case "13"
    Server.Execute("womensrisk13.asp")
	case "14"
    Server.Execute("womensrisk14.asp")
	case "15"
    Server.Execute("womensrisk15.asp")
	case "16"
    Server.Execute("womensrisk16.asp")
	case "0"
    Server.Execute("womensrisk0.asp")

end select

%>

