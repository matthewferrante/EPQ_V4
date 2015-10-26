
<%

Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30702160")="1" then
		strEPQ30702160answer1="checked"
	end if
	if Session("EPQ30702170")="1" then
		strEPQ30702170answer1="checked"
	end if
	if Session("EPQ30702180")="1" then
		strEPQ30702180answer1="checked"
	end if
	if Session("EPQ30702190")="1" then
		strEPQ30702190answer1="checked"
	end if
	if Session("EPQ30702200")="1" then
		strEPQ30702200answer1="checked"
	end if
	if Session("EPQ30702210")="1" then
		strEPQ30702210answer1="checked"
	end if
	if Session("EPQ30702220")="1" then
		strEPQ30702220answer1="checked"
	end if
	if Session("EPQ30702230")="1" then
		strEPQ30702230answer1="checked"
	end if
	if Session("EPQ30702240")="1" then
		strEPQ30702240answer1="checked"
	end if
	if Session("EPQ30702250")="1" then
		strEPQ30702250answer1="checked"
	end if
	if Session("EPQ30702260")="1" then
		strEPQ30702260answer1="checked"
	end if
	if Session("EPQ30702270")="1" then
		strEPQ30702270answer1="checked"
	end if
	if Session("EPQ30702280")="1" then
		strEPQ30702280answer1="checked"
	end if
	if Session("EPQ30702290")="1" then
		strEPQ30702290answer1="checked"
	end if
	if Session("EPQ30702300")="1" then
		strEPQ30702300answer1="checked"
	end if
	if Session("EPQ30702310")="1" then
		strEPQ30702310answer1="checked"
	end if
	if Session("EPQ30702320")="1" then
		strEPQ30702320answer1="checked"
	end if
	if Session("EPQ30702330")="1" then
		strEPQ30702330answer1="checked"
	end if
	if Session("EPQ30702340")="1" then
		strEPQ30702340answer1="checked"
	end if
	if Session("EPQ30702350")="1" then
		strEPQ30702350answer1="checked"
	end if
	if Session("EPQ30702360")="1" then
		strEPQ30702360answer1="checked"
	end if
	if Session("EPQ30702370")="1" then
		strEPQ30702370answer1="checked"
	end if
	if Session("EPQ30702380")="1" then
		strEPQ30702380answer1="checked"
	end if
	if Session("EPQ30702390")="1" then
		strEPQ30702390answer1="checked"
	end if
	if Session("EPQ30702400")="1" then
		strEPQ30702400answer1="checked"
	end if
	if Session("EPQ30702410")="1" then
		strEPQ30702410answer1="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ30702160") = Request.Form("EPQ30702160")
	Session("EPQ30702170") = Request.Form("EPQ30702170")
	Session("EPQ30702180") = Request.Form("EPQ30702180")
	Session("EPQ30702190") = Request.Form("EPQ30702190")
	Session("EPQ30702200") = Request.Form("EPQ30702200")
	Session("EPQ30702210") = Request.Form("EPQ30702210")
	Session("EPQ30702220") = Request.Form("EPQ30702220")
	Session("EPQ30702230") = Request.Form("EPQ30702230")
	Session("EPQ30702240") = Request.Form("EPQ30702240")
	Session("EPQ30702250") = Request.Form("EPQ30702250")
	Session("EPQ30702260") = Request.Form("EPQ30702260")
	Session("EPQ30702270") = Request.Form("EPQ30702270")
	Session("EPQ30702280") = Request.Form("EPQ30702280")
	Session("EPQ30702290") = Request.Form("EPQ30702290")
	Session("EPQ30702300") = Request.Form("EPQ30702300")
	Session("EPQ30702310") = Request.Form("EPQ30702310")
	Session("EPQ30702320") = Request.Form("EPQ30702320")
	Session("EPQ30702330") = Request.Form("EPQ30702330")
	Session("EPQ30702340") = Request.Form("EPQ30702340")
	Session("EPQ30702350") = Request.Form("EPQ30702350")
	Session("EPQ30702360") = Request.Form("EPQ30702360")
	Session("EPQ30702370") = Request.Form("EPQ30702370")
	Session("EPQ30702380") = Request.Form("EPQ30702380")
	Session("EPQ30702390") = Request.Form("EPQ30702390")
	Session("EPQ30702400") = Request.Form("EPQ30702400")
	Session("EPQ30702410") = Request.Form("EPQ30702410")

	if Session("EPQ30702160") = "1" then 
		Session("EPQ30702160string")= ""
	else
		Session("EPQ30702160")= "0"
	end if
	if Session("EPQ30702170") = "1" then 
		Session("EPQ30702170string")= ""
	else
		Session("EPQ30702170")= "0"
	end if
	if Session("EPQ30702180") = "1" then 
		Session("EPQ30702180string")= ""
	else
		Session("EPQ30702180")= "0"
	end if
	if Session("EPQ30702190") = "1" then 
		Session("EPQ30702190string")= ""
	else
		Session("EPQ30702190")= "0"
	end if
	if Session("EPQ30702200") = "1" then 
		Session("EPQ30702200string")= ""
	else
		Session("EPQ30702200")= "0"
	end if
	if Session("EPQ30702210") = "1" then 
		Session("EPQ30702210string")= ""
	else
		Session("EPQ30702210")= "0"
	end if
	if Session("EPQ30702220") = "1" then 
		Session("EPQ30702220string")= ""
	else
		Session("EPQ30702220")= "0"
	end if
	if Session("EPQ30702230") = "1" then 
		Session("EPQ30702230string")= ""
	else
		Session("EPQ30702230")= "0"
	end if
	if Session("EPQ30702240") = "1" then 
		Session("EPQ30702240string")= ""
	else
		Session("EPQ30702240")= "0"
	end if
	if Session("EPQ30702240") = "1" then 
		Session("EPQ30702240string")= ""
	else
		Session("EPQ30702240")= "0"
	end if
	if Session("EPQ30702250") = "1" then 
		Session("EPQ30702250string")= ""
	else
		Session("EPQ30702250")= "0"
	end if
	if Session("EPQ30702260") = "1" then 
		Session("EPQ30702260string")= ""
	else
		Session("EPQ30702260")= "0"
	end if
	if Session("EPQ30702270") = "1" then 
		Session("EPQ30702270string")= ""
	else
		Session("EPQ30702270")= "0"
	end if
	if Session("EPQ30702280") = "1" then 
		Session("EPQ30702280string")= ""
	else
		Session("EPQ30702280")= "0"
	end if
	if Session("EPQ30702290") = "1" then 
		Session("EPQ30702290string")= ""
	else
		Session("EPQ30702290")= "0"
	end if
	if Session("EPQ30702300") = "1" then 
		Session("EPQ30702300string")= ""
	else
		Session("EPQ30702300")= "0"
	end if
	if Session("EPQ30702310") = "1" then 
		Session("EPQ30702310string")= ""
	else
		Session("EPQ30702310")= "0"
	end if
	if Session("EPQ30702320") = "1" then 
		Session("EPQ30702320string")= ""
	else
		Session("EPQ30702320")= "0"
	end if
	if Session("EPQ30702330") = "1" then 
		Session("EPQ30702330string")= ""
	else
		Session("EPQ30702330")= "0"
	end if
	if Session("EPQ30702340") = "1" then 
		Session("EPQ30702340string")= ""
	else
		Session("EPQ30702340")= "0"
	end if
	if Session("EPQ30702350") = "1" then 
		Session("EPQ30702350string")= ""
	else
		Session("EPQ30702350")= "0"
	end if
	if Session("EPQ30702360") = "1" then 
		Session("EPQ30702360string")= ""
	else
		Session("EPQ30702360")= "0"
	end if
	if Session("EPQ30702370") = "1" then 
		Session("EPQ30702370string")= ""
	else
		Session("EPQ30702370")= "0"
	end if
	if Session("EPQ30702380") = "1" then 
		Session("EPQ30702380string")= ""
	else
		Session("EPQ30702380")= "0"
	end if
	if Session("EPQ30702390") = "1" then 
		Session("EPQ30702390string")= ""
	else
		Session("EPQ30702390")= "0"
	end if
	if Session("EPQ30702400") = "1" then 
		Session("EPQ30702400string")= ""
	else
		Session("EPQ30702400")= "0"
	end if
	if Session("EPQ30702410") = "1" then 
		Session("EPQ30702410string")= ""
	else
		Session("EPQ30702410")= "0"
	end if

