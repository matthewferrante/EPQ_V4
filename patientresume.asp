<%
dim strConnection
	strConnection="DRIVER={SQL Server};SERVER=formedicmhq\sqlexpress;UID=tampa;PWD=tampa1;DATABASE=CancerRepository"
%>
<%

Session("VisitBackgroundSection")=2
Session("PageHolder")="Caffeine"


if Request.Form("ispostback")=1 then

	strLastName=Request.Form("txtLastName")
	strUserToken=Request.Form("UserToken2")




														strSQL = "select * from Moffitt WHERE LastName= '" & strLastName& "' and UserToken='"&strUserToken&"'"

														set dbConnect = Server.CreateObject("adodb.connection")
														dbConnect.ConnectionString = strConnection
														dbConnect.Open

														dim rsLastName
														set rsLastName = Server.CreateObject("adodb.recordset")
														rsLastName.open strSQL, dbConnect


														do until rsLastName.EOF
															dim idCustomer
															dim strItem

															strItem = rsLastName("LastName")&rsLastName("FirstName")

Session("LastName")=strLastName
Session("UserToken")=strUserToken
	Session("fagerstrom_11") = rsLastName("fagerstrom_11")
	Session("fagerstrom_12") = rsLastName("fagerstrom_12")
	Session("fagerstrom_13") = rsLastName("fagerstrom_13")
	Session("fagerstrom_14") = rsLastName("fagerstrom_14")
	Session("fagerstrom_15") = rsLastName("fagerstrom_15")

															rsLastName.MoveNext
														loop

														rsLastName.Close


														dbConnect.Close
														set rsLastName = nothing
														set dbConnect = nothing


Session("ReturnID")="1"


Response.Redirect "nicotineaddiction1.asp"

end if
%>

<?xml version="1.0" encoding="iso-8859-1" standalone="no" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=iso-8859-1" />
<title><%=Session("PageHolder")%></title>

<link href="css/styles.css" rel="stylesheet" type="text/css" />
<!--[if IE]>
		<link href="css/ie.css" rel="stylesheet" type="text/css" />
<![endif]-->
<!--[if lte IE 7]>
		<link href="css/ie7.css" rel="stylesheet" type="text/css" />
<![endif]-->

<script src="scripts_js/jquery-1.6.2.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-validation/jquery.validate.js" type="text/javascript"></script> 
<script src="scripts_js/jquery-ui-1.8.16.custom.min.js"></script>
<script src="scripts_js/scripts.js" type="text/javascript"></script>
		<script language="javascript" TYPE="text/javascript">
		<!-- hide from old browsers
		function PauseQuestion ()
		{
				// Put the question/answer ids into hidden form variables and post to ourselves
				document.all("PauseID").value = "1";
				formQuestion.submit();
		}


		function ContinueQuestion ()
		{
				// Put the question/answer ids into hidden form variables and post to ourselves
				document.all("ContinueID").value = "1";
				formQuestion.submit();
		}
		function GoBackQuestion ()
				{
						// Put the question/answer ids into hidden form variables and post to ourselves
						document.all("GoBackID").value = "1";
						formQuestion.submit();
		}
		function StopQuestion ()
						{
								// Put the question/answer ids into hidden form variables and post to ourselves
								document.all("StopID").value = "1";
								formQuestion.submit();
		}
		-->
		</script>


</head>
<body>

<div id="header" style="display: block">
		<img src="images/moffitt.gif" />
</div>

<div id="wrapper">
 <div id="formWrapper">

	<span class="heading">Please enter your Last Name and PIN to continue</span><br />

   <div id="formBlock">
    <form action="patientresume.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
<!-- [Question boxes ] -->
	<div class="QAbox">
		Last Name: <input id="txtLastName" type="text" size="5" value="" name="txtLastName"/><label for="txtLastName"></label><br>
		PIN: <input id="UserToken2" type="text" size="2" value="" name="UserToken2"/><label for="UserToken2"></label>
	</div><!-- [ /#QABlock ] -->
	</div> <!-- [ /#formBlock ] -->

	<div id="buttonBox">
	 <!--#include file="buttonbox.asp"-->

	</div> <!-- [ /#buttonBox ] -->

	</form>
  </div> <!-- [ /#formWrapper ] -->


 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->

 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->

 </body>
</html>
