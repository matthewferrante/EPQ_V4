
<%

Session("SurgicalHistoryStatus")="Current"
Session("PageHolder")="Surgical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30755000")="1" then
		strEPQ30755000answer1="checked"
	end if

	if Session("EPQ30755090")="1" then
		strEPQ30755090answer1="checked"
	end if

	if Session("TEMP14EPQ30514030")="1" then
		strTEMP14EPQ30514030answer1="checked"
	end if

	if Session("EPQ30755100")="1" then
		strEPQ30755100answer1="checked"
	end if
	if Session("EPQ30755150")="1" then
		strEPQ30755150answer1="checked"
	end if

	if Session("1TEMP14EPQ30514030")="1" then
		str1TEMP14EPQ30514030answer1="checked"
	end if

	if Session("2TEMP14EPQ30514030")="1" then
		str2TEMP14EPQ30514030answer1="checked"
	end if

	if Session("3TEMP14EPQ30514030")="1" then
		str3TEMP14EPQ30514030answer1="checked"
	end if

	if Session("4TEMP14EPQ30514030")="1" then
		str4TEMP14EPQ30514030answer1="checked"
	end if

	if Session("5TEMP14EPQ30514030")="1" then
		str5TEMP14EPQ30514030answer1="checked"
	end if

	if Session("7TEMP14EPQ30514030")="1" then
		str7TEMP14EPQ30514030answer1="checked"
	end if

	if Session("8TEMP14EPQ30514030")="1" then
		str8TEMP14EPQ30514030answer1="checked"
	end if

	if Session("9TEMP14EPQ30514030")="1" then
		str9TEMP14EPQ30514030answer1="checked"
	end if

	if Session("10TEMP14EPQ30514030")="1" then
		str10TEMP14EPQ30514030answer1="checked"
	end if

	if Session("11TEMP14EPQ30514030")="1" then
		str11TEMP14EPQ30514030answer1="checked"
	end if

	if Session("TEMP16EPQ30514090")="1" then
		strTEMP16EPQ30514090answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then


	Session("EPQ30755000") = Request.Form("EPQ30755000")
	Session("EPQ30755150") = Request.Form("EPQ30755150")

	Session("EPQ30755090") = Request.Form("EPQ30755090")
	Session("TEMP14EPQ30514030") = Request.Form("TEMP14EPQ30514030")
	Session("EPQ30755100") = Request.Form("EPQ30755100")
	Session("1TEMP14EPQ30514030") = Request.Form("1TEMP14EPQ30514030")
	Session("2TEMP14EPQ30514030") = Request.Form("2TEMP14EPQ30514030")
	Session("3TEMP14EPQ30514030") = Request.Form("3TEMP14EPQ30514030")
	Session("4TEMP14EPQ30514030") = Request.Form("4TEMP14EPQ30514030")
	Session("5TEMP14EPQ30514030") = Request.Form("5TEMP14EPQ30514030")
	Session("7TEMP14EPQ30514030") = Request.Form("7TEMP14EPQ30514030")
	Session("8TEMP14EPQ30514030") = Request.Form("8TEMP14EPQ30514030")
	Session("9TEMP14EPQ30514030") = Request.Form("9TEMP14EPQ30514030")
	Session("10TEMP14EPQ30514030") = Request.Form("10TEMP14EPQ30514030")
	Session("11TEMP14EPQ30514030") = Request.Form("11TEMP14EPQ30514030")
	Session("TEMP16EPQ30514090") = Request.Form("TEMP16EPQ30514090")


	Session("EPQ30514000Describe") = Request.Form("EPQ30514000Describe")
	Session("TEMPEPQ30521200") = Request.Form("TEMPEPQ30521200")


end if

