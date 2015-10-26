
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30401001")="1" then
		strEPQ30401001answer1="checked"
	end if
	if Session("EPQ30401002")="1" then
		strEPQ30401002answer1="checked"
	end if
	if Session("EPQ30401003")="1" then
		strEPQ30401003answer1="checked"
	end if
	if Session("EPQ30401004")="1" then
		strEPQ30401004answer1="checked"
	end if
	if Session("EPQ30401005")="1" then
		strEPQ30401005answer1="checked"
	end if

	if Session("GI10401020")="1" then
		strGI10401020answer1="checked"
	end if
	if Session("GI10401010")="1" then
		strGI10401010answer1="checked"
	end if
	if Session("GI10401030")="1" then
		strGI10401030answer1="checked"
	end if
	if Session("GI10401040")="1" then
		strGI10401040answer1="checked"
	end if
	if Session("GI10401050")="1" then
		strGI10401050answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30401001") = Request.Form("EPQ30401001")
	Session("EPQ30401002") = Request.Form("EPQ30401002")
	Session("EPQ30401003") = Request.Form("EPQ30401003")
	Session("EPQ30401004") = Request.Form("EPQ30401004")
	Session("EPQ30401005") = Request.Form("EPQ30401005")
	Session("EPQ30401000") = Request.Form("EPQ30401000")

	Session("GI10401020") = Request.Form("GI10401020")
	Session("GI10401010") = Request.Form("GI10401010")
	Session("GI10401030") = Request.Form("GI10401030")
	Session("GI10401040") = Request.Form("GI10401040")
	Session("GI10401050") = Request.Form("GI10401050")
	Session("GI10401060_TXT") = Request.Form("GI10401060_TXT")
 
end if


if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		if Session("EPQ30310000")<>"1" then
		Session("Page")=1
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		else
		Session("Page")=5
		Session("PastMedicalHistorySectionStatus")=""
		Response.Redirect "personalhistorycancermaster.asp"
		end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30401001")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="1b"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
	end if
	end if


	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "pastmedicalhistorymaster.asp"
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
    <form action="pastmedical1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
Did a doctor ever say that you have any of the following infections? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30401002" value="1" 
id="EPQ30401002" <%=strEPQ30401002answer1%>>
		<label for="EPQ30401002">AIDS / HIV</label><br>
		<input type="checkbox" name="EPQ30401001" value="1" id="EPQ30401001"  <%=strEPQ30401001answer1%>>
		<label for="EPQ30401001">Helicobacter pylori (infection causing ulcer)</label><br>
		<input type="checkbox" class="qTrigger2" name="EPQ30401003" value="1" id="EPQ30401003" <%=strEPQ30401003answer1%>>
		<label for="EPQ30401003">Hepatitis</label><br>
		<input type="checkbox" name="EPQ30401004" value="1" id="EPQ30401004" <%=strEPQ30401004answer1%>>
		<label for="EPQ30401004">Other, specify:</label>
		<input id="EPQ30401000" type="text" maxlength="74" size="30" name="EPQ30401000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30401000")%>' ><br>
		<input type="radio" name="EPQ30401005" value="1" id="EPQ30401005" <%=strEPQ30401005answer1%>>
		<label for="EPQ30401005">No, I have never had any of these problems</label><br>

</span>
<span class="column2">
</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<br>


<div class="hiddenQ2">	
  <fieldset">
    <legend class="QuestionBox">
Please indicate the type of hepatitis you had. Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox eitherNoneOrChecked requiredIfBranchActive">
		<input type="checkbox" name="GI10401010" value="1" 
id="GI10401010" <%=strGI10401010answer1%>>
		<label for="GI10401010">Hepatitis A</label><br>
		<input type="checkbox" name="GI10401020" value="1" id="GI10401020"  <%=strGI10401020answer1%>>
		<label for="GI10401020">Hepatitis B</label><br>
		<input type="checkbox" name="GI10401030" value="1" id="GI10401030" <%=strGI10401030answer1%>>
		<label for="GI10401030">Hepatitis C</label><br>
		<input type="checkbox" name="GI10401040" value="1" id="GI10401040" <%=strGI10401040answer1%>>
		<label for="GI10401040">Other, specify:</label>
		<input id="GI10401060_TXT" type="text" maxlength="74" size="30" name="GI10401060_TXT" class="requiredIfPreviousCheckbox" value='<%=Session("GI10401060_TXT")%>' ><br>
		<input type="radio" name="GI10401050" value="1" id="GI10401050" <%=strGI10401050answer1%>>
		<label for="GI10401050">Don't Know</label><br>

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
