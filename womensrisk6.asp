
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30626000")="1" then
		strEPQ30626000answer1="checked"
	end if
	if Session("EPQ30627000")="1" then
		strEPQ30627000answer1="checked"
	end if
	if Session("EPQ30628000")="1" then
		strEPQ30628000answer1="checked"
	end if
	if Session("EPQ30629000")="1" then
		strEPQ30629000answer1="checked"
	end if
	if Session("EPQ30630000")="1" then
		strEPQ30630000answer1="checked"
	end if
	if Session("EPQ30632000")="1" then
		strEPQ30632000answer1="checked"
	end if

	if Session("EPQ30626010")="1" then
		strEPQ30626010answer1="checked"
	end if
	if Session("EPQ30626010")="2" then
		strEPQ30626010answer2="checked"
	end if
	if Session("EPQ30627010")="1" then
		strEPQ30627010answer1="checked"
	end if
	if Session("EPQ30627010")="2" then
		strEPQ30627010answer2="checked"
	end if
	if Session("EPQ30628010")="1" then
		strEPQ30628010answer1="checked"
	end if
	if Session("EPQ30628010")="2" then
		strEPQ30628010answer2="checked"
	end if
	if Session("EPQ30629010")="1" then
		strEPQ30629010answer1="checked"
	end if
	if Session("EPQ30629010")="2" then
		strEPQ30629010answer2="checked"
	end if
	if Session("EPQ30630010")="1" then
		strEPQ30630010answer1="checked"
	end if
	if Session("EPQ30630010")="2" then
		strEPQ30630010answer2="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30626000") = Request.Form("EPQ30626000")
	Session("EPQ30627000") = Request.Form("EPQ30627000")
	Session("EPQ30628000") = Request.Form("EPQ30628000")
	Session("EPQ30629000") = Request.Form("EPQ30629000")
	Session("EPQ30630000") = Request.Form("EPQ30630000")
	Session("EPQ30631000") = Request.Form("EPQ30631000")
	Session("EPQ30632000") = Request.Form("EPQ30632000")
	Session("EPQ30626010") = Request.Form("EPQ30626010")
	Session("EPQ30627010") = Request.Form("EPQ30627010")
	Session("EPQ30628010") = Request.Form("EPQ30628010")
	Session("EPQ30629010") = Request.Form("EPQ30629010")
	Session("EPQ30630010") = Request.Form("EPQ30630010")

end if


if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

if Session("TEMPEPQ30603000")="4" then
	Session("Page")="5"
	Response.Redirect "womensriskmaster.asp"
