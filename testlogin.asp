
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
<AppointmentID>TestAppt55MCC</AppointmentID>
<AppointmentLocation>LCS</AppointmentLocation>
<LastName>Ferrante</LastName>
<UserToken>1</UserToken>
  <patient id="647052">
    <name>dawnaone test</name>
    <dob>6/1/1977</dob>
    <gender>Male</gender>
	<testpage>familyhistorymaster</testpage>
	<testmode>2</testmode>
	<pagemode>1</pagemode>
  </patient>
<providers>
<upin1>FKDOC</upin1>
<name1>Test FKDOC</name1>
</providers>
 <returnURL>http://www.ihealthinterview.com/visitmanagerepqcertV2MDSummary/testremotelogin.asp</returnURL>
  <serviceURL></serviceURL>
  <ProviderComment>Special Message to Tell Doctor</ProviderComment>
</questionnaireData></textarea></p>
  <p><input type="submit" value="Submit" name="B1"><input type="reset" value="Reset" name="B2"></p>
</form>
<p>&nbsp;</p>

</body>

</html>
