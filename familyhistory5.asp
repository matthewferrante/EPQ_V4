<%


Session("familyhistorySectionStatus")="Current"
Session("PageHolder")="Family History"


if Request.Form("ispostback") <> "1" then

	if Session("GI10915000")="1" then
		strGI10915000answer1="checked"
	end if
	if Session("GI10915000")="0" then
		strGI10915000answer2="checked"
	end if
	if Session("GI10915000")="88" then
		strGI10915000answer3="checked"
	end if

	if Session("GI10916000")="1" then
		strGI10916000answer1="checked"
	end if
	if Session("GI10916000")="0" then
		strGI10916000answer2="checked"
	end if
	if Session("GI10916000")="88" then
		strGI10916000answer3="checked"
	end if

end if	

if Request.Form("ispostback")="1" then

	Session("GI10915000string")= ""
	Session("GI10916000string")= ""
	
	Session("GI10915000") = Request.Form("GI10915000")
	Session("GI10916000") = Request.Form("GI10916000")

	if Session("GI10915000") = "1" then 
		Session("GI10915000string")= ""
	end if
	if Session("GI10915000") = "0" then 
		Session("GI10915000string")= ""
	end if
	if Session("GI10915000") = "88" then 
		Session("GI10915000string")= ""
	end if

	if Session("GI10916000") = "1" then 
		Session("GI10916000string")= ""
	end if
	if Session("GI10916000") = "0" then 
		Session("GI10916000string")= ""
	end if
	if Session("GI10916000") = "88" then 
		Session("GI10916000string")= ""
	end if
              
end if

