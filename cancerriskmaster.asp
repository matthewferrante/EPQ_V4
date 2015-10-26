<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
select case Session("Page")
	case "1"
    Server.Execute("cancerrisk1.asp")
	case "2"
    Server.Execute("cancerrisk2.asp")
	case "3"
    Server.Execute("cancerrisk3.asp")
	case "4"
    Server.Execute("cancerrisk4.asp")
	case "5"
    Server.Execute("cancerrisk5.asp")
	case "6"
    Server.Execute("cancerrisk6.asp")
	case "7"
    Server.Execute("cancerrisk7.asp")
	case "71"
    Server.Execute("cancerrisk71.asp")
	case "8"
    Server.Execute("cancerrisk8.asp")
	case "9"
    Server.Execute("cancerrisk9.asp")
	case "10"
    Server.Execute("cancerrisk10.asp")
	case "11"
    Server.Execute("cancerrisk11.asp")
	case "12"
    Server.Execute("cancerrisk12.asp")
	case "13"
    Server.Execute("cancerrisk13.asp")
	case "14"
    Server.Execute("cancerrisk14.asp")
	case "15"
    Server.Execute("cancerrisk15.asp")
	case "16"
    Server.Execute("cancerrisk16.asp")

	case "16b"
    Server.Execute("cancerrisk16b.asp")
	case "16c"
    Server.Execute("cancerrisk16c.asp")
	case "16d"
    Server.Execute("cancerrisk16d.asp")
	case "16e"
    Server.Execute("cancerrisk16e.asp")
	case "16f"
    Server.Execute("cancerrisk16f.asp")
	case "16g"
    Server.Execute("cancerrisk16g.asp")
	case "16h"
    Server.Execute("cancerrisk16h.asp")
	case "16i"
    Server.Execute("cancerrisk16i.asp")
	case "16j"
    Server.Execute("cancerrisk16j.asp")


	case "17"
    Server.Execute("cancerrisk17.asp")
	case "9b"
    Server.Execute("cancerrisk9b.asp")
	case "9b1"
    Server.Execute("cancerrisk9b1.asp")
	case "9b2"
    Server.Execute("cancerrisk9b2.asp")
	case "9b3"
    Server.Execute("cancerrisk9b3.asp")
	case "9b4"
    Server.Execute("cancerrisk9b4.asp")
	case "9b5"
    Server.Execute("cancerrisk9b5.asp")
	case "9b6"
    Server.Execute("cancerrisk9b6.asp")
	case "18"
    Server.Execute("cancerrisk18.asp")
	case "18b"
    Server.Execute("cancerrisk18b.asp")
	case "18b2"
    Server.Execute("cancerrisk18b2.asp")
	case "19"
    Server.Execute("cancerrisk19.asp")
	case "19ecig"
    Server.Execute("cancerrisk19ecig.asp")
	case "19ecig2"
    Server.Execute("cancerrisk19ecig2.asp")
	case "19exposure"
    Server.Execute("cancerrisk19exposure.asp")

	case "19b"
    Server.Execute("cancerrisk19b.asp")
	case "19b1"
    Server.Execute("cancerrisk19b1.asp")
	case "19b2"
    Server.Execute("cancerrisk19b2.asp")
	case "19b3"
    Server.Execute("cancerrisk19b3.asp")
	case "21"
    Server.Execute("cancerrisk21.asp")
	case "21b"
    Server.Execute("cancerrisk21b.asp")
	case "21b1"
    Server.Execute("cancerrisk21b1.asp")
	case "21b2"
    Server.Execute("cancerrisk21b2.asp")
	case "21b3"
    Server.Execute("cancerrisk21b3.asp")
	case "21c"
    Server.Execute("cancerrisk21c.asp")
	case "21d"
    Server.Execute("cancerrisk21d.asp")
	case "21e"
    Server.Execute("cancerrisk21e.asp")
	case "21f"
    Server.Execute("cancerrisk21f.asp")

	case "22"
    Server.Execute("cancerrisk22.asp")
	case "22b"
    Server.Execute("cancerrisk22b.asp")
	case "23"
    Server.Execute("cancerrisk23.asp")
	case "24"
    Server.Execute("cancerrisk24.asp")
	case "25"
    Server.Execute("cancerrisk25.asp")
	case "25a"
    Server.Execute("cancerrisk25a.asp")
	case "26"
    Server.Execute("cancerrisk26.asp")
	case "27"
    Server.Execute("cancerrisk27.asp")
	case "27a"
    Server.Execute("cancerrisk27a.asp")
	case "28"
    Server.Execute("cancerrisk28.asp")
	case "29"
    Server.Execute("cancerrisk29.asp")
	case "30"
    Server.Execute("cancerrisk30.asp")
	case "40"
    Server.Execute("cancerrisk40.asp")
	case "41"
    Server.Execute("cancerrisk41.asp")
	case "42"
    Server.Execute("cancerrisk42.asp")
	case "43"
    Server.Execute("cancerrisk43.asp")
	case "44"
    Server.Execute("cancerrisk44.asp")
	case "45"
    Server.Execute("cancerrisk45.asp")
	case "46"
    Server.Execute("cancerrisk46.asp")
	case "47"
    Server.Execute("cancerrisk47.asp")
	case "48"
    Server.Execute("cancerrisk48.asp")
	case "49"
    Server.Execute("cancerrisk49.asp")
	case "50"
    Server.Execute("cancerrisk50.asp")
	case "51"
    Server.Execute("cancerrisk51.asp")
	case "52"
    Server.Execute("cancerrisk52.asp")
	case "53"
    Server.Execute("cancerrisk53.asp")

	case "121"
    Server.Execute("cancerrisk121.asp")
	case "0"
    Server.Execute("cancerrisk0.asp")

end select

%>