if Request.Form("StopID")="1" then
		Session("SurgicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"

		if Session("Gender")="M" then
		Session("Page")="1"
		Response.Redirect "surgicalhistorymaster.asp"
		end if
		
		if Session("Gender")="F" then
		Session("Page")="2"
		Response.Redirect "surgicalhistorymaster.asp"
		end if

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="4"

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


    <form action="surgicalhistory3.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		



<fieldset class="eitherNoneOrChecked">
  <legend class='QuestionBox'>
Have you had any of the following biopsies? Check all that apply. 
</legend>


<div class="QuestionAnswersBox">
<input type="checkbox" name="EPQ30755000" value="1" id="EPQ30755000" <%=strEPQ30755000answer1%> >
<label for="EPQ30514040">Bladder biopsy</label><br>

<input type="checkbox" name="EPQ30755090" value="1" id="EPQ30755090" <%=strEPQ30755090answer1%> >
<label for="EPQ30755090">Bone marrow biopsy</label><br>

<input type="checkbox" name="TEMP14EPQ30514030" value="1" id="TEMP14EPQ30514030" <%=strTEMP14EPQ30514030answer1%> >
<label for="TEMP14EPQ30514030">Brain biopsy</label><br>

<input type="checkbox" name="EPQ30755100" value="1" id="EPQ30514030" <%=strEPQ30755100answer1%> >
<label for="EPQ30755100">Breast biopsy</label><br>

<% if Session("Gender")="F" then %>
<input type="checkbox" name="1TEMP14EPQ30514030" value="1" id="EPQ30514030" <%=str1TEMP14EPQ30514030answer1%> >
<label for="1TEMP14EPQ30514030">Cervical biopsy (including LEEP or CONE)</label><br>
<% end if %>

<input type="checkbox" name="2TEMP14EPQ30514030" value="1" id="2TEMPEPQ30514030" <%=str2TEMP14EPQ30514030answer1%> >
<label for="2TEMPEPQ30514030">Kidney biopsy</label><br>

<input type="checkbox" name="EPQ30755150" value="1" id="EPQ30755150" <%=strEPQ30755150answer1%> >
<label for="EPQ30755150">Liver biopsy</label><br>

<input type="checkbox" name="4TEMP14EPQ30514030" value="1" id="4TEMP14EPQ30514030" <%=str4TEMP14EPQ30514030answer1%> >
<label for="4TEMP14EPQ30514030">Lung biopsy</label><br>

<input type="checkbox" name="5TEMP14EPQ30514030" value="1" id="5TEMP14EPQ30514030" <%=str5TEMP14EPQ30514030answer1%> >
<label for="5TEMP14EPQ30514030">Lymph node biopsy or sentinel lymph node biopsy</label><br>

<% if Session("Gender")="M" then %>
<input type="checkbox" name="7TEMP14EPQ30514030" value="1" id="7TEMP14EPQ30514030" <%=str7TEMP14EPQ30514030answer1%> >
<label for="7TEMP14EPQ30514030">Prostate biopsy</label><br>
<% end if %>

<input type="checkbox" name="8TEMP14EPQ30514030" value="1" id="8TEMP14EPQ30514030" <%=str8TEMP14EPQ30514030answer1%> >
<label for="8TEMP14EPQ30514030">Skin biopsy</label><br>

<% if Session("Gender")="M" then %>
<input type="checkbox" name="9TEMP14EPQ30514030" value="1" id="9TEMP14EPQ30514030" <%=str9TEMP14EPQ30514030answer1%> >
<label for="9TEMP14EPQ30514030">Testicle or penis biopsy</label><br>
<% end if %>

<input type="checkbox" name="10TEMP14EPQ30514030" value="1" id="10TEMP14EPQ30514030" <%=str10TEMP14EPQ30514030answer1%> >
<label for="10TEMP14EPQ30514030">Thyroid biopsy</label><br>

<% if Session("Gender")="F" then %>
<input type="checkbox" name="11TEMP14EPQ30514030" value="1" id="11TEMP14EPQ30514030" <%=str11TEMP14EPQ30514030answer1%> >
<label for="11TEMP14EPQ30514030">Vulva, vagina, or uterus biopsy</label><br>
<% end if %>

<input type="checkbox" name="TEMP16EPQ30514090" value="1" id="TEMP16EPQ30514090" <%=strTEMP16EPQ30514090answer1%> >
<label for="TEMP16EPQ30514090">Other biopsy, specify:</label>		

<input  id="EPQ30514000Describe" type="text" maxlength="75" size="15" name="EPQ30514000Describe"  class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30514000Describe")%>' ><br>
  

<input type="radio" name="TEMPEPQ30521200" value="1" id="TEMPEPQ30521200" <%=strTEMPEPQ30521200answer1%>>
		<label for="TEMPEPQ30521200">None</label><br>

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
