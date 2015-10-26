
<%

Session("PastMedicalHistorySectionStatus")="Current"
Session("PageHolder")="Past Medical History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("TEMPEPQ30419000")="1" then
		strEPQ30401001answer1="checked"
	end if

	if Session("EPQ30401001")="1" then
		strEPQ30401001answer1="checked"
	end if
	if Session("EPQ30401002")="1" then
		strEPQ30401002answer1="checked"
	end if
	if Session("TEMP1EPQ30401002")="1" then
		strTEMP1EPQ30401002answer1="checked"
	end if
	if Session("TEMP2EPQ30401002")="1" then
		strTEMP2EPQ30401002answer1="checked"
	end if
	if Session("TEMP3EPQ30401002")="1" then
		strTEMP3EPQ30401002answer1="checked"
	end if
	if Session("TEMP4EPQ30401002")="1" then
		strTEMP4EPQ30401002answer1="checked"
	end if
	if Session("TEMP5EPQ30401002")="1" then
		strTEMP5EPQ30401002answer1="checked"
	end if
	if Session("TEMP6EPQ30401002")="1" then
		strTEMP6EPQ30401002answer1="checked"
	end if
	if Session("TEMP7EPQ30401002")="1" then
		strTEMP7EPQ30401002answer1="checked"
	end if
	if Session("EPQ30408110")="1" then
		strEPQ30408110answer1="checked"
	end if
	if Session("TEMP9EPQ30401002")="1" then
		strTEMP9EPQ30401002answer1="checked"
	end if
	if Session("TEMP10EPQ30401002")="1" then
		strTEMP10EPQ30401002answer1="checked"
	end if
	if Session("TEMP11EPQ30401002")="1" then
		strTEMP11EPQ30401002answer1="checked"
	end if
	if Session("TEMP12EPQ30401002")="1" then
		strTEMP12EPQ30401002answer1="checked"
	end if
	if Session("TEMP13EPQ30401002")="1" then
		strTEMP13EPQ30401002answer1="checked"
	end if
	if Session("TEMP14EPQ30401002")="1" then
		strTEMP14EPQ30401002answer1="checked"
	end if
	if Session("EPQ30415020")="1" then
		strEPQ30415020answer1="checked"
	end if
	if Session("TEMP16EPQ30401002")="1" then
		strTEMP16EPQ30401002answer1="checked"
	end if

	if Session("EPQ30401003")="1" then
		strEPQ30401003answer1="checked"
	end if
	if Session("EPQ30401004")="1" then
		strEPQ30401004answer1="checked"
	end if
	if Session("EPQ30401005")="1" then
		strEPQ30401005answer1="checked"
	end if


end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30401001") = Request.Form("EPQ30401001")
	Session("EPQ30401002") = Request.Form("EPQ30401002")
	Session("EPQ30401003") = Request.Form("EPQ30401003")
	Session("EPQ30401004") = Request.Form("EPQ30401004")
	Session("EPQ30401005") = Request.Form("EPQ30401005")
	Session("EPQ30401000") = Request.Form("EPQ30401000")
	Session("TEMP1EPQ30401002") = Request.Form("TEMP1EPQ30401002")
	Session("TEMP2EPQ30401002") = Request.Form("TEMP2EPQ30401002")
	Session("TEMP3EPQ30401002") = Request.Form("TEMP3EPQ30401002")
	Session("TEMP4EPQ30401002") = Request.Form("TEMP4EPQ30401002")
	Session("TEMP5EPQ30401002") = Request.Form("TEMP5EPQ30401002")
	Session("TEMP6EPQ30401002") = Request.Form("TEMP6EPQ30401002")
	Session("TEMP7EPQ30401002") = Request.Form("TEMP7EPQ30401002")
	Session("EPQ30408110") = Request.Form("EPQ30408110")
	Session("TEMP9EPQ30401002") = Request.Form("TEMP9EPQ30401002")
	Session("TEMP10EPQ30401002") = Request.Form("TEMP10EPQ30401002")
	Session("TEMP11EPQ30401002") = Request.Form("TEMP11EPQ30401002")
	Session("TEMP12EPQ30401002") = Request.Form("TEMP12EPQ30401002")
	Session("TEMP13EPQ30401002") = Request.Form("TEMP13EPQ30401002")
	Session("TEMP14EPQ30401002") = Request.Form("TEMP14EPQ30401002")
	Session("EPQ30415020") = Request.Form("EPQ30415020")
	Session("TEMP16EPQ30401002") = Request.Form("TEMP16EPQ30401002")

	if Session("EPQ30401003")<> "1" then
	Session.Contents.Remove("GI10401010")	
	Session.Contents.Remove("GI10401020")	
	Session.Contents.Remove("GI10401030")	
	Session.Contents.Remove("GI10401040")	
	Session.Contents.Remove("GI10401050")	
	Session.Contents.Remove("GI10401060_TXT")	
	end if 
end if


