
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("CUTA11103000")="1" then
		strCUTA11103000answer1="checked"
	end if
	if Session("CUTA11103000")="2" then
		strCUTA11103000answer2="checked"
	end if
	if Session("CUTA11103000")="3" then
		strCUTA11103000answer3="checked"
	end if
	if Session("CUTA11103000")="4" then
		strCUTA11103000answer4="checked"
	end if

	if Session("CUTA11103000")="5" then
		strCUTA11103000answer5="checked"
	end if
	if Session("CUTA11103000")="6" then
		strCUTA11103000answer6="checked"
	end if

	if Session("CUTA11103000")="7" then
		strCUTA11103000answer7="checked"
	end if
	if Session("CUTA11104000")="1" then
		strCUTA11104000answer1="checked"
	end if

	if Session("CUTA11104000")="2" then
		strCUTA11104000answer2="checked"
	end if
	if Session("CUTA11104000")="3" then
		strCUTA11104000answer3="checked"
	end if
	if Session("CUTA11104000")="4" then
		strCUTA11104000answer4="checked"
	end if

end if

	

if Request.Form("ispostback")="1" then
	Session("CUTA11103000string")= ""
	Session("CUTA11104000string")= ""

	Session("CUTA11103000") = Request.Form("CUTA11103000")
	Session("CUTA11104000") = Request.Form("CUTA11104000")

	if Session("CUTA11103000") = "1" then 
		Session("CUTA11103000string")= "Fair white skin color"
	end if
	if Session("CUTA11103000") = "2" then 
		Session("CUTA11103000string")= "Medium white skin color"
	end if
	if Session("CUTA11103000") = "3" then 
		Session("CUTA11103000string")= "Dark white or olive skin color"
	end if
	if Session("CUTA11103000") = "4" then 
		Session("CUTA11103000string")= "Light brown skin color"
	end if

	if Session("CUTA11103000") = "5" then 
		Session("CUTA11103000string")= "Dark brown skin color"
	end if
	if Session("CUTA11103000") = "6" then 
		Session("CUTA11103000string")= "Very dark brown/Black skin color"
	end if

	if Session("CUTA11103000") = "7" then 
		Session("CUTA11103000string")= "Other skin color"
	end if

	if Session("CUTA11104000") = "1" then 
		Session("CUTA11104000string")= "Skin unable to tan"
	end if
	if Session("CUTA11104000") = "2" then 
		Session("CUTA11104000string")= "Skin tans with considerable exposure"
	end if
	if Session("CUTA11104000") = "3" then 
		Session("CUTA11104000string")= "Skin tans easily"
	end if
	if Session("CUTA11104000") = "4" then 
		Session("CUTA11104000string")= "Don't know if skin can tan"
	end if

end if
if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="16c"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="16e"
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

    <form action="cancerrisk16d.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



	<fieldset><legend class='QuestionBox'>
Which of these colors best describes the color of your untanned skin?<br> </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11103000" value="1" class="required" id="CUTA11103001" <%=strCUTA11103000answer1%>>
		<label for="CUTA11103001">Fair white</label><br>
		<input type="radio" name="CUTA11103000" value="2" id="CUTA11103002" <%=strCUTA11103000answer2%>>
		<label for="CUTA11103002">Medium white</label><br>
		<input type="radio" name="CUTA11103000" value="3" id="CUTA11103003" <%=strCUTA11103000answer3%>>
		<label for="CUTA11103003">Dark white or olive (e.g. Mediterranean skin type)</label><br>
		<input type="radio" name="CUTA11103000" value="4" id="CUTA11103004" <%=strCUTA11103000answer4%>>
		<label for="CUTA11103004">Light brown</label><br>
		<input type="radio" name="CUTA11103000" value="5" id="CUTA11103005" <%=strCUTA11103000answer5%>>
		<label for="CUTA11103005">Dark brown</label><br>
		<input type="radio" name="CUTA11103000" value="6" id="CUTA11103006" <%=strCUTA11103000answer6%>>
		<label for="CUTA11103006">Very dark brown/black</label><br>
		<input type="radio" name="CUTA11103000" value="7" id="CUTA11103007" <%=strCUTA11103000answer7%>>
		<label for="CUTA11103007">Some other color</label><br>
	</div>
	</legend><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
If you were to expose your skin repeatedly to the summer sun, which phrase best describes your skin?<br> </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="CUTA11104000" value="1" class="required" id="CUTA11106001" <%=strCUTA11104000answer1%>>
		<label for="CUTA11104001">It is unable to tan</label><br>
		<input type="radio" name="CUTA11104000" value="2" id="CUTA11106002" <%=strCUTA11104000answer2%>>
		<label for="CUTA11104002">It can tan if you work at it</label><br>
		<input type="radio" name="CUTA11104000" value="3" id="CUTA11106003" <%=strCUTA11104000answer3%>>
		<label for="CUTA11104003">It tans easily</label><br>
		<input type="radio" name="CUTA11104000" value="4" id="CUTA11106004" <%=strCUTA11104000answer4%>>
		<label for="CUTA11104004">Don't know</label><br>
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
