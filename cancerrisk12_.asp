
<%

Session("CancerRiskSectionStatus")="Current"
Session("PageHolder")="Cancer Risk Assessment"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then

	if Session("EPQ31136010")="1" then
		strEPQ31136010answer1="checked"
	end if

	if Session("EPQ31136030")="1" then
		strEPQ31136030answer1="checked"
	end if
	if Session("EPQ31136040")="1" then
		strEPQ31136040answer1="checked"
	end if
	if Session("EPQ31136050")="1" then
		strEPQ31136050answer1="checked"
	end if
	if Session("EPQ31136060")="1" then
		strEPQ31136060answer1="checked"
	end if
	if Session("EPQ31136070")="1" then
		strEPQ31136070answer1="checked"
	end if
	if Session("EPQ31136080")="1" then
		strEPQ31136080answer1="checked"
	end if
	if Session("EPQ31136090")="1" then
		strEPQ31136090answer1="checked"
	end if

	if Session("EPQ31136110")="1" then
		strEPQ31136110answer1="checked"
	end if
	if Session("EPQ31136120")="1" then
		strEPQ31136120answer1="checked"
	end if
	if Session("EPQ31136130")="1" then
		strEPQ31136130answer1="checked"
	end if
	if Session("EPQ31136140")="1" then
		strEPQ31136140answer1="checked"
	end if
	if Session("EPQ31136150")="1" then
		strEPQ31136150answer1="checked"
	end if
	if Session("EPQ31136160")="1" then
		strEPQ31136160answer1="checked"
	end if
	if Session("EPQ31136170")="1" then
		strEPQ31136170answer1="checked"
	end if
	if Session("EPQ31136180")="1" then
		strEPQ31136180answer1="checked"
	end if
	if Session("EPQ31136190")="1" then
		strEPQ31136190answer1="checked"
	end if
	if Session("EPQ31136200")="1" then
		strEPQ31136200answer1="checked"
	end if
	if Session("EPQ31136210")="1" then
		strEPQ31136210answer1="checked"
	end if
	if Session("EPQ31136220")="1" then
		strEPQ31136220answer1="checked"
	end if
	if Session("EPQ31136230")="1" then
		strEPQ31136230answer1="checked"
	end if
	if Session("EPQ31136240")="1" then
		strEPQ31136240answer1="checked"
	end if
	if Session("EPQ31136250")="1" then
		strEPQ31136250answer1="checked"
	end if

	if Session("EPQ31136270")="1" then
		strEPQ31136270answer1="checked"
	end if
	if Session("EPQ31136280")="1" then
		strEPQ31136280answer1="checked"
	end if
	if Session("EPQ31136290")="1" then
		strEPQ31136290answer1="checked"
	end if

	if Session("EPQ31136310")="1" then
		strEPQ31136310answer1="checked"
	end if
	if Session("EPQ31136320")="1" then
		strEPQ31136320answer1="checked"
	end if
	if Session("EPQ31176000")="1" then
		strEPQ31176000answer1="checked"
	end if
	if Session("EPQ31177000")="1" then
		strEPQ31177000answer1="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then

	Session("EPQ31136010") = Request.Form("EPQ31136010")

	Session("EPQ31136030") = Request.Form("EPQ31136030")
	Session("EPQ31136040") = Request.Form("EPQ31136040")
	Session("EPQ31136050") = Request.Form("EPQ31136050")
	Session("EPQ31136060") = Request.Form("EPQ31136060")
	Session("EPQ31136070") = Request.Form("EPQ31136070")
	Session("EPQ31136080") = Request.Form("EPQ31136080")
	Session("EPQ31136090") = Request.Form("EPQ31136090")

	Session("EPQ31136110") = Request.Form("EPQ31136110")
	Session("EPQ31136120") = Request.Form("EPQ31136120")
	Session("EPQ31136130") = Request.Form("EPQ31136130")
	Session("EPQ31136140") = Request.Form("EPQ31136140")
	Session("EPQ31136150") = Request.Form("EPQ31136150")
	Session("EPQ31136160") = Request.Form("EPQ31136160")
	Session("EPQ31136170") = Request.Form("EPQ31136170")
	Session("EPQ31136180") = Request.Form("EPQ31136180")
	Session("EPQ31136190") = Request.Form("EPQ31136190")
	Session("EPQ31136200") = Request.Form("EPQ31136200")
	Session("EPQ31136210") = Request.Form("EPQ31136210")
	Session("EPQ31136220") = Request.Form("EPQ31136220")
	Session("EPQ31136230") = Request.Form("EPQ31136230")
	Session("EPQ31136240") = Request.Form("EPQ31136240")
	Session("EPQ31136250") = Request.Form("EPQ31136250")

	Session("EPQ31136270") = Request.Form("EPQ31136270")
	Session("EPQ31136280") = Request.Form("EPQ31136280")
	Session("EPQ31136290") = Request.Form("EPQ31136290")

	Session("EPQ31136310") = Request.Form("EPQ31136310")
	Session("EPQ31136320") = Request.Form("EPQ31136320")
	Session("EPQ31176000") = Request.Form("EPQ31176000")
	Session("EPQ31177000") = Request.Form("EPQ31177000")


