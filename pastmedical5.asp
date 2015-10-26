
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30417010")="1" then
		strEPQ30417010answer1="checked"
	end if
	if Session("EPQ30417020")="1" then
		strEPQ30417020answer1="checked"
	end if
	if Session("EPQ30417030")="1" then
		strEPQ30417030answer1="checked"
	end if
	if Session("EPQ30417040")="1" then
		strEPQ30417040answer1="checked"
	end if
	if Session("EPQ30417050")="1" then
		strEPQ30417050answer1="checked"
	end if
	if Session("EPQ30417060")="77" then
		strEPQ30417060answer1="checked"
	end if
	if Session("EPQ30417070")="1" then
		strEPQ30417070answer1="checked"
	end if
	if Session("EPQ30417080")="1" then
		strEPQ30417080answer1="checked"
	end if
	if Session("EPQ30417090")="1" then
		strEPQ30417090answer1="checked"
	end if
	if Session("EPQ30417100")="1" then
		strEPQ30417100answer1="checked"
	end if
	if Session("EPQ30417110")="1" then
		strEPQ30417110answer1="checked"
	end if
	if Session("TEMPEPQ30417120")="1" then
		strEPQTEMP30417120answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30417010string")= ""
	Session("EPQ30417020string")= ""
	Session("EPQ30417030string")= ""
	Session("EPQ30417040string")= ""
	Session("EPQ30417050string")= ""
	Session("EPQ30417060string")= ""
	Session("EPQ30417070string")= ""

	Session("EPQ30417000") = Request.Form("EPQ30417000")
	Session("EPQ30417010") = Request.Form("EPQ30417010")
	Session("EPQ30417020") = Request.Form("EPQ30417020")
	Session("EPQ30417030") = Request.Form("EPQ30417030")
	Session("EPQ30417040") = Request.Form("EPQ30417040")
	Session("EPQ30417050") = Request.Form("EPQ30417050")
	Session("EPQ30417060") = Request.Form("EPQ30417060")
	Session("EPQ30417070") = Request.Form("EPQ30417070")
	Session("EPQ30417080") = Request.Form("EPQ30417080")
	Session("EPQ30417090") = Request.Form("EPQ30417090")
	Session("EPQ30417100") = Request.Form("EPQ30417100")
	Session("EPQ30417110") = Request.Form("EPQ30417110")
	Session("TEMPEPQ30417120") = Request.Form("TEMPEPQ30417120")

	if Session("EPQ30417010") = "1" then 
		Session("EPQ30417010string")= ""
	end if
	if Session("EPQ30417020") = "1" then 
		Session("EPQ30417020string")= ""
	end if
	if Session("EPQ30417030") = "1" then 
		Session("EPQ30417030string")= ""
	end if
	if Session("EPQ30417040") = "1" then 
		Session("EPQ30417040string")= ""
	end if
	if Session("EPQ30417050") = "1" then 
		Session("EPQ30417050string")= ""
	end if
	if Session("EPQ30417060") = "77" then 
		Session("EPQ30417060string")= ""
	end if
	if Session("EPQ30417070") = "1" then 
		Session("EPQ30417070string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=4
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402140") <> "1" then 
	Session("Page")="6"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402140") <> "1" then 
	Session("Page")="4"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30417010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
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
   <form action="pastmedical5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
<div id="SpecialNote">

Please list medical problems, diseases, or conditions that you may have been diagnosed with other than cancer.
</div>
<br>
  <fieldset>
    <legend class="QuestionBox">
      Which of the following <u>blood problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30417030" value="1" id="EPQ30417030" class="atLeastOneCheckboxRequired" <%=strEPQ30417030answer1%>>
		<label for="EPQ30417030">Anemia</label><br>
		<input type="checkbox" name="EPQ30417090" value="1" id="EPQ30417090" class="atLeastOneCheckboxRequired" <%=strEPQ30417090answer1%>>
		<label for="EPQ30417090">Blood clots including pulmonary embolism<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(PE) or deep vein thrombosis (DVT)</label><br>
		<input type="checkbox" name="EPQ30417020" value="1" id="EPQ30417020" class="atLeastOneCheckboxRequired" <%=strEPQ30417020answer1%>>
		<label for="EPQ30417020">Blood transfusion</label><br>
		<input type="checkbox" name="EPQ30417080" value="1" id="EPQ30417080" class="atLeastOneCheckboxRequired" <%=strEPQ30417080answer1%>>
		<label for="EPQ30417080">Low platelets or any thrombocytopenia</label><br>
		<input type="checkbox" name="EPQ30417100" value="1" id="EPQ30417100" class="atLeastOneCheckboxRequired" <%=strEPQ30417100answer1%>>
		<label for="EPQ30417100">Monoclonal gammopathy (MGUS)</label><br>

</span>

<span class="column2">
		<input type="checkbox" name="EPQ30417110" value="1" id="EPQ30417110" class="atLeastOneCheckboxRequired" <%=strEPQ30417110answer1%>>
		<label for="EPQ30417110">Myelodysplastic syndrome (MDS)</label><br>

		<input type="checkbox" name="TEMPEPQ30417120" value="1" id="TEMPEPQ30417120" class="atLeastOneCheckboxRequired" <%=strTEMPEPQ30417120answer1%>>
		<label for="EPQ30417120">Myeloproliferative disease<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(including polycythemia vera and essential thrombocytosis)</label><br>

		<input type="checkbox" name="EPQ30417050" value="1" id="EPQ30417050" class="atLeastOneCheckboxRequired" <%=strEPQ30417050answer1%>>
		<label for="EPQ30417050">Sickle cell disease</label><br>
		<input type="checkbox" name="EPQ30417040" value="1" id="EPQ30417040" class="atLeastOneCheckboxRequired" <%=strEPQ30417040answer1%>>
		<label for="EPQ30417040">Other, specify:</label>	
	<input id="EPQ30417000" type="text" maxlength="75" size="15" name="EPQ30417000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30417000")%>' ><br>

</span>
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
