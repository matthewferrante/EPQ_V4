<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "1"
    Server.Execute("demographics1.asp")
  case "1b"
    Server.Execute("demographics1b.asp")
  case "2"
    Server.Execute("demographics2.asp")
  case "2b"
    Server.Execute("demographics2b.asp")
  case "3"
    Server.Execute("demographics3.asp")
  case "3b"
    Server.Execute("demographics3b.asp")
  case "4"
    Server.Execute("demographics4.asp")
  case "4note"
    Server.Execute("demographics4note.asp")
  case "4b"
    Server.Execute("demographics4b.asp")
  case "5"
    Server.Execute("demographics5.asp")
  case "6"
    Server.Execute("demographics6.asp")
  case "7"
    Server.Execute("demographics7.asp")
  case "8"
    Server.Execute("demographics8.asp")
  case "0"
    Server.Execute("demographics0.asp")
end select
%> 
