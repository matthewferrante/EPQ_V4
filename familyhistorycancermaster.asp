<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
  case "0"
    Server.Execute("familyhistorycancer0.asp")
  case "1"
    Server.Execute("familyhistorycancer1.asp")
  case "2"
    Server.Execute("familyhistorycancer2.asp")
  case "3"
    Server.Execute("familyhistorycancer3.asp")
  case "4"
    Server.Execute("familyhistorycancer4.asp")
  case "5"
    Server.Execute("familyhistorycancer5.asp")
  case "6"
    Server.Execute("familyhistorycancer6.asp")
  case "6b"
    Server.Execute("familyhistorycancer6b.asp")
  case "7"
    Server.Execute("familyhistorycancer7.asp")
  case "7b"
    Server.Execute("familyhistorycancer7b.asp")
  case "8"
    Server.Execute("familyhistorycancer8.asp")
  case "8thoracic"
    Server.Execute("familyhistorycancer8thoracic.asp")
  case "9"
    Server.Execute("familyhistorycancer9.asp")


end select
%>
