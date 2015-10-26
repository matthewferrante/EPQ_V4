
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("THRC30604200")="1" then
		strTHRC30604200answer1="checked"
	end if
	if Session("THRC30604200")="2" then
		strTHRC30604200answer2="checked"
	end if
	if Session("THRC30604200")="3" then
		strTHRC30604200answer3="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("THRC30604200") = Request.Form("THRC30604200")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	if Session("THRC30400050")="1" then
		Session("Page")="17b5"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400040")="1" then
		Session("Page")="17b4"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400030")="1" then
		Session("Page")="17b3"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30400020")="1" then
		Session("Page")="17b2"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30400010")="1" then
		Session("Page")="17b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

		Session("ReturnID")="1"
		Session("Page")="17b"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then



	if Session("EPQ31147000")="1" then
	Session("Page")="18"
	else
	Session("Page")="19"
	end if

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
    <form action="cancerrisk17b6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset>
  <legend class='QuestionBox'>
		<label for="EPQ30606000">How long did you use <%=Session("THRC30500000")%>?</label><br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="THRC30604200" value="1" id="THRC306042001" class="required" <%=strTHRC30604200answer1%>>
		<label for="THRC306042001">Less than 3 months</label><br>
		<input type="radio" name="THRC30604200" value="2" id="THRC306042002" <%=strTHRC30604200answer2%>>
		<label for="THRC306042002">3-6 months</label><br>
		<input type="radio" name="THRC30604200" value="3" id="THRC306042003" <%=strTHRC30604200answer3%>>
		<label for="THRC306042003">Longer than 6 months</label><br>
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
