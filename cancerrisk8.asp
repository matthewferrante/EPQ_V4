
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("HM11101000")="1" then
		strHM11101000answer1="checked"
	end if
	if Session("HM11101000")="2" then
		strHM11101000answer2="checked"
	end if
	if Session("HM11101000")="88" then
		strHM11101000answer88="checked"
	end if


	if Session("EPQ31140010")="1" then
		strEPQ31140010answer1="checked"
	end if
	if Session("EPQ31140020")="1" then
		strEPQ31140020answer1="checked"
	end if
	if Session("EPQ31140030")="1" then
 		strEPQ31140030answer1="checked" 
	end if
	if Session("EPQ31140040")="1" then
		strEPQ31140040answer1="checked"
	end if
	if Session("EPQ31140050")="1" then
		strEPQ31140050answer1="checked"
	end if
	if Session("EPQ31140060")="1" then
		strEPQ31140060answer1="checked"
	end if
	if Session("EPQ31140070")="1" then
		strEPQ31140070answer1="checked"
	end if
	if Session("EPQ31140080")="1" then
		strEPQ31140080answer1="checked"
	end if
	if Session("EPQ31140090")="1" then
		strEPQ31140090answer1="checked"
	end if
	if Session("EPQ31140100")="1" then
		strEPQ31140100answer1="checked"
	end if
	if Session("EPQ31140110")="1" then
		strEPQ31140110answer1="checked"
	end if
	if Session("EPQ31140120")="1" then
		strEPQ31140120answer1="checked"
	end if
	if Session("EPQ31140130")="1" then
		strEPQ31140130answer1="checked"
	end if
	if Session("EPQ31140140")="1" then
		strEPQ31140140answer1="checked"
	end if
	if Session("EPQ31140150")="1" then
		strEPQ31140150answer1="checked"
	end if
	if Session("EPQ31140160")="1" then
		strEPQ31140160answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31140010") = Request.Form("EPQ31140010")
	Session("EPQ31140020") = Request.Form("EPQ31140020")
	Session("EPQ31140030") = Request.Form("EPQ31140030")
	Session("EPQ31140040") = Request.Form("EPQ31140040")
	Session("EPQ31140050") = Request.Form("EPQ31140050")
	Session("EPQ31140060") = Request.Form("EPQ31140060")
	Session("EPQ31140070") = Request.Form("EPQ31140070")
	Session("EPQ31140080") = Request.Form("EPQ31140080")
	Session("EPQ31140090") = Request.Form("EPQ31140090")
	Session("EPQ31140100") = Request.Form("EPQ31140100")
	Session("EPQ31140110") = Request.Form("EPQ31140110")
	Session("EPQ31140120") = Request.Form("EPQ31140120")
	Session("EPQ31140130") = Request.Form("EPQ31140130")
	Session("EPQ31140140") = Request.Form("EPQ31140140")
	Session("EPQ31140150") = Request.Form("EPQ31140150")
	Session("EPQ31140160") = Request.Form("EPQ31140160")
	Session("HM11101000") = Request.Form("HM11101000")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="7"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31140010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="15"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
	end if
	end if

	Session("Page")="9"
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


    <form action="cancerrisk8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class='eitherNoneOrChecked'>
  <legend class='QuestionBox'>
During the past 12 months, have you used any of the following for your own health? Check all that apply. <br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="checkbox" name="EPQ31140160" value="1" id="EPQ31140160" <%=strEPQ31140160answer1%>>
		<label for="EPQ31140160">Acupressure</label><br>

		<input type="checkbox" name="EPQ31140140" value="1" id="EPQ31140140" <%=strEPQ31140140answer1%>>
		<label for="EPQ31140140">Aromatherapy</label><br>

		<input type="checkbox" name="EPQ31140080" value="1" id="EPQ31140080" <%=strEPQ31140080answer1%>>
		<label for="EPQ31140080">Deep breathing exercises for relaxation</label><br>

		<input type="checkbox" name="EPQ31140060" value="1" id="EPQ31140060" <%=strEPQ31140060answer1%>>
		<label for="EPQ31140060">Guided imagery</label><br>

		<input type="checkbox" name="EPQ31140010" value="1" id="EPQ31140010" <%=strEPQ31140010answer1%>>
		<label for="EPQ31140010">Homeopathic remedy</label><br>
		<input type="checkbox" name="EPQ31140100" value="1" id="EPQ31140100" <%=strEPQ31140100answer1%>>
		<label for="EPQ31140100">Macrobiotic diet for two weeks or more</label><br>

		<input type="checkbox" name="EPQ31140050" value="1" id="EPQ31140050" <%=strEPQ31140050answer1%>>
		<label for="EPQ31140050">Meditation</label><br>

		<input type="checkbox" name="EPQ31140130" value="1" id="EPQ31140130" <%=strEPQ31140130answer1%>>
		<label for="EPQ31140130">Music therapy</label><br>

		<input type="checkbox" name="EPQ31140070" value="1" id="EPQ31140070" <%=strEPQ31140070answer1%>>
		<label for="EPQ31140070">Progressive relaxation</label><br>

		<input type="checkbox" name="EPQ31140040" value="1" id="EPQ31140040" <%=strEPQ31140040answer1%>>
		<label for="EPQ31140040">Qi gong</label><br>
		<input type="checkbox" name="EPQ31140150" value="1" id="EPQ31140150" <%=strEPQ31140150answer1%>>
		<label for="EPQ31140150">Relaxation therapy</label><br>

		<input type="checkbox" name="EPQ31140110" value="1" id="EPQ31140110" <%=strEPQ31140110answer1%>>
		<label for="EPQ31140110">Spiritual healing or prayer</label><br>

		<input type="checkbox" name="EPQ31140030" value="1" id="EPQ31140030" <%=strEPQ31140030answer1%>>
		<label for="EPQ31140030">Tai Chi</label><br>

		<input type="checkbox" name="EPQ31140090" value="1" id="EPQ31140090" <%=strEPQ31140090answer1%>>
		<label for="EPQ31140090">Vegetarian diet for two weeks or more</label><br>
		<input type="checkbox" name="EPQ31140020" value="1" id="EPQ31140020" <%=strEPQ31140020answer1%>>
		<label for="EPQ31140020">Yoga</label><br>
<br>
		<input type="radio" name="EPQ31140120" value="1" id="EPQ31140120" <%=strEPQ31140120answer1%>>
		<label for="EPQ31140120">None of these</label><br>
</div> <!-- [ /#QuestionAnswerBlock ] -->

	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

<% if Session("HM10204000")="1" OR Session("HM10207000")="1" then %>
  <fieldset>
    <legend class="QuestionBox">
Do you view yourself as?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="HM11101000" class="required" value="1" 
id="HM11101010" <%=strHM11101000answer1%>>
		<label for="HM111010001">Malnourished</label><br>
		<input type="radio" name="HM11101000" value="2" id="HM11101020" <%=strHM11101000answer2%>>
		<label for="HM111010002">Nourished well</label><br>
		<input type="radio" name="HM11101000" value="88" id="HM11101030" <%=strHM11101000answer88%>>
		<label for="HM111010003">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<% end if %>

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
