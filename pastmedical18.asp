
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30421000") = Request.Form("EPQ30421000")
	Session("EPQ30421000") = Server.HTMLEncode(Session("EPQ30421000"))
	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("EPQ30418050")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="17b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	Session("ReturnID")="1"
	Session("Page")="1a1"
	Response.Redirect "pastmedicalmaster.asp"


end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402150") <> "1" then 
	Session("Page")="0"
	Session("PastMedicalHistorySectionStatus")="Completed"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402150") <> "1" then 
	Session("Page")="1a1"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30522010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Session("PastMedicalHistorySectionStatus")="Completed"

	Response.Redirect "pastmedicalmaster.asp"
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
<script language="javascript" type="text/javascript">
 function limitText(limitField, limitCount, limitNum)
	 { if (limitField.value.length > limitNum) {
	 limitField.value = limitField.value.substring(0, limitNum);
	 } else {
	 limitCount.value = limitNum - limitField.value.length;
	 }
	 }
 </script>


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

<div id="SpecialNote">

Please list medical problems, diseases, or conditions that you may have been diagnosed with other than cancer.
</div>
    <form action="pastmedical18.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
    <legend class="QuestionBox">
      What other diseases or problems did the doctor say you had?<br>
	  </legend>
	<div class="QuestionAnswersBox">
	<textarea name="EPQ30421000" id="EPQ30421000portal" rows="7" cols="80" class="requiredCompleteText" style="overflow:hidden;"
onKeyDown="limitText(this.form.EPQ30421000,this.form.countdown,490);" 
onKeyUp="limitText(this.form.EPQ30421000,this.form.countdown,490);" ><%=Session("EPQ30421000")%></textarea>
<br><br> Please limit your response to 500 characters.
<br> Your typing will stop once you pass the maximum response length.

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
