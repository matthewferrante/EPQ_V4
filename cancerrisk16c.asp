
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("CUTA11101000")="1" then
		strCUTA11101000answer1="checked"
	end if
	if Session("CUTA11101000")="2" then
		strCUTA11101000answer2="checked"
	end if
	if Session("CUTA11101000")="3" then
		strCUTA11101000answer3="checked"
	end if
	if Session("CUTA11101000")="4" then
		strCUTA11101000answer4="checked"
	end if

	if Session("CUTA11101000")="5" then
		strCUTA11101000answer5="checked"
	end if
	if Session("CUTA11101000")="6" then
		strCUTA11101000answer6="checked"
	end if

	if Session("CUTA11102000")="1" then
		strCUTA11102000answer1="checked"
	end if

	if Session("CUTA11102000")="2" then
		strCUTA11102000answer2="checked"
	end if
	if Session("CUTA11102000")="3" then
		strCUTA11102000answer3="checked"
	end if
	if Session("CUTA11102000")="4" then
		strCUTA11102000answer4="checked"
	end if

	if Session("CUTA11102000")="5" then
		strCUTA11102000answer5="checked"
	end if
	if Session("CUTA11102000")="6" then
		strCUTA11102000answer6="checked"
	end if
	if Session("CUTA11102000")="7" then
		strCUTA11102000answer7="checked"
	end if

	if Session("CUTA11102000")="8" then
		strCUTA11102000answer8="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11101000string")= ""
	Session("CUTA11102000string")= ""

	Session("CUTA11101000") = Request.Form("CUTA11101000")
	Session("CUTA11102000") = Request.Form("CUTA11102000")

	if Session("CUTA11101000") = "1" then 
		Session("CUTA11101000string")= "Blue eyes"
	end if
	if Session("CUTA11101000") = "2" then 
		Session("CUTA11101000string")= "Gray eyes"
	end if
	if Session("CUTA11101000") = "3" then 
		Session("CUTA11101000string")= "Green eyes"
	end if
	if Session("CUTA11101000") = "4" then 
		Session("CUTA11101000string")= "Hazel eyes"
	end if

	if Session("CUTA11101000") = "5" then 
		Session("CUTA11101000string")= "Light brown eyes"
	end if
	if Session("CUTA11101000") = "6" then 
		Session("CUTA11101000string")= "Dark brown eyes"
	end if

	if Session("CUTA11102000") = "1" then 
		Session("CUTA11102000string")= "Black hair"
	end if
	if Session("CUTA11102000") = "2" then 
		Session("CUTA11102000string")= "Dark brown hair"
	end if
	if Session("CUTA11102000") = "3" then 
		Session("CUTA11102000string")= "Medium brown hair"
	end if
	if Session("CUTA11102000") = "4" then 
		Session("CUTA11102000string")= "Light brown hair"
	end if
	if Session("CUTA11102000") = "5" then 
		Session("CUTA11102000string")= "Dark blonde hair"
	end if
	if Session("CUTA11102000") = "6" then 
		Session("CUTA11102000string")= "Light blonde hair"
	end if
	if Session("CUTA11102000") = "7" then 
		Session("CUTA11102000string")= "Strawberry blonde hair"
	end if
	if Session("CUTA11102000") = "8" then 
		Session("CUTA11102000string")= "Red hair"
	end if
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="16d"


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

    <form action="cancerrisk16c.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


<div id="SpecialNote">
The following questions ask about characteristics and behaviors that may influence your susceptibility to skin cancer.
</div><br>
	<fieldset><legend class='QuestionBox'>
What is the natural color of your eyes?</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11101000" value="1" class="required" id="CUTA11101001" <%=strCUTA11101000answer1%>>
		<label for="CUTA11101001">Blue</label><br>
		<input type="radio" name="CUTA11101000" value="2" id="CUTA11101002" <%=strCUTA11101000answer2%>>
		<label for="CUTA11101002">Gray</label><br>
		<input type="radio" name="CUTA11101000" value="3" id="CUTA11101003" <%=strCUTA11101000answer3%>>
		<label for="CUTA11101003">Green</label><br>
		<input type="radio" name="CUTA11101000" value="4" id="CUTA11101004" <%=strCUTA11101000answer4%>>
		<label for="CUTA11101004">Hazel</label><br>
		<input type="radio" name="CUTA11101000" value="5" id="CUTA11101005" <%=strCUTA11101000answer5%>>
		<label for="CUTA11101005">Light brown</label><br>
		<input type="radio" name="CUTA11101000" value="6" id="CUTA11101006" <%=strCUTA11101000answer6%>>
		<label for="CUTA11101006">Dark brown</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>


	<fieldset><legend class='QuestionBox'>
Which of these colors best describes the natural color of your hair? (If your hair color has changed with age,<br>think back to when you were 20 years old.)
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11102000" value="1" class="required" id="CUTA11102001" <%=strCUTA11102000answer1%>>
		<label for="CUTA11102001">Black</label><br>
		<input type="radio" name="CUTA11102000" value="2" id="CUTA11102002" <%=strCUTA11102000answer2%>>
		<label for="CUTA11102002">Dark brown</label><br>
		<input type="radio" name="CUTA11102000" value="3" id="CUTA11102003" <%=strCUTA11102000answer3%>>
		<label for="CUTA11102003">Medium brown</label><br>
		<input type="radio" name="CUTA11102000" value="4" id="CUTA11102004" <%=strCUTA11102000answer4%>>
		<label for="CUTA11102004">Light brown</label><br>
		<input type="radio" name="CUTA11102000" value="5" id="CUTA11102005" <%=strCUTA11102000answer5%>>
		<label for="CUTA11102005">Dark blonde</label><br>
		<input type="radio" name="CUTA11102000" value="6" id="CUTA11102006" <%=strCUTA11102000answer6%>>
		<label for="CUTA11102006">Light blonde</label><br>
		<input type="radio" name="CUTA11102000" value="7" id="CUTA11102007" <%=strCUTA11102000answer7%>>
		<label for="CUTA11102007">Strawberry blonde</label><br>
		<input type="radio" name="CUTA11102000" value="8" id="CUTA11102008" <%=strCUTA11102000answer8%>>
		<label for="CUTA11102008">Red</label><br>
	</div>
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
