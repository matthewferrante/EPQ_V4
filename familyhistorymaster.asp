<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "1"
    Server.Execute("familyhistory1.asp")
	case "2"
    Server.Execute("familyhistory2.asp")
	case "3"
    Server.Execute("familyhistory3.asp")
	case "3a"
    Server.Execute("familyhistory3a.asp")
	case "4"
    Server.Execute("familyhistory4.asp")
	case "4a"
    Server.Execute("familyhistory4a.asp")
	case "5"
    Server.Execute("familyhistory5.asp")
	case "6"
    Server.Execute("familyhistory6.asp")
	case "6a1"
    Server.Execute("familyhistory6a1.asp")
	case "6a2"
    Server.Execute("familyhistory6a2.asp")
	case "6a3"
    Server.Execute("familyhistory6a3.asp")
	case "6a4"
    Server.Execute("familyhistory6a4.asp")
	case "6b"
    Server.Execute("familyhistory6b.asp")
	case "0"
    Server.Execute("familyhistory0.asp")
end select
%>

