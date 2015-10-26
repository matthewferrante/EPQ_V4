<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "0"
    Server.Execute("pastmedical0.asp")
	case "1"
    Server.Execute("pastmedical1.asp")
	case "1a"
    Server.Execute("pastmedical1a.asp")
	case "1b"
    Server.Execute("pastmedical1b.asp")
	case "1a1"
    Server.Execute("pastmedical1a1.asp")

	case "2"
    Server.Execute("pastmedical2.asp")
	case "2b"
    Server.Execute("pastmedical2b.asp")
	case "3"
    Server.Execute("pastmedical3.asp")
	case "3a"
    Server.Execute("pastmedical3a.asp")
	case "3b"
    Server.Execute("pastmedical3b.asp")
	case "4"
    Server.Execute("pastmedical4.asp")
	case "4b"
    Server.Execute("pastmedical4b.asp")
	case "4b1"
    Server.Execute("pastmedical4b1.asp")
	case "4b2"
    Server.Execute("pastmedical4b2.asp")
	case "4b3"
    Server.Execute("pastmedical4b3.asp")
	case "5"
    Server.Execute("pastmedical5.asp")
	case "6"
    Server.Execute("pastmedical6.asp")
	case "7"
    Server.Execute("pastmedical7.asp")
	case "8"
    Server.Execute("pastmedical8.asp")
	case "8a"
    Server.Execute("pastmedical8a.asp")
	case "9"
    Server.Execute("pastmedical9.asp")
	case "9b"
    Server.Execute("pastmedical9b.asp")
	case "9b1"
    Server.Execute("pastmedical9b1.asp")
	case "9b2"
    Server.Execute("pastmedical9b2.asp")
	case "9b3"
    Server.Execute("pastmedical9b3.asp")
	case "10"
    Server.Execute("pastmedical10.asp")
	case "10a"
    Server.Execute("pastmedical10a.asp")
	case "11"
    Server.Execute("pastmedical11.asp")
	case "11a"
    Server.Execute("pastmedical11a.asp")
	case "12"
    Server.Execute("pastmedical12.asp")
	case "13"
    Server.Execute("pastmedical13.asp")
	case "14b1"
    Server.Execute("pastmedical14b1.asp")
	case "14b2"
    Server.Execute("pastmedical14b2.asp")
	case "14b3"
    Server.Execute("pastmedical14b3.asp")
	case "14b4"
    Server.Execute("pastmedical14b4.asp")
	case "14b5"
    Server.Execute("pastmedical14b5.asp")
	case "14"
    Server.Execute("pastmedical14.asp")
	case "15"
    Server.Execute("pastmedical15.asp")
	case "16"
    Server.Execute("pastmedical16.asp")
	case "16b"
    Server.Execute("pastmedical16b.asp")
	case "17"
    Server.Execute("pastmedical17.asp")
	case "17b"
    Server.Execute("pastmedical17b.asp")
	case "18"
    Server.Execute("pastmedical18.asp")

end select
%>
