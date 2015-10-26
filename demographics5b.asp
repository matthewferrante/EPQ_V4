
<%

Session("DemographicsStatus")="Current"
Session("PageHolder")="Demographics"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30102000")="1" then
		strEPQ30102000yes="checked"
	end if
	if Session("EPQ30102000")="0" then
		strEPQ30102000no="checked"
	end if

	if Session("EPQ30103010")="1" then
		strEPQ30103010answer1="checked"
	end if
	if Session("EPQ30103020")="1" then
		strEPQ30103020answer1="checked"
	end if
	if Session("EPQ30103030")="1" then
		strEPQ30103030answer1="checked"
	end if
	if Session("EPQ30103040")="1" then
		strEPQ30103040answer1="checked"
	end if
	if Session("EPQ30103050")="1" then
		strEPQ30103050answer1="checked"
	end if
	if Session("EPQ30103060")="1" then
		strEPQ30103060answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30102000") = Request.Form("EPQ30102000")

	Session("EPQ30103010") = Request.Form("EPQ30103010")
	Session("EPQ30103020") = Request.Form("EPQ30103020")
	Session("EPQ30103030") = Request.Form("EPQ30103030")
	Session("EPQ30103040") = Request.Form("EPQ30103040")
	Session("EPQ30103050") = Request.Form("EPQ30103050")
	Session("EPQ30103060") = Request.Form("EPQ30103060")
	Session("EPQ30103070_TXT") = server.htmlencode(Request.Form("EPQ30103070_TXT"))
end if

if Request.Form("StopID")="1" then
		Session("DemograhicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="5"
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

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


    <form action="demographics5b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->

  <fieldset>
    <legend class="QuestionBox">
      Do you consider yourself Hispanic or Latino?<br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="radio" name="EPQ30102000" value="1" id="EPQ30102000Y" class="required" <%=strEPQ30102000yes%>>
      <label for="EPQ30102000Y">Yes</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="radio" name="EPQ30102000" value="0" id="EPQ30102000N" <%=strEPQ30102000no%>>
      <label for="EPQ30102000N">No</label><br>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>	




		
  <fieldset>
    <legend class="QuestionBox">
      Which group or groups best represent your Hispanic/Latino heritage? Check all that apply. <br>
    </legend>
    <div class="QuestionAnswersBox">
      <input type="checkbox" name="EPQ30103010" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103010" <%=strEPQ30103010answer1%>>
      <label for="EPQ30103010">Puerto Rican</label><br>

      <input type="checkbox" name="EPQ30103020" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103020" <%=strEPQ30103020answer1%>>
      <label for="EPQ30103020">Cuban</label><br>

      <input type="checkbox" name="EPQ30103030" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103030" <%=strEPQ30103030answer1%>>
      <label for="EPQ30103030">Dominican (Republic)</label><br>

      <input type="checkbox" name="EPQ30103040" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103040" <%=strEPQ30103040answer1%>>
      <label for="EPQ30103040">Mexican / Mexican American / Chicano</label><br>

      <input type="checkbox" name="EPQ30103050" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103050" <%=strEPQ30103050answer1%>>
      <label for="EPQ30103050">Central or South American, other than Brazilian</label><br>

      <input type="checkbox" name="EPQ30103060" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103060" <%=strEPQ30103060answer1%>>
      <label for="EPQ30103060">Other, specify: </label>
      <input type="text" maxlength="30" size="20" name="EPQ30103070_TXT" id="EPQ30103070_TXT" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30103070_TXT")%>' > <br>
      <input type="radio" name="EPQ30103070" value="1" class="atLeastOneCheckboxRequired" id="EPQ30103070" <%=strEPQ30103070answer1%>>
      <label for="EPQ30103070">Prefer not to answer</label><br>

    </div>
	</fieldset><!-- [ /#AnswerBox] -->
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
