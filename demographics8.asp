<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
	if Session("EPQ30124000")="1" then
		strEPQ30124000answer1="checked"
	end if
	if Session("EPQ30124000")="2" then
		strEPQ30124000answer2="checked"
	end if

	if Session("EPQ30125000")="1" then
		strEPQ30125000answer1="checked"
	end if
	if Session("EPQ30125000")="2" then
		strEPQ30125000answer2="checked"
	end if
	if Session("EPQ30125000")="3" then
		strEPQ30125000answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30124000string")= ""
	Session("EPQ30124000") = Request.Form("EPQ30124000")
	Session("EPQ30125000string")= ""
	Session("EPQ30125000") = Request.Form("EPQ30125000")

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="7"
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="0"
	Session("DemographicsSectionStatus")="Complete"
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
		
    <form action="demographics8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
    <legend class="QuestionBox">
      Do you wish to provide information about your sexual orientation?<br>
    </legend>

  
    <div class="QuestionAnswersBox">
      <span class="column1">
      <input type="radio" name="EPQ30124000" value="1" id="EPQ30124000" class="required qTrigger" <%=strEPQ30124000answer1%> >
      <label for="EPQ301240001">Yes</label><br>
      <input type="radio" class="qTriggerOff" name="EPQ30124000" value="2" id="EPQ30124000" <%=strEPQ30124000answer2%> >
      <label for="EPQ301040002">No</label><br>

    </div><!-- [ /#AnswerBox] -->
  </fieldset>

<div class="hiddenQ">

  <fieldset>
    <legend class="QuestionBox">
      Do you consider yourself to be:<br>
    </legend>

    <div class="QuestionAnswersBox">
      <input type="radio" name="EPQ30125000" value="1" class="requiredifBranchActive" id="EPQ30125000" <%=strEPQ30125000answer1%>>
      <label for="EPQ301250001">Straight (heterosexual)</label><br>
      <input type="radio" name="EPQ30125000" value="2"  id="EPQ30125000" <%=strEPQ30125000answer2%>>
      <label for="EPQ301250002">Gay, lesbian or queer</label><br>
      <input type="radio" name="EPQ30125000" value="3"  id="EPQ30125000" <%=strEPQ30125000answer3%>>
      <label for="EPQ301250003">Bisexual</label><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>
</div>

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
