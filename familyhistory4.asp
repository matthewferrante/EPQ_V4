
<%
Session("FamilyHistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"
 

if Request.Form("ispostback") <> "1" then

	if Session("GI10901000")="1" then
		strGI10901000answer1="checked"
	end if
	if Session("GI10901000")="2" then
		strGI10901000answer2="checked"
	end if
	if Session("GI10901000")="88" then
		strGI10901000answer3="checked"
	end if

	if Session("GI10902000")="1" then
		strGI10902000answer1="checked"
	end if
	if Session("GI10902000")="2" then
		strGI10902000answer2="checked"
	end if
	if Session("GI10902000")="88" then
		strGI10902000answer3="checked"
	end if

	if Session("GI10903000")="1" then
		strGI10903000answer1="checked"
	end if
	if Session("GI10903000")="2" then
		strGI10903000answer2="checked"
	end if
	if Session("GI10903000")="88" then
		strGI10903000answer3="checked"
	end if

	if Session("GI10904000")="1" then
		strGI10904000answer1="checked"
	end if
	if Session("GI10904000")="2" then
		strGI10904000answer2="checked"
	end if
	if Session("GI10904000")="88" then
		strGI10904000answer3="checked"
	end if

	if Session("GI10905000")="1" then
		strGI10905000answer1="checked"
	end if
	if Session("GI10905000")="2" then
		strGI10905000answer2="checked"
	end if
	if Session("GI10905000")="88" then
		strGI10905000answer3="checked"
	end if

	if Session("GI10906000")="1" then
		strGI10906000answer1="checked"
	end if
	if Session("GI10906000")="2" then
		strGI10906000answer2="checked"
	end if
	if Session("GI10906000")="88" then
		strGI10906000answer3="checked"
	end if

	if Session("GI10907000")="1" then
		strGI10907000answer1="checked"
	end if
	if Session("GI10907000")="2" then
		strGI10907000answer2="checked"
	end if
	if Session("GI10907000")="88" then
		strGI10907000answer3="checked"
	end if



end if
	

if Request.Form("ispostback")="1" then

	Session("GI10901000") = Request.Form("GI10901000")
	Session("GI10902000") = Request.Form("GI10902000")
	Session("GI10903000") = Request.Form("GI10903000")
	Session("GI10904000") = Request.Form("GI10904000")
	Session("GI10905000") = Request.Form("GI10905000")
	Session("GI10906000") = Request.Form("GI10906000")
	Session("GI10907000") = Request.Form("GI10907000")

	Session("GI10907000_TXT") = Request.Form("GI10907000_TXT")

 
end if

if Request.Form("StopID")="1" then
		Session("FamilyHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090")="1" OR Session("EPQ30901140")="1" OR Session("EPQ30901150")="1" OR Session("EPQ30901100")="1" OR Session("EPQ30901060")="1" OR Session("EPQ30901070")="1" OR Session("EPQ30901020")="1" then
			if Session("FHDisplayCounter") > 8 then
			Session("Page")="3"
			else
			Session("Page")=2
			end if
		else

			Session("Page")=1
		End if
		Response.Redirect "familyhistorymaster.asp"
end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if


if Request.Form("ContinueID")="1" then

if Session("SurveyVersion")="GI" then

	if Session("GI10901000") ="1" OR Session("GI10902000") ="1" OR Session("GI10903000") ="1" OR Session("GI10904000") ="1" OR Session("GI10905000") ="1" OR Session("GI10907000") ="1" OR Session("GI10907000") ="1" then
	Session("Page")="4a"
	Response.Redirect "familyhistorymaster.asp"
	else
	Session("Page")="5"
	Response.Redirect "familyhistorymaster.asp"
	end if
end if
	Session("Page")="0"
	Session("FamilyHistorySectionStatus")="Completed"
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


    <form action="familyhistory4.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<!-- [ Sample Question boxes ] -->

		<!-- [ Tables - the div container is given a class name that governs the CSS:
			either 	.tableBasic
					.tablePersonalHistory
					.tableFamilyHistory

			each table is given the class name .dataTable, which is
			used for the jQuery alternating color scheme; ] -->
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

			<tr>
				<th colspan="4">Have any of your immediate blood relatives been diagnosed with<br>a cyst, lesion, or mass in their pancreas?</th>
			</tr>

			<tr class="tableSubHeading">
				<th></th>
				<th>Yes</th>
				<th>No</th>
				<th>Don't know</th>

			</tr>
		   <tbody>

		<tr>
		<td>
Father
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10901000" type="text" value="1" size="3" name="GI10901000" <%=strGI10901000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10901000" type="text" value="2" size="3" name="GI10901000" <%=strGI10901000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10901000" type="text" value="88" size="3" name="GI10901000" <%=strGI10901000answer3%> >
		</td>
		</tr>

		<tr>
		<td>
Mother
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10902000" type="text" value="1" size="3" name="GI10902000" <%=strGI10902000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10902000" type="text" value="2" size="3" name="GI10902000" <%=strGI10902000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10902000" type="text" value="88" size="3" name="GI10902000" <%=strGI10902000answer3%> >
		</td>

		</tr>

		<tr>
		<td>
Brother
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10903000" type="text" value="1" size="3" name="GI10903000" <%=strGI10903000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10903000" type="text" value="2" size="3" name="GI10903000" <%=strGI10903000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10903000" type="text" value="88" size="3" name="GI10903000" <%=strGI10903000answer3%> >
		</td>

		</tr>

		<tr>
		<td>
Sister
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10904000" type="text" value="1" size="3" name="GI10904000" <%=strGI10904000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10904000" type="text" value="2" size="3" name="GI10904000" <%=strGI10904000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10904000" type="text" value="88" size="3" name="GI10904000" <%=strGI10904000answer3%> >
		</td>
		</tr>

		<tr>
		<td>
Son
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10905000" type="text" value="1" size="3" name="GI10905000" <%=strGI10905000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10905000" type="text" value="2" size="3" name="GI10905000" <%=strGI10905000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10905000" type="text" value="88" size="3" name="GI10905000" <%=strGI10905000answer3%> >
		</td>
		</tr>
		<tr>
		<td>
Daughter
		</td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="required" id="GI10906000" type="text" value="1" size="3" name="GI10906000" <%=strGI10906000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10906000" type="text" value="2" size="3" name="GI10906000" <%=strGI10906000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" id="GI10906000" type="text" value="88" size="3" name="GI10906000" <%=strGI10906000answer3%> >
		</td>
		</tr>

		<tr>
		<td>
Other, specify:
		<div class="hiddenQ"><input id="GI10907000_TXT" class="requiredIfBranchActive" "type="text" size="15" name="GI10907000_TXT" value='<%=Session("GI10907000_TXT")%>' ></div><br></td>
		</td>
		<td style="text-align: center;">
		<input type="radio" class="qTrigger required" id="GI10907000" type="text" value="1" size="3" name="GI10907000" <%=strGI10907000answer1%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" class="qTriggerOff" id="GI10907000" type="text" value="2" size="3" name="GI10907000" <%=strGI10907000answer2%> >
		</td>
		<td style="text-align: center;">
		<input type="radio" class="qTriggerOff" id="GI10907000" type="text" value="88" size="3" name="GI10907000" <%=strGI10907000answer3%> >
		</td>
		</tr>


		   </tbody>
		</table>

</div><!-- [ /#tableQualityofLife ] -->
</fieldset>

</div><!-- [ /#formBlock ] -->
<div class="ResetBox">
</div>
	
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
