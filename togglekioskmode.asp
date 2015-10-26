<% if Session("KioskMode") = 1 then Session("KioskMode") = 0 else Session("KioskMode") = 1 end if %>
KioskMode=<%=Session("KioskMode")%>
