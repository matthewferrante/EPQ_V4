
<%

Session("PersonalHistoryCancerSectionStatus")="Current"
Session("PageHolder")="Personal History of Cancer"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30310000")="1" then
		strEPQ30310000answer1="checked"
	end if
	if Session("EPQ30310000")="0" then
		strEPQ30310000answer2="checked"
	end if
	if Session("EPQ30310010")="1" then
		strEPQ30310010answer3="checked"
	end if

end if

if Request.Form("ispostback")="1" then
	Session("EPQ30310000")= Request.Form("EPQ30310000")
	Session("EPQ30310010")= Request.Form("EPQ30310010")

end if


if Request.Form("StopID")="1" then
		Session("PersonalHistoryCancerSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=2
		Session("PersonalHistoryCancerSectionStatus")=""
		Response.Redirect "visitbackgroundmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("EPQ30310000string")= ""
	Session("EPQ30310010")= Request.Form("EPQ30310010")
	Session("EPQ30310000")= Request.Form("EPQ30310000")

	if Session("EPQ30310000")="0" then

		Session.Contents.Remove("EPQ30311010")
		Session.Contents.Remove("EPQ30312000")
		Session.Contents.Remove("EPQ30312010")
		Session.Contents.Remove("EPQ30312020")
		Session.Contents.Remove("EPQ30312030")
		Session.Contents.Remove("EPQ30312040")
		Session.Contents.Remove("EPQ30312050")

		Session.Contents.Remove("EPQ30311011")
		Session.Contents.Remove("EPQ30313000")
		Session.Contents.Remove("EPQ30313010")
		Session.Contents.Remove("EPQ30313020")
		Session.Contents.Remove("EPQ30313030")
		Session.Contents.Remove("EPQ30313040")
		Session.Contents.Remove("EPQ30313050")

		Session.Contents.Remove("EPQ30311012")
		Session.Contents.Remove("EPQ30314000")
		Session.Contents.Remove("EPQ30314010")
		Session.Contents.Remove("EPQ30314020")
		Session.Contents.Remove("EPQ30314030")
		Session.Contents.Remove("EPQ30314040")
		Session.Contents.Remove("EPQ30314050")

		Session.Contents.Remove("EPQ30311013")
		Session.Contents.Remove("EPQ30315000")
		Session.Contents.Remove("EPQ30315010")
		Session.Contents.Remove("EPQ30315020")
		Session.Contents.Remove("EPQ30315030")
		Session.Contents.Remove("EPQ30315040")
		Session.Contents.Remove("EPQ30315050")


		Session.Contents.Remove("EPQ30311014")
		Session.Contents.Remove("EPQ30316000")
		Session.Contents.Remove("EPQ30316010")
		Session.Contents.Remove("EPQ30316020")
		Session.Contents.Remove("EPQ30316030")
		Session.Contents.Remove("EPQ30316040")
		Session.Contents.Remove("EPQ30316050")

		Session.Contents.Remove("EPQ30311015")
		Session.Contents.Remove("EPQ30317000")
		Session.Contents.Remove("EPQ30317010")
		Session.Contents.Remove("EPQ30317020")
		Session.Contents.Remove("EPQ30317030")
		Session.Contents.Remove("EPQ30317040")
		Session.Contents.Remove("EPQ30317050")

		Session.Contents.Remove("EPQ30311016")
		Session.Contents.Remove("EPQ30318000")
		Session.Contents.Remove("EPQ30318010")
		Session.Contents.Remove("EPQ30318020")
		Session.Contents.Remove("EPQ30318030")
		Session.Contents.Remove("EPQ30318040")
		Session.Contents.Remove("EPQ30318050")

		Session.Contents.Remove("EPQ30311017")
		Session.Contents.Remove("EPQ30319000")
		Session.Contents.Remove("EPQ30319010")
		Session.Contents.Remove("EPQ30319020")
		Session.Contents.Remove("EPQ30319030")
		Session.Contents.Remove("EPQ30319040")
		Session.Contents.Remove("EPQ30319050")

		Session.Contents.Remove("EPQ30311018")
		Session.Contents.Remove("EPQ30320000")
		Session.Contents.Remove("EPQ30320010")
		Session.Contents.Remove("EPQ30320020")
		Session.Contents.Remove("EPQ30320030")
		Session.Contents.Remove("EPQ30320040")
		Session.Contents.Remove("EPQ30320050")

		Session.Contents.Remove("EPQ30311019")
		Session.Contents.Remove("EPQ30321000")
		Session.Contents.Remove("EPQ30321010")
		Session.Contents.Remove("EPQ30321020")
		Session.Contents.Remove("EPQ30321030")
		Session.Contents.Remove("EPQ30321040")
		Session.Contents.Remove("EPQ30321050")

		Session.Contents.Remove("EPQ30311020")
		Session.Contents.Remove("EPQ30322000")
		Session.Contents.Remove("EPQ30322010")
		Session.Contents.Remove("EPQ30322020")
		Session.Contents.Remove("EPQ30322030")
		Session.Contents.Remove("EPQ30322040")
		Session.Contents.Remove("EPQ30322050")

		Session.Contents.Remove("EPQ30311021")
		Session.Contents.Remove("EPQ30323000")
		Session.Contents.Remove("EPQ30323010")
		Session.Contents.Remove("EPQ30323020")
		Session.Contents.Remove("EPQ30323030")
		Session.Contents.Remove("EPQ30323040")
		Session.Contents.Remove("EPQ30323050")

		Session.Contents.Remove("EPQ30311022")
		Session.Contents.Remove("EPQ30324000")
		Session.Contents.Remove("EPQ30324010")
		Session.Contents.Remove("EPQ30324020")
		Session.Contents.Remove("EPQ30324030")
		Session.Contents.Remove("EPQ30324040")
		Session.Contents.Remove("EPQ30324050")

		Session.Contents.Remove("EPQ30311023")
		Session.Contents.Remove("EPQ30325000")
		Session.Contents.Remove("EPQ30325010")
		Session.Contents.Remove("EPQ30325020")
		Session.Contents.Remove("EPQ30325030")
		Session.Contents.Remove("EPQ30325040")
		Session.Contents.Remove("EPQ30325050")

		Session.Contents.Remove("EPQ30311024")
		Session.Contents.Remove("EPQ30326000")
		Session.Contents.Remove("EPQ30326010")
		Session.Contents.Remove("EPQ30326020")
		Session.Contents.Remove("EPQ30326030")
		Session.Contents.Remove("EPQ30326040")
		Session.Contents.Remove("EPQ30326050")

		Session.Contents.Remove("EPQ30311025")
		Session.Contents.Remove("EPQ30327000")
		Session.Contents.Remove("EPQ30327010")
		Session.Contents.Remove("EPQ30327020")
		Session.Contents.Remove("EPQ30327030")
		Session.Contents.Remove("EPQ30327040")
		Session.Contents.Remove("EPQ30327050")

		Session.Contents.Remove("EPQ30311026")
		Session.Contents.Remove("EPQ30328000")
		Session.Contents.Remove("EPQ30328010")
		Session.Contents.Remove("EPQ30328020")
		Session.Contents.Remove("EPQ30328030")
		Session.Contents.Remove("EPQ30328040")

		Session.Contents.Remove("EPQ30311027")
		Session.Contents.Remove("EPQ30329000")
		Session.Contents.Remove("EPQ30329010")
		Session.Contents.Remove("EPQ30329020")
		Session.Contents.Remove("EPQ30329030")
		Session.Contents.Remove("EPQ30329040")
		Session.Contents.Remove("EPQ30329050")

		Session.Contents.Remove("EPQ30311028")
		Session.Contents.Remove("EPQ30330000")
		Session.Contents.Remove("EPQ30330010")
		Session.Contents.Remove("EPQ30330020")
		Session.Contents.Remove("EPQ30330030")
		Session.Contents.Remove("EPQ30330040")
		Session.Contents.Remove("EPQ30330050")

		Session.Contents.Remove("EPQ30311029")
		Session.Contents.Remove("EPQ30331000")
		Session.Contents.Remove("EPQ30331010")
		Session.Contents.Remove("EPQ30331020")
		Session.Contents.Remove("EPQ30331030")
		Session.Contents.Remove("EPQ30331040")
		Session.Contents.Remove("EPQ30331050")

		Session.Contents.Remove("EPQ30311030")
		Session.Contents.Remove("EPQ30332000")
		Session.Contents.Remove("EPQ30332010")
		Session.Contents.Remove("EPQ30332020")
		Session.Contents.Remove("EPQ30332030")
		Session.Contents.Remove("EPQ30332040")
		Session.Contents.Remove("EPQ30332050")

		Session.Contents.Remove("EPQ30311031")
		Session.Contents.Remove("EPQ30333000")
		Session.Contents.Remove("EPQ30333010")
		Session.Contents.Remove("EPQ30333020")
		Session.Contents.Remove("EPQ30333030")
		Session.Contents.Remove("EPQ30333040")
		Session.Contents.Remove("EPQ30333050")


		Session.Contents.Remove("EPQ30311032")
		Session.Contents.Remove("EPQ30334000")
		Session.Contents.Remove("EPQ30334010")
		Session.Contents.Remove("EPQ30334020")
		Session.Contents.Remove("EPQ30334030")
		Session.Contents.Remove("EPQ30334040")
		Session.Contents.Remove("EPQ30334050")

		Session.Contents.Remove("EPQ30311033")
		Session.Contents.Remove("EPQ30335000")
		Session.Contents.Remove("EPQ30335010")
		Session.Contents.Remove("EPQ30334020")
		Session.Contents.Remove("EPQ30334030")
		Session.Contents.Remove("EPQ30334040")
		Session.Contents.Remove("EPQ30334050")

		Session.Contents.Remove("EPQ30311034")
		Session.Contents.Remove("EPQ30336000")
		Session.Contents.Remove("EPQ30336010")
		Session.Contents.Remove("EPQ30336020")
		Session.Contents.Remove("EPQ30336030")
		Session.Contents.Remove("EPQ30336040")
		Session.Contents.Remove("EPQ30336050")

		Session.Contents.Remove("EPQ30311035")
		Session.Contents.Remove("EPQ30337000")
		Session.Contents.Remove("EPQ30337010")
		Session.Contents.Remove("EPQ30337020")
		Session.Contents.Remove("EPQ30337030")
		Session.Contents.Remove("EPQ30337040")
		Session.Contents.Remove("EPQ30337050")


		Session.Contents.Remove("EPQ30311036")
		Session.Contents.Remove("EPQ30338000")
		Session.Contents.Remove("EPQ30338010")
		Session.Contents.Remove("EPQ30338020")
		Session.Contents.Remove("EPQ30338030")
		Session.Contents.Remove("EPQ30338040")
		Session.Contents.Remove("EPQ30338050")

		Session.Contents.Remove("EPQ30311037")
		Session.Contents.Remove("EPQ30339000")
		Session.Contents.Remove("EPQ30339010")
		Session.Contents.Remove("EPQ30339020")
		Session.Contents.Remove("EPQ30339030")
		Session.Contents.Remove("EPQ30339040")
		Session.Contents.Remove("EPQ30339050")

		Session.Contents.Remove("EPQ30311038")
		Session.Contents.Remove("EPQ30340000")
		Session.Contents.Remove("EPQ30340010")
		Session.Contents.Remove("EPQ30340020")
		Session.Contents.Remove("EPQ30340030")
		Session.Contents.Remove("EPQ30340040")
		Session.Contents.Remove("EPQ30340050")

		Session.Contents.Remove("EPQ30311039")
		Session.Contents.Remove("EPQ30341000")
		Session.Contents.Remove("EPQ30342000")
		Session.Contents.Remove("EPQ30342010")
		Session.Contents.Remove("EPQ30342020")
		Session.Contents.Remove("EPQ30342030")
		Session.Contents.Remove("EPQ30342040")
		Session.Contents.Remove("EPQ30342050")

		Session.Contents.Remove("EPQ30343000")

		Session.Contents.Remove("EPQ30344000")
		Session.Contents.Remove("EPQ30345000")
		Session.Contents.Remove("EPQ30345010")
		Session.Contents.Remove("EPQ30345020")
		Session.Contents.Remove("EPQ30345030")
		Session.Contents.Remove("EPQ30345040")
		Session.Contents.Remove("EPQ30345050")
		Session.Contents.Remove("EPQ30345060")

		Session.Contents.Remove("CUTA10301000")
		Session.Contents.Remove("CUTA10302000")

		Session.Contents.Remove("CUTA10304000")
		Session.Contents.Remove("CUTA10305010")
		Session.Contents.Remove("CUTA10305020")
		Session.Contents.Remove("CUTA10305030")
		Session.Contents.Remove("CUTA10305040")
		Session.Contents.Remove("CUTA10305050")

	end if

	if Session("EPQ30310000")="1" then
		Session("EPQ30310000string")=""
	end if
	if Session("EPQ30310000")="0" then
		Session("EPQ30310000string")="None Reported"
	end if
			
	if Session("EPQ30310000")="77" then
		Session("EPQ30310000string")="PT needs help with personal HX of cancer"
	end if

	if Session("EPQ30310010")="1" then
		Session("EPQ30310010string")="PT coming to Moffitt because may have cancer"
	end if

	if len(Session("EPQ30403000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	if Session("EPQ30310000")="1" then
	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "personalhistorycancermaster.asp"
	else
	Session("Page")="0"
	Session("PersonalHistoryCancerSectionStatus")="Completed"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "personalhistorycancermaster.asp"
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
    <form action="personalhistorycancer1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  
  <fieldset>
    <legend class="QuestionBox">
Have you ever been told by a doctor or other health care professional that you had cancer?<br>
	  </legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30310000" value="1" id="EPQ303100001" class="required" <%=strEPQ30310000answer1%> >
		<label for="EPQ303100001">Yes</label><br>
		<input type="radio" name="EPQ30310000" value="0" id="EPQ303100002" <%=strEPQ30310000answer2%> >
		<label for="EPQ303100002">No</label><br>
<br><br>
		<input type="checkbox" name="EPQ30310010" value="1" id="EPQ30310010" <%=strEPQ30310010answer3%> >
		<label for="EPQ30310010">I am coming to Moffitt because I might have cancer</label><br>


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
