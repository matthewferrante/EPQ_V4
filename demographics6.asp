<%
Session("DemographicsSectionStatus")="Current"
Session("PageHolder")="Demographics"
Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then
	if Session("EPQ30119000")="1" then
		strEPQ30119000="checked"
	end if
	if Session("EPQ30119010")="1" then
		strEPQ30119010="checked"
	end if
	if Session("EPQ30119020")="1" then
		strEPQ30119020="checked"
	end if
	if Session("EPQ30119030")="1" then
		strEPQ30119030="checked"
	end if
	if Session("EPQ30119040")="1" then
		strEPQ30119040="checked"
	end if

	if Session("EPQ30103000")="1" then
		strEPQ30103000white="checked"
	end if
	if Session("EPQ30103000")="2" then
		strEPQ30103000black="checked"
	end if
	if Session("EPQ30103000")="3" then
		strEPQ30103000asian="checked"
	end if
	if Session("EPQ30103000")="4" then
		strEPQ30103000hawaiian="checked"
	end if
	if Session("EPQ30103000")="5" then
		strEPQ30103000indian="checked"
	end if
	if Session("EPQ30103000")="6" then
		strEPQ30103000other="checked"
	end if
	if Session("EPQ30103000")="7" then
		strEPQ30103000multiple="checked"
	end if
	if Session("EPQ30103000")="88" then
		strEPQ30103000unknown="checked"
	end if
	if Session("EPQ30103000")="99" then
		strEPQ30103000prefer="checked"
	end if

end if
	

if Request.Form("ispostback")="1" then
	Session("EPQ30103000string")= ""
	Session("EPQ30103000string2")= ""
	Session("EPQ30103000") = Request.Form("EPQ30103000")

	Session("EPQ30103000") = Request.Form("EPQ30103000")
	Session("EPQ30103000_TXT") = Server.htmlencode(Request.Form("EPQ30103000_TXT"))

	Session("EPQ30119000") = Request.Form("EPQ30119000")
	Session("EPQ30119010") = Request.Form("EPQ30119010")
	Session("EPQ30119020") = Request.Form("EPQ30119020")
	Session("EPQ30119030") = Request.Form("EPQ30119030")
	Session("EPQ30119040") = Request.Form("EPQ30119040")


	if Session("EPQ30103000") = "1" then 
		Session("EPQ30103000string")= "White"
	end if
	if Session("EPQ30103000") = "2" then 
		Session("EPQ30103000string")= "Black"
	end if
	if Session("EPQ30103000") = "3" then 
		Session("EPQ30103000string")= "Asian"
	end if
	if Session("EPQ30103000") = "4" then 
		Session("EPQ30103000string")= "Native Hawaiian or Other Pacific Islander"
	end if
	if Session("EPQ30103000") = "5" then 
		Session("EPQ30103000string")= "Amer Ind / Alaska Nat"
	end if
	if Session("EPQ30103000") = "6" then 
		Session("EPQ30103000string")= Session("EPQ30103000_TXT")
	end if


	if Session("EPQ30103000") = "7" then 
		Session("EPQ30103000string")= "More than one race ("

	if Session("EPQ30119000") = "1" then 
		Session("EPQ30103000string2")= Session("EPQ30103000string2")&"White, "
	end if
	if Session("EPQ30119010") = "1" then 
		Session("EPQ30103000string2")= Session("EPQ30103000string2")&"Black or African American, "
	end if
	if Session("EPQ30119020") = "1" then 
		Session("EPQ30103000string2")= Session("EPQ30103000string2")&"Asian, "
	end if
	if Session("EPQ30119030") = "1" then 
		Session("EPQ30103000string2")= Session("EPQ30103000string2")&"Native Hawaiian or Other Pacific Islander, "
	end if
	if Session("EPQ30119040") = "1" then 
		Session("EPQ30103000string2")= Session("EPQ30103000string2")&" American Indian or Alaskan Native, "
	end if

	Session("EPQ30103000string2") = left(Session("EPQ30103000string2"), Len(Session("EPQ30103000string2")) - 2)
	Session("EPQ30103000string2") = Session("EPQ30103000string2")&")"


	Session("EPQ30103000string") = Session("EPQ30103000string")&Session("EPQ30103000string2")
	end if

	if Session("EPQ30103000") = "99" then 
		Session("EPQ30103000string")= "Race Answer Declined"
	end if


