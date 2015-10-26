<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"


if Request.Form("ispostback") <> "1" then
	if Session("EPQ30104000")="1" then
		strEPQ30104000single="checked"
	end if
	if Session("EPQ30104000")="2" then
		strEPQ30104000married="checked"
	end if
	if Session("EPQ30104000")="3" then
		strEPQ30104000widowed="checked"
	end if
	if Session("EPQ30104000")="4" then
		strEPQ30104000cohabitating="checked"
	end if
	if Session("EPQ30104000")="5" then
		strEPQ30104000divorced="checked"
	end if
	if Session("EPQ30104000")="99" then
		strEPQ30104000prefer="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30104000string")= ""
	Session("EPQ30104000") = Request.Form("EPQ30104000")
	if Session("EPQ30104000") = "1" then 
		Session("EPQ30104000string")= "Single"
	end if
	if Session("EPQ30104000") = "2" then 
		Session("EPQ30104000string")= "Married"
	end if
	if Session("EPQ30104000") = "3" then 
		Session("EPQ30104000string")= "Widowed"
	end if
	if Session("EPQ30104000") = "4" then 
		Session("EPQ30104000string")= "Cohabitating/Living Together"
	end if
	if Session("EPQ30104000") = "5" then 
		Session("EPQ30104000string")= "Divorced/Separated"
	end if
	if Session("EPQ30104000") = "99" then 
		Session("EPQ30104000string")= "Refuse to answer"
	end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="6"
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if


if Request.Form("ContinueID")="1" then
	Session("Page")="0"
	if Session("EPQ30101000")="3" then 
	Session("Page")="8"
	else 
	Session("Page")="0"
	end if
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "demographicsmaster.asp"
end if

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
		
    <form action="demographics7.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
    <legend class="QuestionBox">
What is your current marital or relationship status?<br>
    </legend>

  
    <div class="QuestionAnswersBox">

      <input type="radio" name="EPQ30104000" value="5" id="EPQ301040004" class="required" <%=strEPQ30104000divorced%> >
      <label for="EPQ301040004">Divorced or separated</label><br>
      <input type="radio" name="EPQ30104000" value="4" id="EPQ301040002" class="required" <%=strEPQ30104000cohabitating%> >
      <label for="EPQ301040002">Domestic partnership or civil union</label><br>

      <input type="radio" name="EPQ30104000" value="2" id="EPQ301040003" class="required" <%=strEPQ30104000married%> >
      <label for="EPQ301040003">Married</label><br>

      <input type="radio" name="EPQ30104000" value="1" id="EPQ301040001" class="required" <%=strEPQ30104000single%> >
      <label for="EPQ301040001">Single</label><br>


      <input type="radio" name="EPQ30104000" value="3" id="EPQ301040005" class="required" <%=strEPQ30104000widowed%> >
      <label for="EPQ301040005">Widowed</label><br>

      <input type="radio" name="EPQ30104000" value="99" id="EPQ301040006" class="required" <%=strEPQ30104000prefer%> >
      <label for="EPQ301040006">Prefer not to answer</label><br>
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