end if

if Request.Form("StopID")="1" then
		Session("CancerRiskSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")="11"
		Response.Redirect "cancerriskmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

	if Session("EPQ31136310") <> "1" and Session("EPQ31135300") <> "1" and Session("EPQ31135290")<> "1" then

		Session.Contents.Remove("EPQ31137050")


	end if

if Request.Form("ContinueID")="1" then
	if len(Session("EPQ31136010")) = 0 then 
		 <!--#include file="questionscomplete.asp"-->
	else 
	end if

	Session("Page")="121"
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
    <form action="cancerrisk12.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<fieldset class='eitherNoneOrChecked'>
  <legend class='QuestionBox'>
During the past 12 months, which herbal supplements have you taken? Check all that apply. <br>
	</legend>

	<div class="QuestionAnswersBox">
<span class="column1">
Herbal or Botanical Products<br>

		<input type="checkbox" name="EPQ31136010" value="1" id="EPQ31136010" <%=strEPQ31136010answer1%>>
		<label for="EPQ31136010">Bilberry</label><br>
		<input type="checkbox" name="EPQ31136040" value="1" id="EPQ31136040" <%=strEPQ31136040answer1%>>
		<label for="EPQ31136040">Black cohosh</label><br>
		<input type="checkbox" name="EPQ31136070" value="1" id="EPQ31136070" <%=strEPQ31136070answer1%>>
		<label for="EPQ31136070">Cascara sagrada</label><br>

		<input type="checkbox" name="EPQ31136130" value="1" id="EPQ31136130" <%=strEPQ31136130answer1%>>
		<label for="EPQ31136130">Chinese herbal medicine</label><br>
		<input type="checkbox" name="EPQ31136160" value="1" id="EPQ31136160" <%=strEPQ31136160answer1%>>
		<label for="EPQ31136160">Cranberry extract</label><br>

		<input type="checkbox" name="EPQ31136190" value="1" id="EPQ31136190" <%=strEPQ31136190answer1%>>
		<label for="EPQ31136190">Dong quai</label><br>
		<input type="checkbox" name="EPQ31136220" value="1" id="EPQ31136220" <%=strEPQ31136220answer1%>>
		<label for="EPQ31136220">Echinacea</label><br>
		<input type="checkbox" name="EPQ31136250" value="1" id="EPQ31136250" <%=strEPQ31136250answer1%>>
		<label for="EPQ31136250">Essiac/Flor Essence</label><br>
		<input type="checkbox" name="EPQ31136280" value="1" id="EPQ31136280" <%=strEPQ31136280answer1%>>
		<label for="EPQ31136280">Evening primrose</label><br>
<BR><BR><BR><input type="radio" name="EPQ31136320" value="1" id="EPQ31136320" <%=strEPQ31136320answer1%>>
		<label for="EPQ31136320">None</label>
