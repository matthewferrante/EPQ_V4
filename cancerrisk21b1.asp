
<%

Session("CancerRiskStatus")="Current"
Session("PageHolder")="Cancer Risk"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

end if
	

if Request.Form("ispostback")="1" then
	Session("THRC30605300") = Request.Form("THRC30605300")
	Session("THRC30605400") = Request.Form("THRC30605400")
	Session("THRC30605500") = Request.Form("THRC30605500")
end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="21b"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("Page")="40"
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


    <form action="cancerrisk21b1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		

  <fieldset>
  <legend class='QuestionBox'>
		<label for="THRC39500000">On average, how many drinks do you (or did you) drink per week?<br></label>
	</legend>
<% if Session("THRC30605000")="1" or Session("THRC30605000")="2" then %>
	<div class="QuestionAnswersBox">
		Beer or malt liquor<br><input type="text" size="2" maxlength="3" id="THRC30605300" class="required alcoholConsumption" name="THRC30605300" value=<%=Session("THRC30605300")%> > 12oz drinks 
	</div><!-- [ /#AnswerBox] -->   

<% end if%>

<% if Session("THRC30605100")="1" or Session("THRC30605100")="2" then %>
	<div class="QuestionAnswersBox">
		Wine or wine coolers<br><input type="text" size="2" maxlength="3" id="THRC30605400" class="required alcoholConsumption" name="THRC30605400" value=<%=Session("THRC30605400")%> > 5 oz glasses
	</div><!-- [ /#AnswerBox] -->   

<% end if%>

<% if Session("THRC30605200")="1" or Session("THRC30605200")="2" then %>
	<div class="QuestionAnswersBox">
		Liquor or cocktails<br><input type="text" size="2" maxlength="3" id="THRC30605500" class="required alcoholConsumption" name="THRC30605500" value=<%=Session("THRC30605500")%> > shots or cocktails containing one shot
	</div><!-- [ /#AnswerBox] -->   
  </fieldset>

<% end if%>

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
