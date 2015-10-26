<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30110000") = Request.Form("EPQ30110000")
	Session("EPQ30111000") = Request.Form("EPQ30111000")

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

	if len(Session("EPQ30107000")) > 0 AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="2b"
	else
	Session("Page")="2"
	end if

	Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30110000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30111000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	if Session("EPQ30106000")="3" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="3b"
	Response.Redirect "demographicsmaster.asp"
	else
	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "demographicsmaster.asp"
	end if

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
		
    <form action="demographics3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
      During the years you worked, what was your occupation <b> <u>in the job you held the longest</u></b>?<br> (Examples: Secondary school teacher, civil engineer, computer analyst, building supervisor, lathe operator, truck driver, or licensed practical nurse)<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input id="EPQ30110000" type="text" size="96" maxlength="96" name="EPQ30110000" class="requiredCompleteTextShort" value='<%=Session("EPQ30110000")%>' ><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
    <legend class="QuestionBox">
      In what type of business or industry <b><u>was this job?</u></b>  (Examples: Construction (general contracting), machine<br>repair shop, state highway police, print shop, local school district, law firm or commercial airline)<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input id="EPQ30111000" type="text" size="96" maxlength="96" name="EPQ30111000" class="requiredCompleteTextShort" value='<%=Session("EPQ30111000")%>' ><br>
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