if Request.Form("StopID")="1" then
		Session("PastMedicalHistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

	Session("ReturnID")="1"
	Session("Page")="17"
	Session("PastMedicalHistorySectionStatus")=""
	Response.Redirect "pastmedicalhistorymaster.asp"

end if


if Request.Form("ContinueID")="1" then
	If Session("EPQ30401003") = "1" then
	Session("Page")="1a"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "pastmedicalhistorymaster.asp"
	end if

	Session("Page")="1a1"
	 <!--#include file="autosavefunction.asp"-->

	Response.Redirect "pastmedicalhistorymaster.asp"
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
    <form action="pastmedical1.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
<div id="SpecialNote">
Please list medical problems, diseases, or conditions that you may have been diagnosed with other than cancer.
</div>
		
  <fieldset class="eitherNoneOrChecked">
    <legend class="QuestionBox">
Have you ever had any of the following infections and/or sexually transmitted diseases? Check all that apply.<br>
	</legend>
	<div class="QuestionAnswersBox">

<span class="column1">
		<input type="checkbox" name="TEMP1EPQ30401002" value="1" 
id="TEMP1EPQ30401002" <%=strTEMP1EPQ30401002answer1%>>
		<label for="TEMP1EPQ30401002">Chancroid</label><br>
		<input type="checkbox" name="TEMP2EPQ30401002" value="1" 
id="TEMP2EPQ30401002" <%=strTEMP2EPQ30401002answer1%>>
		<label for="TEMP2EPQ30401002">Chlamydia</label><br>

		<input type="checkbox" name="TEMP3EPQ30401002" value="1" 
id="TEMP3EPQ30401002" <%=strTEMP3EPQ30401002answer1%>>
		<label for="TEMP3EPQ30401002">Cytomegalovirus (CMV)</label><br>

		<input type="checkbox" name="TEMP4EPQ30401002" value="1" 
id="TEMP4EPQ30401002" <%=strTEMP4EPQ30401002answer1%>>
		<label for="TEMP4EPQ30401002">Epstein–Barr virus (EBV)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or human herpesvirus 4 (HHV-4)</label><br>

		<input type="checkbox" name="TEMP5EPQ30401002" value="1" 
id="TEMP%EPQ30401002" <%=strTEMP5EPQ30401002answer1%>>
		<label for="TEMP5EPQ30401002">Genital warts</label><br>

		<input type="checkbox" name="TEMP6EPQ30401002" value="1" 
id="TEMP6EPQ30401002" <%=strTEMP6EPQ30401002answer1%>>
		<label for="TEMP6EPQ30401002">Gonorrhea</label><br>

		<input type="checkbox" name="EPQ30401001" value="1" id="EPQ30401001"  <%=strEPQ30401001answer1%>>
		<label for="EPQ30401001">Helicobacter pylori (infection causing ulcer)</label><br>

		<input type="checkbox" name="EPQ30401003" value="1" id="EPQ30401003" <%=strEPQ30401003answer1%>>
		<label for="EPQ30401003">Hepatitis</label><br>

		<input type="checkbox" name="TEMP7EPQ30401002" value="1" 
id="TEMP7EPQ30401002" <%=strTEMP7EPQ30401002answer1%>>
		<label for="TEMP7EPQ30401002">Herpes</label><br>


</span>
<span class="column2">
		<input type="checkbox" name="EPQ30401002" value="1" 
id="EPQ30401002" <%=strEPQ30401002answer1%>>
		<label for="EPQ30401002">Human immunodeficiency virus (HIV)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or acquired immunodeficiency syndrome (AIDS)</label><br>

		<input type="checkbox" name="EPQ30408110" value="1" 
id="EPQ30408110" <%=strEPQ30408110answer1%>>
		<label for="EPQ30408110">Human papillomavirus (HPV)</label><br>
		<input type="checkbox" name="TEMP9EPQ30401002" value="1" 
id="TEMP9EPQ30401002" <%=strTEMP9EPQ30401002answer1%>>
		<label for="TEMP9EPQ30401002">Human T-lymphotropic virus type I (HTLV-I)</label><br>


		<input type="checkbox" name="TEMP10EPQ30401002" value="1" 
id="TEMP10EPQ30401002" <%=strTEMP10EPQ30401002answer1%>>
		<label for="TEMP10EPQ30401002">Human T-lymphotropic virus type II (HTLV-II)</label><br>
		<input type="checkbox" name="TEMP11EPQ30401002" value="1" 
id="TEMP11EPQ30401002" <%=strTEMP11EPQ30401002answer1%>>
		<label for="TEMP11EPQ30401002">Methicillin-resistant Staphylococcus aureus (MRSA)</label><br>

		<input type="checkbox" name="TEMP12EPQ30401002" value="1" 
id="TEMP12EPQ30401002" <%=strTEMP12EPQ30401002answer1%>>
		<label for="TEMP12EPQ30401002">Scabies</label><br>

		<input type="checkbox" name="TEMP13EPQ30401002" value="1" 
id="TEMP13EPQ30401002" <%=strTEMP13EPQ30401002answer1%>>
		<label for="TEMP13EPQ30401002">Syphilis</label><br>

		<input type="checkbox" name="TEMP14EPQ30401002" value="1" 
id="TEMP14EPQ30401002" <%=strTEMP14EPQ30401002answer1%>>
		<label for="TEMP14EPQ30401002">Trichomoniasis</label><br>


		<input type="checkbox" name="EPQ30415020" value="1" 
id="EPQ30415020" <%=strEPQ30415020answer1%>>
		<label for="EPQ30415020">Tuberculosis (TB)</label><br>

		<input type="checkbox" name="TEMP16EPQ30401002" value="1" 
id="TEMP16EPQ30401002" <%=strTEMP16EPQ30401002answer1%>>
		<label for="TEMP16EPQ30401002">Varicella zoster virus (Chicken Pox or Shingles)</label><br>

		<input type="checkbox" name="EPQ30401004" value="1" id="EPQ30401004" <%=strEPQ30401004answer1%>>
		<label for="EPQ30401004">Other, specify:</label>
		<input id="EPQ30401000" type="text" maxlength="74" size="30" name="EPQ30401000" class="requiredIfPreviousCheckbox" value='<%=Session("EPQ30401000")%>' ><br>
		<input type="radio" name="EPQ30401005" value="1" id="EPQ30401005" <%=strEPQ30401005answer1%>>
		<label for="EPQ30401005">No, I have never had any of these problems</label><br>

</span>
	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<br>



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
