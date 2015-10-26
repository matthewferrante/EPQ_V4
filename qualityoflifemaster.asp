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
	case "6"
    Server.Execute("qualityoflife6.asp")
	case "6a"
    Server.Execute("qualityoflife6a.asp")
	case "6b"
    Server.Execute("qualityoflife6b.asp")
	case "7"
    Server.Execute("qualityoflife7.asp")
	case "8"
    Server.Execute("qualityoflife8.asp")
	case "9"
    Server.Execute("qualityoflife9.asp")
	case "10"
    Server.Execute("qualityoflife10.asp")
	case "11"
    Server.Execute("qualityoflife11.asp")
	case "12"
    Server.Execute("qualityoflife12.asp")
	case "13"
    Server.Execute("qualityoflife13.asp")
	case "14"
    Server.Execute("qualityoflife14.asp")
	case "15"
    Server.Execute("qualityoflife15.asp")
	case "16"
    Server.Execute("qualityoflife16.asp")
	case "17"
    Server.Execute("qualityoflife17.asp")
	case "18"
    Server.Execute("qualityoflife18.asp")
	case "19"
    Server.Execute("qualityoflife19.asp")
	case "20"
    Server.Execute("qualityoflife20.asp")
	case "21"
    Server.Execute("qualityoflife21.asp")
	case "22"
    Server.Execute("qualityoflife22.asp")
	case "23"
    Server.Execute("qualityoflife23.asp")
	case "24"
    Server.Execute("qualityoflife24.asp")
	case "25"
    Server.Execute("qualityoflife25.asp")
	case "26"
    Server.Execute("qualityoflife26.asp")
	case "27"
    Server.Execute("qualityoflife27.asp")
	case "28"
    Server.Execute("qualityoflife28.asp")
	case "29"
    Server.Execute("qualityoflife29.asp")
	case "30"
    Server.Execute("qualityoflife30.asp")
	case "31"
    Server.Execute("qualityoflife31.asp")
	case "32"
    Server.Execute("qualityoflife32.asp")
	case "33"
    Server.Execute("qualityoflife33.asp")
	case "34"
    Server.Execute("qualityoflife34.asp")
	case "35"
    Server.Execute("qualityoflife35.asp")
	case "36"
    Server.Execute("qualityoflife36.asp")
	case "37"
    Server.Execute("qualityoflife37.asp")
	case "38"
    Server.Execute("qualityoflife38.asp")
	case "39"
    Server.Execute("qualityoflife39.asp")
	case "40"
    Server.Execute("qualityoflife40.asp")
	case "41"
    Server.Execute("qualityoflife41.asp")
	case "42"
    Server.Execute("qualityoflife42.asp")
	case "43"
    Server.Execute("qualityoflife43.asp")
	case "44"
    Server.Execute("qualityoflife44.asp")
	case "45"
    Server.Execute("qualityoflife45.asp")
	case "46"
    Server.Execute("qualityoflife46.asp")
	case "47"
    Server.Execute("qualityoflife47.asp")
	case "48"
    Server.Execute("qualityoflife48.asp")
	case "49"
    Server.Execute("qualityoflife49.asp")
	case "50"
    Server.Execute("qualityoflife50.asp")
	case "51"
    Server.Execute("qualityoflife51.asp")
	case "52"
    Server.Execute("qualityoflife52.asp")
	case "0"
    Server.Execute("qualityoflife0.asp")

end select
%>
