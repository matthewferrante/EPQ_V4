
<%

Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30707000")="1" then
		strEPQ30707000answer1="checked"
	end if
	if Session("EPQ30707000")="2" then
		strEPQ30707000answer2="checked"
	end if
	if Session("EPQ30707000")="88" then
		strEPQ30707000answer3="checked"
	end if

	if Session("EPQ30707000")="77" then
		strEPQ30707000answer4="checked"
	end if


	if Session("EPQ30708000")="1" then
		strEPQ30708000answer1="checked"
	end if
	if Session("EPQ30708000")="2" then
		strEPQ30708000answer2="checked"
	end if
	if Session("EPQ30708000")="88" then
		strEPQ30708000answer3="checked"
	end if

	if Session("EPQ30708000")="77" then
		strEPQ30708000answer4="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30707000string")= ""
	Session("EPQ30708000string")= ""

	Session("EPQ30707000") = Request.Form("EPQ30707000")
	Session("EPQ30708000") = Request.Form("EPQ30708000")

	if Session("EPQ30707000") = "1" then 
		Session("EPQ30707000string")= ""
	end if
	if Session("EPQ30707000") = "2" then 
		Session("EPQ30707000string")= ""
	end if
	if Session("EPQ30707000") = "77" then 
		Session("EPQ30707000string")= ""
	end if
	if Session("EPQ30707000") = "88" then 
		Session("EPQ30707000string")= ""
	end if
	if Session("EPQ30708000") = "1" then 
		Session("EPQ30708000string")= ""
	end if
	if Session("EPQ30708000") = "2" then 
		Session("EPQ30708000string")= ""
	end if
	if Session("EPQ30708000") = "77" then 
		Session("EPQ30708000string")= ""
	end if
	if Session("EPQ30708000") = "88" then 
		Session("EPQ30708000string")= ""
	end if
end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
 If Session("EPQ30755100")="1"  then
	Session("Page")="5"
	Response.Redirect "surgicalhistorymaster.asp"
 else
 end if

		Session("ReturnID")="1"
		Session("Page")=21
		Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30707000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30708000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="9"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
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


    <form action="surgicalhistory7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
What type of breast implants do you have?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30707000" value="1" id="EPQ307070001" class="required" <%=strEPQ30707000answer1%>>
		<label for="EPQ307070001">Silicone</label><br>
		<input type="radio" name="EPQ30707000" value="2" id="EPQ307070002" <%=strEPQ30707000answer2%>>
		<label for="EPQ307070002">Saline</label><br>
		<input type="radio" name="EPQ30707000" value="88" id="EPQ307070003" <%=strEPQ30707000answer3%>>
		<label for="EPQ307070003">Don't know</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset>
  <legend class='QuestionBox'>
Where were your implants placed?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30708000" value="1" id="EPQ307080001" class="required" <%=strEPQ30708000answer1%>>
		<label for="EPQ307080001">Behind the muscle</label><br>
		<input type="radio" name="EPQ30708000" value="2" id="EPQ307080002" <%=strEPQ30708000answer2%>>
		<label for="EPQ307080002">In front of the muscle</label><br>
		<input type="radio" name="EPQ30708000" value="88" id="EPQ307080003" <%=strEPQ30708000answer3%>>
		<label for="EPQ307080003">Don't know</label><br>
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