</span>

<span class="column2">
		<br>
		<input type="checkbox" name="EPQ31177000" value="1" id="EPQ31177000" <%=strEPQ31177000answer1%>>
		<label for="EPQ31177000">Flaxseed or Flaxseed Oil </label><br>
		<input type="checkbox" name="EPQ31136050" value="1" id="EPQ31136050" <%=strEPQ31136050answer1%>>
		<label for="EPQ31136050">Garlic supplements</label><br>
		<input type="checkbox" name="EPQ31136080" value="1" id="EPQ31136080" <%=strEPQ31136080answer1%>>
		<label for="EPQ31136080">Ginger supplements</label><br>
		<input type="checkbox" name="EPQ31136110" value="1" id="EPQ31136110" <%=strEPQ31136110answer1%>>
		<label for="EPQ31136110">Ginkgo Biloba</label><br>
		<input type="checkbox" name="EPQ31136140" value="1" id="EPQ31136140" <%=strEPQ31136140answer1%>>
		<label for="EPQ31136140">Ginseng</label><br>
		<input type="checkbox" name="EPQ31136170" value="1" id="EPQ31136170" <%=strEPQ31136170answer1%>>
		<label for="EPQ31136170">Goldenseal</label><br>
		<input type="checkbox" name="EPQ31136200" value="1" id="EPQ31136200" <%=strEPQ31136200answer1%>>
		<label for="EPQ31136200">Green tea supplements</label><br>
		<input type="checkbox" name="EPQ31136230" value="1" id="EPQ31136230" <%=strEPQ31136230answer1%>>
		<label for="EPQ31136230">Hawthorn</label><br>

		<input type="checkbox" name="EPQ31136290" value="1" 
id="EPQ31136290" <%=strEPQ31136290answer1%>>
		<label for="EPQ31136290">Kava</label>
</span>
<span class="column3">
		<br>
		<input type="checkbox" name="EPQ31136030" value="1" id="EPQ31136030" <%=strEPQ31136030answer1%>>
		<label for="EPQ31136030">Licorice</label><br>
		<input type="checkbox" name="EPQ31136060" value="1" id="EPQ31136060" <%=strEPQ31136060answer1%>>
		<label for="EPQ31136060">Milk thistle</label><br>
		<input type="checkbox" name="EPQ31136090" value="1" id="EPQ31136090" <%=strEPQ31136090answer1%>>
		<label for="EPQ31136090">Noni</label><br>
		<input type="checkbox" name="EPQ31136120" value="1" id="EPQ31136120" <%=strEPQ31136120answer1%>>
		<label for="EPQ31136120">Saw palmetto</label><br>
		<input type="checkbox" name="EPQ31136150" value="1" id="EPQ31136150" <%=strEPQ31136150answer1%>>
		<label for="EPQ31136150">Senna</label><br>
		<input type="checkbox" name="EPQ31136180" value="1" id="EPQ31136180" <%=strEPQ31136180answer1%>>
		<label for="EPQ31136180">Soy supplements/lecithin</label><br>
		<input type="checkbox" name="EPQ31136210" value="1" id="EPQ31136210" <%=strEPQ31136210answer1%>>
		<label for="EPQ31136210">St. John's Wort</label><br>
		<input type="checkbox" name="EPQ31176000" value="1" id="EPQ31176000" <%=strEPQ31176000answer1%>>
		<label for="EPQ31176000">Turmeric (Curcumin) </label><br>
		<input type="checkbox" name="EPQ31136240" value="1" id="EPQ31136240" <%=strEPQ31136240answer1%>>
		<label for="EPQ31136240">Valerian</label><br>
		<input type="checkbox" name="EPQ31136270" value="1" id="EPQ31136270" <%=strEPQ31136270answer1%>>
		<label for="EPQ31136270">Wheat grass</label><br>

		<input type="checkbox" name="EPQ31136310" value="1" id="EPQ31136310" <%=strEPQ31136310answer1%>>
		<label for="EPQ31136310">Other</label><br>

</span>
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
