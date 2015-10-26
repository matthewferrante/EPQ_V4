

<%
Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("6HM11301000")="0" then
		str6HM11301000answer1="checked"
	end if
	if Session("6HM11301000")="1" then
		str6HM11301000answer2="checked"
	end if
	if Session("6HM11301000")="2" then
		str6HM11301000answer3="checked"
	end if
	if Session("6HM11301000")="3" then
		str6HM11301000answer4="checked"
	end if
	if Session("6HM11301000")="4" then
		str6HM11301000answer5="checked"
	end if
	if Session("6HM11301000")="5" then
		str6HM11301000answer6="checked"
	end if
	if Session("6HM11301000")="6" then
		str6HM11301000answer7="checked"
	end if
	if Session("6HM11301000")="7" then
		str6HM11301000answer8="checked"
	end if
	if Session("6HM11301000")="8" then
		str6HM11301000answer9="checked"
	end if
	if Session("6HM11301000")="9" then
		str6HM11301000answer10="checked"
	end if
	if Session("6HM11301000")="10" then
		str6HM11301000answer11="checked"
	end if

	if Session("7HM11301000")="0" then
		str7HM11301000answer1="checked"
	end if
	if Session("7HM11301000")="1" then
		str7HM11301000answer2="checked"
	end if
	if Session("7HM11301000")="2" then
		str7HM11301000answer3="checked"
	end if
	if Session("7HM11301000")="3" then
		str7HM11301000answer4="checked"
	end if
	if Session("7HM11301000")="4" then
		str7HM11301000answer5="checked"
	end if
	if Session("7HM11301000")="5" then
		str7HM11301000answer6="checked"
	end if
	if Session("7HM11301000")="6" then
		str7HM11301000answer7="checked"
	end if
	if Session("7HM11301000")="7" then
		str7HM11301000answer8="checked"
	end if
	if Session("7HM11301000")="8" then
		str7HM11301000answer9="checked"
	end if
	if Session("7HM11301000")="9" then
		str7HM11301000answer10="checked"
	end if
	if Session("7HM11301000")="10" then
		str7HM11301000answer11="checked"
	end if


	if Session("8HM11301000")="0" then
		str8HM11301000answer1="checked"
	end if
	if Session("8HM11301000")="1" then
		str8HM11301000answer2="checked"
	end if
	if Session("8HM11301000")="2" then
		str8HM11301000answer3="checked"
	end if
	if Session("8HM11301000")="3" then
		str8HM11301000answer4="checked"
	end if
	if Session("8HM11301000")="4" then
		str8HM11301000answer5="checked"
	end if
	if Session("8HM11301000")="5" then
		str8HM11301000answer6="checked"
	end if
	if Session("8HM11301000")="6" then
		str8HM11301000answer7="checked"
	end if
	if Session("8HM11301000")="7" then
		str8HM11301000answer8="checked"
	end if
	if Session("8HM11301000")="8" then
		str8HM11301000answer9="checked"
	end if
	if Session("8HM11301000")="9" then
		str8HM11301000answer10="checked"
	end if
	if Session("8HM11301000")="10" then
		str8HM11301000answer11="checked"
	end if


	if Session("9HM11301000")="0" then
		str9HM11301000answer1="checked"
	end if
	if Session("9HM11301000")="1" then
		str9HM11301000answer2="checked"
	end if
	if Session("9HM11301000")="2" then
		str9HM11301000answer3="checked"
	end if
	if Session("9HM11301000")="3" then
		str9HM11301000answer4="checked"
	end if
	if Session("9HM11301000")="4" then
		str9HM11301000answer5="checked"
	end if
	if Session("9HM11301000")="5" then
		str9HM11301000answer6="checked"
	end if
	if Session("9HM11301000")="6" then
		str9HM11301000answer7="checked"
	end if
	if Session("9HM11301000")="7" then
		str9HM11301000answer8="checked"
	end if
	if Session("9HM11301000")="8" then
		str9HM11301000answer9="checked"
	end if
	if Session("9HM11301000")="9" then
		str9HM11301000answer10="checked"
	end if
	if Session("9HM11301000")="10" then
		str9HM11301000answer11="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then
	Session("HM11301000string")= ""



	Session("6HM11301000") = Request.Form("6HM11301000")
	Session("7HM11301000") = Request.Form("7HM11301000")
	Session("8HM11301000") = Request.Form("8HM11301000")
	Session("9HM11301000") = Request.Form("9HM11301000")

end if

