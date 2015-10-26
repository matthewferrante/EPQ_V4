<% @Language="VBScript" %>
<% Response.CacheControl = "no-cache" ' session changes too often to be cached %>
<!--#include file="include/vendor/JSON_2.0.4.asp"--><%
Dim ret, sessionKeysToReturn

sessionKeysToReturn = array("strDOBYear", "PatientAge", "sessionState")

Set ret = jsObject()
for each key in sessionKeysToReturn
  ret(key) = Session(key)
next
ret.Flush
%>
