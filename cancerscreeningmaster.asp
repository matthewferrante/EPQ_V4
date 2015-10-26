<%
if Session("sessionState") = "blank" then Response.Redirect("sessionTimedOut.asp") end if
Session("Page")=Cstr(Session("Page"))
%>

<%
if Session("Page")= "1" then
%>
<!--#include file="cancerscreening1.asp"-->
<%
end if
%>

<%
if Session("Page")= "2" then
%>
<!--#include file="cancerscreening2.asp"-->
<%
end if
%>

<%
if Session("Page")= "3" then
%>
<!--#include file="cancerscreening3.asp"-->
<%
end if
%>

<%
if Session("Page")= "4" then
%>
<!--#include file="cancerscreening4.asp"-->
<%
end if
%>

<%
if Session("Page")= "5" then
%>
<!--#include file="cancerscreening5.asp"-->
<%
end if
%>

<%
if Session("Page")= "6" then
%>
<!--#include file="cancerscreening6.asp"-->
<%
end if
%>
<%
if Session("Page")= "7" then
%>
<!--#include file="cancerscreening7.asp"-->
<%
end if
%>
<%
if Session("Page")= "8" then
%>
<!--#include file="cancerscreening8.asp"-->
<%
end if
%>
<%
if Session("Page")= "9" then
%>
<!--#include file="cancerscreening9.asp"-->
<%
end if
%>
<%
if Session("Page")= "0" then
%>
<!--#include file="cancerscreening0.asp"-->
<%
end if
%>

