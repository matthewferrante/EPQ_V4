
<%

Session("PsychosocialSectionStatus")="Current"
Session("PageHolder")="Psychosocial"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31206000")="1" then
		strEPQ31206000yes="checked"
	end if
	if Session("EPQ31206000")="0" then
		strEPQ31206000no="checked"
	end if
	if Session("EPQ31206000")="88" then
		strEPQ31206000notsure="checked"
	end if

	if Session("EPQ31207000")="1" then
		strEPQ31207000yes="checked"
	end if
	if Session("EPQ31207000")="0" then
		strEPQ31207000no="checked"
	end if
	if Session("EPQ31207000")="88" then
		strEPQ31207000notsure="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ31206000string")= ""
	Session("EPQ31207000string")= ""

	Session("EPQ31206000") = Request.Form("EPQ31206000")
	Session("EPQ31207000") = Request.Form("EPQ31207000")

	if Session("EPQ31206000") = "1" then 
		Session("EPQ31206000string")= "PT is considering having a child in the future"
	end if
	if Session("EPQ31206000") = "0" then 
		Session("EPQ31206000string")= "PT is not considering having a child in the future"
	end if
	if Session("EPQ31206000") = "77" then 
		Session("EPQ31206000string")= ""
	end if
	if Session("EPQ31206000") = "88" then 
		Session("EPQ31206000string")= ""
	end if

	if Session("EPQ31207000") = "1" then 
		Session("EPQ31207000string")= "PT wants to seek fertility counseling"
	end if
	if Session("EPQ31207000") = "0" then 
		Session("EPQ31207000string")= "PT not interested in fertility counseling"
	end if
	if Session("EPQ31207000") = "77" then 
		Session("EPQ31207000string")= ""
	end if
	if Session("EPQ31207000") = "88" then 
		Session("EPQ31207000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("PsychosocialSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=1
		Response.Redirect "psychosocialmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31206000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	if len(Session("EPQ31207000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if
	Session("Page")="3"

	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "psychosocialmaster.asp"
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
The treatments you may receive for your health issue may impact your fertility.  For men this means your sperm may be permanently damaged and you may not be able to conceive a child with your partner. For women this means you may not be able to become pregnant. This varies depending on the type of treatment you receive. You should discuss your fertility concerns with your healthcare providers.
	</div>

<br>
    <form action="psychosocial2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class="QuestionBox">
    Are you considering having a child or children in the future?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31206000" value="1" id="EPQ312060001" class="required" <%=strEPQ31206000yes%>>
		<label for="EPQ312060001">Yes</label><br>
		<input type="radio" name="EPQ31206000" value="0" id="EPQ312060002" <%=strEPQ31206000no%>>
		<label for="EPQ312060002">No</label><br>
		<input type="radio" name="EPQ31206000" value="88" id="EPQ312060003" <%=strEPQ31206000notsure%>>
		<label for="EPQ312060003">Not Sure</label>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>

	<fieldset>
		<legend class="QuestionBox">
			Would you like to discuss fertility-related issues with a specialist?
		</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ31207000" value="1" id="EPQ312070001" class="required" <%=strEPQ31207000yes%>>
		<label for="EPQ312070001">Yes</label><br>
		<input type="radio" name="EPQ31207000" value="0" id="EPQ312070002" <%=strEPQ31207000no%>>
		<label for="EPQ312070002">No</label><br>
		<input type="radio" name="EPQ31207000" value="88" id="EPQ312070003" <%=strEPQ31207000notsure%>>
		<label for="EPQ312070003">Not Sure</label><br>
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
