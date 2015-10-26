<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")

	case "1"
    Server.Execute("currentsymptoms1.asp")
	case "2"
    Server.Execute("currentsymptoms2.asp")
	case "3"
    Server.Execute("currentsymptoms3.asp")
	case "31"
    Server.Execute("currentsymptoms31.asp")
	case "4"
    Server.Execute("currentsymptoms4.asp")
	case "4a"
    Server.Execute("currentsymptoms4a.asp")
	case "4b"
    Server.Execute("currentsymptoms4b.asp")
	case "4b1"
    Server.Execute("currentsymptoms4b1.asp")
	case "4b2"
    Server.Execute("currentsymptoms4b2.asp")
	case "5"
    Server.Execute("currentsymptoms5.asp")
	case "6"
    Server.Execute("currentsymptoms6.asp")
	case "7"
    Server.Execute("currentsymptoms7.asp")
	case "8"
    Server.Execute("currentsymptoms8.asp")
	case "9"
    Server.Execute("currentsymptoms9.asp")
	case "10"
    Server.Execute("currentsymptoms10.asp")
	case "10a"
    Server.Execute("currentsymptoms10a.asp")
	case "10a1"
    Server.Execute("currentsymptoms10a1.asp")
	case "11"
    Server.Execute("currentsymptoms11.asp")
	case "12"
    Server.Execute("currentsymptoms12.asp")
	case "13"
    Server.Execute("currentsymptoms13.asp")
	case "14"
    Server.Execute("currentsymptoms14.asp")
	case "15"
    Server.Execute("currentsymptoms15.asp")
	case "16"
    Server.Execute("currentsymptoms16.asp")
	case "162"
    Server.Execute("currentsymptoms162.asp")
	case "17"
    Server.Execute("currentsymptoms17.asp")
	case "18"
    Server.Execute("currentsymptoms18.asp")
	case "19"
    Server.Execute("currentsymptoms19.asp")
	case "20"
    Server.Execute("currentsymptoms20.asp")
	case "21"
    Server.Execute("currentsymptoms21.asp")
	case "22"
    Server.Execute("currentsymptoms22.asp")
	case "23"
    Server.Execute("currentsymptoms23.asp")
	case "24"
    Server.Execute("currentsymptoms24.asp")
	case "25"
    Server.Execute("currentsymptoms25.asp")
	case "26"
    Server.Execute("currentsymptoms26.asp")
	case "27"
    Server.Execute("currentsymptoms27.asp")
	case "28"
    Server.Execute("currentsymptoms28.asp")
	case "29"
    Server.Execute("currentsymptoms29.asp")
	case "32"
    Server.Execute("currentsymptoms32.asp")
	case "33"
    Server.Execute("currentsymptoms33.asp")

	case "0"
    Server.Execute("currentsymptoms0.asp")
end select
%>

