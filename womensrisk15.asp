
<%

Session("WomensRiskScreeningSectionStatus")="Current"
Session("PageHolder")="Women's Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ30620000")="1" then
		strEPQ30620000answer1="checked"
	end if
	if Session("EPQ30620000")="2" then
		strEPQ30620000answer2="checked"
	end if
	if Session("EPQ30620000")="3" then
		strEPQ30620000answer3="checked"
	end if
	if Session("EPQ30620000")="4" then
		strEPQ30620000answer4="checked"
	end if
	if Session("EPQ30620000")="5" then
		strEPQ30620000answer5="checked"
	end if


	if Session("EPQ30621000")="0" then
		strEPQ30621000answer1="checked"
	end if
	if Session("EPQ30621000")="1" then
		strEPQ30621000answer2="checked"
	end if
	if Session("EPQ30621000")="2" then
		strEPQ30621000answer3="checked"
	end if
	if Session("EPQ30621000")="3" then
		strEPQ30621000answer4="checked"
	end if
	if Session("EPQ30621000")="4" then
		strEPQ30621000answer5="checked"
	end if
	if Session("EPQ30621000")="5" then
		strEPQ30621000answer6="checked"
	end if

	if Session("EPQ30622000")="0" then
		strEPQ30622000answer1="checked"
	end if
	if Session("EPQ30622000")="1" then
		strEPQ30622000answer2="checked"
	end if
	if Session("EPQ30622000")="2" then
		strEPQ30622000answer3="checked"
	end if
	if Session("EPQ30622000")="3" then
		strEPQ30622000answer4="checked"
	end if
	if Session("EPQ30622000")="4" then
		strEPQ30622000answer5="checked"
	end if
	if Session("EPQ30622000")="5" then
		strEPQ30622000answer6="checked"
	end if

	if Session("EPQ30623000")="0" then
		strEPQ30623000answer1="checked"
	end if
	if Session("EPQ30623000")="1" then
		strEPQ30623000answer2="checked"
	end if
	if Session("EPQ30623000")="2" then
		strEPQ30623000answer3="checked"
	end if
	if Session("EPQ30623000")="3" then
		strEPQ30623000answer4="checked"
	end if
	if Session("EPQ30623000")="4" then
		strEPQ30623000answer5="checked"
	end if
	if Session("EPQ30623000")="5" then
		strEPQ30623000answer6="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30620000string")= ""
	Session("EPQ30621000string")= ""
	Session("EPQ30622000string")= ""
	Session("EPQ30623000string")= ""


	Session("EPQ30620000") = Request.Form("EPQ30620000")
	Session("EPQ30621000") = Request.Form("EPQ30621000")
	Session("EPQ30622000") = Request.Form("EPQ30622000")
	Session("EPQ30623000") = Request.Form("EPQ30623000")

	if Session("EPQ30620000") = "1" then 
		Session("EPQ30620000string")= "G1"
	end if
	if Session("EPQ30620000") = "2" then 
		Session("EPQ30620000string")= "G2"
	end if
	if Session("EPQ30620000") = "3" then 
		Session("EPQ30620000string")= "G3"
	end if
	if Session("EPQ30620000") = "4" then 
		Session("EPQ30620000string")= "G4"
	end if
	if Session("EPQ30620000") = "5" then 
		Session("EPQ30620000string")= "G5"
	end if

	if Session("EPQ30621000") = "0" then 
		Session("EPQ30621000string")= "P0"
	end if
	if Session("EPQ30621000") = "1" then 
		Session("EPQ30621000string")= "P1"
	end if
	if Session("EPQ30621000") = "2" then 
		Session("EPQ30621000string")= "P2"
	end if
	if Session("EPQ30621000") = "3" then 
		Session("EPQ30621000string")= "P3"
	end if
	if Session("EPQ30621000") = "4" then 
		Session("EPQ30621000string")= "P4"
	end if
	if Session("EPQ30621000") = "5" then 
		Session("EPQ30621000string")= "P more than 5"
	end if


	if Session("EPQ30622000") = "0" then 
		Session("EPQ30622000string")= "0"
	end if
	if Session("EPQ30622000") = "1" then 
		Session("EPQ30622000string")= "1"
	end if
	if Session("EPQ30622000") = "2" then 
		Session("EPQ30622000string")= "2"
	end if
	if Session("EPQ30622000") = "3" then 
		Session("EPQ30622000string")= "3"
	end if
	if Session("EPQ30622000") = "4" then 
		Session("EPQ30622000string")= "4"
	end if
	if Session("EPQ30622000") = "5" then 
		Session("EPQ30622000string")= "5"
	end if


	if Session("EPQ30623000") = "0" then 
		Session("EPQ30623000string")= "0"
	end if
	if Session("EPQ30623000") = "1" then 
		Session("EPQ30623000string")= "1"
	end if
	if Session("EPQ30623000") = "2" then 
		Session("EPQ30623000string")= "2"
	end if
	if Session("EPQ30623000") = "3" then 
		Session("EPQ30623000string")= "3"
	end if
	if Session("EPQ30623000") = "4" then 
		Session("EPQ30623000string")= "4"
	end if
	if Session("EPQ30623000") = "5" then 
		Session("EPQ30623000string")= "5"
	end if


