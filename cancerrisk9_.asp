
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

	if Session("EPQ31126000")="0" then
		strEPQ31126000answer1="checked"
	end if
	if Session("EPQ31126000")="1" then
		strEPQ31126000answer2="checked"
	end if
	if Session("EPQ31126000")="2" then
		strEPQ31126000answer3="checked"
	end if
	if Session("EPQ31126000")="3" then
		strEPQ31126000answer4="checked"
	end if
	if Session("EPQ31126000")="4" then
		strEPQ31126000answer5="checked"
	end if
	if Session("EPQ31126000")="5" then
		strEPQ31126000answer6="checked"
	end if

	if Session("EPQ31127000")="0" then
		strEPQ31127000answer1="checked"
	end if
	if Session("EPQ31127000")="1" then
		strEPQ31127000answer2="checked"
	end if
	if Session("EPQ31127000")="2" then
		strEPQ31127000answer3="checked"
	end if
	if Session("EPQ31127000")="3" then
		strEPQ31127000answer4="checked"
	end if
	if Session("EPQ31127000")="4" then
		strEPQ31127000answer5="checked"
	end if
	if Session("EPQ31127000")="5" then
		strEPQ31127000answer6="checked"
	end if

	if Session("EPQ31128000")="0" then
		strEPQ31128000answer1="checked"
	end if
	if Session("EPQ31128000")="1" then
		strEPQ31128000answer2="checked"
	end if
	if Session("EPQ31128000")="2" then
		strEPQ31128000answer3="checked"
	end if
	if Session("EPQ31128000")="3" then
		strEPQ31128000answer4="checked"
	end if
	if Session("EPQ31128000")="4" then
		strEPQ31128000answer5="checked"
	end if
	if Session("EPQ31128000")="5" then
		strEPQ31128000answer6="checked"
	end if

	if Session("EPQ31129000")="0" then
		strEPQ31129000answer1="checked"
	end if
	if Session("EPQ31129000")="1" then
		strEPQ31129000answer2="checked"
	end if
	if Session("EPQ31129000")="2" then
		strEPQ31129000answer3="checked"
	end if
	if Session("EPQ31129000")="3" then
		strEPQ31129000answer4="checked"
	end if
	if Session("EPQ31129000")="4" then
		strEPQ31129000answer5="checked"
	end if
	if Session("EPQ31129000")="5" then
		strEPQ31129000answer6="checked"
	end if

	if Session("EPQ31130000")="0" then
		strEPQ31130000answer1="checked"
	end if
	if Session("EPQ31130000")="1" then
		strEPQ31130000answer2="checked"
	end if
	if Session("EPQ31130000")="2" then
		strEPQ31130000answer3="checked"
	end if
	if Session("EPQ31130000")="3" then
		strEPQ31130000answer4="checked"
	end if
	if Session("EPQ31130000")="4" then
		strEPQ31130000answer5="checked"
	end if
	if Session("EPQ31130000")="5" then
		strEPQ31130000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31126000string")= ""
	Session("EPQ31127000string")= ""
	Session("EPQ31128000string")= ""
	Session("EPQ31129000string")= ""
	Session("EPQ31130000string")= ""

	Session("EPQ31126000") = Request.Form("EPQ31126000")
	Session("EPQ31127000") = Request.Form("EPQ31127000")
	Session("EPQ31128000") = Request.Form("EPQ31128000")
	Session("EPQ31129000") = Request.Form("EPQ31129000")
	Session("EPQ31130000") = Request.Form("EPQ31130000")

	Session("HM11101000") = Request.Form("HM11101000")


	if Session("EPQ31126000") = "0" then 
		Session("EPQ31126000string")= ""
	end if
	if Session("EPQ31126000") = "1" then 
		Session("EPQ31126000string")= ""
	end if
	if Session("EPQ31126000") = "2" then 
		Session("EPQ31126000string")= ""
	end if
	if Session("EPQ31126000") = "3" then 
		Session("EPQ31126000string")= ""
	end if
	if Session("EPQ31126000") = "4" then 
		Session("EPQ31126000string")= ""
	end if
	if Session("EPQ31126000") = "5" then 
		Session("EPQ31126000string")= ""
	end if

	if Session("EPQ31127000") = "0" then 
		Session("EPQ31127000string")= ""
	end if
	if Session("EPQ31127000") = "1" then 
		Session("EPQ31127000string")= ""
	end if
	if Session("EPQ31127000") = "2" then 
		Session("EPQ31127000string")= ""
	end if
	if Session("EPQ31127000") = "3" then 
		Session("EPQ31127000string")= ""
	end if
	if Session("EPQ31127000") = "4" then 
		Session("EPQ31127000string")= ""
	end if
	if Session("EPQ31127000") = "5" then 
		Session("EPQ31127000string")= ""
	end if

	if Session("EPQ31128000") = "0" then 
		Session("EPQ31128000string")= ""
	end if
	if Session("EPQ31128000") = "1" then 
		Session("EPQ31128000string")= ""
	end if
	if Session("EPQ31128000") = "2" then 
		Session("EPQ31128000string")= ""
	end if
	if Session("EPQ31128000") = "3" then 
		Session("EPQ31128000string")= ""
	end if
	if Session("EPQ31128000") = "4" then 
		Session("EPQ31128000string")= ""
	end if
	if Session("EPQ31128000") = "5" then 
		Session("EPQ31128000string")= ""
	end if

	if Session("EPQ31129000") = "0" then 
		Session("EPQ31129000string")= ""
	end if
	if Session("EPQ31129000") = "1" then 
		Session("EPQ31129000string")= ""
	end if
	if Session("EPQ31129000") = "2" then 
		Session("EPQ31129000string")= ""
	end if
	if Session("EPQ31129000") = "3" then 
		Session("EPQ31129000string")= ""
	end if
	if Session("EPQ31129000") = "4" then 
		Session("EPQ31129000string")= ""
	end if
	if Session("EPQ31129000") = "5" then 
		Session("EPQ31129000string")= ""
	end if

	if Session("EPQ31130000") = "0" then 
		Session("EPQ31130000string")= ""
	end if
	if Session("EPQ31130000") = "1" then 
		Session("EPQ31130000string")= ""
	end if
	if Session("EPQ31130000") = "2" then 
		Session("EPQ31130000string")= ""
	end if
	if Session("EPQ31130000") = "3" then 
		Session("EPQ31130000string")= ""
	end if
	if Session("EPQ31130000") = "4" then 
		Session("EPQ31130000string")= ""
	end if
	if Session("EPQ31130000") = "5" then 
		Session("EPQ31130000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=8
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31126000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31127000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


	Session("Page")="10"

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
	<div id="SpecialNote">
	For each question, indicate how often <u>on average</u> you have eaten the item(s) <u>during the past twelve months</u>.
	</div>


    <form action="cancerrisk9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset class="tabular">
  <legend class="QuestionBox">
  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">Item</th>
				<th rowspan="2">Never</th>
				<th rowspan="2">Less than once per week</th>
				<th rowspan="2">Once per week</th>
				<th rowspan="2">2-4 times per week</th>
				<th rowspan="2">Nearly daily or daily</th>
				<th rowspan="2">Twice or more per day</th>
			</tr>

		   <tbody>
<tr>
<td>Beef, Pork or Lamb as Main Dish</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31126000" type="text" value="0" size="1" name="EPQ31126000" <%=strEPQ31126000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31126000" type="text" value="1" size="1" name="EPQ31126000" <%=strEPQ31126000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31126000" type="text" value="2" size="1" name="EPQ31126000" <%=strEPQ31126000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31126000" type="text" value="3" size="1" name="EPQ31126000" <%=strEPQ31126000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31126000" type="text" value="4" size="1" name="EPQ31126000" <%=strEPQ31126000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31126000" type="text" value="5" size="1" name="EPQ31126000" <%=strEPQ31126000answer6%>></td>
</tr>

<tr>
<td>Processed Meats (sausages, salami,<br> bologna, hot dogs, bacon)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31127000" type="text" value="0" size="1" name="EPQ31127000" <%=strEPQ31127000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31127000" type="text" value="1" size="1" name="EPQ31127000" <%=strEPQ31127000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31127000" type="text" value="2" size="1" name="EPQ31127000" <%=strEPQ31127000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31127000" type="text" value="3" size="1" name="EPQ31127000" <%=strEPQ31127000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31127000" type="text" value="4" size="1" name="EPQ31127000" <%=strEPQ31127000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31127000" type="text" value="5" size="1" name="EPQ31127000" <%=strEPQ31127000answer6%>></td>
</tr>

<tr>
<td>Fish and Seafood (not fried, but broiled,<br> baked, poached, canned)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31128000" type="text" value="0" size="1" name="EPQ31128000" <%=strEPQ31128000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31128000" type="text" value="1" size="1" name="EPQ31128000" <%=strEPQ31128000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31128000" type="text" value="2" size="1" name="EPQ31128000" <%=strEPQ31128000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31128000" type="text" value="3" size="1" name="EPQ31128000" <%=strEPQ31128000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31128000" type="text" value="4" size="1" name="EPQ31128000" <%=strEPQ31128000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31128000" type="text" value="5" size="1" name="EPQ31128000" <%=strEPQ31128000answer6%>></td>
</tr>


<tr>
<td>Deep Fried Foods (deep fried chicken, fish or seafood, french fries, onion rings)</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31129000" type="text" value="0" size="1" name="EPQ31129000" <%=strEPQ31129000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31129000" type="text" value="1" size="1" name="EPQ31129000" <%=strEPQ31129000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31129000" type="text" value="2" size="1" name="EPQ31129000" <%=strEPQ31129000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31129000" type="text" value="3" size="1" name="EPQ31129000" <%=strEPQ31129000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31129000" type="text" value="4" size="1" name="EPQ31129000" <%=strEPQ31129000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31129000" type="text" value="5" size="1" name="EPQ31129000" <%=strEPQ31129000answer6%>></td>
</tr>

<tr>
<td>How often do you add salt to food at the table?</td>
<td style="text-align: center;"><input type="radio" class="required" id="EPQ31130000" type="text" value="0" size="1" name="EPQ31130000" <%=strEPQ31130000answer1%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31130000" type="text" value="1" size="1" name="EPQ31130000" <%=strEPQ31130000answer2%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31130000" type="text" value="2" size="1" name="EPQ31130000" <%=strEPQ31130000answer3%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31130000" type="text" value="3" size="1" name="EPQ31130000" <%=strEPQ31130000answer4%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31130000" type="text" value="4" size="1" name="EPQ31130000" <%=strEPQ31130000answer5%>></td>
<td style="text-align: center;"><input type="radio" id="EPQ31130000" type="text" value="5" size="1" name="EPQ31130000" <%=strEPQ31130000answer6%>></td>
</tr>

</tbody>
</table>
</div><!-- [ /#tableQualityofLife ] -->
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
