
<%


Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31135010")="1" then
		strEPQ31135010answer1="checked"
	end if
	if Session("EPQ31135020")="1" then
		strEPQ31135020answer1="checked"
	end if
	if Session("EPQ31135030")="1" then
		strEPQ31135030answer1="checked"
	end if
	if Session("EPQ31135040")="1" then
		strEPQ31135040answer1="checked"
	end if
	if Session("EPQ31135050")="1" then
		strEPQ31135050answer1="checked"
	end if
	if Session("EPQ31135060")="1" then
		strEPQ31135060answer1="checked"
	end if
	if Session("EPQ31135070")="1" then
		strEPQ31135070answer1="checked"
	end if
	if Session("EPQ31135080")="1" then
		strEPQ31135080answer1="checked"
	end if
	if Session("EPQ31135090")="1" then
		strEPQ31135090answer1="checked"
	end if
	if Session("EPQ31135100")="1" then
		strEPQ31135100answer1="checked"
	end if
	if Session("EPQ31135110")="1" then
		strEPQ31135110answer1="checked"
	end if
	if Session("EPQ31135120")="1" then
		strEPQ31135120answer1="checked"
	end if
	if Session("EPQ31135130")="1" then
		strEPQ31135130answer1="checked"
	end if
	if Session("EPQ31135140")="1" then
		strEPQ31135140answer1="checked"
	end if
	if Session("EPQ31135150")="1" then
		strEPQ31135150answer1="checked"
	end if
	if Session("EPQ31135160")="1" then
		strEPQ31135160answer1="checked"
	end if
	if Session("EPQ31135170")="1" then
		strEPQ31135170answer1="checked"
	end if
	if Session("EPQ31135180")="1" then
		strEPQ31135180answer1="checked"
	end if
	if Session("EPQ31135190")="1" then
		strEPQ31135190answer1="checked"
	end if
	if Session("EPQ31135200")="1" then
		strEPQ31135200answer1="checked"
	end if
	if Session("EPQ31135210")="1" then
		strEPQ31135210answer1="checked"
	end if
	if Session("EPQ31135220")="1" then
		strEPQ31135220answer1="checked"
	end if
	if Session("EPQ31135230")="1" then
		strEPQ31135230answer1="checked"
	end if
	if Session("EPQ31135240")="1" then
		strEPQ31135240answer1="checked"
	end if
	if Session("EPQ31135250")="1" then
		strEPQ31135250answer1="checked"
	end if
	if Session("EPQ31135260")="1" then
		strEPQ31135260answer1="checked"
	end if
	if Session("EPQ31135270")="1" then
		strEPQ31135270answer1="checked"
	end if

	if Session("EPQ31135290")="1" then
		strEPQ31135290answer1="checked"
	end if
	if Session("EPQ31135300")="1" then
		strEPQ31135300answer1="checked"
	end if
	if Session("EPQ31168000")="1" then
		strEPQ31168000answer1="checked"
	end if

	if Session("EPQ31169000")="1" then
		strEPQ31169000answer1="checked"
	end if
	if Session("EPQ31170000")="1" then
		strEPQ31170000answer1="checked"
	end if
	if Session("EPQ31171000")="1" then
		strEPQ31171000answer1="checked"
	end if
	if Session("EPQ31172000")="1" then
		strEPQ31172000answer1="checked"
	end if
	if Session("EPQ31173000")="1" then
		strEPQ31173000answer1="checked"
	end if
	if Session("EPQ31174000")="1" then
		strEPQ31174000answer1="checked"
	end if
	if Session("EPQ31175000")="1" then
		strEPQ31175000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31135010") = Request.Form("EPQ31135010")
	Session("EPQ31135020") = Request.Form("EPQ31135020")
	Session("EPQ31135030") = Request.Form("EPQ31135030")
	Session("EPQ31135040") = Request.Form("EPQ31135040")
	Session("EPQ31135050") = Request.Form("EPQ31135050")
	Session("EPQ31135060") = Request.Form("EPQ31135060")
	Session("EPQ31135070") = Request.Form("EPQ31135070")
	Session("EPQ31135080") = Request.Form("EPQ31135080")
	Session("EPQ31135090") = Request.Form("EPQ31135090")
	Session("EPQ31135100") = Request.Form("EPQ31135100")
	Session("EPQ31135110") = Request.Form("EPQ31135110")
	Session("EPQ31135120") = Request.Form("EPQ31135120")
	Session("EPQ31135130") = Request.Form("EPQ31135130")
	Session("EPQ31135140") = Request.Form("EPQ31135140")
	Session("EPQ31135150") = Request.Form("EPQ31135150")
	Session("EPQ31135160") = Request.Form("EPQ31135160")
	Session("EPQ31135170") = Request.Form("EPQ31135170")
	Session("EPQ31135180") = Request.Form("EPQ31135180")
	Session("EPQ31135190") = Request.Form("EPQ31135190")
	Session("EPQ31135200") = Request.Form("EPQ31135200")
	Session("EPQ31135210") = Request.Form("EPQ31135210")
	Session("EPQ31135220") = Request.Form("EPQ31135220")
	Session("EPQ31135230") = Request.Form("EPQ31135230")
	Session("EPQ31135240") = Request.Form("EPQ31135240")
	Session("EPQ31135250") = Request.Form("EPQ31135250")
	Session("EPQ31135260") = Request.Form("EPQ31135260")
	Session("EPQ31135270") = Request.Form("EPQ31135270")

	Session("EPQ31135290") = Request.Form("EPQ31135290")
	Session("EPQ31135300") = Request.Form("EPQ31135300")
	Session("EPQ31168000") = Request.Form("EPQ31168000")
	Session("EPQ31169000") = Request.Form("EPQ31169000")
	Session("EPQ31170000") = Request.Form("EPQ31170000")
	Session("EPQ31171000") = Request.Form("EPQ31171000")
	Session("EPQ31172000") = Request.Form("EPQ31172000")
	Session("EPQ31173000") = Request.Form("EPQ31173000")
	Session("EPQ31174000") = Request.Form("EPQ31174000")
	Session("EPQ31175000") = Request.Form("EPQ31175000")

