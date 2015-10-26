<%

Session("PastSurgicalHistorySectionStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("TEMP1EPQ30521200")="1" then
		strTEMP1EPQ30521200answer1="checked"
	end if

	if Session("TEMPEPQ30714030")="1" then
		strTEMPEPQ30714030answer1="checked"
	end if
	if Session("TEMPEPQ30714070")="1" then
		strTEMPEPQ30714070answer1="checked"
	end if
	if Session("TEMPEPQ30714050")="1" then
		strTEMPEPQ30714050answer1="checked"
	end if
	if Session("TEMPEPQ30714010")="1" then
		strTEMPEPQ30714010answer1="checked"
	end if
	if Session("TEMPEPQ30714020")="1" then
		strTEMPEPQ30714020answer1="checked"
	end if
	if Session("TEMPEPQ30714040")="1" then
		strTEMPEPQ30714040answer1="checked"
	end if
	if Session("TEMPEPQ30714100")="1" then
		strTEMPEPQ30714100answer1="checked"
	end if
	if Session("TEMPEPQ30714090")="1" then
		strTEMPEPQ30714090answer1="checked"
	end if
	if Session("TEMPEPQ30714101")="1" then
		strTEMPEPQ30714101answer1="checked"
	end if
	if Session("TEMPEPQ30714102")="1" then
		strTEMPEPQ30714102answer1="checked"
	end if
	if Session("TEMPEPQ30714103")="1" then
		strTEMPEPQ30714103answer1="checked"
	end if
	if Session("TEMPEPQ30714104")="1" then
		strTEMPEPQ30714104answer1="checked"
	end if
	if Session("TEMPEPQ30714105")="1" then
		strTEMPEPQ30714105answer1="checked"
	end if
	if Session("TEMPEPQ30714106")="1" then
		strTEMPEPQ30714106answer1="checked"
	end if
	if Session("EPQ30760300")="1" then
		strEPQ30760300answer1="checked"
	end if

end if

if Request.Form("StopID")="1" then
		Session("PastSurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
	Session("ReturnID")="1"

		Session("ReturnID")="1"
	if Session("Gender")="F" then
		Session("Page")=4
	end if
	if Session("Gender")="M" then
		Session("Page")=4
	end if

		Response.Redirect "surgicalhistorymaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

	Session("TEMPEPQ30714030") = Request.Form("TEMPEPQ30714030")
	Session("TEMPEPQ30714070") = Request.Form("TEMPEPQ30714070")
	Session("TEMPEPQ30714050") = Request.Form("TEMPEPQ30714050")
	Session("TEMPEPQ30714010") = Request.Form("TEMPEPQ30714010")
	Session("TEMPEPQ30714020") = Request.Form("TEMPEPQ30714020")
	Session("TEMPEPQ30714040") = Request.Form("TEMPEPQ30714040")
	Session("TEMPEPQ30714100") = Request.Form("TEMPEPQ30714100")
	Session("TEMPEPQ30714090") = Request.Form("TEMPEPQ30714090")
	Session("TEMPEPQ30714101") = Request.Form("TEMPEPQ30714101")
	Session("TEMPEPQ30714102") = Request.Form("TEMPEPQ30714102")
	Session("TEMPEPQ30714103") = Request.Form("TEMPEPQ30714103")
	Session("TEMPEPQ30714104") = Request.Form("TEMPEPQ30714104")
	Session("TEMPEPQ30714105") = Request.Form("TEMPEPQ30714105")
	Session("TEMPEPQ30714106") = Request.Form("TEMPEPQ30714106")
	Session("EPQ30760300") = Request.Form("EPQ30760300")
	Session("TEMPEPQ30714000") = Request.Form("TEMPEPQ30714000")
	Session("TEMP1EPQ30521200") = Request.Form("TEMP1EPQ30521200")


	if Session("TEMPEPQ30714030")<>"1" then
		Session.Contents.Remove("EPQ30754000")
		Session.Contents.Remove("EPQ30754050")
		Session.Contents.Remove("EPQ30754100")
		Session.Contents.Remove("EPQ30754150")
		Session.Contents.Remove("EPQ30754200")
		Session.Contents.Remove("EPQ30754250")
		Session.Contents.Remove("EPQ30754300")
		Session.Contents.Remove("EPQ30754350")
		Session.Contents.Remove("EPQ30754400")
		Session.Contents.Remove("EPQ30754500")
		Session.Contents.Remove("EPQ30754600")
		Session.Contents.Remove("EPQ30754650")
		Session.Contents.Remove("EPQ30754700")
		Session.Contents.Remove("EPQ30754750")
		Session.Contents.Remove("EPQ30754800")
		Session.Contents.Remove("EPQ30754850")
		Session.Contents.Remove("EPQ30754900")
		Session.Contents.Remove("EPQ30754950")
		Session.Contents.Remove("EPQ30754990")
		Session.Contents.Remove("EPQ30754990Describe")
		Session.Contents.Remove("TEMPEPQ30754300")
		Session.Contents.Remove("TEMP1EPQ30754550")
		Session.Contents.Remove("TEMP2EPQ30754550")
		Session.Contents.Remove("TEMPEPQ30754600")
		Session.Contents.Remove("TEMPEPQ30754700")
		Session.Contents.Remove("TEMPEPQ30754900")
	end if

	if Session("TEMPEPQ30714070")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30755800")
		Session.Contents.Remove("TEMP3EPQ30755800")
		Session.Contents.Remove("TEMP4EPQ30755800")
		Session.Contents.Remove("TEMP5EPQ30755800")
		Session.Contents.Remove("TEMP6EPQ30755800")
		Session.Contents.Remove("TEMP7EPQ30755800")
		Session.Contents.Remove("TEMP8EPQ30755800")
		Session.Contents.Remove("EPQ30755850")
		Session.Contents.Remove("EPQ30755900")
		Session.Contents.Remove("EPQ30755940Describe")
	end if

	if Session("TEMPEPQ30714050")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30756000b")
		Session.Contents.Remove("TEMP1EPQ30756100b")
		Session.Contents.Remove("TEMP2EPQ30756100b")
		Session.Contents.Remove("TEMP3EPQ30756100b")
		Session.Contents.Remove("TEMP4EPQ30756100b")
		Session.Contents.Remove("TEMP5EPQ30756100b")
		Session.Contents.Remove("TEMP6EPQ30756100b")
		Session.Contents.Remove("TEMP7EPQ30756100b")
		Session.Contents.Remove("TEMP8EPQ30756100b")
		Session.Contents.Remove("EPQ30755950")
		Session.Contents.Remove("EPQ30756200b")
		Session.Contents.Remove("EPQ30756250")
		Session.Contents.Remove("EPQ30756300")
		Session.Contents.Remove("EPQ30756350")
		Session.Contents.Remove("EPQ30756450")
		Session.Contents.Remove("EPQ30756490Describe")
	end if


	if Session("TEMPEPQ30714010")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30756950")
		Session.Contents.Remove("EPQ30756950")
		Session.Contents.Remove("EPQ30757000")
		Session.Contents.Remove("EPQ30757050")
		Session.Contents.Remove("EPQ30757100")
		Session.Contents.Remove("EPQ30757150")
		Session.Contents.Remove("EPQ30757200")
		Session.Contents.Remove("EPQ30757300")
		Session.Contents.Remove("EPQ30757400")
		Session.Contents.Remove("EPQ30757440Describe")
		Session.Contents.Remove("TEMP2EPQ30757250")
		Session.Contents.Remove("TEMP3EPQ30757250")
	end if




	if Session("TEMPEPQ30714020")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30757450")
		Session.Contents.Remove("EPQ30757500")
		Session.Contents.Remove("EPQ30757550")
		Session.Contents.Remove("EPQ30757600")
		Session.Contents.Remove("TEMP1EPQ30757600")
		Session.Contents.Remove("EPQ30757650")
		Session.Contents.Remove("EPQ30757700")
		Session.Contents.Remove("TEMP1EPQ30757750")
		Session.Contents.Remove("EPQ30757800")
		Session.Contents.Remove("EPQ30757850")
		Session.Contents.Remove("TEMP2EPQ30757800")
		Session.Contents.Remove("EPQ30757900")
		Session.Contents.Remove("EPQ30757950")
		Session.Contents.Remove("EPQ30756800b")
		Session.Contents.Remove("EPQ30758100")
		Session.Contents.Remove("EPQ30758140Describe")
	end if


	if Session("TEMPEPQ30714040")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30758150")
		Session.Contents.Remove("EPQ30758150")
		Session.Contents.Remove("EPQ30758200")
		Session.Contents.Remove("EPQ30758250")
		Session.Contents.Remove("EPQ30758300")
		Session.Contents.Remove("EPQ30758350")
		Session.Contents.Remove("EPQ30758400")
		Session.Contents.Remove("TEMPEPQ30758150")
		Session.Contents.Remove("EPQ30756700")
		Session.Contents.Remove("EPQ30758450")
		Session.Contents.Remove("EPQ30758500")
		Session.Contents.Remove("EPQ30758550")
		Session.Contents.Remove("EPQ30758590Describe")
	end if


	if Session("TEMPEPQ30714100")<>"1" then
		Session.Contents.Remove("EPQ30756500")
		Session.Contents.Remove("TEMP1EPQ30756500")
		Session.Contents.Remove("TEMP2EPQ30756550")
		Session.Contents.Remove("TEMP3EPQ30756550")
		Session.Contents.Remove("EPQ30756600")
		Session.Contents.Remove("EPQ30756650")
		Session.Contents.Remove("EPQ30756700")
		Session.Contents.Remove("TEMP1EPQ30756750")
		Session.Contents.Remove("TEMP2EPQ30756750")
		Session.Contents.Remove("TEMP3EPQ30756750")
		Session.Contents.Remove("TEMP4EPQ30756750")
		Session.Contents.Remove("TEMP1EPQ30756800")
		Session.Contents.Remove("TEMP2EPQ30756800")
		Session.Contents.Remove("TEMP3EPQ30756800")
		Session.Contents.Remove("EPQ30756800")
		Session.Contents.Remove("EPQ30756850")
		Session.Contents.Remove("EPQ30756890Describe")
	end if


	if Session("TEMPEPQ30714090")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30758600")
		Session.Contents.Remove("TEMP2EPQ30758650")
		Session.Contents.Remove("EPQ30758800")
		Session.Contents.Remove("EPQ30758850")
		Session.Contents.Remove("TEMP1EPQ30758800")
		Session.Contents.Remove("EPQ30758750")
		Session.Contents.Remove("TEMP1EPQ30758900")
		Session.Contents.Remove("EPQ30758700")
		Session.Contents.Remove("EPQ30758900")
		Session.Contents.Remove("EPQ30758950")
		Session.Contents.Remove("EPQ30758990Describe")
	end if


	if Session("TEMPEPQ30714102")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30755400")
		Session.Contents.Remove("TEMP2EPQ30755400")
		Session.Contents.Remove("TEMP3EPQ30755400")
		Session.Contents.Remove("EPQ30755450")
		Session.Contents.Remove("EPQ30755550")
		Session.Contents.Remove("TEMP4EPQ30755400")
		Session.Contents.Remove("TEMP5EPQ30755400")
		Session.Contents.Remove("TEMP6EPQ30755400")
		Session.Contents.Remove("TEMP7EPQ30755650")
		Session.Contents.Remove("TEMP8EPQ30755600")
		Session.Contents.Remove("EPQ30755700")
		Session.Contents.Remove("EPQ30755400")
		Session.Contents.Remove("EPQ30755750")
		Session.Contents.Remove("EPQ30755790Describe")
	end if

	if Session("TEMPEPQ30714102")<>"1" then
		Session.Contents.Remove("EPQ30759050")
		Session.Contents.Remove("TEMPEPQ30759050")
		Session.Contents.Remove("EPQ30756000")
		Session.Contents.Remove("EPQ30756050")
		Session.Contents.Remove("TEMP1EPQ30756100b")
		Session.Contents.Remove("TEMP2EPQ30756100b")
		Session.Contents.Remove("TEMP3EPQ30756100b")
		Session.Contents.Remove("TEMP4EPQ30756100b")
		Session.Contents.Remove("TEMP5EPQ30756100b")
		Session.Contents.Remove("TEMP6EPQ30756100b")
		Session.Contents.Remove("TEMP7EPQ30756100b")
		Session.Contents.Remove("TEMP8EPQ30756100b")
		Session.Contents.Remove("EPQ30756200")
		Session.Contents.Remove("TEMPEPQ30759200")
		Session.Contents.Remove("EPQ30759200")
		Session.Contents.Remove("EPQ30759250")
		Session.Contents.Remove("EPQ30759300")
		Session.Contents.Remove("EPQ30759350")
		Session.Contents.Remove("TEMPEPQ30759540Describe")
		Session.Contents.Remove("EPQ30759400")
		Session.Contents.Remove("TEMPEPQ30759450")
		Session.Contents.Remove("EPQ30759450")
		Session.Contents.Remove("EPQ30759500")
		Session.Contents.Remove("EPQ30759540Describe")
	end if
	if Session("TEMPEPQ30714103")<>"1" then
		Session.Contents.Remove("EPQ30759550")
		Session.Contents.Remove("TEMPEPQ30759600")
		Session.Contents.Remove("EPQ30759600")
		Session.Contents.Remove("EPQ30759650")
		Session.Contents.Remove("EPQ30759690Describe")
	end if

	if Session("TEMPEPQ30714104")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30759700")
		Session.Contents.Remove("TEMP2EPQ30759700")
		Session.Contents.Remove("EPQ30759700")
		Session.Contents.Remove("EPQ30759800")
		Session.Contents.Remove("TEMP3EPQ30759700")
		Session.Contents.Remove("EPQ30759750")
		Session.Contents.Remove("TEMP4EPQ30755300")
		Session.Contents.Remove("TEMP5EPQ30755300")
		Session.Contents.Remove("TEMP6EPQ30755300")
		Session.Contents.Remove("EPQ30759900")
		Session.Contents.Remove("EPQ30759940Describe")
	end if

	if Session("TEMPEPQ30714105")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30759950")
		Session.Contents.Remove("TEMP2EPQ30759950")
		Session.Contents.Remove("TEMP3EPQ30759950")
		Session.Contents.Remove("TEMP4EPQ30759950")
		Session.Contents.Remove("TEMP5EPQ30759950")
		Session.Contents.Remove("TEMPEPQ30760250")
		Session.Contents.Remove("TEMPEPQ30760290Describe")
	end if

	if Session("TEMPEPQ30714106")<>"1" then
		Session.Contents.Remove("TEMP1EPQ30759950")
		Session.Contents.Remove("TEMP2EPQ30759950")
		Session.Contents.Remove("EPQ30760000")
		Session.Contents.Remove("EPQ30759950")
		Session.Contents.Remove("EPQ30754300b")
		Session.Contents.Remove("TEMP3EPQ30759950")
		Session.Contents.Remove("EPQ30760050")
		Session.Contents.Remove("EPQ30760100")
		Session.Contents.Remove("TEMP4EPQ30759950")
		Session.Contents.Remove("TEMP5EPQ30759950")
		Session.Contents.Remove("EPQ30760150")
		Session.Contents.Remove("EPQ30760200")
		Session.Contents.Remove("TEMP6EPQ30759950")
		Session.Contents.Remove("TEMP7EPQ30759950")
		Session.Contents.Remove("TEMP8EPQ30759950")
		Session.Contents.Remove("EPQ30758700b")
		Session.Contents.Remove("EPQ30758900b")
		Session.Contents.Remove("EPQ30760250")
		Session.Contents.Remove("EPQ30760290Describe")
	end if




	Session("Page")="200"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "surgicalhistorymaster.asp"




If Session("Gender")="F" and Session("TEMPEPQ30756050") = "1" then
	Session("Page")="7"
else
	Session("Page")="9"
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

<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
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
<script src="scripts_js/surgicalhistory21.js" type="text/javascript"></script>
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
<div id="formBlock2">

    <form action="surgicalhistory21.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" kvalue="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
  <fieldset class="eitherNoneorChecked">

	<legend class="QuestionBox">
Which types of surgeries or procedures have you had?  Check all that apply.<br> When you choose a category, additional questions will follow that will allow you to specify what types of surgeries you had.<br>
	</legend>


    <div class="QuestionAnswersBox">
		<input type="checkbox" name="TEMPEPQ30714030" value="1" id="TEMPEPQ30714030" <%=strTEMPEPQ30714030answer1%>>
		<label for="TEMPEPQ30714030">Belly, abdomen, colon, or bowel</label><br>
		<input type="checkbox" name="TEMPEPQ30714070" value="1" id="TEMPEPQ30714070" <%=strTEMPEPQ30714070answer1%>>
		<label for="TEMPEPQ30714070">Brain and pituitary</label><br>
		<input type="checkbox" name="TEMPEPQ30714050" value="1" id="TEMPEPQ30714050" <%=strTEMPEPQ30714050answer1%>>
		<label for="TEMPEPQ30714050">Breast</label><br>
<% If session("gender")="F" then %>
		<input type="checkbox" name="TEMPEPQ30714010" value="1" id="TEMPEPQ30714010" <%=strTEMPEPQ30714010answer1%>>
		<label for="TEMPEPQ30714010">Female reproductive system (Gyn)</label><br>
<% end if %>
		<input type="checkbox" name="TEMPEPQ30714020" value="1" id="TEMPEPQ30714020" <%=strTEMPEPQ30714020answer1%>>
		<label for="TEMPEPQ30714020">Head, neck, eye, ear, nose,<br>&nbsp;&nbsp;&nbsp;&nbsp; mouth or thyroid</label><br>
		<input type="checkbox" name="TEMPEPQ30714040" value="1" id="TEMPEPQ30714040" <%=strTEMPEPQ30714040answer1%>>
		<label for="TEMPEPQ30714040">Heart, artery, vein or cardiac</label><br>

		<input type="checkbox" name="TEMPEPQ30714100" value="1" id="TEMPEPQ30714100" <%=strTEMPEPQ30714100answer1%>>
		<label for="TEMPEPQ30714100">Lung, thoracic or esophagus </label><br>


<% If session("gender")="M" then %>
		<input type="checkbox" name="TEMPEPQ30714090" value="1" id="TEMPEPQ30714090" <%=strTEMPEPQ30714090answer1%>>
		<label for="TEMPEPQ30714090">Male reproductive system</label><br>
<% end if %>

		<input type="checkbox" name="TEMPEPQ30714101" value="1" id="TEMPEPQ30714101" <%=strTEMPEPQ30714101answer1%>>
		<label for="TEMPEPQ30714101">Orthopedic (bone, joint, ligaments, and muscles)</label><br>

		<input type="checkbox" name="TEMPEPQ30714102" value="1" id="TEMPEPQ30714102" <%=strTEMPEPQ30714102answer1%>>
		<label for="TEMPEPQ30714102">Plastic or cosmetic surgery</label><br>

		<input type="checkbox" name="TEMPEPQ30714103" value="1" id="TEMPEPQ30714103" <%=strTEMPEPQ30714103answer1%>>
		<label for="TEMPEPQ30714103">Ports placement or removal </label><br>

		<input type="checkbox" name="TEMPEPQ30714104" value="1" id="TEMPEPQ30714104" <%=strTEMPEPQ30714104answer1%>>
		<label for="TEMPEPQ30714104">Skin </label><br>

		<input type="checkbox" name="TEMPEPQ30714105" value="1" id="TEMPEPQ30714105" <%=strTEMPEPQ30714105answer1%>>
		<label for="TEMPEPQ30714105">Spine (neck and back)</label><br>

		<input type="checkbox" name="TEMPEPQ30714106" value="1" id="TEMPEPQ30714106" <%=strTEMPEPQ30714106answer1%>>
		<label for="TEMPEPQ30714106">Urinary or kidney </label><br>



		<input type="checkbox" name="EPQ30760300" value="1" id="EPQ30760300" <%=strEPQ30760300answer1%>>
		<label for="EPQ30760300">Other type of surgery, specify:</label>
		  <input id="TEMPEPQ30714000" type="text" maxlength="75"  size="15" name="TEMPEPQ30714000" class="requiredIfPreviousCheckbox" value='<%=Session("TEMPEPQ30714000")%>' ><br>

<br><BR><BR>
<input type="radio" name="TEMP1EPQ30521200" value="1" id="TEMP1EPQ30521200" <%=strTEMP1EPQ30521200answer1%>>
		<label for="TEMP1EPQ30521200">None</label><br>

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
