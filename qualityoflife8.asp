
<%

Session("QOLSectionStatus")="Current"
Session("PageHolder")="Quality of Life"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GU11311000")="1" then
		strGU11311000answer1="checked"
	end if
	if Session("GU11311000")="2" then
		strGU11311000answer2="checked"
	end if
	if Session("GU11311000")="3" then
		strGU11311000answer3="checked"
	end if
	if Session("GU11311000")="4" then
		strGU11311000answer4="checked"
	end if
	if Session("GU11311000")="5" then
		strGU11311000answer5="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("GU11311000string")= ""
	

	Session("GU11311000") = Request.Form("GU11311000")
	


	if Session("GU11311000") = "1" then 
		Session("GU11311000string")= "No bother with bladder, stoma, neo-bladder or catheterizable pouch during the past 4 weeks"
	end if
	if Session("GU11311000") = "2" then 
		Session("GU11311000string")= "Very small bother with bladder, stoma, neo-bladder or catheterizable pouch during the past 4 weeks"
	end if
	if Session("GU11311000") = "3" then 
		Session("GU11311000string")= "Small bother with bladder, stoma, neo-bladder or catheterizable pouch during the past 4 weeks"
	end if
	if Session("GU11311000") = "4" then 
		Session("GU11311000string")= "Moderate bother with bladder, stoma, neo-bladder or catheterizable pouch during the past 4 weeks"
	end if
	if Session("GU11311000") = "5" then 
		Session("GU11311000string")= "Big bother with bladder, stoma, neo-bladder or catheterizable pouch during the past 4 weeks"
	end if

end if

if Request.Form("StopID")="1" then
		Session("QOLSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=7
		Response.Redirect "qualityoflifemaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31301000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31302000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="9"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "qualityoflifemaster.asp"
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

    <form action="qualityoflife8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
	How big of a bother, if any, has your bladder, stoma, neo-bladder or catheterizable pouch been for you<br><b>during the past 4 weeks</b>?<br>
	</legend>

	<div class="QuestionAnswersBox">
	
		<input type="radio" name="GU11311000" value="1" id="GU11311010" class="required" <%=strGU11311000answer1%>>
		<label for="GU11311010">No bother</label><br>
		<input type="radio" name="GU11311000" value="2" id="GU11311020" <%=strGU11311000answer2%>>
		<label for="GU11311020">Very small bother</label><br>
		<input type="radio" name="GU11311000" value="3" id="GU11311030" <%=strGU11311000answer3%>>
		<label for="GU11311030">Small bother</label><br>
		<input type="radio" name="GU11311000" value="4" id="GU11311040" <%=strGU11311000answer4%>>
		<label for="GU11311040">Moderate bother</label><br>
		<input type="radio" name="GU11311000" value="5" id="GU11311050" <%=strGU11311000answer5%>>
		<label for="GU11311050">Big bother</label><br>
	</div><!-- [ /#AnswerBox] -->   

	

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
