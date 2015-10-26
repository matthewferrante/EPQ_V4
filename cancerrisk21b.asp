
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("THRC30605000") ="1" then
		strTHRC30605000answer1="checked"
	end if
	if Session("THRC30605000") ="2" then
		strTHRC30605000answer2="checked"
	end if
	if Session("THRC30605000") ="0" then
		strTHRC30605000answer3="checked"
	end if
	if Session("THRC30605100") ="1" then
		strTHRC30605100answer1="checked"
	end if
	if Session("THRC30605100") ="2" then
		strTHRC30605100answer2="checked"
	end if
	if Session("THRC30605100") ="0" then
		strTHRC30605100answer3="checked"
	end if
	if Session("THRC30605200") ="1" then
		strTHRC30605200answer1="checked"
	end if
	if Session("THRC30605200") ="2" then
		strTHRC30605200answer2="checked"
	end if
	if Session("THRC30605200") ="0" then
		strTHRC30605200answer3="checked"
	end if



end if
	
if Request.Form("ispostback")="1" then
	Session("THRC30605000") = Request.Form("THRC30605000")
	Session("THRC30605100") = Request.Form("THRC30605100")
	Session("THRC30605200") = Request.Form("THRC30605200")


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="21"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	if Session("THRC30605000")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605000")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605100")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="1" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if
	if Session("THRC30605200")="2" then
		Session("Page")="21b1"
		Response.Redirect "cancerriskmaster.asp"
	end if

	if Session("THRC30605000")="0" then

		Session.Contents.Remove("THRC30605300")

	end if

	if Session("THRC30605100")="0" then

		Session.Contents.Remove("THRC30605400")

	end if
	if Session("THRC30605200")="0" then

		Session.Contents.Remove("THRC30605500")

	end if




	Session("Page")="40"
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


    <form action="cancerrisk21b.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->	

	<fieldset>
  <div id="SpecialNote">
<b>The next questions refer to your lifetime use of alcoholic beverages.</b>
</div><br>
  <div class="QuestionBox">
Do you now drink or have you previously drank alcoholic beverages?<br><legend>
	</legend></div>

	<div class="QuestionAnswersBox">Beer or malt liquor<br>
		<input type="radio" name="THRC30605000" value="1" id="THRC306050001" class="required" <%=strTHRC30605000answer1%>>
		<label for="THRC306050001">Yes, currently</label><br>
		<input type="radio" name="THRC30605000" value="2" id="THRC306050002" <%=strTHRC30605000answer2%>>
		<label for="THRC306050002">Yes, formerly</label><br>
		<input type="radio" name="THRC30605000" value="0" id="THRC306050003" <%=strTHRC30605000answer3%>>
		<label for="THRC306050003">No, never</label><br>
	</div><!-- [ /#AnswerBox] -->
	<div class="QuestionAnswersBox">Wine or wine coolers<br>
		<input type="radio" name="THRC30605100" value="1" id="THRC306051001" class="required" <%=strTHRC30605100answer1%>>
		<label for="THRC306051001">Yes, currently</label><br>
		<input type="radio" name="THRC30605100" value="2" id="THRC306051002" <%=strTHRC30605100answer2%>>
		<label for="THRC306051002">Yes, formerly</label><br>
		<input type="radio" name="THRC30605100" value="0" id="THRC306051003" <%=strTHRC30605100answer3%>>
		<label for="THRC306051003">No, never</label><br>

	</div><!-- [ /#AnswerBox] -->
	<div class="QuestionAnswersBox">Liquor or cocktails<br>
		<input type="radio" name="THRC30605200" value="1" id="THRC306052001" class="required" <%=strTHRC30605200answer1%>>
		<label for="THRC306052001">Yes, currently</label><br>
		<input type="radio" name="THRC30605200" value="2" id="THRC306052002" <%=strTHRC30605200answer2%>>
		<label for="THRC306052002">Yes, formerly</label><br>
		<input type="radio" name="THRC30605200" value="0" id="THRC306052003" <%=strTHRC30605200answer3%>>
		<label for="THRC306052003">No, never</label><br>

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