end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"	

	if Session("Gender")="M" then
	Session("Page")="3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	if Session("EPQ30706000")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
	else
	Session("Page")="6"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30702160")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

If Session("Gender")="F" then
	Session("Page")="9"
else
	Session("Page")="10"
end if
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


    <form action="surgicalhistory8.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QuestionBox">
Which surgeries have you had? (Mark all that apply)<br>
	</div>
	<div class="QuestionAnswersBox">
<span class="column1">
		<input type="checkbox" name="EPQ30702160" value="1" id="EPQ30702160" <%=strEPQ30702160answer1%>>
		<label for="EPQ30702160">Ankle or leg fracture repair</label><br>
		<input type="checkbox" name="EPQ30702180" value="1" id="EPQ30702180" <%=strEPQ30702180answer1%>>
		<label for="EPQ30702180">Appendectomy (surgery for appendicitis)</label><br>
		<input type="checkbox" name="EPQ30702200" value="1" id="EPQ30702200" <%=strEPQ30702200answer1%>>
		<label for="EPQ30702200">Arthroscopic knee surgery (through a small incision)</label><br>
		<input type="checkbox" name="EPQ30702220" value="1" id="EPQ30702220" <%=strEPQ30702220answer1%>>
		<label for="EPQ30702220">Back surgery</label><br>

		<input type="checkbox" name="EPQ30702240" value="1" id="EPQ30702240" <%=strEPQ30702240answer1%>>
		<label for="EPQ30702240">Bronchoscopy (a tube with a camera<br> is inserted into the lungs)</label><br>

		<input type="checkbox" name="EPQ30702270" value="1" id="EPQ30702270" <%=strEPQ30702270answer1%>>
		<label for="EPQ30702270">Cardiac catheterization (a tube is<br> sent through an IV to check your heart)</label><br>
		<input type="checkbox" name="EPQ30702300" value="1" id="EPQ30702300" <%=strEPQ30702300answer1%>>
		<label for="EPQ30702300">Carotid endarterectomy</label><br>
		<input type="checkbox" name="EPQ30702320" value="1" id="EPQ30702320" <%=strEPQ30702320answer1%>>
		<label for="EPQ30702320">Carpal tunnel surgery</label><br>
		<input type="checkbox" name="EPQ30702340" value="1" id="EPQ30702340" <%=strEPQ30702340answer1%>>
		<label for="EPQ30702340">Colonoscopy</label><br>
		<input type="checkbox" name="EPQ30702360" value="1" id="EPQ30702360" <%=strEPQ30702360answer1%>>
		<label for="EPQ30702360">Ear surgery</label><br>
		<input type="checkbox" name="EPQ30702380" value="1" id="EPQ30702380" <%=strEPQ30702380answer1%>>
		<label for="EPQ30702380">Endoscopy</label><br>
		<input type="checkbox" name="EPQ30702390" value="1" id="EPQ30702390" <%=strEPQ30702390answer1%>>
		<label for="EPQ30702390">Exploratory surgery</label><br>
		<input type="checkbox" name="EPQ30702410" value="1" id="EPQ30702410" <%=strEPQ30702410answer1%>>
		<label for="EPQ30702410">Eye surgery, or lens extraction, or Lasik</label><br>
