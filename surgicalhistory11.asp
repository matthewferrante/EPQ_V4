
<%

Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ30753000")="1" then
		strEPQ30753000yes="checked"
	end if
	if Session("EPQ30753000")="0" then
		strEPQ30753000no="checked"
	end if
end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30753000string")= ""

	Session("EPQ30753000") = Request.Form("EPQ30753000")

	if Session("EPQ30753000") = "1" then 
		Session("EPQ30753000string")= ""
	end if
	if Session("EPQ30753000") = "0" then 
		Session("EPQ30753000string")= ""
	end if

end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	if Session("EPQ30701010")="0" then
	Session("Page")="2"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	if Session("EPQ30701020")="0" then
	Session("Page")="1"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	if Session("EPQ30701010")="1" then

	If Session("PageCounter") > 30 then
	Session("Page")="106"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 24 then
	Session("Page")="105"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 18 then
	Session("Page")="104"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 12 then
	Session("Page")="103"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 6 then
	Session("Page")="102"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	Session("ReturnID")="1"
	Session("Page")="10"
	Session("FamilyHistoryCancerSectionStatus")=""
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	if Session("EPQ30701020")="1" then

	If Session("PageCounter") > 30 then
	Session("Page")="106"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 24 then
	Session("Page")="105"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 18 then
	Session("Page")="104"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 12 then
	Session("Page")="103"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if

	If Session("PageCounter") > 6 then
	Session("Page")="102"
	Session("ReturnID")="1"
	Response.Redirect "surgicalhistorymaster.asp"
	end if


		Session("Page")="2"

