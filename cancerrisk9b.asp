
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC30400010")="1" then
		strTHRC30400010answer1="checked"
	end if
	if Session("THRC30400020")="1" then
		strTHRC30400020answer1="checked"
	end if
	if Session("THRC30400030")="1" then
		strTHRC30400030answer1="checked"
	end if
	if Session("THRC30400040")="1" then
		strTHRC30400040answer1="checked"
	end if
	if Session("THRC30400050")="1" then
		strTHRC30400050answer1="checked"
	end if
	if Session("THRC30400060")="1" then
		strTHRC30400060answer1="checked"
	end if
	if Session("THRC30400070")="1" then
		strTHRC30400070answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("THRC30300000") = Request.Form("THRC30300000")
	Session("THRC30400010") = Request.Form("THRC30400010")
	Session("THRC30400020") = Request.Form("THRC30400020")
	Session("THRC30400030") = Request.Form("THRC30400030")
	Session("THRC30400040") = Request.Form("THRC30400040")
	Session("THRC30400050") = Request.Form("THRC30400050")
	Session("THRC30400060") = Request.Form("THRC30400060")
	Session("THRC30400070") = Request.Form("THRC30400070")
	Session("THRC30500000") = Request.Form("THRC30500000")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="9"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("THRC30400010")="1" then
		Session("Page")="9b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400010")<>"1" then

		Session.Contents.Remove("THRC30601000")

	end if

	if Session("THRC30400020")="1" then
		Session("Page")="9b2"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400020")<>"1" then

		Session.Contents.Remove("THRC30602000")

	end if

	if Session("THRC30400030")="1" then
		Session("Page")="9b3"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400030")<>"1" then

		Session.Contents.Remove("THRC30603000")

	end if

	if Session("THRC30400040")="1" then
		Session("Page")="9b4"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400040")<>"1" then

		Session.Contents.Remove("THRC30604000")

	end if

	if Session("THRC30400050")="1" then
		Session("Page")="9b5"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400050")<>"1" then

		Session.Contents.Remove("THRC30604100")

	end if

	if Session("THRC30400060")="1" then
		Session("Page")="9b6"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400060")<>"1" then

		Session.Contents.Remove("THRC30604200")

	end if


	Session("Page")="18"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
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

    <form action="cancerrisk9b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
  <legend class='QuestionBox'>
How old were you when you completely stopped smoking?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<label for="THRC30300000"> </label>
		<input type="text" size="3" maxlength="3" id="THRC30300000" name="THRC30300000" class="required smokingRange" maxlength="2" value=<%=Session("THRC30300000")%> > years old<br>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset class='eitherNoneOrChecked'>
  <legend class='QuestionBox'>
Which nicotine replacement product(s) or other medication(s) did you use to help you quit smoking?<br> Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="THRC30400010" value="1" id="THRC30400010" <%=strTHRC30400010answer1%>>
		<label for="THRC30400010">Nicotine gum</label><br>
		<input type="checkbox" name="THRC30400020" value="1" id="THRC30400020" <%=strTHRC30400020answer1%>>
		<label for="THRC30400020">Nicotine patch</label><br>
		<input type="checkbox" name="THRC30400030" value="1" id="THRC30400030" <%=strTHRC30400030answer1%>>
		<label for="THRC30400030">Nicotine lozenge (for example, Commit)</label><br>
		<input type="checkbox" name="THRC30400040" value="1" id="THRC30400040" <%=strTHRC30400040answer1%>>
		<label for="THRC30400040">Nicotine nasal spray or oral inhaler</label><br>
		<input type="checkbox" name="THRC30400050" value="1" id="THRC30400050" <%=strTHRC30400050answer1%>>
		<label for="THRC30400050">Prescription medication (such as Zyban, Wellbutrin, or Chantix)</label><br>

		<input type="checkbox" name="THRC30400060" value="1" id="THRC30400060" <%=strTHRC30400060answer1%>>
		<label for="THRC30400060">Other, specify: </label>
		<input type="text" maxlength="75" size="15" id="THRC30500000" name="THRC30500000" class="requiredIfPreviousCheckbox" value='<%=Session("THRC30500000")%>' > <br>

		<input type="radio" name="THRC30400070" value="1" id="THRC30400070" <%=strTHRC30400070answer1%>>
		<label for="THRC30400070">None</label><br>

	</legend><!-- [ /#AnswerBox] -->   
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