</span>
<span class="column2">
		<input type="checkbox" name="EPQ30702170" value="1" id="EPQ30702170" <%=strEPQ30702170answer1%>>
		<label for="EPQ30702170">Gallbladder removal</label><br>
		<input type="checkbox" name="EPQ30702190" value="1" id="EPQ30702190" <%=strEPQ30702190answer1%>>
		<label for="EPQ30702190">Gastric bypass</label><br>
		<input type="checkbox" name="EPQ30702210" value="1" id="EPQ30702210" <%=strEPQ30702210answer1%>>
		<label for="EPQ30702210">Heart bypass surgery (CABG)</label><br>
		<input type="checkbox" name="EPQ30702230" value="1" id="EPQ30702230" <%=strEPQ30702230answer1%>>
		<label for="EPQ30702230">Hernia repair</label><br>
		<input type="checkbox" name="EPQ30702250" value="1" id="EPQ30702250" <%=strEPQ30702250answer1%>>
		<label for="EPQ30702250">Joint repair</label><br>
		<input type="checkbox" name="EPQ30702260" value="1" id="EPQ30702260" <%=strEPQ30702260answer1%>>
		<label for="EPQ30702260">Joint replacements (knee, hip, etc)</label><br>
		<input type="checkbox" name="EPQ30702280" value="1" id="EPQ30702280" <%=strEPQ30702280answer1%>>
		<label for="EPQ30702280">Nasal surgery</label><br>
		<input type="checkbox" name="EPQ30702290" value="1" id="EPQ30702290" <%=strEPQ30702290answer1%>>
		<label for="EPQ30702290">Plastic surgery</label><br>
		<input type="checkbox" name="EPQ30702310" value="1" id="EPQ30702310" <%=strEPQ30702310answer1%>>
		<label for="EPQ30702310">Shoulder surgery</label><br>
		<input type="checkbox" name="EPQ30702330" value="1" id="EPQ30702330" <%=strEPQ30702330answer1%>>
		<label for="EPQ30702330">Shunt insertion or removal</label><br>
		<input type="checkbox" name="EPQ30702350" value="1" id="EPQ30702350" <%=strEPQ30702350answer1%>>
		<label for="EPQ30702350">Skin surgery</label><br>
		<input type="checkbox" name="EPQ30702370" value="1" id="EPQ30702370" <%=strEPQ30702370answer1%>>
		<label for="EPQ30702370">Tonsillectomy or adenoidectomy <br>(removal of tonsils or adenoids)</label><br>
		<input type="checkbox" name="EPQ30702400" value="1" id="EPQ30702400" <%=strEPQ30702400answer1%>>
		<label for="EPQ30702400">Other surgery</label><br>
</span>

	</div><!-- [ /#AnswerBox] -->
<div class="ResetBox">
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
