<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
%>

<%
if Session("Page")= "1" then
%>
<!--#include file="workhistory.asp"-->
<%
end if
%>

<%
if Session("Page")= "2" then
%>
<!--#include file="exposures1.asp"-->
<%
end if
%>
<%
if Session("Page")= "3" then
%>
<!--#include file="exposures2.asp"-->
<%
end if
%>
<%
if Session("Page")= "4" then
%>
<!--#include file="exposures3.asp"-->
<%
end if
%>
<%
if Session("Page")= "5" then
%>
<!--#include file="exposures4.asp"-->
<%
end if
%>
<%
if Session("Page")= "6" then
%>
<!--#include file="exposures5.asp"-->
<%
end if
%>

<%
if Session("Page")= "7" then
%>
<!--#include file="exposures6.asp"-->
<%
end if
%>

<%
if Session("Page")= "8" then
%>
<!--#include file="exposures7.asp"-->
<%
end if
%>

