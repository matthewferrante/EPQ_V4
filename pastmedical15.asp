
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("TEPQ30409010")="1" then
		strTEPQ30409010answer1="checked"
	end if
	if Session("TEPQ30409020")="1" then
		strTEPQ30409020answer1="checked"
	end if
	if Session("TEPQ30409030")="1" then
		strTEPQ30409030answer1="checked"
	end if
	if Session("TEPQ30409040")="1" then
		strTEPQ30409040answer1="checked"
	end if
	if Session("TEPQ30409050")="1" then
		strTEPQ30409050answer1="checked"
	end if
	if Session("TEPQ30409060")="1" then
		strTEPQ30409060answer1="checked"
	end if
	if Session("TEPQ30409070")="77" then
		strTEPQ30409070answer1="checked"
	end if
	if Session("TEPQ30409080")="1" then
		strTEPQ30409080answer1="checked"
	end if
	if Session("TEPQ30409090")="1" then
		strTEPQ30409090answer1="checked"
	end if
	if Session("TEPQ30409100")="1" then
		strTEPQ30409100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then



	Session("TEPQ30409000") = Request.Form("TEPQ30409000")
	Session("TEPQ30409010") = Request.Form("TEPQ30409010")
	Session("TEPQ30409020") = Request.Form("TEPQ30409020")
	Session("TEPQ30409030") = Request.Form("TEPQ30409030")
	Session("TEPQ30409040") = Request.Form("TEPQ30409040")
	Session("TEPQ30409050") = Request.Form("TEPQ30409050")
	Session("TEPQ30409060") = Request.Form("TEPQ30409060")
	Session("TEPQ30409070") = Request.Form("TEPQ30409070")
	Session("TEPQ30409080") = Request.Form("TEPQ30409080")
	Session("TEPQ30409090") = Request.Form("TEPQ30409090")
	Session("TEPQ30409100") = Request.Form("TEPQ30409100")


end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("EPQ30415040") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b5"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415070") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415120") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415100") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415080")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="14b1"
	Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")=14
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then

	if Session("EPQ30402170") <> "1" then 
	Session("Page")="16"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402170") <> "1" then 


	if Session("EPQ30415040") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b5"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415070") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415020") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415100") = "1" AND Session("SurveyVersion")="Thoracic" then 
	Session("Page")="14b2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
	end if
	if Session("EPQ30415080")="1" AND Session("SurveyVersion")="Thoracic" then
	Session("Page")="14b1"
	Response.Redirect "pastmedicalmaster.asp"
	end if


	Session("Page")="14"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("TEPQ30409010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="16"
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


    <form action="pastmedical15.asp" method="post" id="formQuestion" name="formQuestion">
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
      Which of the following <u>penis, testis or sperm problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="TEMP1TEPQ30409010" value="1" id="TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP1TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Cyst</label><br>
		<input type="checkbox" name="TEMP2TEPQ30409010" value="1" id="TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP2TEPQ30409010answer1%>>
		<label for="TEMP2TEPQ30409010">Epididymitis</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
		<input type="checkbox" name="TEMP3TEPQ30409010" value="1" id="TEMP3TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEPQ30409010answer1%>>
		<label for="TEMP3TEPQ30409010">Hydrocele</label><br>
		<input type="checkbox" name="TEPQ30409040" value="1" id="TEPQ30409040" class="atLeastOneCheckboxRequired" <%=strTEPQ30409040answer1%>>
		<label for="TEPQ30409040">Hypospadia</label><br>

		<input type="checkbox" name="TEMP4TEPQ30409010" value="1" id="TEMP4TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP4TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Infertility</label><br>



</span>

<span class="column2">
		<input type="checkbox" name="TEMP5TEPQ30409010" value="1" id="TEMP5PQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP5TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Low sperm count</label><br>

		<input type="checkbox" name="TEMP6TEPQ30409010" value="1" id="TEMP6TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP6TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Penile intraepithelial neoplasia (PeIN)</label><br>

		<input type="checkbox" name="TEPQ30409100" value="1" id="TEPQ30409100" class="atLeastOneCheckboxRequired" <%=strTEPQ30409100answer1%>>
		<label for="TEPQ30409100">Phimosis</label><br>

		<input type="checkbox" name="TEMP7TEPQ30409010" value="1" id="TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP7TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Undescended testicle or testes</label><br>

		<input type="checkbox" name="TEMP8TEPQ30409010" value="1" id="TEPQ30409010" class="atLeastOneCheckboxRequired" <%=strTEMP8TEPQ30409010answer1%>>
		<label for="TEMP1TEPQ30409010">Varicocele</label><br>


		<input type="checkbox" name="TEPQ30409050" value="1" id="TEPQ30409050" class="atLeastOneCheckboxRequired" <%=strTEPQ30409050answer1%>>
		<label for="TEPQ30409050">Other, specify:</label>	
	<input id="TEPQ30409000" type="text" maxlength="75" size="15" name="TEPQ30409000" class="requiredIfPreviousCheckbox" value='<%=Session("TEPQ30409000")%>' ><br>

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
