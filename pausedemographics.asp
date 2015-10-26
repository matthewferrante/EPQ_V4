<%
Session("CurrentSymptomsSection")=2
Session("PageHolder")="Current Symptoms"

if Request.Form("ispostback")=1 then

	Session("reviewsystems_87") = Request.Form("reviewsystems_87")
	Session("reviewsystems_88") = Request.Form("reviewsystems_88")
	Session("reviewsystems_89") = Request.Form("reviewsystems_89")

	if Session("reviewsystems_87") = "1" then
		Session("reviewsystems_87string") = "severe anxiety"
	end if
	if Session("reviewsystems_87") = "2" then
		Session("reviewsystems_87string") = "denied severe anxiety"
	end if
	if Session("reviewsystems_87") = "3" then
		Session("reviewsystems_87string") = "unknown severe anxiety"
	end if

	if Session("reviewsystems_88") = "1" then
		Session("reviewsystems_88string") = "depression"
	end if
	if Session("reviewsystems_88") = "2" then
		Session("reviewsystems_88string") = "denied depression"
	end if
	if Session("reviewsystems_88") = "3" then
		Session("reviewsystems_88string") = "unknown depression"
	end if

	if Session("reviewsystems_89") = "1" then
		Session("reviewsystems_89string") = "prior psychiatric admission or treatment"
	end if
	if Session("reviewsystems_89") = "2" then
		Session("reviewsystems_89string") = "denied prior psychiatric admission or treatment"
	end if
	if Session("reviewsystems_89") = "3" then
		Session("reviewsystems_89string") = "unknown prior psychiatric admission or treatment"
	end if


end if
if Request.Form("StopID")="1" then
		Session("ReviewSystems")=1
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("PauseID")="1" then
		Session("QualityofLifeSection")=1
		Response.Redirect "patientpause.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=18
		Response.Redirect "currentsymptomsmaster.asp"
end if

if Session("ReturnID")="1" then
	if Session("reviewsystems_87") = "1" then
		strreviewsystems_87yes="checked"
	end if
	if Session("reviewsystems_87") = "2" then
		strreviewsystems_87no="checked"
	end if
	if Session("reviewsystems_87") = "3" then
		strreviewsystems_87unknown="checked"
	end if

	if Session("reviewsystems_88") = "1" then
		strreviewsystems_88yes="checked"
	end if
	if Session("reviewsystems_88") = "2" then
		strreviewsystems_88no="checked"
	end if
	if Session("reviewsystems_88") = "3" then
		strreviewsystems_88unknown="checked"
	end if
	if Session("reviewsystems_89") = "1" then
		strreviewsystems_89yes="checked"
	end if
	if Session("reviewsystems_89") = "2" then
		strreviewsystems_89no="checked"
	end if
	if Session("reviewsystems_89") = "3" then
		strreviewsystems_89unknown="checked"
	end if

	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")=1
	Session("CurrentSymptomsSection")=1
	Session("Page")=1
	If Session("Gender")= "F" then
	Response.Redirect "femalemaster.asp"
	else
	Response.Redirect "qualityoflifemaster.asp"
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
		<img src="images/moffitt.gif" />
</div>

<div id="wrapper">
 <div id="formWrapper">

	
		<span class="heading"><B><i>PSYCHIATRIC</b></i></span><br>
		<span class="heading">Please let us know if you have any of the following symptoms</span><br />
		<span class="heading">or have had them to a significant degree in the past.</span><br />
	
   <div id="formBlock">
    <form action="ros19.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ClearID" value="" id="Hidden5">

<!-- [Question boxes ] -->
<div class="QAbox">
<div class="sub_tableROS">
	<div class="row0">
		<div class="header0"> Symptom</div>
		<div class="header1"> Yes</div>
		<div class="header1"> No</div>
		<div class="header2"> Don't Know</div>
	</div>
	<div class="row1">
		<div class="cell0">Severe anxiety</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_87" value="1" id="reviewsystems_87" <%=strreviewsystems_87yes%><br>
		</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_87" value="2" id="reviewsystems_87" <%=strreviewsystems_87no%><br>
		</div>
		<div class="cell2">
		<input type="radio" name="reviewsystems_87" value="3" id="reviewsystems_87" <%=strreviewsystems_87unknown%><br>
		</div>
	</div>
	<div class="row1">
		<div class="cell0">Depression</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_88" value="1" id="reviewsystems_88" <%=strreviewsystems_88yes%><br>
		</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_88" value="2" id="reviewsystems_88" <%=strreviewsystems_88no%><br>
		</div>
		<div class="cell2">
		<input type="radio" name="reviewsystems_88" value="3" id="reviewsystems_88" <%=strreviewsystems_88unknown%><br>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">Prior psychiatric admission or treatment</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_89" value="1" id="reviewsystems_89" <%=strreviewsystems_89yes%><br>
		</div>
		<div class="cell1">
		<input type="radio" name="reviewsystems_89" value="2" id="reviewsystems_89" <%=strreviewsystems_89no%><br>
		</div>
		<div class="cell2">
		<input type="radio" name="reviewsystems_89" value="3" id="reviewsystems_89" <%=strreviewsystems_89unknown%><br>
		</div>
	</div>
&nbsp;<br>
&nbsp;<br>

</div><!-- [ /#subtable] -->

</div><!-- [ /#QABlock ] -->
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
