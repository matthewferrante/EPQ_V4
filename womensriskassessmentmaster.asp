<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
%>

<%
if Session("Page")= "1" then
%>
<!--#include file="womensrisk1.asp"-->
<%
end if
%>

<%
if Session("Page")= "2" then
%>
<!--#include file="womensrisk2.asp"-->
<%
end if
%>

<%
if Session("Page")= "3" then
%>
<!--#include file="womensrisk3.asp"-->
<%
end if
%>

<%
if Session("Page")= "4" then
%>
<!--#include file="womensrisk4.asp"-->
<%
end if
%>

