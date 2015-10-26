<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
	if Session("EPQ30104000")="1" then
		strEPQ30104000single="checked"
	end if
	if Session("EPQ30104000")="2" then
		strEPQ30104000married="checked"
	end if
	if Session("EPQ30104000")="3" then
		strEPQ30104000widowed="checked"
	end if
	if Session("EPQ30104000")="4" then
		strEPQ30104000cohabitating="checked"
	end if
	if Session("EPQ30104000")="5" then
		strEPQ30104000divorced="checked"
	end if
	if Session("EPQ30104000")="99" then
		strEPQ30104000prefer="checked"
	end if


	if Session("EPQ30105000")="1" then
		strEPQ301050006thgrade="checked"
	end if
	if Session("EPQ30105000")="2" then
		strEPQ301050008thgrade="checked"
	end if
	if Session("EPQ30105000")="3" then
		strEPQ3010500010thgrade="checked"
	end if
	if Session("EPQ30105000")="4" then
		strEPQ3010500012thgrade="checked"
	end if
	if Session("EPQ30105000")="5" then
		strEPQ30105000ged="checked"
	end if
	if Session("EPQ30105000")="6" then
		strEPQ30105000vocational="checked"
	end if
	if Session("EPQ30105000")="7" then
		strEPQ30105000somecollege="checked"
	end if
	if Session("EPQ30105000")="8" then
		strEPQ30105000graduatedcollege="checked"
	end if
	if Session("EPQ30105000")="9" then
		strEPQ30105000postgraduate="checked"
	end if
	if Session("EPQ30105000")="10" then
		strEPQ30105000anothercountry="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30104000string")= ""
	Session("EPQ30105000string")= ""


	Session("EPQ30104000") = Request.Form("EPQ30104000")
	if Session("EPQ30104000") = "1" then 
		Session("EPQ30104000string")= "Single"
	end if
	if Session("EPQ30104000") = "2" then 
		Session("EPQ30104000string")= "Married"
	end if
	if Session("EPQ30104000") = "3" then 
		Session("EPQ30104000string")= "Widowed"
	end if
	if Session("EPQ30104000") = "4" then 
		Session("EPQ30104000string")= "Cohabitating/Living Together"
	end if
	if Session("EPQ30104000") = "5" then 
		Session("EPQ30104000string")= "Divorced/Separated"
	end if
	if Session("EPQ30104000") = "99" then 
		Session("EPQ30104000string")= "Refuse to answer"
	end if

	Session("EPQ30105000") = Request.Form("EPQ30105000")


	if Session("EPQ30105000") = "1" then 
		Session("EPQ30105000string")= "Less than 6th Grade"
	end if
	if Session("EPQ30105000") = "2" then 
		Session("EPQ30105000string")= "6th-8th Grade"
	end if
	if Session("EPQ30105000") = "3" then 
		Session("EPQ30105000string")= "9th-10th Grade"
	end if
	if Session("EPQ30105000") = "4" then 
		Session("EPQ30105000string")= "11th-12th Grade"
	end if
	if Session("EPQ30105000") = "5" then 
		Session("EPQ30105000string")= "GED"
	end if
	if Session("EPQ30105000") = "6" then 
		Session("EPQ30105000string")= "Vocational sch"
	end if
	if Session("EPQ30105000") = "7" then 
		Session("EPQ30105000string")= "Some college"
	end if
	if Session("EPQ30105000") = "8" then 
		Session("EPQ30105000string")= "College grad"
	end if
	if Session("EPQ30105000") = "9" then 
	Session("EPQ30105000string")= "Post grad or prof school"
	end if

	Session("EPQ30105001") = Request.Form("EPQ30105001")

	if Session("EPQ30105000") = "10" then 
		Session("EPQ30105000string")= "Education outside of US for "&Session("EPQ30105001")&" yrs"
	end if
end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		if Session("EPQ30102000")="1" then
		Session("Page")="1b"
		else
		Session("Page")="1"
		end if

		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30104000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30105000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30105000") <> "10" then 
		Session("EPQ30105001")= ""
	end if

	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
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
		
    <form action="demographics1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


  <fieldset>
    <legend class="QuestionBox">
      What is the last grade or level of school you have completed?<br>
    </legend>
 
    <div class="QuestionAnswersBox">
      <input type="radio" name="EPQ30105000" value="1" class="qTriggerOffOverseasSchool required" id="EPQ301050001" <%=strEPQ301050006thgrade%>>
      <label for="EPQ301050001">Grade school (1-5)</label><br>
      <input type="radio" name="EPQ30105000" value="2" class="qTriggerOffOverseasSchool" id="EPQ301050002" <%=strEPQ301050008thgrade%>>
      <label for="EPQ301050002">Middle school (6-8)</label><br>
      <input type="radio" name="EPQ30105000" value="3" class="qTriggerOffOverseasSchool" id="EPQ301050003" <%=strEPQ3010500010thgrade%>>
      <label for="EPQ301050003">Some high school (9-12)</label><br>
      <input type="radio" name="EPQ30105000" value="5" class="qTriggerOffOverseasSchool" id="EPQ301050005" <%=strEPQ30105000ged%>>
      <label for="EPQ301050005">Completed high school or GED or equivalent</label><br>
      <input type="radio" name="EPQ30105000" value="6" class="qTriggerOffOverseasSchool" id="EPQ301050006" <%=strEPQ30105000vocational%>>
      <label for="EPQ301050006">Technical or trade school</label><br>
      <input type="radio" name="EPQ30105000" value="7" class="qTriggerOffOverseasSchool" id="EPQ301050007" <%=strEPQ30105000somecollege%>>
      <label for="EPQ301050007">2 year college</label><br>
      <input type="radio" name="EPQ30105000" value="8" class="qTriggerOffOverseasSchool" id="EPQ301050008" <%=strEPQ30105000graduatedcollege%>>
      <label for="EPQ301050008">4 year college or university</label><br>
      <input type="radio" name="EPQ30105000" value="9" class="qTriggerOffOverseasSchool" id="EPQ301050009" <%=strEPQ30105000postgraduate%>>
      <label for="EPQ301050009">Graduate or professional school</label><br>
      <input type="radio" name="EPQ30105000" value="10" class="qTriggerOverseasSchool" id="EPQ3010500010" <%=strEPQ30105000anothercountry%>>
      <label for="EPQ3010500010">Attended school outside USA</label>
      <div class="hiddenQOverseasSchool">
        <label for="EPQ30105001">Please specify number of years completed:</label><br>
        <input id="EPQ30105001" type="text" size="1" name="EPQ30105001" class="yearsWithZero requiredIfPreviousRadio" maxlength="2" value=<%=Session("EPQ30105001")%>> years
      </div>
      <br><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>
</div> <!-- [ /#formBlock ] -->
	
	<div id="buttonBox">
	 <!--#include file="buttonbox3.asp"-->

	</div> <!-- [ /#buttonBox ] -->

	</form>
  </div> <!-- [ /#formWrapper ] -->
  
 
 <div id="rightbar">
 <!--#include file="navigationmenu.asp"-->
	  
 </div> <!-- [ /#rightbar ] -->
 </div> <!-- [ /#wrapper ] -->
	
  <script>
  if ( $('#EPQ30105001').attr('value').length > 0 ) {
    $('.hiddenQOverseasSchool').show();
  }
  </script>
 </body>
</html>