if Request.Form("StopID")="1" then
		Session("psychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=4
		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="0"
	Session("PsychosocialSectionStatus")="Completed"

	Response.Redirect "psychosocialmaster.asp"
	 <!--#include file="autosavefunction.asp"-->
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
	<div id="SpecialNote">
	We would like to ask you about common symptoms experienced by patients.  Please complete the following questions about how you feel NOW; with 0 meaning that the symptom is absent and 10 that it is the worst possible severity.<br>
<br>Please have the patient complete this section or if they are not able to, please have them next to you when completing it so they indicate to you how they feel NOW.


	</div>
<br>

    <form action="psychosocial5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">


  <fieldset class="tabular">
  <legend>
<div class="QuestionBox">
Please select the number that best describes how you feel NOW:
</div>  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th></th>
				<th rowspan="2">0</th>
				<th rowspan="2">1</th>
				<th rowspan="2">2</th>
				<th rowspan="2">3</th>
				<th rowspan="2">4</th>
				<th rowspan="2">5</th>
				<th rowspan="2">6</th>
				<th rowspan="2">7</th>
				<th rowspan="2">8</th>
				<th rowspan="2">9</th>
				<th rowspan="2">10</th>
				<th></th>
			</tr>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		   <tbody>
		</div>
		<div class="cell1">

<tr>
<td>No shortness of breath</td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" class="required" type="text" value="0" size="1" name="6HM11301000" <%=str6HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="1" size="1" name="6HM11301000" <%=str6HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="2" size="1" name="6HM11301000" <%=str6HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="3" size="1" name="6HM11301000" <%=str6HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="4" size="1" name="6HM11301000" <%=str6HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="5" size="1" name="6HM11301000" <%=str6HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="6" size="1" name="6HM11301000" <%=str6HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="7" size="1" name="6HM11301000" <%=str6HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="8" size="1" name="6HM11301000" <%=str6HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="9" size="1" name="6HM11301000" <%=str6HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="6HM11301000" type="text" value="10" size="1" name="6HM11301000" <%=str6HM11301000answer11%>></td>
<td>Worst possible shortness of breath</td>
</tr>


<tr>
<td>No depression <br>
(Depression = feeling sad)
</td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" class="required" type="text" value="0" size="1" name="7HM11301000" <%=str7HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="1" size="1" name="7HM11301000" <%=str7HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="2" size="1" name="7HM11301000" <%=str7HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="3" size="1" name="7HM11301000" <%=str7HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="4" size="1" name="7HM11301000" <%=str7HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="5" size="1" name="7HM11301000" <%=str7HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="6" size="1" name="7HM11301000" <%=str7HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="7" size="1" name="7HM11301000" <%=str7HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="8" size="1" name="7HM11301000" <%=str7HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="9" size="1" name="7HM11301000" <%=str7HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="7HM11301000" type="text" value="10" size="1" name="7HM11301000" <%=str7HM11301000answer11%>></td>
<td>Worst possible depression <br>
</td>
</tr>


<tr>
<td>No anxiety <br>
(Anxiety = feeling nervous)
</td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" class="required" type="text" value="0" size="1" name="8HM11301000" <%=str8HM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="1" size="1" name="8HM11301000" <%=str8HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="2" size="1" name="8HM11301000" <%=str8HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="3" size="1" name="8HM11301000" <%=str8HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="4" size="1" name="8HM11301000" <%=str8HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="5" size="1" name="8HM11301000" <%=str8HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="6" size="1" name="8HM11301000" <%=str8HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="7" size="1" name="8HM11301000" <%=str8HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="8" size="1" name="8HM11301000" <%=str8HM11301000answer9%>></td>
<td style="text-align: kcenter;"><input type="radio" id="8HM11301000" type="text" value="9" size="1" name="8HM11301000" <%=str8HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="8HM11301000" type="text" value="10" size="1" name="8HM11301000" <%=str8HM11301000answer11%>></td>
<td>Worst possible anxiety <br>
</td>
</tr>


<tr>
<td>Best wellbeing <br>
(Wellbeing = how you feel overall)
</td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" class="required" type="text" value="0" size="1" name="9HM11301000" <%=strHM11301000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="1" size="1" name="9HM11301000" <%=str9HM11301000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="2" size="1" name="9HM11301000" <%=str9HM11301000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="3" size="1" name="9HM11301000" <%=str9HM11301000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="4" size="1" name="9HM11301000" <%=str9HM11301000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="5" size="1" name="9HM11301000" <%=str9HM11301000answer6%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="6" size="1" name="9HM11301000" <%=str9HM11301000answer7%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="7" size="1" name="9HM11301000" <%=str9HM11301000answer8%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="8" size="1" name="9HM11301000" <%=str9HM11301000answer9%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="9" size="1" name="9HM11301000" <%=str9HM11301000answer10%>></td>
<td style="text-align: center;"><input type="radio" id="9HM11301000" type="text" value="10" size="1" name="9HM11301000" <%=str9HM11301000answer11%>></td>
<td>Worst possible wellbeing <br>
</td>
</tr>






</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
</fieldset>

</div><!-- [ /#formBlock ] -->
	
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