'OVERRIDE BILATERAL SURGERIES IF THERE IS AN ALTERNATIVE
if Session("EPQ30754000")="1" then
Session("Page")="10"
end if
if Session("EPQ30754050")="1" then
Session("Page")="10"
end if
if Session("EPQ30754100")="1" then
Session("Page")="10"
end if
if Session("EPQ30754150")="1" then
Session("Page")="10"
end if
if Session("EPQ30754200")="1" then
Session("Page")="10"
end if
if Session("EPQ30754250")="1" then
Session("Page")="10"
end if
if Session("EPQ30754300")="1" then
Session("Page")="10"
end if
if Session("EPQ30754350")="1" then
Session("Page")="10"
end if
if Session("EPQ30754400")="1" then
Session("Page")="10"
end if
if Session("EPQ30754450")="1" then
Session("Page")="10"
end if
if Session("EPQ30754500")="1" then
Session("Page")="10"
end if
if Session("EPQ30754550")="1" then
Session("Page")="10"
end if
if Session("EPQ30754600")="1" then
Session("Page")="10"
end if
if Session("EPQ30754650")="1" then
Session("Page")="10"
end if
if Session("EPQ30754700")="1" then
Session("Page")="10"
end if
if Session("EPQ30754750")="1" then
Session("Page")="10"
end if
if Session("EPQ30754800")="1" then
Session("Page")="10"
end if
if Session("EPQ30754850")="1" then
Session("Page")="10"
end if
if Session("EPQ30754900")="1" then
Session("Page")="10"
end if
if Session("EPQ30754950")="1" then
Session("Page")="10"
end if
if Session("EPQ30755000")="1" then
Session("Page")="10"
end if
if Session("EPQ30755050")="1" then
Session("Page")="10"
end if
if Session("EPQ30755100")="1" then
Session("Page")="10"
end if
if Session("EPQ30755150")="1" then
Session("Page")="10"
end if
if Session("EPQ30755200")="1" then
Session("Page")="10"
end if
if Session("EPQ30755250")="1" then
Session("Page")="10"
end if
if Session("EPQ30755300")="1" then
Session("Page")="10"
end if
if Session("EPQ30755350")="1" then
Session("Page")="10"
end if
if Session("EPQ30755400")="1" then
Session("Page")="10"
end if
if Session("EPQ30755450")="1" then
Session("Page")="10"
end if
if Session("EPQ30755500")="1" then
Session("Page")="10"
end if
if Session("EPQ30755550")="1" then
Session("Page")="10"
end if
if Session("EPQ30755600")="1" then
Session("Page")="10"
end if
if Session("EPQ30755650")="1" then
Session("Page")="10"
end if
if Session("EPQ30755700")="1" then
Session("Page")="10"
end if
if Session("EPQ30755750")="1" then
Session("Page")="10"
end if
if Session("EPQ30755800")="1" then
Session("Page")="10"
end if
if Session("EPQ30755850")="1" then
Session("Page")="10"
end if
if Session("EPQ30755900")="1" then
Session("Page")="10"
end if
if Session("EPQ30755950")="1" then
Session("Page")="10"
end if
if Session("EPQ30756000")="1" then
Session("Page")="10"
end if
if Session("EPQ30756050")="1" then
Session("Page")="10"
end if
if Session("EPQ30756400")="1" then
Session("Page")="10"
end if
if Session("EPQ30756450")="1" then
Session("Page")="10"
end if
if Session("EPQ30756500")="1" then
Session("Page")="10"
end if
if Session("EPQ30756550")="1" then
Session("Page")="10"
end if
if Session("EPQ30756600")="1" then
Session("Page")="10"
end if
if Session("EPQ30756650")="1" then
Session("Page")="10"
end if
if Session("EPQ30756700")="1" then
Session("Page")="10"
end if
if Session("EPQ30756750")="1" then
Session("Page")="10"
end if
if Session("EPQ30756800")="1" then
Session("Page")="10"
end if
if Session("EPQ30756850")="1" then
Session("Page")="10"
end if
if Session("EPQ30756900")="1" then
Session("Page")="10"
end if
if Session("EPQ30756950")="1" then
Session("Page")="10"
end if
if Session("EPQ30757000")="1" then
Session("Page")="10"
end if
if Session("EPQ30757050")="1" then
Session("Page")="10"
end if
if Session("EPQ30757200")="1" then
Session("Page")="10"
end if
if Session("EPQ30757250")="1" then
Session("Page")="10"
end if
if Session("EPQ30757300")="1" then
Session("Page")="10"
end if
if Session("EPQ30757350")="1" then
Session("Page")="10"
end if
if Session("EPQ30757400")="1" then
Session("Page")="10"
end if
if Session("EPQ30757450")="1" then
Session("Page")="10"
end if
if Session("EPQ30757500")="1" then
Session("Page")="10"
end if
if Session("EPQ30757550")="1" then
Session("Page")="10"
end if
if Session("EPQ30757600")="1" then
Session("Page")="10"
end if
if Session("EPQ30757650")="1" then
Session("Page")="10"
end if
if Session("EPQ30757700")="1" then
Session("Page")="10"
end if
if Session("EPQ30757750")="1" then
Session("Page")="10"
end if
if Session("EPQ30757800")="1" then
Session("Page")="10"
end if
if Session("EPQ30757850")="1" then
Session("Page")="10"
end if
if Session("EPQ30757900")="1" then
Session("Page")="10"
end if
if Session("EPQ30757950")="1" then
Session("Page")="10"
end if
if Session("EPQ30758000")="1" then
Session("Page")="10"
end if
if Session("EPQ30758050")="1" then
Session("Page")="10"
end if
if Session("EPQ30758100")="1" then
Session("Page")="10"
end if
if Session("EPQ30758150")="1" then
Session("Page")="10"
end if
if Session("EPQ30758200")="1" then
Session("Page")="10"
end if
if Session("EPQ30758250")="1" then
Session("Page")="10"
end if
if Session("EPQ30758300")="1" then
Session("Page")="10"
end if
if Session("EPQ30758350")="1" then
Session("Page")="10"
end if
if Session("EPQ30758400")="1" then
Session("Page")="10"
end if
if Session("EPQ30758450")="1" then
Session("Page")="10"
end if
if Session("EPQ30758500")="1" then
Session("Page")="10"
end if
if Session("EPQ30758550")="1" then
Session("Page")="10"
end if
if Session("EPQ30758600")="1" then
Session("Page")="10"
end if
if Session("EPQ30758650")="1" then
Session("Page")="10"
end if
if Session("EPQ30758700")="1" then
Session("Page")="10"
end if
if Session("EPQ30758750")="1" then
Session("Page")="10"
end if
if Session("EPQ30758800")="1" then
Session("Page")="10"
end if
if Session("EPQ30758850")="1" then
Session("Page")="10"
end if
if Session("EPQ30758900")="1" then
Session("Page")="10"
end if
if Session("EPQ30758950")="1" then
Session("Page")="10"
end if
if Session("EPQ30759000")="1" then
Session("Page")="10"
end if
if Session("EPQ30759050")="1" then
Session("Page")="10"
end if
if Session("EPQ30759100")="1" then
Session("Page")="10"
end if
if Session("EPQ30759150")="1" then
Session("Page")="10"
end if
if Session("EPQ30759200")="1" then
Session("Page")="10"
end if
if Session("EPQ30759250")="1" then
Session("Page")="10"
end if
if Session("EPQ30759300")="1" then
Session("Page")="10"
end if
if Session("EPQ30759350")="1" then
Session("Page")="10"
end if
if Session("EPQ30759400")="1" then
Session("Page")="10"
end if
if Session("EPQ30759450")="1" then
Session("Page")="10"
end if
if Session("EPQ30759500")="1" then
Session("Page")="10"
end if
if Session("EPQ30759550")="1" then
Session("Page")="10"
end if
if Session("EPQ30759600")="1" then
Session("Page")="10"
end if
if Session("EPQ30759650")="1" then
Session("Page")="10"
end if
if Session("EPQ30759700")="1" then
Session("Page")="10"
end if
if Session("EPQ30759750")="1" then
Session("Page")="10"
end if
if Session("EPQ30759800")="1" then
Session("Page")="10"
end if
if Session("EPQ30759850")="1" then
Session("Page")="10"
end if
if Session("EPQ30759900")="1" then
Session("Page")="10"
end if
if Session("EPQ30759950")="1" then
Session("Page")="10"
end if
if Session("EPQ30760000")="1" then
Session("Page")="10"
end if
if Session("EPQ30760050")="1" then
Session("Page")="10"
end if
if Session("EPQ30760100")="1" then
Session("Page")="10"
end if
if Session("EPQ30760150")="1" then
Session("Page")="10"
end if
if Session("EPQ30760200")="1" then
Session("Page")="10"
end if
if Session("EPQ30760250")="1" then
Session("Page")="10"
end if
if Session("EPQ30760300")="1" then
Session("Page")="10"
end if
if Session("EPQ30754300b")="1" then
Session("Page")="10"
end if
if Session("EPQ30755100b")="1" then
Session("Page")="10"
end if
if Session("EPQ30755300b")="1" then
Session("Page")="10"
end if
if Session("EPQ30756000b")="1" then
Session("Page")="10"
end if
if Session("EPQ30756050b")="1" then
Session("Page")="10"
end if
if Session("EPQ30756400b")="1" then
Session("Page")="10"
end if
if Session("EPQ30758700b")="1" then
Session("Page")="10"
end if
if Session("EPQ30758750b")="1" then
Session("Page")="10"
end if
if Session("EPQ30758900b")="1" then
Session("Page")="10"
end if


		Session("ReturnID")="1"
		Session("FamilyHistoryCancerSectionStatus")=""
		Response.Redirect "surgicalhistorymaster.asp"

	end if


	If Session("Gender")="F" then 
	Session("Page")="2"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"

	else

	Session("Page")="1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"

	end if
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ30753000")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="0"
	Session("PastSurgicalHistorySectionStatus")="Completed"

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


    <form action="surgicalhistory11.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
Have you ever been hospitalized for a reason other than surgery or childbirth?<br>
	</legend>
	<div class="QuestionAnswersBox">
		<input type="radio" name="EPQ30753000" value="1" id="EPQ307530001" class="required" <%=strEPQ30753000yes%>>
		<label for="EPQ307530001">Yes</label><br>
		<input type="radio" name="EPQ30753000" value="0" id="EPQ307530002" <%=strEPQ30753000no%>>
		<label for="EPQ307530002">No</label><br>
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