end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="10"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31135010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="12"
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
<div id="formBlock3">
    <form action="cancerrisk11.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset>
  <legend class='QuestionBox'>
During the past 12 months, which vitamins, minerals, or supplements have you taken? Check all that apply. <br>
Herbal and botanical supplements are listed on the next page.<br>
	</legend>

	<div class="QuestionAnswersBox">
<span class="column1 eitherNoneOrChecked">
Vitamins/Minerals <br>
		<input type="checkbox" name="EPQ31135010" value="1" id="EPQ31135010" <%=strEPQ31135010answer1%>>
		<label for="EPQ31135010">Multi-vitamin</label><br>
		<input type="checkbox" name="EPQ31135070" value="1" id="EPQ31135070" <%=strEPQ31135070answer1%>>
		<label for="EPQ31135070">Vitamin A</label><br>
		<input type="checkbox" name="EPQ31135090" value="1" id="EPQ31135090" <%=strEPQ31135090answer1%>>
		<label for="EPQ31135090">B Vitamins - Other (B6, B12)</label><br>
		<input type="checkbox" name="EPQ31135110" value="1" id="EPQ31135110" <%=strEPQ31135110answer1%>>
		<label for="EPQ31135110">Vitamin C</label><br>
		<input type="checkbox" name="EPQ31135130" value="1" id="EPQ31135130" <%=strEPQ31135130answer1%>>
		<label for="EPQ31135130">Vitamin D</label><br>
		<input type="checkbox" name="EPQ31135150" value="1" id="EPQ31135150" <%=strEPQ31135150answer1%>>
		<label for="EPQ31135150">Vitamin E</label><br>
		<input type="checkbox" name="EPQ31135170" value="1" id="EPQ31135170" <%=strEPQ31135170answer1%>>
		<label for="EPQ31135170">Beta Carotene</label><br>
		<input type="checkbox" name="EPQ31171000" value="1" id="EPQ31171000" <%=strEPQ31171000answer1%>>
		<label for="EPQ31171000">Biotin (Vitamin H)</label><br>
		<input type="checkbox" name="EPQ31135190" value="1" id="EPQ31135190" <%=strEPQ31135190answer1%>>
		<label for="EPQ31135190">Calcium</label><br>
		<input type="checkbox" name="EPQ31135210" value="1" id="EPQ31135210" <%=strEPQ31135210answer1%>>
		<label for="EPQ31135210">Folic Acid (Folate or B9)</label><br>
		<input type="checkbox" name="EPQ31135230" value="1" id="EPQ31135230" <%=strEPQ31135230answer1%>>
		<label for="EPQ31135230">Iron</label><br>
		<input type="checkbox" name="EPQ31168000" value="1" id="EPQ31168000" <%=strEPQ31168000answer1%>>
		<label for="EPQ31168000">Magnesium</label><br>
		<input type="checkbox" name="EPQ31169000" value="1" id="EPQ31169000" <%=strEPQ31169000answer1%>>
		<label for="EPQ31169000">Niacin (Vitamin B3)</label><br>
		<input type="checkbox" name="EPQ31170000" value="1" id="EPQ31170000" <%=strEPQ31170000answer1%>>
		<label for="EPQ31170000">Potassium</label><br>

		<input type="checkbox" name="EPQ31135050" value="1" id="EPQ31135050" <%=strEPQ31135050answer1%>>
		<label for="EPQ31135050">Prenatal vitamin</label><br>

		<input type="checkbox" name="EPQ31173000" value="1" id="EPQ31173000" <%=strEPQ31173000answer1%>>
		<label for="EPQ31173000">Quercetin</label><br>

		<input type="checkbox" name="EPQ31172000" value="1" id="EPQ31172000" <%=strEPQ31172000answer1%>>
		<label for="EPQ31172000">Riboflavin (B2)</label><br>

		<input type="checkbox" name="EPQ31135250" value="1" id="EPQ31135250" <%=strEPQ31135250answer1%>>
		<label for="EPQ31135250">Selenium</label><br>

		<input type="checkbox" name="EPQ31135270" value="1" id="EPQ31135270" <%=strEPQ31135270answer1%>>
		<label for="EPQ31135270">Zinc</label><br>

		<input type="checkbox" name="EPQ31135290" value="1" id="EPQ31135290" <%=strEPQ31135290answer1%>>
		<label for="EPQ31135290">Other vitamins/minerals</label><br>

	<input type="radio" name="EPQ31135020" value="1" id="EPQ31135020" <%=strEPQ31135020answer1%>>
		<label for="EPQ31135020">None</label><br>
