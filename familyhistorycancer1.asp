
<%

Session("FamilyHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Family History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


end if
	

if Request.Form("ispostback")="1" then

	Session("TEMPEPQ31102000") = Request.Form("TEMPEPQ31102000")
Session("TEMPEPQ31103000") = Request.Form("TEMPEPQ31103000")
Session("TEMPEPQ31104000") = Request.Form("TEMPEPQ31104000")
Session("TEMPEPQ31105000") = Request.Form("TEMPEPQ31105000")
end if

if Request.Form("StopID")="1" then
		Session("FamilyHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then


	if Session("TEMPEPQ30701010")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Session("FamilyHistoryCancerSectionStatus")=""
		Response.Redirect "surgicalhistorymaster.asp"
	end if
	if Session("TEMPEPQ30701020")="1" then
		Session("ReturnID")="1"
		Session("Page")=11
		Session("FamilyHistoryCancerSectionStatus")=""
		Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("Gender")="F" then 
	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Session("FamilyHistoryCancerSectionStatus")="Incomplete"
	Response.Redirect "surgicalhistorymaster.asp"

	else

	Session("Page")="11"
	 <!--#include file="autosavefunction.asp"-->
	Session("FamilyHistoryCancerSectionStatus")="Incomplete"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

end if


if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorycancermaster.asp"
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
It is very important that we know additional information about the medical history of your biological relatives, including those diagnosed with cancer and/or other chronic health problems. Please note that we are referring to only your blood-related (biological) relatives
</div>

<br>
    <form action="familyhistorycancer1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


	<fieldset><legend class='QuestionBox'>
How many blood-related brothers do you have?	</legend>
	<div class="QuestionAnswersBox">

<input id="TEMPEPQ31102000" type="text" size="5" name="TEMPEPQ31102000" class="required" maxlength="2" value=<%=Session("TEMPEPQ31102000")%>>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
How many blood-related sisters do you have?	</legend>
	<div class="QuestionAnswersBox">

<input id="TEMPEPQ31103000" type="text" size="5" name="TEMPEPQ31103000" class="required" maxlength="2" value=<%=Session("TEMPEPQ31103000")%>>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
How many blood-related sons do you have?	</legend>
	<div class="QuestionAnswersBox">

<input id="TEMPEPQ31104000" type="text" size="5" name="TEMPEPQ31104000" class="required" maxlength="2" value=<%=Session("TEMPEPQ31104000")%>>
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

	<fieldset><legend class='QuestionBox'>
How many blood-related daughters do you have?	</legend>
	<div class="QuestionAnswersBox">

<input id="TEMPEPQ31105000" type="text" size="5" name="TEMPEPQ31105000" class="required" maxlength="2" value=<%=Session("TEMPEPQ31105000")%>>
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
