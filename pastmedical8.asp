
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30414010")="1" then
		strEPQ30414010answer1="checked"
	end if
	if Session("EPQ30414020")="1" then
		strEPQ30414020answer1="checked"
	end if
	if Session("EPQ30414030")="1" then
		strEPQ30414030answer1="checked"
	end if
	if Session("EPQ30414040")="1" then
		strEPQ30414040answer1="checked"
	end if
	if Session("EPQ30414050")="1" then
		strEPQ30414050answer1="checked"
	end if
	if Session("EPQ30414060")="1" then
		strEPQ30414060answer1="checked"
	end if
	if Session("EPQ30414070")="1" then
		strEPQ30414070answer1="checked"
	end if
	if Session("EPQ30414080")="77" then
		strEPQ30414080answer1="checked"
	end if
	if Session("EPQ30414090")="1" then
		strEPQ30414090answer1="checked"
	end if
	if Session("EPQ30414100")="1" then
		strEPQ30414100answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30414000") = Request.Form("EPQ30414000")
	Session("EPQ30414010") = Request.Form("EPQ30414010")
	Session("EPQ30414020") = Request.Form("EPQ30414020")
	Session("EPQ30414030") = Request.Form("EPQ30414030")
	Session("EPQ30414040") = Request.Form("EPQ30414040")
	Session("EPQ30414050") = Request.Form("EPQ30414050")
	Session("EPQ30414060") = Request.Form("EPQ30414060")
	Session("EPQ30414070") = Request.Form("EPQ30414070")
	Session("EPQ30414080") = Request.Form("EPQ30414080")
	Session("EPQ30414090") = Request.Form("EPQ30414090")
	Session("EPQ30414100") = Request.Form("EPQ30414100")

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
	if Session("EPQ30402100") <> "1" then 
	Session("Page")="9"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	if Session("EPQ30402100") <> "1" then 
	Session("Page")="7"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30414010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if



if Session("HM10204000")="1" OR Session("HM10207000")="1"  then
	if Session("EPQ30412090")="1" OR Session("EPQ30414050")="1"  then
	Session("Page")="8a"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if

	if Session("EPQ30412090")<>"1" AND Session("EPQ30414050")<>"1" then
		Session.Contents.Remove("HM10401000")
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
<br>
  <fieldset>
	<legend class="QuestionBox">
    Which of the following <u>depression, anxiety, or other mental health problems</u> did the doctor say you had?<br>Check all that apply.<br>
	</legend>
    <div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30414030" value="1" id="EPQ30414030" class="atLeastOneCheckboxRequired" <%=strEPQ30414030answer1%>>
		<label for="EPQ30414030">Anxiety (including panic attacks)</label><br>
		<input type="checkbox" name="EPQ30414070" value="1" id="EPQ30414070" class="atLeastOneCheckboxRequired" <%=strEPQ30414070answer1%>>
		<label for="EPQ30414070">Attention deficit hyperactivity disorder (ADD or ADHD)</label><br>
		<input type="checkbox" name="EPQ30414050" value="1" id="EPQ30414050" class="atLeastOneCheckboxRequired" <%=strEPQ30414050answer1%>>
		<label for="EPQ30414050">Dementia</label><br>

		<input type="checkbox" name="EPQ30414010" value="1" id="EPQ30414010" class="atLeastOneCheckboxRequired" <%=strEPQ30414010answer1%>>
		<label for="EPQ30414010">Depression</label><br>
</span>

<span class="column2">
		<input type="checkbox" name="EPQ30414020" value="1" id="EPQ30414020" class="atLeastOneCheckboxRequired" <%=strEPQ30414020answer1%>>
		<label for="EPQ30414020">Manic depression (also called Bipolar disorder)</label><br>
		<input type="checkbox" name="EPQ30414040" value="1" id="EPQ30414040" class="atLeastOneCheckboxRequired" <%=strEPQ30414040answer1%>>
		<label for="EPQ30414040">Obsessive-compulsive disorder (OCD)</label><br>
		<input type="checkbox" name="EPQ30414100" value="1" id="EPQ30414100" class="atLeastOneCheckboxRequired" <%=strEPQ30414100answer1%>>
		<label for="EPQ30414100">Post-traumatic stress disorder (PTSD) </label><br>
		<input type="checkbox" name="EPQ30414090" value="1" id="EPQ30414090" class="atLeastOneCheckboxRequired" <%=strEPQ30414090answer1%>>
		<label for="EPQ30414090">Schizophrenia</label><br>
		<input type="checkbox" name="EPQ30414060" value="1" id="EPQ30414060" class="atLeastOneCheckboxRequired" <%=strEPQ30414060answer1%>>
		<label for="EPQ30414060">Other, specify:</label>	
	  <input id="EPQ30414000" type="text" maxlength="75"  size="15" name="EPQ30414000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30414000")%>' ><br>

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
