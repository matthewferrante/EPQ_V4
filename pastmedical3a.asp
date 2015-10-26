
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("GI10402000")="1" then
		strGI10402000answer1="checked"
	end if
	if Session("GI10403000")="1" then
		strGI10403000answer1="checked"
	end if
	if Session("GI10404000")="1" then
		strGI10404000answer1="checked"
	end if
	if Session("GI10405000")="1" then
		strGI10405000answer1="checked"
	end if
	if Session("GI10407000")="1" then
		strGI10407000answer1="checked"
	end if

	if Session("GI10408000")="1" then
		strGI10408000answer1="checked"
	end if
	if Session("GI10408000")="0" then
		strGI10408000answer2="checked"
	end if
	if Session("GI10408000")="3" then
		strGI10408000answer3="checked"
	end if
	

end if
	

if Request.Form("ispostback")="1" then
	Session("GI10402000string")= ""
	Session("GI10402010string")= ""
	Session("GI10403000string")= ""
	Session("GI10403010string")= ""
	Session("GI10404000string")= ""
	Session("GI10404010string")= ""
	Session("GI10405000string")= ""
	Session("GI10406000string")= ""
	Session("GI10405010string")= ""
	Session("GI10407000string")= ""
	Session("GI10408000string")= ""

	Session("GI10402000") = Request.Form("GI10402000")
	Session("GI10402010") = Request.Form("GI10402010")
	Session("GI10403000") = Request.Form("GI10403000")
	Session("GI10403010") = Request.Form("GI10403010")
	Session("GI10404000") = Request.Form("GI10404000")
	Session("GI10404010") = Request.Form("GI10404010")
	Session("GI10405000") = Request.Form("GI10405000")
	Session("GI10406000_TXT") = Request.Form("GI10406000_TXT")
	Session("GI10405010") = Request.Form("GI10405010")
	Session("GI10407000") = Request.Form("GI10407000")
	Session("GI10408000") = Request.Form("GI10408000")

	
end if

if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=3
		Response.Redirect "pastmedicalmaster.asp"
end if


if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30403010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="4"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalmaster.asp"
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


    <form action="pastmedical3a.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

    <fieldset class="eitherNoneOrChecked">
<legend></legend>
	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>



			<tr>
				<th colspan="1">Did a doctor ever say that you had
any of the following problems involving your pancreas?</th>
				<th colspan="1">Age when told</th>
	

		   <tbody>

	<tr>
		<td>
		<input type="checkbox" id="GI10402000" class="qTrigger" type="text" value="1" size="3" name="GI10402000" <%=strGI10402000answer1%> >
Acute Pancreatitis
		</td>
		<td style="text-align: center;">
		<div class="hiddenQ" ><input class="requiredIfBranchActive yearsExposed" id="GI10402010" type="text" size="3" name="GI10402010" value='<%=Session("GI10402010")%>' ><br></div>
		</td>
	</tr>

	<tr>
		<td>
		<input type="checkbox" id="GI10403000" class="qTrigger2" type="text" value="1" size="3" name="GI10403000" <%=strGI10403000answer1%> >
Chronic Pancreatitis
		</td>
		<td style="text-align: center;">
		<div class="hiddenQ2" ><input class="requiredIfBranchActive yearsExposed" id="GI10403010" type="text" size="3" name="GI10403010" value='<%=Session("GI10403010")%>' ><br></div>
		</td>
	</tr>

	<tr>
		<td>
		<input type="checkbox" id="GI10404000" class="qTrigger3" type="text" value="1" size="3" name="GI10404000" <%=strGI10404000answer1%> >
Pancreatic cyst, lesion, or mass
		</td>
		<td style="text-align: center;">
		<div class="hiddenQ3" ><input class="requiredIfBranchActive yearsExposed" id="GI10404010" type="text" size="3" name="GI10404010" value='<%=Session("GI10404010")%>' ><br></div>
		</td>

	</tr>
	<tr>
		<td>
		<input type="checkbox" id="GI10405000" class="qTrigger4" type="text" value="1" size="3" name="GI10405000" <%=strGI10405000answer1%> >
 Other, specify
		<input id="GI10406000_TXT" type="text" maxlength="74" size="30" name="GI10406000_TXT" class="requiredIfPreviousCheckbox" value='<%=Session("GI10406000_TXT")%>' ><br>
		</td>
		<td style="text-align: center;">
		<div class="hiddenQ4" ><input class="requiredIfBranchActive yearsExposed" id="GI10405010" type="text" size="3" name="GI10405010" value='<%=Session("GI10405010")%>' ><br></div>
		</td>
	</tr>


	<tr>

		<td>
		<input type="radio" id="GI10407000" type="text" value="1" size="3" name="GI10407000" <%=strGI10407000answer1%> >
No, I have never had any of these problems</td>
		<td></td>


	</tr>

		   </tbody>
		</table>

</div><!-- [ /#tableQualityofLife ] -->
</fieldset>
<br>
<div>
<fieldset>
	<legend class="QuestionBox">
Did a doctor ever say that you had a blood condition called hemochromatosis (iron overload disorder)?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="GI10408000" value="1" id="GI104080001" class="required" <%=strGI10408000answer1%>>
		<label for="GI104080001">Yes</label><br>
		<input type="radio" name="GI10408000" value="0" id="GI104080002" <%=strGI10408000answer2%>>
		<label for="GI104080002">No</label><br>
		<input type="radio" name="GI10408000" value="3" id="GI104080003" <%=strGI10408000answer3%>>
		<label for="GI104080003">Don't know</label><br>
</div>
</div>
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
	
  <script>
  $('#EPQ30403130').click(function(event) {
    if ( ! $(event.target).is(':checked') ) {
      $('#EPQ30404000').attr('value','');
      $('#EPQ30405000').attr('value','');
    }
  });
  </script>

 </body>
</html>
