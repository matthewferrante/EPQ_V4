<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "0"
    Server.Execute("surgicalhistory0.asp")
	case "1"
    Server.Execute("surgicalhistory1.asp")
	case "2"
    Server.Execute("surgicalhistory2.asp")
	case "3"
    Server.Execute("surgicalhistory3.asp")
	case "4"
    Server.Execute("surgicalhistory4.asp")
	case "5"
    Server.Execute("surgicalhistory5.asp")
	case "6"
    Server.Execute("surgicalhistory6.asp")
	case "21"
    Server.Execute("surgicalhistory21.asp")
	case "7"
    Server.Execute("surgicalhistory7.asp")
	case "8"
    Server.Execute("surgicalhistory8.asp")
	case "9"
    Server.Execute("surgicalhistory9.asp")
	case "10"
    Server.Execute("surgicalhistory10.asp")
	case "102"
    Server.Execute("surgicalhistory102.asp")
	case "103"
    Server.Execute("surgicalhistory103.asp")
	case "104"
    Server.Execute("surgicalhistory104.asp")
	case "105"
    Server.Execute("surgicalhistory105.asp")
	case "106"
    Server.Execute("surgicalhistory106.asp")
	case "11"
    Server.Execute("surgicalhistory11.asp")
	case "200"
    Server.Execute("surgicalhistory200.asp")
	case "201"
    Server.Execute("surgicalhistory201.asp")
	case "202"
    Server.Execute("surgicalhistory202.asp")
	case "203"
    Server.Execute("surgicalhistory203.asp")
	case "204"
    Server.Execute("surgicalhistory204.asp")
	case "205"
    Server.Execute("surgicalhistory205.asp")
	case "206"
    Server.Execute("surgicalhistory206.asp")
	case "207"
    Server.Execute("surgicalhistory207.asp")
	case "208"
    Server.Execute("surgicalhistory208.asp")
	case "209"
    Server.Execute("surgicalhistory209.asp")
	case "210"
    Server.Execute("surgicalhistory210.asp")
	case "211"
    Server.Execute("surgicalhistory211.asp")
	case "212"
    Server.Execute("surgicalhistory212.asp")
	case "213"
    Server.Execute("surgicalhistory213.asp")
	case "214"
    Server.Execute("surgicalhistory214.asp")
	case "215"
    Server.Execute("surgicalhistory215.asp")

end select

%>

