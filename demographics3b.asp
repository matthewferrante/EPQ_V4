<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
	if Session("THRC30105000")="1" then
		strTHRC30105000answer1="checked"
	end if
	if Session("THRC30105000")="2" then
		strTHRC30105000answer2="checked"
	end if
	if Session("THRC30105000")="3" then
		strTHRC30105000answer3="checked"
	end if
	if Session("THRC30105000")="4" then
		strTHRC30105000answer4="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("THRC30105000") = Request.Form("THRC30105000")
end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		Session("Page")="3"

		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("DemographicsSectionStatus")="Completed"
	Session("Page")="4"
	Response.Redirect "demographicsmaster.asp"
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
	 <!--#include file="functionbox.asp"-->
		-->
		</script>


</head>
<body>

<div id="header" style="display: block">
	 <!--#include file="headerfile.asp"-->
</div>

<div id="wrapper">

 <div id="formWrapper">
   <div id="formBlock">
		
    <form action="demographics3b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
    <legend class="QuestionBox">
      How many years total did you work in that job?<br>
    </legend>

    <div class="QuestionAnswersBox">
      <input type="radio" name="THRC30105000" value="1" id="THR301050001" class="required" <%=strTHRC30105000answer1%> >
      <label for="THRC301050001">Less than 5 years</label><br>
      <input type="radio" name="THRC30105000" value="2" id="THR301050002" <%=strTHRC30105000answer2%> >
      <label for="THRC301050002">5 to 10 years</label><br>
      <input type="radio" name="THRC30105000" value="3" id="THR301050003" <%=strTHRC30105000answer3%> >
      <label for="THRC301050003">11  to 20 years</label><br>
      <input type="radio" name="THRC30105000" value="4" id="THR301050004" <%=strTHRC30105000answer4%> >
      <label for="THRC301050004">21 or more years</label><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>


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