if Request.Form("StopID")="1" then
		Session("familyhistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

if Session("GI10202000")="1" then

	if Session("GI10901000") ="1" OR Session("GI10902000") ="1" OR Session("GI10903000") ="1" OR Session("GI10904000") ="1" OR Session("GI10905000") ="1" OR Session("GI10907000") ="1" OR Session("GI10907000") ="1" then
	Session("Page")="4a"
	Response.Redirect "familyhistorymaster.asp"
	end if
	Session("Page")="4"
	Response.Redirect "familyhistorymaster.asp"
end if



if Session("EPQ30901030") ="1" OR Session("EPQ30901130") ="1" OR Session("EPQ30901110") ="1" OR Session("EPQ30901160") ="1" OR Session("EPQ30901010") ="1" OR Session("EPQ30901050") ="1" OR Session("EPQ30901080") ="1" OR Session("EPQ30901040") ="1" OR Session("EPQ30901090") ="1" OR Session("EPQ30901140") ="1" OR Session("EPQ30901150") ="1" OR Session("EPQ30901100") ="1" OR Session("EPQ30901060") ="1" OR Session("EPQ30901070")="1" OR Session("EPQ30901020")="1" then
			if Session("FHDisplayCounter") > 8 then
			Session("Page")="3"
			else
			Session("Page")=2
			end if
		else
			Session("Page")=1
		End if
		Session("CancerRiskSectionStatus")=""
		Response.Redirect "familyhistorymaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
if Session("GI10916000")="1" then
	Session("Page")="6"
	Response.Redirect "familyhistorymaster.asp"
end if
	Session.Contents.Remove("GI10917000")
	Session.Contents.Remove("GI10918000")
	Session.Contents.Remove("GI10919000")

	Session.Contents.Remove("GI10920000")
	Session.Contents.Remove("GI10921000")
	Session.Contents.Remove("GI10922000")
	Session.Contents.Remove("GI10923000")
	Session.Contents.Remove("GI10924000")
	Session.Contents.Remove("GI10925000")
	Session.Contents.Remove("GI10926000")
	Session.Contents.Remove("GI10927000")
	Session.Contents.Remove("GI10928000")
	Session.Contents.Remove("GI10929000")

	Session.Contents.Remove("GI10930000")
	Session.Contents.Remove("GI10931000")
	Session.Contents.Remove("GI10932000")
	Session.Contents.Remove("GI10933000")
	Session.Contents.Remove("GI10934000")
	Session.Contents.Remove("GI10935000")
	Session.Contents.Remove("GI10936000")
	Session.Contents.Remove("GI10937000")
	Session.Contents.Remove("GI10938000")
	Session.Contents.Remove("GI10939000")

	Session.Contents.Remove("GI10940000")
	Session.Contents.Remove("GI10941000")
	Session.Contents.Remove("GI10942000")
	Session.Contents.Remove("GI10943000")
	Session.Contents.Remove("GI10944000")
	Session.Contents.Remove("GI10945000")
	Session.Contents.Remove("GI10946000")
	Session.Contents.Remove("GI10947000")
	Session.Contents.Remove("GI10948000")
	Session.Contents.Remove("GI10949000")

	Session.Contents.Remove("GI10950000")
	Session.Contents.Remove("GI10951000")
	Session.Contents.Remove("GI10952000")
	Session.Contents.Remove("GI10953000")
	Session.Contents.Remove("GI10954000")
	Session.Contents.Remove("GI10955000")
	Session.Contents.Remove("GI10956000")
	Session.Contents.Remove("GI10957000")
	Session.Contents.Remove("GI10958000")
	Session.Contents.Remove("GI10959000")

	Session.Contents.Remove("GI10960000")
	Session.Contents.Remove("GI10961000")
	Session.Contents.Remove("GI10962000")
	Session.Contents.Remove("GI10963000")
	Session.Contents.Remove("GI10964000")
	Session.Contents.Remove("GI10965000")
	Session.Contents.Remove("GI10966000")
	Session.Contents.Remove("GI10967000")
	Session.Contents.Remove("GI10968000")
	Session.Contents.Remove("GI10969000")
	Session.Contents.Remove("GI10969000_TXT")
	Session.Contents.Remove("GI10970000")
	Session.Contents.Remove("GI10971000")
	Session.Contents.Remove("GI10971000_TXT")
	Session.Contents.Remove("GI10972000")
	
	Session.Contents.Remove("GI10973000")
	Session.Contents.Remove("GI10974000")

	Session("familyhistorySectionStatus")="Completed"
	Session("Page")="0"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"

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
		
    <form action="familyhistory5.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
  <fieldset>
	<legend class="QuestionBox">
Have you ever been referred to a genetic counselor to discuss your personal and/or family history of cancer?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="GI10915000" value="1" id="GI109150001" class="qTrigger2 required" <%=strGI10915000answer1%>>
		<label for="GI109150001">Yes</label><br>
		<input type="radio" name="GI10915000" value="0" id="GI109150002" class="qTriggerOff2" <%=strGI10915000answer2%>>
		<label for="GI109150002">No</label><br>
		<input type="radio" name="GI10915000" value="88" id="GI109150003" class="qTriggerOff2" <%=strGI10915000answer3%>>
		<label for="GI109150003">Don't Know</label><br>
  	</div><!-- [ /#AnswerBox] -->
  </fieldset>
<br>

<div class="hiddenQ2">
  <fieldset>
	<legend class="QuestionBox">
Have you or a family member ever had a blood test to determine if cancer runs in your family because
of a<br> genetic or inherited condition?<br>
	</legend>

	<div class="QuestionAnswersBox">
		<input type="radio" name="GI10916000" value="1" id="GI109160001" class="requireIfBranchActive" <%=strGI10916000answer1%>>
		<label for="GI109160001">Yes</label><br>
		<input type="radio" name="GI10916000" value="0" id="GI109160002" <%=strGI10916000answer2%>>
		<label for="GI109160002">No</label><br>
		<input type="radio" name="GI10916000" value="88" id="GI109160003" <%=strGI10916000answer3%>>
		<label for="GI109160003">Don't Know</label><br>
  	</div><!-- [ /#AnswerBox] -->
  </fieldset>
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
	
<script>
  if ( $("#EPQ30206000:checked").attr('value') == 0 ) {
    $("#EPQ30206000:checked").click();
  }
</script>
	

 </body>
</html>