</span>
<span class="column2 eitherNoneOrChecked2">
Supplements <br>

		<input type="checkbox" name="EPQ31135030" value="1" id="EPQ31135030" <%=strEPQ31135030answer1%>>
		<label for="EPQ31135030">5-HTP</label><br>
		<input type="checkbox" name="EPQ31135060" value="1" id="EPQ31135060" <%=strEPQ31135060answer1%>>
		<label for="EPQ31135060">Acidophilus</label><br>
		<input type="checkbox" name="EPQ31135080" value="1" id="EPQ31135080" <%=strEPQ31135080answer1%>>
		<label for="EPQ31135080">Bee pollen or royal jelly</label><br>
		<input type="checkbox" name="EPQ31135100" value="1" id="EPQ31135100" <%=strEPQ31135100answer1%>>
		<label for="EPQ31135100">Chondroitin</label><br>
		<input type="checkbox" name="EPQ31135120" value="1" id="EPQ31135120" <%=strEPQ31135120answer1%>>
		<label for="EPQ31135120">CoQ10</label><br>
		<input type="checkbox" name="EPQ31135140" value="1" id="EPQ31135140" <%=strEPQ31135140answer1%>>
		<label for="EPQ31135140">DHEA</label><br>
		<input type="checkbox" name="EPQ31135160" value="1" id="EPQ31135160" <%=strEPQ31135160answer1%>>
		<label for="EPQ31135160">Fiber Supplement (metamucil, etc.)</label><br>
		<input type="checkbox" name="EPQ31135180" value="1" id="EPQ31135180" <%=strEPQ31135180answer1%>>
		<label for="EPQ31135180">Fish oil/omega fatty acids/EPA/DHA</label><br>
		<input type="checkbox" name="EPQ31135200" value="1" id="EPQ31135200" <%=strEPQ31135200answer1%>>
		<label for="EPQ31135200">Glucosamine</label><br>
		<input type="checkbox" name="EPQ31135220" value="1" id="EPQ31135220" <%=strEPQ31135220answer1%>>
		<label for="EPQ31135220">Melatonin</label><br>
		<input type="checkbox" name="EPQ31175000" value="1" id="EPQ31175000" <%=strEPQ31175000answer1%>>
		<label for="EPQ31175000">Probiotics</label><br>
		<input type="checkbox" name="EPQ31135240" value="1" id="EPQ31135240" <%=strEPQ31135240answer1%>>
		<label for="EPQ31135240">Progesterone cream</label><br>
		<input type="checkbox" name="EPQ31174000" value="1" id="EPQ31174000" <%=strEPQ31174000answer1%>>
		<label for="EPQ31174000">Red yeast rice</label><br>
		<input type="checkbox" name="EPQ31135260" value="1" id="EPQ31135260" <%=strEPQ31135260answer1%>>
		<label for="EPQ31135260">SAM-e</label><br>
		<input type="checkbox" name="EPQ31135300" value="1" id="EPQ31135300" <%=strEPQ31135300answer1%>>
		<label for="EPQ31135300">Other supplements</label><br>

<input type="radio" name="EPQ31135040" value="1" id="EPQ31135040" <%=strEPQ31135040answer1%>>
		<label for="EPQ31135040">None</label><br>
		
</span>
</div> <!-- [ /#QuestionAnswerBlock ] -->

	</legend><!-- [ /#AnswerBox] -->   </fieldset> 


</div> <!-- [ /#formBlock ] -->
<div class="ResetBox">
</div>
	
	<div id="buttonBox4">
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
