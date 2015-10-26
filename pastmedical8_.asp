
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30411010")="1" then
		strEPQ30411010answer1="checked"
	end if
	if Session("EPQ30411020")="1" then
		strEPQ30411020answer1="checked"
	end if
	if Session("EPQ30411030")="1" then
		strEPQ30411030answer1="checked"
	end if
	if Session("EPQ30411040")="1" then
		strEPQ30411040answer1="checked"
	end if
	if Session("EPQ30411050")="1" then
		strEPQ30411050answer1="checked"
	end if
	if Session("EPQ30411060")="1" then
		strEPQ30411060answer1="checked"
	end if
	if Session("EPQ30411070")="1" then
		strEPQ30411070answer1="checked"
	end if
	if Session("EPQ30411080")="1" then
		strEPQ30411080answer1="checked"
	end if
	if Session("EPQ30411090")="77" then
		strEPQ30411090answer1="checked"
	end if
	if Session("EPQ30411100")="1" then
		strEPQ30411100answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30411010string")= ""
	Session("EPQ30411020string")= ""
	Session("EPQ30411030string")= ""
	Session("EPQ30411040string")= ""
	Session("EPQ30411050string")= ""
	Session("EPQ30411060string")= ""
	Session("EPQ30411070string")= ""
	Session("EPQ30411080string")= ""
	Session("EPQ30411090string")= ""
	Session("EPQ30411100string")= ""


	Session("EPQ30411000") = Request.Form("EPQ30411000")
	Session("EPQ30411010") = Request.Form("EPQ30411010")
	Session("EPQ30411020") = Request.Form("EPQ30411020")
	Session("EPQ30411030") = Request.Form("EPQ30411030")
	Session("EPQ30411040") = Request.Form("EPQ30411040")
	Session("EPQ30411050") = Request.Form("EPQ30411050")
	Session("EPQ30411060") = Request.Form("EPQ30411060")
	Session("EPQ30411070") = Request.Form("EPQ30411070")
	Session("EPQ30411080") = Request.Form("EPQ30411080")
	Session("EPQ30411090") = Request.Form("EPQ30411090")
	Session("EPQ30411100") = Request.Form("EPQ30411100")
	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402070") <> "1" then 
	Session("Page")="9"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402070") <> "1" then 
	Session("Page")="7"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30411010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="9"
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
	<form action="pastmedical8.asp" method="post" id="formQuestion" name="formQuestion">
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
				Which of the following <u>sexually transmitted diseases</u> did the doctor say you had? Check all that apply.<br>
			</legend>
			<div class="QuestionAnswersBox">
				<span class="column1">
					<input type="checkbox" name="EPQ30411020" value="1" id="EPQ30411020" class="atLeastOneCheckboxRequired" <%=strEPQ30411020answer1%>>
					<label for="EPQ30411020">Chlamydia</label><br>
					<input type="checkbox" name="EPQ30411050" value="1" id="EPQ30411050" class="atLeastOneCheckboxRequired" <%=strEPQ30411050answer1%>>
					<label for="EPQ30411050">Genital Warts</label><br>
<input type="checkbox" name="EPQ30411060" value="1" id="EPQ30411060" class="atLeastOneCheckboxRequired" <%=strEPQ30411060answer1%>>
					<label for="EPQ30411060">Gonorrhea</label><br>
					<input type="checkbox" name="EPQ30411030" value="1" id="EPQ30411030" class="atLeastOneCheckboxRequired" <%=strEPQ30411030answer1%>>
					<label for="EPQ30411030">Herpes</label><br>
				</span>

				<span class="column2">
					<input type="checkbox" name="EPQ30411100" value="1" id="EPQ30411100" class="atLeastOneCheckboxRequired" <%=strEPQ30411100answer1%>>
					<label for="EPQ30411100">HIV/AIDS</label><br>

					<input type="checkbox" name="EPQ30411010" value="1" id="EPQ30411010" class="atLeastOneCheckboxRequired" <%=strEPQ30411010answer1%>>
					<label for="EPQ30411010">HPV (Human Papilloma Virus)</label><br>
					
					<input type="checkbox" name="EPQ30411070" value="1" id="EPQ30411070" class="atLeastOneCheckboxRequired" <%=strEPQ30411070answer1%>>
					<label for="EPQ30411070">Syphilis</label><br>
					<input type="checkbox" name="EPQ30411040" value="1" id="EPQ30411040" class="atLeastOneCheckboxRequired" <%=strEPQ30411040answer1%>>
					<label for="EPQ30411040">Trichomoniasis</label><br>
					<input type="checkbox" name="EPQ30411080" value="1" id="EPQ30411080" class="atLeastOneCheckboxRequired" <%=strEPQ30411080answer1%>>
					<label for="EPQ30411080">Other, specify:</label>	
					<input id="EPQ30411000" type="text" maxlength="75" size="15" name="EPQ30411000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30411000")%>' ><br>
				</span>
			</div><!-- [ /#AnswerBox] -->
		</fieldset>
	</form>
</div> <!-- [ /#formBlock ] -->

		<div id="buttonBox">
		 <!--#include file="buttonbox.asp"-->
		</div> <!-- [ /#buttonBox ] -->
</div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
 </body>
</html>
