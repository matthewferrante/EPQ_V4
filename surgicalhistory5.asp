
<%

Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("EPQ30704000")="1" then
		strEPQ30704000answer1="checked"
	end if
	if Session("EPQ30704000")="2" then
		strEPQ30704000answer2="checked"
	end if

	if Session("EPQ30705000")="1" then
		strEPQ30705000answer1="checked"
	end if
	if Session("EPQ30705000")="0" then
		strEPQ30705000answer2="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30703000string")= ""
	Session("EPQ30704000string")= ""
	Session("EPQ30705000string")= ""


	Session("EPQ30703000") = Request.Form("EPQ30703000")
	Session("EPQ30704000") = Request.Form("EPQ30704000")
	Session("EPQ30705000") = Request.Form("EPQ30705000")

	if Session("EPQ30703000") = "1" then 
		Session("EPQ30703000string")= ""
	end if
	if Session("EPQ30703000") = "0" then 
		Session("EPQ30703000string")= ""
	end if
	if Session("EPQ30703000") = "77" then 
		Session("EPQ30703000string")= ""
	end if

	if Session("EPQ30704000") = "1" then 
		Session("EPQ30704000string")= ""
	end if
	if Session("EPQ30704000") = "2" then 
		Session("EPQ30704000string")= ""
	end if

	if Session("EPQ30705000") = "1" then 
		Session("EPQ30705000string")= ""
	end if
	if Session("EPQ30705000") = "0" then 
		Session("EPQ30705000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	If Session("Gender")="F" then 
		Session("Page")=213
	else
		Session("Page")=213
	end if
		
	Response.Redirect "surgicalhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30703000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if


if Session("Gender")="F" then
 If Session("TEMP1EPQ30756000b")="1" OR Session("TEMP3EPQ30756100b")="1"  OR Session("TEMP4EPQ30756100b")="1"  then
	Session("Page")="7"
	Response.Redirect "surgicalhistorymaster.asp"
 else
 end if
end if


	Session("Page")="9"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"


	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
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


    <form action="surgicalhistory5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QuestionBox">
How many breast biopsies have you had?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30704000" value="1" id="EPQ307040001" <%=strEPQ30704000answer1%>>
		<label for="EPQ307040001">One</label><br>
		<input type="radio" name="EPQ30704000" value="2" id="EPQ307040002" <%=strEPQ30704000answer2%>>
		<label for="EPQ307040002">More than one</label><br>
</label><br>
	</div><!-- [ /#AnswerBox] -->

	<div class="QuestionBox">
	Were any of your breast biopsies diagnosed as cancer?<br>
	</div>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30705000" value="1" id="EPQ307050001" <%=strEPQ30705000answer1%>>
		<label for="EPQ307050001">Yes</label><br>
		<input type="radio" name="EPQ30705000" value="0" id="EPQ307050002" <%=strEPQ30705000answer2%>>
		<label for="EPQ307050002">No</label><br>
	</label><br>
	</div><!-- [ /#AnswerBox] -->

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
