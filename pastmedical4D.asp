
<%

	if Session("GI10202000")<>"1" then
		Session.Contents.Remove("GI10402000")
		Session.Contents.Remove("GI10402010")
		Session.Contents.Remove("GI10403000")
		Session.Contents.Remove("GI10403010")
		Session.Contents.Remove("GI10404000")
		Session.Contents.Remove("GI10404010")
		Session.Contents.Remove("GI10405000")
		Session.Contents.Remove("GI10406000")
		Session.Contents.Remove("GI10405010")
		Session.Contents.Remove("GI10407000")
		Session.Contents.Remove("GI10408000")
	end if

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30407010")="1" then
		strEPQ30407010answer1="checked"
	end if
	if Session("EPQ30407020")="1" then
		strEPQ30407020answer1="checked"
	end if
	if Session("EPQ30407030")="1" then
		strEPQ30407030answer1="checked"
	end if
	if Session("EPQ30407040")="1" then
		strEPQ30407040answer1="checked"
	end if
	if Session("EPQ30407050")="1" then
		strEPQ30407050answer1="checked"
	end if
	if Session("EPQ30407060")="1" then
		strEPQ30407060answer1="checked"
	end if
	if Session("EPQ30407070")="1" then
		strEPQ30407070answer1="checked"
	end if
	if Session("EPQ30407080")="1" then
		strEPQ30407080answer1="checked"
	end if
	if Session("EPQ30407100")="1" then
		strEPQ30407100answer1="checked"
	end if
	if Session("EPQ30407110")="1" then
		strEPQ30407110answer1="checked"
	end if
	if Session("EPQ30407120")="1" then
		strEPQ30407120answer1="checked"
	end if

	if Session("EPQ30407090")="77" then
		strEPQ30407090answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30407000") = Request.Form("EPQ30407000")
	Session("EPQ30407010") = Request.Form("EPQ30407010")
	Session("EPQ30407020") = Request.Form("EPQ30407020")
	Session("EPQ30407030") = Request.Form("EPQ30407030")
	Session("EPQ30407040") = Request.Form("EPQ30407040")
	Session("EPQ30407050") = Request.Form("EPQ30407050")
	Session("EPQ30407060") = Request.Form("EPQ30407060")
	Session("EPQ30407070") = Request.Form("EPQ30407070")
	Session("EPQ30407080") = Request.Form("EPQ30407080")
	Session("EPQ30407090") = Request.Form("EPQ30407090")
	Session("EPQ30407100") = Request.Form("EPQ30407100")
	Session("EPQ30407110") = Request.Form("EPQ30407110")
	Session("EPQ30407120") = Request.Form("EPQ30407120")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("GI10202000")="1" then
		Session("Page")="3a"
		Response.Redirect "pastmedicalmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402020") <> "1" then 
	Session("Page")="5"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if


if Session("ReturnID")="1" then
	if Session("EPQ30402020") <> "1" then 
		if Session("GI10202000")="1" then
		Session("Page")="3a"
		Response.Redirect "pastmedicalmaster.asp"
		end if
	Session("Page")="3"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if

	if Session("EPQ30407100")="1" AND Session("SurveyVersion")="Cutaneous" then
		Session("Page")="4b"
	Response.Redirect "pastmedicalmaster.asp"
	end if


	if Session("EPQ30407100")="1" then
	if Session("GI10201000")="1" OR Session("GI10202000")="1" then
		Session("Page")="4b"
		Response.Redirect "pastmedicalmaster.asp"
	end if
	end if

	if Session("EPQ30407100")<>"1" then

		Session.Contents.Remove("EPQ30407120")
		Session.Contents.Remove("EPQ30407130")
		Session.Contents.Remove("EPQ30407140")
		Session.Contents.Remove("EPQ30407150")
		Session.Contents.Remove("EPQ30407160")
		Session.Contents.Remove("EPQ30407170")
		Session.Contents.Remove("EPQ30407190")
		Session.Contents.Remove("EPQ30407280")
		Session.Contents.Remove("EPQ30407200")
		Session.Contents.Remove("EPQ30407270")
		Session.Contents.Remove("EPQ30407220")
		Session.Contents.Remove("EPQ30407230")
		Session.Contents.Remove("EPQ30407240")
		Session.Contents.Remove("EPQ30407250")
		Session.Contents.Remove("EPQ30407260")

	end if
	if len(Session("EPQ30407010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="5"
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


    <form action="pastmedical4.asp" method="post" id="formQuestion" name="formQuestion">
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
      Which of the following <u>diabetes, thyroid, or other gland problems</u> did the doctor say you had? Check all that apply.<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30407100" value="1" id="EPQ30407100" class="atLeastOneCheckboxRequired" <%=strEPQ30407100answer1%>>
		<label for="EPQ30407100">Diabetes (including type 1 or type 2)</label><br>

	<% if session("Gender")="F" then %>
		<input type="checkbox" name="EPQ30407030" value="1" id="EPQ30407030" class="atLeastOneCheckboxRequired" <%=strEPQ30407030answer1%>>
		<label for="EPQ30407030">Gestational diabetes (only during pregnancy)</label><br>
	<% end if %>
		<input type="checkbox" name="EPQ30407060" value="1" id="EPQ30407060" class="atLeastOneCheckboxRequired"  <%=strEPQ30407060answer1%>>
		<label for="EPQ30407060">Goiter</label><br>

		<input type="checkbox" name="EPQ30407110" value="1" id="EPQ30407110" class="atLeastOneCheckboxRequired"  <%=strEPQ30407110answer1%>>
		<label for="EPQ30407110">Hashimoto’s thyroiditis</label><br>

		<input type="checkbox" name="EPQ30407070" value="1" id="EPQ30407070" class="atLeastOneCheckboxRequired"  <%=strEPQ30407070answer1%>>
		<label for="EPQ30407070">Nodule (lump) in thyroid</label><br>

		<input type="checkbox" name="EPQ30407040" value="1" id="EPQ30407040" class="atLeastOneCheckboxRequired"  <%=strEPQ30407040answer1%>>
		<label for="EPQ30407040">Overactive thyroid (including Graves Disease or hyperthyroidism)</label><br>

		<input type="checkbox" name="EPQ30407120" value="1" id="EPQ30407120" class="atLeastOneCheckboxRequired" <%=strEPQ30407120answer1%>>
		<label for="EPQ30407120">Pre-diabetes</label><br>

		<input type="checkbox" name="EPQ30407050" value="1" id="EPQ30407050" class="atLeastOneCheckboxRequired"  <%=strEPQ30407050answer1%>>
		<label for="EPQ30407050">Underactive thyroid (hypothyroidism)</label><br>

		<input type="checkbox" name="EPQ30407080" value="1" id="EPQ30407080" class="atLeastOneCheckboxRequired"  <%=strEPQ30407080answer1%>>
		<label for="EPQ30407080">Other, specify:</label>

		<input id="EPQ30407000" type="text" maxlength="75" size="15" name="EPQ30407000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30407000")%>' >
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