end if

if Request.Form("StopID")="1" then
		Session("DemographicsSectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
		Session("Page")=5
		Response.Redirect "demographicsmaster.asp"
end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
	Session("Page")="7"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "demographicsmaster.asp"
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
    <form action="demographics6.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">


  <fieldset>
    <legend class="QuestionBox">
      Which one of these groups would you say best represents your race? <br>
    </legend>
    <div class="QuestionAnswersBox">
      <span class="column1">
      <input type="radio" name="EPQ30103000" value="1" id="EPQ301030001" class="required qTriggerOff" <%=strEPQ30103000white%>>
      <label for="EPQ301030001">White</label><br>
      <input type="radio" class="qTriggerOff" name="EPQ30103000" value="3" id="EPQ301030002" <%=strEPQ30103000asian%>>
      <label for="EPQ301030002">Asian</label><br>
      <input type="radio" class="qTriggerOff" name="EPQ30103000" value="5" id="EPQ301030003" <%=strEPQ30103000indian%>>
      <label for="EPQ301030003">American Indian or Alaskan Native</label><br>

      <input type="radio" class="qTriggerOff" name="EPQ30103000" value="99" id="EPQ301030005" <%=strEPQ30103000prefer%>>
      <label for="EPQ301030005">Prefer not to answer</label><br>

      </span>

      <span class="column2">
      <input type="radio" class="qTriggerOff" name="EPQ30103000" value="2" id="EPQ301030006" <%=strEPQ30103000black%>>
      <label for="EPQ301030006">Black or African American</label><br>
      <input type="radio" class="qTriggerOff" name="EPQ30103000" value="4" id="EPQ301030007" <%=strEPQ30103000hawaiian%>>
      <label for="EPQ301030007">Native Hawaiian or other Pacific Islander</label><br>
      <input type="radio" class="qTrigger" name="EPQ30103000" value="7" id="EPQ301030006" <%=strEPQ30103000multiple%>>
      <label for="EPQ301030006">More than one race</label>

      </span>
    </div><!-- [ /#AnswerBox] -->
  </fieldset>	
		<span class="column5">&nbsp;
		</span>



<div class="hiddenQ atLeastOneCheckboxIfBranchActive">
  <fieldset>
    <legend class="QuestionBox">
Select the groups that best represent your race. Check all that apply.<br>
    </legend>
    <div class="QuestionAnswersBox">
      <span class="column1">
      <input type="checkbox" name="EPQ30119000" value="1" id="EPQ30119000" class="required" <%=strEPQ30119000%>>
      <label for="EPQ30119000">White</label><br>
      <input type="checkbox" name="EPQ30119020" value="1" id="EPQ30119020" <%=strEPQ30119020%>>
      <label for="EPQ30119020">Asian</label><br>
      <input type="checkbox" name="EPQ30119040" value="1" id="EPQ30119040" <%=strEPQ30119040%>>
      <label for="EPQ30119040">American Indian or Alaskan Native</label><br>

      </span>

      <span class="column2">
      <input type="checkbox" name="EPQ30119010" value="1" id="EPQ30119010" <%=strEPQ30119010%>>
      <label for="EPQ30119010">Black or African American</label><br>
      <input type="checkbox" name="EPQ30119030" value="1" id="EPQ30119030" <%=strEPQ30119030%>>
      <label for="EPQ30119030">Native Hawaiian or other Pacific Islander</label><br>

      </span>
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

	
 </body>
</html>
