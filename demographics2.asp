<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
	if Session("EPQ30106000")="1" then
		strEPQ30106000employed="checked"
	end if
	if Session("EPQ30106000")="2" then
		strEPQ30106000parttime="checked"
	end if
	if Session("EPQ30106000")="3" then
		strEPQ30106000betweenjobs="checked"
	end if
	if Session("EPQ30106000")="4" then
		strEPQ30106000student="checked"
	end if
	if Session("EPQ30106000")="5" then
		strEPQ30106000unabletowork="checked"
	end if
	if Session("EPQ30106000")="6" then
		strEPQ30106000homemaker="checked"
	end if
	if Session("EPQ30106000")="7" then
		strEPQ30106000retired="checked"
	end if
	if Session("EPQ30106000")="8" then
		strEPQ30106000other="checked"
	end if


end if


if Request.Form("ispostback")="1" then
	Session("EPQ30106000string")= ""

	Session("EPQ30106000") = Request.Form("EPQ30106000")

	if Session("EPQ30106000") = "1" then
		Session("EPQ30106000string")= "Full time"
	end if
	if Session("EPQ30106000") = "2" then
		Session("EPQ30106000string")= "Part time"
	end if
	if Session("EPQ30106000") = "3" then
		Session("EPQ30106000string")= "Between jobs"
	end if
	if Session("EPQ30106000") = "4" then
		Session("EPQ30106000string")= "Student"
	end if
	if Session("EPQ30106000") = "5" then
		Session("EPQ30106000string")= "Unable to work"
	end if
	if Session("EPQ30106000") = "6" then
		Session("EPQ30106000string")= "Homemaker"
	end if
	if Session("EPQ30106000") = "7" then
		Session("EPQ30106000string")= "Retired"
	end if
	if Session("EPQ30106000") = "8" then
		Session("EPQ30106000string")= "Other"
	end if
	Session("EPQ30107000") = Request.Form("EPQ30107000")
	Session("EPQ30108000") = Request.Form("EPQ30108000")
	Session("EPQ30109000") = Request.Form("EPQ30109000")

end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30106000")) = 0 then
		 <!--#include file="questionscomplete.asp"-->
	else
	end if

	Session("Page")="3"

	if Session("EPQ30106000")="1" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="2b"
	end if
	if Session("EPQ30106000")="2" AND Session("SurveyVersion")="Thoracic" then
		Session("Page")="2b"
	end if

	if Session("EPQ30106000")<>"1" AND  Session("EPQ30106000")<>"2" then
		Session.Contents.Remove("THRC30104000")
	end if

	if Session("EPQ30106000")="3" then
		Session("Page")="3"
		Response.Redirect "demographicsmaster.asp"
	end if


Response.Redirect "demographicsmaster.asp"



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

    <form action="demographics2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
  <fieldset>
    <legend class="QuestionBox">
      Which of the following best describes your employment status?<br>
    </legend>
    <div class="QuestionAnswersBox">
      <span class="column1">
      <input type="radio" name="EPQ30106000" value="1" id="EPQ301060001" class="qTrigger qTriggerOff2 required" <%=strEPQ30106000employed%> >
      <label for="EPQ301060001">Employed full-time</label><br>

      <input type="radio" name="EPQ30106000" value="2" id="EPQ301060002" class="qTrigger qTriggerOff2" <%=strEPQ30106000parttime%> >
      <label for="EPQ301060002">Employed part-time</label><br>

      <input type="radio" name="EPQ30106000" value="3" id="EPQ301060003" class="qTrigger2 qTriggerOff" <%=strEPQ30106000betweenjobs%> >
      <label for="EPQ301060003">Between jobs</label><br>

      <input type="radio" name="EPQ30106000" value="4" id="EPQ301060004" class="qTrigger2 qTriggerOff" <%=strEPQ30106000student%> >
      <label for="EPQ301060004">Student</label><br>

      </span>
      <span class="column2">
      <input type="radio" name="EPQ30106000" value="5" id="EPQ301060005" class="qTriggerOff qTriggerOff2" <%=strEPQ30106000unabletowork%> >
      <label for="EPQ301060005">Unable to work</label><br>
      <input type="radio" name="EPQ30106000" value="6" id="EPQ301060006" class="qTriggerOff qTriggerOff2" <%=strEPQ30106000homemaker%> >
      <label for="EPQ301060006">Homemaker</label><br>
      <input type="radio" name="EPQ30106000" value="7" id="EPQ301060007" class="qTriggerOff qTriggerOff2" <%=strEPQ30106000retired%> >
      <label for="EPQ301060007">Retired</label><br>
      <input type="radio" name="EPQ30106000" value="8" id="EPQ301060008" class="qTriggerOff qTriggerOff2" <%=strEPQ30106000other%> >
      <label for="EPQ301060008">Other</label><br>
      </span>
    </div>
  </fieldset><!-- [ /#AnswerBox] -->

<div class="ResetBox">
</div>

<div class="hiddenQ">
  <fieldset>
    <legend class="QuestionBox">
      What is your <b><u>current</u></b> occupation? (Examples: Secondary school teacher, civil engineer, computer analyst,<br>building supervisor, lathe operator, truck driver, or licensed practical nurse)<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input id="EPQ30107000" type="text" size="110" maxlength="110" name="EPQ30107000" class="requiredIfBranchActive requiredCompleteTextShort2" value='<%=Session("EPQ30107000")%>' ><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>

  <fieldset>
    <legend class="QuestionBox">
      In what industry or business do you <b><u>currently</u></b> work? (Examples: Construction (general contracting), machine<br>repair shop, state highway police, print shop, local school district, law firm or commercial airline)<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input id="EPQ30108000" type="text" size="110" maxlength="110" name="EPQ30108000"  class="requiredIfBranchActive requiredCompleteTextShort2" value='<%=Session("EPQ30108000")%>' ><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>
</div>

<div class="hiddenQ2">
  <fieldset>
    <legend class="QuestionBox">
      What was your occupation at your <b><u>former</b></u> job? (Examples: Secondary school teacher, civil engineer, computer analyst, building supervisor, lathe operator, truck driver, or licensed practical nurse)<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input id="EPQ30109000" type="text" size="96" maxlength="96" name="EPQ30109000" class="requiredIfBranchActive requiredCompleteTextShort2" value='<%=Session("EPQ30109000")%>' ><br>
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