end if

if Request.Form("StopID")="1" then
		Session("WomensRiskAssessmentSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=14
		Response.Redirect "womensriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30620000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if len(Session("EPQ30621000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ30622000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if len(Session("EPQ30623000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

if Session("EPQ30621000")= "0" then
	Session("Page")="0"
	Session.Contents.Remove("EPQ30625000")
	Session.Contents.Remove("EPQ30624000")

	Session("WomensRiskScreeningSectionStatus")="Completed"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"

else
	Session("Page")="16"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "womensriskmaster.asp"
end if

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


    <form action="womensrisk15.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

	<fieldset class="pregCeiling"><legend class='QuestionBox'>
How many total pregnancies have you had?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30620000" value="1" id="EPQ306200001" class="required" <%=strEPQ30620000answer1%>>
		<label for="EPQ306200001">1</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30620000" value="2" id="EPQ306200002" <%=strEPQ30620000answer2%>>
		<label for="EPQ306200002">2</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30620000" value="3" id="EPQ306200003" <%=strEPQ30620000answer3%>>
		<label for="EPQ306200003">3</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30620000" value="4" id="EPQ306200004" <%=strEPQ30620000answer4%>>
		<label for="EPQ306200004">4</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30620000" value="5" id="EPQ306200005" <%=strEPQ30620000answer5%>>
		<label for="EPQ306200005">5 or More</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<br>
	<fieldset class="pregDependentSum"><legend class='QuestionBox'>
How many pregnancies resulted in one or more live babies (not including current pregnancy)?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30621000" value="0" id="EPQ306210000" class="required" <%=strEPQ30621000answer1%>>
		<label for="EPQ306210000">None</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30621000" value="1" id="EPQ306210001" <%=strEPQ30621000answer2%>>
		<label for="EPQ306210001">1</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30621000" value="2" id="EPQ306210002" <%=strEPQ30621000answer3%>>
		<label for="EPQ306210002">2</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30621000" value="3" id="EPQ306210003" <%=strEPQ30621000answer4%>>
		<label for="EPQ306210003">3</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30621000" value="4" id="EPQ306210004" <%=strEPQ30621000answer5%>>
		<label for="EPQ306210004">4</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30621000" value="5" id="EPQ306210005" <%=strEPQ30621000answer6%>>
		<label for="EPQ306210005">5 or More</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<br>
	<fieldset class="pregDependentSum">
  <legend class='QuestionBox'>
How many pregnancies ended in a miscarriage or still birth?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30622000" value=0 id="EPQ306220000" class="required" <%=strEPQ30622000answer1%>>
		<label for="EPQ306220000">None</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30622000" value=1 id="EPQ306220001" <%=strEPQ30622000answer2%>>
		<label for="EPQ306220001">1</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30622000" value=2 id="EPQ306220002" <%=strEPQ30622000answer3%>>
		<label for="EPQ306220002">2</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30622000" value=3 id="EPQ306220003" <%=strEPQ30622000answer4%>>
		<label for="EPQ306220003">3</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30622000" value=4 id="EPQ306220004" <%=strEPQ30622000answer5%>>
		<label for="EPQ306220004">4</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30622000" value=5 id="EPQ306220005" <%=strEPQ30622000answer6%>>
		<label for="EPQ306220005">5 or More</label>
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>
<br>
	<fieldset class="pregDependentSum">
  <legend class='QuestionBox'>
How many pregnancies ended as the result of an induced abortion?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30623000" value=0 id="EPQ306230000" class="required" <%=strEPQ30623000answer1%>>
		<label for="EPQ306230000">None</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30623000" value=1 id="EPQ306230001" <%=strEPQ30623000answer2%>>
		<label for="EPQ306230001">1</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30623000" value=2 id="EPQ306230002" <%=strEPQ30623000answer3%>>
		<label for="EPQ306230002">2</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30623000" value=3 id="EPQ306230003" <%=strEPQ30623000answer4%>>
		<label for="EPQ306230003">3</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30623000" value=4 id="EPQ306230004" <%=strEPQ30623000answer5%>>
		<label for="EPQ306230004">4</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		<input type="radio" name="EPQ30623000" value=5 id="EPQ306230005" <%=strEPQ30623000answer6%>>
		<label for="EPQ306230005">5 or More</label>
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
