
<%

Session("CurrentSymptomsSectionStatus")="Current"
Session("PageHolder")="Current Symptoms"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30509000")="1" then
		strEPQ30509000answer1="checked"
	end if
	if Session("EPQ30509000")="2" then
		strEPQ30509000answer2="checked"
	end if
	if Session("EPQ30509000")="3" then
		strEPQ30509000answer3="checked"
	end if
	if Session("EPQ30509000")="4" then
		strEPQ30509000answer4="checked"
	end if
	if Session("EPQ30509000")="5" then
		strEPQ30509000answer5="checked"
	end if
	if Session("EPQ30509000")="6" then
		strEPQ30509000answer6="checked"
	end if
	if Session("EPQ30509000")="7" then
		strEPQ30509000answer7="checked"
	end if
	if Session("EPQ30509000")="8" then
		strEPQ30509000answer8="checked"
	end if
	if Session("EPQ30509000")="9" then
		strEPQ30509000answer9="checked"
	end if
	if Session("EPQ30509000")="10" then
		strEPQ30509000answer10="checked"
	end if


	if Session("EPQ30510000")="1" then
		strEPQ30510000answer1="checked"
	end if
	if Session("EPQ30510000")="2" then
		strEPQ30510000answer2="checked"
	end if
	if Session("EPQ30510000")="3" then
		strEPQ30510000answer3="checked"
	end if
	if Session("EPQ30510000")="4" then
		strEPQ30510000answer4="checked"
	end if
	if Session("EPQ30510000")="5" then
		strEPQ30510000answer5="checked"
	end if
	if Session("EPQ30510000")="6" then
		strEPQ30510000answer6="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30509000string")= ""
	Session("EPQ30510000string")= ""


	Session("EPQ30509000") = Request.Form("EPQ30509000")
	Session("EPQ30510000") = Request.Form("EPQ30510000")
	Session("EPQ30510000specify") = Request.Form("EPQ30510000specify")

	if Session("EPQ30509000") = "1" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "2" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "3" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "4" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "5" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "6" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "7" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "8" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "9" then 
		Session("EPQ30509000string")= ""
	end if
	if Session("EPQ30509000") = "10" then 
		Session("EPQ30509000string")= ""
	end if

	if Session("EPQ30510000") = "1" then 
		Session("EPQ30510000string")= ""
	end if
	if Session("EPQ30510000") = "2" then 
		Session("EPQ30510000string")= ""
	end if
	if Session("EPQ30510000") = "3" then 
		Session("EPQ30510000string")= ""
	end if
	if Session("EPQ30510000") = "4" then 
		Session("EPQ30510000string")= ""
	end if
	if Session("EPQ30510000") = "5" then 
		Session("EPQ30510000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CurrentSymptomsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30509000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30508090")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
	end if

	Session("Page")="9"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "currentsymptomsmaster.asp"
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


    <form action="currentsymptoms6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
    <legend class="QuestionBox">
      For your breast pain, please describe how bad the pain is on the following scale:<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30509000" value="1" id="EPQ30509001" class="required" <%=strEPQ30509000answer1%>>
		<label for="EPQ30509001">1 (Little pain)</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="2" id="EPQ30509002" <%=strEPQ30509000answer2%>>
		<label for="EPQ30509002">2</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="3" id="EPQ30509003" <%=strEPQ30509000answer3%>>
		<label for="EPQ30509003">3</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="4" id="EPQ30509004" <%=strEPQ30509000answer4%>>
		<label for="EPQ30509004">4</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="5" id="EPQ30509005" <%=strEPQ30509000answer5%>>
		<label for="EPQ30509005">5</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="6" id="EPQ30509006" <%=strEPQ30509000answer6%>>
		<label for="EPQ30509006">6</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="7" id="EPQ30509007" <%=strEPQ30509000answer7%>>
		<label for="EPQ30509007">7</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="8" id="EPQ30509008" <%=strEPQ30509000answer8%>>
		<label for="EPQ30509008">8</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="9" id="EPQ30509009" <%=strEPQ30509000answer9%>>
		<label for="EPQ30509009">9</label>&nbsp;&nbsp;&nbsp;
		<input type="radio" name="EPQ30509000" value="10" id="EPQ30509010" <%=strEPQ30509000answer10%>>
		<label for="EPQ30509010">10 (Worst pain)</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

<% if Session("Gender")="F" then %>
	<fieldset>
    <legend class="QuestionBox">
      When are you having breast pain?<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="radio" name="EPQ30510000" value="1" id="EPQ30510001" class="required" <%=strEPQ30510000answer1%>>
		<label for="EPQ30510001">About 3 to 7 days before my period starts</label><br>
		<input type="radio" name="EPQ30510000" value="2" id="EPQ30510002" <%=strEPQ30510000answer2%>>
		<label for="EPQ30510002">On the same day my period starts</label><br>
		<input type="radio" name="EPQ30510000" value="3" id="EPQ30510003" <%=strEPQ30510000answer3%>>
		<label for="EPQ30510003">I have constant breast pain</label><br>

</span>
<span class="column2">
		<input type="radio" name="EPQ30510000" value="6" id="EPQ30510001" <%=strPQ30510000answer6%>>
		<label for="EPQ30510004">I have pain when touched or with pressure </label><br>

		<input type="radio" name="EPQ30510000" value="4" id="EPQ30510004" <%=strEPQ30510000answer4%>>
		<label for="EPQ30510004">The pain comes and goes with no distinct pattern</label><br>
		<input type="radio" name="EPQ30510000" value="5" id="EPQ30510005" <%=strEPQ30510000answer5%>>
		<label for="EPQ30510005">Other, specify:</label>		<input id="EPQ30510000specify" type="text" maxlength="15" size="15" name="EPQ30510000specify" class="requiredIfPreviousRadio" value='<%=Session("EPQ30510000specify")%>' ><br>
</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<% end if %>

<% if Session("Gender")="M" then %>
	<fieldset>
    <legend class="QuestionBox">
      When are you having breast pain?<br>
	  </legend>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="radio" name="EPQ30510000" value="3" id="EPQ30510003" <%=strEPQ30510000answer3%>>
		<label for="EPQ30510003">I have constant breast pain</label><br>
		<input type="radio" name="TEMPEPQ30510000" value="5" id="TEMPEPQ30510004" <%=strTEMPEPQ30510000answer5%>>
		<label for="EPQ30510004">I have pain when touched or with pressure </label><br>


</span>
<span class="column2">
		<input type="radio" name="EPQ30510000" value="4" id="EPQ30510004" <%=strEPQ30510000answer4%>>
		<label for="EPQ30510004">The pain comes and goes with no distinct pattern</label><br>
		<input type="radio" name="EPQ30510000" value="5" id="EPQ30510005" <%=strEPQ30510000answer5%>>
		<label for="EPQ30510005">Other, specify:</label>		<input id="EPQ30510000specify" type="text" maxlength="75" size="15" name="EPQ30510000specify" class="requiredIfPreviousRadio" value='<%=Session("EPQ30510000specify")%>' ><br>
</span>
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
	<script>
	$('#EPQ30510000specify').keyup(function(event) {
		if (event.target.value) {
			$('#EPQ30510000specify').prevAll(':radio').first().attr('checked', 'checked');
			console.log('full');
		} else {
			$('#EPQ30510000specify').prevAll(':radio').first().removeAttr('checked');
			console.log('empty');
		}
	});
</script>
 </body>
</html>
