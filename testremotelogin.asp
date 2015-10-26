
<html>
<head>
<title>Remote Login</title>
</head>

<body>
<%
=Session("strHL7ReportFileSpec")
%>
<p>Remote Login</p>
<form method="POST" action="remotelogin.asp">
  <p><textarea rows="30" name="imhdata" cols="75"><?xml version="1.0"?>
<questionnaireData version="1.0">
  <login>
    <username>cerner</username>
    <password>goimh2004</password>
  </login>
<AppointmentID>11280094.000</AppointmentID>
<AppointmentLocation>GI</AppointmentLocation>
<LastName>TEST</LastName>
<UserToken>1</UserToken>
  <patient id="400012">
    <name>Melissa Test</name>
    <dob>2/19/1967</dob>
    <gender>Female</gender>
	<testpage>demographicsmaster</testpage>
	<testmode>3</testmode>
	<surveyversion>GI</surveyversion>
	<pagemode>1</pagemode>
  </patient>
<providers>
<upin1>FKDOC</upin1>
<name1>Test FKDOC</name1>
</providers>
 <returnURL>http://matthew.dev.visitmanagertool.com/testremotelogin.asp</returnURL>
  <serviceURL></serviceURL>
  <ProviderComment>Special Message to Tell Doctor</ProviderComment>
</questionnaireData></textarea></p>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
<p>&nbsp;</p>

</body>

</html>