end if

		if Session("EPQ30602000") = "1" then 
		Session("Page")="3"
		Response.Redirect "womensriskmaster.asp"
		end if

		if Session("EPQ30602000") = "0" then 
		Session("Page")="5"
		Response.Redirect "womensriskmaster.asp"
		end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30608000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("EPQ30626000")<>"1" then

		Session.Contents.Remove("EPQ30610001")
		Session.Contents.Remove("EPQ30610002")
		Session.Contents.Remove("EPQ30610003")
		Session.Contents.Remove("EPQ30610004")
		Session.Contents.Remove("EPQ30610005")
		Session.Contents.Remove("EPQ30610006")
		Session.Contents.Remove("EPQ30610007")
		Session.Contents.Remove("EPQ30610008")
		Session.Contents.Remove("EPQ30610009")
		Session.Contents.Remove("EPQ30610010")
		Session.Contents.Remove("EPQ30611000")
		Session.Contents.Remove("EPQ30612000")

	end if

	if Session("EPQ30627000")<>"1" then

		Session.Contents.Remove("EPQ30614001")
		Session.Contents.Remove("EPQ30614002")
		Session.Contents.Remove("EPQ30614003")
		Session.Contents.Remove("EPQ30614004")
		Session.Contents.Remove("EPQ30614005")
		Session.Contents.Remove("EPQ30614006")
		Session.Contents.Remove("EPQ30614000specify")
		Session.Contents.Remove("EPQ30614007")
		Session.Contents.Remove("EPQ30614008")
		Session.Contents.Remove("EPQ30615000")
		Session.Contents.Remove("EPQ30616000")


	end if 

	if Session("EPQ30626000") = "1" then 
	Session("Page")="7"
	Response.Redirect "womensriskmaster.asp"
	end if
	

	if Session("EPQ30627000") = "1" then
	Session("Page")="10"
	Response.Redirect "womensriskmaster.asp"
	end if



	Session("Page")="12"
	Response.Redirect "womensriskmaster.asp"


	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "womensriskmaster.asp"
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
    <form action="womensrisk6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class="eitherNoneOrChecked">
  <legend class='QuestionBox'>
    Which hormones have you <u>ever taken</u>? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ30626000" value="1" class="qTrigger" id="EPQ30626000" <%=strEPQ30626000answer1%>>
		<label for="EPQ30626000">Hormones usually prescribed for menopause or perimenopause, including hormone replacement therapy (HRT)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (such as Climara, Estrace, Premarin, Combipatch, Premphase, or Prempro) and “bio-identical” hormones.</label><br>

	<div class="hiddenQ">
	<div class="QuestionAnswersBox">
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30626010" value="1" class="requiredIfBranchActive" id="EPQ306260101" <%=strEPQ30626010answer1%>>
		<label for="EPQ306260101">Taking now</label><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30626010" value="2" id="EPQ306260102" <%=strEPQ30626010answer2%>>
		<label for="EPQ306260102">Taken in the past but not taking now</label><br>
	</div><!-- [ /#AnswerBox] --> 
	</div>

		<input type="checkbox" name="EPQ30627000" value="1" class="qTrigger2" id="EPQ30627000" <%=strEPQ30627000answer1%>>
		<label for="EPQ30627000">Hormones usually prescribed for birth control, including birth control pills, Depo-Provera, or Lunelle shots,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Norplant, the Ortho Evra patch, or Nuva Ring</label><br>

	<div class="hiddenQ2">
	<div class="QuestionAnswersBox">
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30627010" value="1" class="requiredIfBranchActive" id="EPQ306270101" <%=strEPQ30627010answer1%>>
		<label for="EPQ306270101">Taking now</label><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30627010" value="2" id="EPQ306270102" <%=strEPQ30627010answer2%>>
		<label for="EPQ306270102">Taken in the past but not taking now</label><br>
	</div><!-- [ /#AnswerBox] -->
	</div>

		<input type="checkbox" name="EPQ30628000" value="1" class="qTrigger3" id="EPQ30628000" <%=strEPQ30628000answer1%>>
		<label for="EPQ30628000">Hormones usually prescribed for cancer treatment or prevention, including Tamoxifen, Arimidex, and Femara</label><br>

	<div class="hiddenQ3">
	<div class="QuestionAnswersBox">
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30628010" value="1" class="requiredIfBranchActive" id="EPQ306280101" <%=strEPQ30628010answer1%>>
		<label for="EPQ306280101">Taking now</label><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30628010" value="2" id="EPQ306280102" <%=strEPQ30628010answer2%>>
		<label for="EPQ306280102">Taken in the past but not taking now</label><br>
	</div><!-- [ /#AnswerBox] -->
	</div>

		<input type="checkbox" name="EPQ30629000" value="1" class="qTrigger4" id="EPQ30629000" <%=strEPQ30629000answer1%>>
		<label for="EPQ30629000">Hormones or medications usually prescribed for infertility (to try to get pregnant) including Clomid, Repronex,<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Glucophage, Parlodel, Lupron, Pergonal, Gonal-F, Pregnyl, Provera, etc.</label><br>

	<div class="hiddenQ4">
	<div class="QuestionAnswersBox">
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30629010" value="1" class="requiredIfBranchActive" id="EPQ306290101" <%=strEPQ30629010answer1%>>
		<label for="EPQ306290101">Taking now</label><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30629010" value="2" id="EPQ306290102" <%=strEPQ30629010answer2%>>
		<label for="EPQ306290102">Taken in the past but not taking now</label><br>
	</div><!-- [ /#AnswerBox] -->
	</div>

		<input type="checkbox" name="EPQ30630000" value="1" class="qTrigger5" id="EPQ30630000" <%=strEPQ30630000answer1%>>
		<label for="EPQ30630000">Other hormones, specify: </label>	
    <input id="EPQ30631000" type="text" maxlength="75" size="15" name="EPQ30631000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30631000")%>'><br>

	<div class="hiddenQ5">
	<div class="QuestionAnswersBox">
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30630010" value="1" class="requiredIfBranchActive" id="EPQ306300101" <%=strEPQ30630010answer1%>>
		<label for="EPQ306300101">Taking now</label><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="EPQ30630010" value="2" id="EPQ306300102" <%=strEPQ30630010answer2%>>
		<label for="EPQ306300102">Taken in the past but not taking now</label><br>
	</div><!-- [ /#AnswerBox] -->
	</div>
<br>
		<input type="radio" name="EPQ30632000" value="1" id="EPQ30632000" <%=strEPQ30632000answer1%>>
		<label for="EPQ30632000">None</label><br>

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
