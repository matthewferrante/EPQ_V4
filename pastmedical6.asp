
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30412010")="1" then
		strEPQ30412010answer1="checked"
	end if
	if Session("EPQ30412020")="1" then
		strEPQ30412020answer1="checked"
	end if
	if Session("EPQ30412030")="1" then
		strEPQ30412030answer1="checked"
	end if
	if Session("EPQ30412040")="1" then
		strEPQ30412040answer1="checked"
	end if
	if Session("EPQ30412050")="1" then
		strEPQ30412050answer1="checked"
	end if
	if Session("EPQ30412060")="1" then
		strEPQ30412060answer1="checked"
	end if
	if Session("EPQ30412070")="1" then
		strEPQ30412070answer1="checked"
	end if

	if Session("EPQ30412090")="1" then
		strEPQ30412090answer1="checked"
	end if
	if Session("EPQ30412100")="1" then
		strEPQ30412100answer1="checked"
	end if
	if Session("EPQ30412110")="77" then
		strEPQ30412110answer1="checked"
	end if
	if Session("EPQ30412120")="1" then
		strEPQ30412120answer1="checked"
	end if
	if Session("EPQ30412130")="1" then
		strEPQ30412130answer1="checked"
	end if
	if Session("EPQ30412140")="1" then
		strEPQ30412140answer1="checked"
	end if
	if Session("EPQ30412150")="1" then
		strEPQ30412150answer1="checked"
	end if
	if Session("EPQ30412160")="1" then
		strEPQ30412160answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30412000") = Request.Form("EPQ30412000")
	Session("EPQ30412010") = Request.Form("EPQ30412010")
	Session("EPQ30412020") = Request.Form("EPQ30412020")
	Session("EPQ30412030") = Request.Form("EPQ30412030")
	Session("EPQ30412040") = Request.Form("EPQ30412040")
	Session("EPQ30412050") = Request.Form("EPQ30412050")
	Session("EPQ30412060") = Request.Form("EPQ30412060")
	Session("EPQ30412070") = Request.Form("EPQ30412070")

	Session("EPQ30412090") = Request.Form("EPQ30412090")
	Session("EPQ30412100") = Request.Form("EPQ30412100")
	Session("EPQ30412110") = Request.Form("EPQ30412110")
	Session("EPQ30412120") = Request.Form("EPQ30412120")
	Session("EPQ30412130") = Request.Form("EPQ30412130")
	Session("EPQ30412140") = Request.Form("EPQ30412140")
	Session("EPQ30412150") = Request.Form("EPQ30412150")
	Session("EPQ30412160") = Request.Form("EPQ30412160")

end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Response.Redirect "pastmedicalmaster.asp"
end if

if Session("ReturnID")<> "1" then
	if Session("EPQ30402050") <> "1" then 
	Session("Page")="7"
	Response.Redirect "pastmedicalmaster.asp"
	end if
end if
if Session("ReturnID")="1" then
	if Session("EPQ30402050") <> "1" then 
	Session("Page")="5"
	Response.Redirect "pastmedicalmaster.asp"
	end if
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30412010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="7"
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


    <form action="pastmedical6.asp" method="post" id="formQuestion" name="formQuestion">
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
Which of the following <u>brain or neurological problems</u> did the doctor say you had? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30412140" value="1" id="EPQ30412140" class="atLeastOneCheckboxRequired" <%=strEPQ30412140answer1%>>
		<label for="EPQ30412140">Chiari malformation</label><br>
		<input type="checkbox" name="EPQ30412090" value="1" id="EPQ30412090" class="atLeastOneCheckboxRequired" <%=strEPQ30412090answer1%>>
		<label for="EPQ30412090">Dementia including Alzheimer’s disease</label><br>
		<input type="checkbox" name="EPQ30412030" value="1" id="EPQ30412030" class="atLeastOneCheckboxRequired" <%=strEPQ30412030answer1%>>
		<label for="EPQ30412030">Epilepsy or other seizure disorder</label><br>

		<input type="checkbox" name="EPQ30412150" value="1" id="EPQ30412150" class="atLeastOneCheckboxRequired" <%=strEPQ30412150answer1%>>
		<label for="EPQ30412150">Factor V</label><br>

		<input type="checkbox" name="EPQ30412010" value="1" id="EPQ30412010" class="atLeastOneCheckboxRequired" <%=strEPQ30412010answer1%>>
		<label for="EPQ30412010">Headaches, migraine</label><br>
		<input type="checkbox" name="EPQ30412120" value="1" id="EPQ30412120" class="atLeastOneCheckboxRequired" <%=strEPQ30412120answer1%>>
		<label for="EPQ30412120">Headaches, other than migraine</label><br>

		<input type="checkbox" name="EPQ30412160" value="1" id="EPQ30412160" class="atLeastOneCheckboxRequired" <%=strEPQ30412160answer1%>>
		<label for="EPQ30412160">Meniere's disease </label><br>
		<input type="checkbox" name="EPQ30412050" value="1" id="EPQ30412050" class="atLeastOneCheckboxRequired" <%=strEPQ30412050answer1%>>
		<label for="EPQ30412050">Mini-stroke or transient ischemic attack (TIA)</label><br>

</span>

<span class="column2">

		<input type="checkbox" name="EPQ30412020" value="1" id="EPQ30412020" class="atLeastOneCheckboxRequired" <%=strEPQ30412020answer1%>>
		<label for="EPQ30412020">Multiple sclerosis (MS)</label><br>
		<input type="checkbox" name="EPQ30412060" value="1" id="EPQ30412060" class="atLeastOneCheckboxRequired" <%=strEPQ30412060answer1%>>
		<label for="EPQ30412060">Parkinson's disease</label>
<br>
		<input type="checkbox" name="EPQ30412040" value="1" id="EPQ30412040" class="atLeastOneCheckboxRequired" <%=strEPQ30412040answer1%>>
		<label for="EPQ30412040">Peripheral neuropathy</label><br>
		<input type="checkbox" name="EPQ30412070" value="1" id="EPQ30412070" class="atLeastOneCheckboxRequired" <%=strEPQ30412070answer1%>>
		<label for="EPQ30412070">Stroke or brain hemorrhage</label><br>
		<input type="checkbox" name="EPQ30412130" value="1" id="EPQ30412130" class="atLeastOneCheckboxRequired" <%=strEPQ30412130answer1%>>
		<label for="EPQ30412130">Tumor that was not cancer including<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;meningioma, nerve sheath tumor, or schwannoma</label><br>
		<input type="checkbox" name="EPQ30412100" value="1" id="EPQ30412100" class="atLeastOneCheckboxRequired" <%=strEPQ30412100answer1%>>
		<label for="EPQ30412100">Other, specify:</label>	
	<input id="EPQ30412000" type="text" maxlength="75" size="15" name="EPQ30412000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30412000")%>' ><br>

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
