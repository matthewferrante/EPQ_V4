
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30410010")="1" then
		strEPQ30410010answer1="checked"
	end if
	if Session("EPQ30410020")="1" then
		strEPQ30410020answer1="checked"
	end if
	if Session("EPQ30410030")="1" then
		strEPQ30410030answer1="checked"
	end if
	if Session("EPQ30410040")="1" then
		strEPQ30410040answer1="checked"
	end if
	if Session("EPQ30410050")="1" then
		strEPQ30410050answer1="checked"
	end if
	if Session("EPQ30410070")="1" then
		strEPQ30410070answer1="checked"
	end if
	if Session("EPQ30410080")="1" then
		strEPQ30410080answer1="checked"
	end if
	if Session("EPQ30410090")="1" then
		strEPQ30410090answer1="checked"
	end if
	if Session("EPQ30410100")="1" then
		strEPQ30410100answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30410000") = Request.Form("EPQ30410000")
	Session("EPQ30410010") = Request.Form("EPQ30410010")
	Session("EPQ30410020") = Request.Form("EPQ30410020")
	Session("EPQ30410030") = Request.Form("EPQ30410030")
	Session("EPQ30410040") = Request.Form("EPQ30410040")
	Session("EPQ30410050") = Request.Form("EPQ30410050")
	Session("EPQ30410060") = Request.Form("EPQ30410060")
	Session("EPQ30410070") = Request.Form("EPQ30410070")
	Session("EPQ30410080") = Request.Form("EPQ30410080")
	Session("EPQ30410090") = Request.Form("EPQ30410090")
	Session("EPQ30410100") = Request.Form("EPQ30410100")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=6
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402060") <> "1" then 
	Session("Page")="8"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402060") <> "1" then 
	Session("Page")="6"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30410010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="8"
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


    <form action="pastmedical7.asp" method="post" id="formQuestion" name="formQuestion">
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

  <fieldset>
    <legend class="QuestionBox">
Which of the following <u>breast problems</u> did the doctor say you had? Check all that apply. 
<br>
	</legend>
	<div class="QuestionAnswersBox">


		<input type="checkbox" name="EPQ30410010" value="1" id="EPQ30410010" class="atLeastOneCheckboxRequired" <%=strEPQ30410010answer1%>>
		<label for="EPQ30410010">Abnormal mammogram, sonogram, ultrasound or breast MRI</label><br>
		<input type="checkbox" name="EPQ30410070" value="1" id="EPQ30410070" class="atLeastOneCheckboxRequired" <%=strEPQ30410070answer1%>>
		<label for="EPQ30410070">Atypical ductal hyperplasia (ADH)</label><br>
		<input type="checkbox" name="EPQ30410040" value="1" id="EPQ30410040" class="atLeastOneCheckboxRequired" <%=strEPQ30410040answer1%>>
		<label for="EPQ30410040">Ductal carcinoma in situ (DCIS)</label><br>
		<input type="checkbox" name="EPQ30410080" value="1" id="EPQ30410080" class="atLeastOneCheckboxRequired" <%=strEPQ30410080answer1%>>
		<label for="EPQ30410080">Lobular carcinoma in situ (LCIS)</label><br>
		<input type="checkbox" name="EPQ30410030" value="1" id="EPQ30410030" class="atLeastOneCheckboxRequired" <%=strEPQ30410030answer1%>>

		<label for="EPQ30410030">Fibrocystic breasts or breast changes that were not cancer</label><br>

		<input type="checkbox" name="EPQ30410020" value="1" id="EPQ30410020" class="atLeastOneCheckboxRequired" <%=strEPQ30410020answer1%>>
		<label for="EPQ30410020">Lump or cyst in your breast that was not cancer</label><br>
		<input type="checkbox" name="EPQ30410090" value="1" id="EPQ30410090" class="atLeastOneCheckboxRequired" <%=strEPQ30410090answer1%>>
		<label for="EPQ30410090">Mastitis, abscess, or blocked duct not during breast feeding</label><br>

		<input type="checkbox" name="EPQ30410100" value="1" id="EPQ30410100" class="atLeastOneCheckboxRequired" <%=strEPQ30410100answer1%>>
		<label for="EPQ30410100">Phyllodes tumor</label><br>

		<input type="checkbox" name="EPQ30410050" value="1" id="EPQ30410050" class="atLeastOneCheckboxRequired" <%=strEPQ30410050answer1%>>
		<label for="EPQ30410050">Other, specify:</label>
		<input id="EPQ30410000" type="text" maxlength="75" size="15" name="EPQ30410000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30410000")%>' ><br>

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
