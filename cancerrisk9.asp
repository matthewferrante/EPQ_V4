
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ31147000")="1" then
		strEPQ31147000answer1="checked"
	end if
	if Session("EPQ31147000")="0" then
		strEPQ31147000answer2="checked"
	end if
	if Session("EPQ31147000")="88" then
		strEPQ31147000answer3="checked"
	end if

	if Session("EPQ31148000")="1" then
		strEPQ31148000answer1="checked"
	end if
	if Session("EPQ31148000")="2" then
		strEPQ31148000answer2="checked"
	end if
	if Session("EPQ31148000")="0" then
		strEPQ31148000answer3="checked"
	end if

	if Session("EPQ31149000")="1" then
		strEPQ31149000answer1="checked"
	end if
	if Session("EPQ31149000")="2" then
		strEPQ31149000answer2="checked"
	end if
	if Session("EPQ31149000")="3" then
		strEPQ31149000answer3="checked"
	end if
	if Session("EPQ31149000")="4" then
		strEPQ31149000answer4="checked"
	end if
	if Session("EPQ31149000")="5" then
		strEPQ31149000answer5="checked"
	end if
	if Session("EPQ31149000")="6" then
		strEPQ31149000answer6="checked"
	end if
	if Session("EPQ31149000")="7" then
		strEPQ31149000answer7="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31147000string")= ""
	Session("EPQ31148000string")= ""

	Session("EPQ31147000") = Request.Form("EPQ31147000")
	Session("EPQ31148000") = Request.Form("EPQ31148000")
	Session("EPQ31149000") = Request.Form("EPQ31149000")



	if Session("EPQ31147000") = "1" then 
		Session("EPQ31147000string")= ""
	end if
	if Session("EPQ31147000") = "2" then 
		Session("EPQ31147000string")= ""
	end if
	if Session("EPQ31147000") = "88" then 
		Session("EPQ31147000string")= ""
	end if
	if Session("EPQ31148000") = "1" then 
		Session("EPQ31148000string")= ""
	end if
	if Session("EPQ31148000") = "2" then 
		Session("EPQ31148000string")= ""
	end if
	if Session("EPQ31148000") = "0" then 
		Session("EPQ31147000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("ProductionModeSpoke")="C" then
	if Session("SurveyVersion")="Cutaneous" then
	Session("Page")="16j"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "cancerriskmaster.asp"
	end if
	end if


		Session("ReturnID")="1"
		Session("Page")="8"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31141010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ31147000")="88" or Session("EPQ31147000")="0" then

		Session.Contents.Remove("THRC30300000")
		Session.Contents.Remove("THRC30400010")
		Session.Contents.Remove("THRC30400020")
		Session.Contents.Remove("THRC30400030")
		Session.Contents.Remove("THRC30400040")
		Session.Contents.Remove("THRC30400050")
		Session.Contents.Remove("THRC30400060")
		Session.Contents.Remove("THRC30400070")
		Session.Contents.Remove("THRC30500000")
		Session.Contents.Remove("THRC30601000")
		Session.Contents.Remove("THRC30602000")
		Session.Contents.Remove("THRC30603000")
		Session.Contents.Remove("THRC30604000")
		Session.Contents.Remove("THRC30604100")
		Session.Contents.Remove("THRC30604200")
		Session.Contents.Remove("EPQ31150000")
		Session.Contents.Remove("EPQ31151000")
		Session.Contents.Remove("EPQ31152000")
		Session.Contents.Remove("EPQ31153000")
		Session.Contents.Remove("EPQ31154000")
		Session.Contents.Remove("THRC30700000")
		Session.Contents.Remove("THRC30800000")
		Session.Contents.Remove("THRC30900000")
		Session.Contents.Remove("THRC30910000")
		Session.Contents.Remove("THRC30920000")
		Session.Contents.Remove("THRC30930000")

	end if

	if Session("EPQ31148000")="1" or Session("EPQ31148000")="2" then

		Session.Contents.Remove("THRC30300000")
		Session.Contents.Remove("THRC30400010")
		Session.Contents.Remove("THRC30400020")
		Session.Contents.Remove("THRC30400030")
		Session.Contents.Remove("THRC30400040")
		Session.Contents.Remove("THRC30400050")
		Session.Contents.Remove("THRC30400060")
		Session.Contents.Remove("THRC30400070")
		Session.Contents.Remove("THRC30500000")
		Session.Contents.Remove("THRC30601000")
		Session.Contents.Remove("THRC30602000")
		Session.Contents.Remove("THRC30603000")
		Session.Contents.Remove("THRC30604000")
		Session.Contents.Remove("THRC30604100")
		Session.Contents.Remove("THRC30604200")

	end if

	if Session("EPQ31148000")="0" then
		If Session("SurveyVersion")="Thoracic" then
			Session("Page")="9b"
		else	
			if Session("EPQ31147000")="1" then
			Session("Page")="18"
			else
			Session("Page")="19"
			end if
		end if

		Response.Redirect "cancerriskmaster.asp"

	end if


	if Session("EPQ31147000")="1" then
	Session("Page")="18"
	else
	Session("Page")="19"
	end if

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


    <form action="cancerrisk9.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		


	<fieldset>
  <legend class='QuestionBox'>
During your entire life, have you smoked at least 100 cigarettes, which is about 5 packs of cigarettes?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31147000" value="1" id="EPQ311470001" class="required qTrigger" <%=strEPQ31147000answer1%>>
		<label for="EPQ311470001">Yes</label><br>
		<input type="radio" name="EPQ31147000" value="0" id="EPQ311470002" class="qTriggerOff qTriggerOff2" <%=strEPQ31147000answer2%>>
		<label for="EPQ311470002">No</label><br>
		<input type="radio" name="EPQ31147000" value="88" id="EPQ311470003" class="qTriggerOff qTriggerOff2" <%=strEPQ31147000answer3%>>
		<label for="EPQ311470003">Don't know or not sure</label><br>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

<div class="hiddenQ">
	<fieldset>
  <legend class='QuestionBox'>
Do you <u>now</u> smoke cigarettes?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31148000" value="1" id="EPQ311480001" class="requiredIfBranchActive qTriggerOff2" <%=strEPQ31148000answer1%>>
		<label for="EPQ311480001">Every day</label><br>
		<input type="radio" name="EPQ31148000" value="2" id="EPQ311480002" class="qTriggerOff2" <%=strEPQ31148000answer2%>>
		<label for="EPQ311480002">Some days</label><br>
		<input type="radio" name="EPQ31148000" value="0" id="EPQ311480003" class="qTrigger2" <%=strEPQ31148000answer3%>>
		<label for="EPQ311480003">Not at all</label><br>
	</div><!-- [ /#AnswerBox] -->  
  </fieldset>
</div>

<!-- [Question boxes ] -->		
<div class="hiddenQ2">
	<fieldset>
  <legend class='QuestionBox'>
How long has it been since you last smoked cigarettes regularly?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31149000" value="1" class="requiredIfBranchActive" id="EPQ311490001" <%=strEPQ31149000answer1%>>
		<label for="EPQ311490001">One month or less</label><br>
		<input type="radio" name="EPQ31149000" value="2" id="EPQ311490002" <%=strEPQ31149000answer2%>>
		<label for="EPQ311490002">More than 1 month but 3 months or less</label><br>
		<input type="radio" name="EPQ31149000" value="3" id="EPQ311490003" <%=strEPQ31149000answer3%>>
		<label for="EPQ311490003">More than 3 months but 6 months or less</label><br>
		<input type="radio" name="EPQ31149000" value="4" id="EPQ311490004" <%=strEPQ31149000answer4%>>
		<label for="EPQ311490004">More than 6 months but 1 year or less</label><br>
		<input type="radio" name="EPQ31149000" value="5" id="EPQ311490005" <%=strEPQ31149000answer5%>>
		<label for="EPQ311490005">More than 1 year but 5 years or less</label><br>
		<input type="radio" name="EPQ31149000" value="6" id="EPQ311490006" <%=strEPQ31149000answer6%>>
		<label for="EPQ311490006">More than 5 years but 10 years or less</label><br>
		<input type="radio" name="EPQ31149000" value="7" id="EPQ311490007" <%=strEPQ31149000answer7%>>
		<label for="EPQ311490007">10 years or more</label><br>
	</div><!-- [ /#AnswerBox] --> 
  </fieldset>
</div>

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
