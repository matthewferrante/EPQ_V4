
<%

Session("PastMedicalHistoryStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("CUTA10305010")="1" then
		strCUTA10305010answer1="checked"
	end if
	if Session("CUTA10305020")="1" then
		strCUTA10305020answer1="checked"
	end if
	if Session("CUTA10305030")="1" then
		strCUTA10305030answer1="checked"
	end if
	if Session("CUTA10305040")="1" then
		strCUTA10305040answer1="checked"
	end if
	if Session("CUTA10305050")="1" then
		strCUTA10305050answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("CUTA10303000") = Request.Form("CUTA10303000")
	Session("CUTA10304000") = Request.Form("CUTA10304000")
	Session("CUTA10305010") = Request.Form("CUTA10305010")
	Session("CUTA10305020") = Request.Form("CUTA10305020")
	Session("CUTA10305030") = Request.Form("CUTA10305030")
	Session("CUTA10305040") = Request.Form("CUTA10305040")
	Session("CUTA10305050") = Request.Form("CUTA10305050")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	if Session("EPQ30311026")="1" then
		Session("Page")="1cuta"
		Response.Redirect "personalhistorycancermaster.asp"
	end if
	end if
	end if
		Session("ReturnID")="1"
		Session("Page")="2"
		Response.Redirect "personalhistorycancermaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then


	Session("Page")="3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "personalhistorycancermaster.asp"
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


    <form action="personalhistorycancer2cuta.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
    <legend class="QuestionBox">
How many times have you been diagnosed with Skin Cancer (includes basal, squamous, etc. but not melanoma)?   <br>
	  </legend>
	<div class="QuestionAnswersBox">
		<label for="CUTA10303000"></label>
		<input type="text" size="2" maxlength="3" id="CUTA10304000" name="CUTA10303000" class="required dateMonth" value=<%=Session("CUTA10303000")%> > times
<br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
  <fieldset>
    <legend class="QuestionBox">
Please provide age when first diagnosed with Skin Cancer (includes basal, squamous, etc. but not melanoma).<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<label for="CUTA10304000"></label>
		<input type="text" size="2" maxlength="3" id="CUTA10304000" name="CUTA10304000" class="yearsExposed required" value=<%=Session("CUTA10304000")%> > age in years
<br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
    <legend class="QuestionBox">
Which type(s) of non-melanoma condition have you been diagnosed with? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="CUTA10305010" value="1" id="CUTA10305010" <%=strCUTA10305010answer1%>>
		<label for="CUTA10305010">Basal cell carcinoma (BCC)</label><br>
		<input type="checkbox" name="CUTA10305020" value="1" id="CUTA10305020" <%=strCUTA10305020answer1%>>
		<label for="CUTA10305020">Merkel cell carcinoma</label><br>
		<input type="checkbox" name="CUTA10305030" value="1" id="CUTA10305030" <%=strCUTA10305030answer1%>>
		<label for="CUTA10305030">Mycosis fungoides/Cutaneous Lymphoma (like CTCL)</label><br>
		<input type="checkbox" name="CUTA10305040" value="1" id="CUTA10305040" <%=strCUTA10305040answer1%>>
		<label for="CUTA10305040">Squamous cell carcinoma (SCC)</label><br>
		<input type="checkbox" name="CUTA10305050" value="1" id="CUTA10305050" <%=strCUTA10305050answer1%>>
		<label for="CUTA10305050">Other non-melanoma skin cancer</label><br>

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
