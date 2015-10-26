
<%

Session("familyhistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("GI10918000")="1" then
		strGI10918000answer1="checked"
	end if
	if Session("GI10918000")="2" then
		strGI10918000answer2="checked"
	end if
	if Session("GI10918000")="88" then
		strGI10918000answer3="checked"
	end if

	if Session("GI10922000")="1" then
		strGI10922000answer1="checked"
	end if
	if Session("GI10922000")="2" then
		strGI10922000answer2="checked"
	end if
	if Session("GI10922000")="88" then
		strGI10922000answer3="checked"
	end if

	if Session("GI10926000")="1" then
		strGI10926000answer1="checked"
	end if
	if Session("GI10926000")="2" then
		strGI10926000answer2="checked"
	end if
	if Session("GI10926000")="88" then
		strGI10926000answer3="checked"
	end if

	if Session("GI10930000")="1" then
		strGI10930000answer1="checked"
	end if
	if Session("GI10930000")="2" then
		strGI10930000answer2="checked"
	end if
	if Session("GI10930000")="88" then
		strGI10930000answer3="checked"
	end if

	if Session("GI10934000")="1" then
		strGI10934000answer1="checked"
	end if
	if Session("GI10934000")="2" then
		strGI10934000answer2="checked"
	end if
	if Session("GI10934000")="88" then
		strGI10934000answer3="checked"
	end if

	if Session("GI10938000")="1" then
		strGI10938000answer1="checked"
	end if
	if Session("GI10938000")="2" then
		strGI10938000answer2="checked"
	end if
	if Session("GI10938000")="88" then
		strGI10938000answer3="checked"
	end if

	if Session("GI10942000")="1" then
		strGI10942000answer1="checked"
	end if
	if Session("GI10942000")="2" then
		strGI10942000answer2="checked"
	end if
	if Session("GI10942000")="88" then
		strGI10942000answer3="checked"
	end if

	if Session("GI10946000")="1" then
		strGI10946000answer1="checked"
	end if
	if Session("GI10946000")="2" then
		strGI10946000answer2="checked"
	end if
	if Session("GI10946000")="88" then
		strGI10946000answer3="checked"
	end if
	
	if Session("GI10950000")="1" then
		strGI10950000answer1="checked"
	end if
	if Session("GI10950000")="2" then
		strGI10950000answer2="checked"
	end if
	if Session("GI10950000")="88" then
		strGI10950000answer3="checked"
	end if
	
	if Session("GI10954000")="1" then
		strGI10954000answer1="checked"
	end if
	if Session("GI10954000")="2" then
		strGI10954000answer2="checked"
	end if
	if Session("GI10954000")="88" then
		strGI10954000answer3="checked"
	end if

	if Session("GI10958000")="1" then
		strGI10958000answer1="checked"
	end if
	if Session("GI10958000")="2" then
		strGI10958000answer2="checked"
	end if
	if Session("GI10958000")="88" then
		strGI10958000answer3="checked"
	end if

	if Session("GI10962000")="1" then
		strGI10962000answer1="checked"
	end if
	if Session("GI10962000")="2" then
		strGI10962000answer2="checked"
	end if
	if Session("GI10962000")="88" then
		strGI10962000answer3="checked"
	end if

	if Session("GI10966000")="1" then
		strGI10966000answer1="checked"
	end if
	if Session("GI10966000")="2" then
		strGI10966000answer2="checked"
	end if
	if Session("GI10966000")="88" then
		strGI10966000answer3="checked"
	end if

	if Session("GI10970000")="1" then
		strGI10970000answer1="checked"
	end if
	if Session("GI10970000")="2" then
		strGI10970000answer2="checked"
	end if
	if Session("GI10970000")="88" then
		strGI10970000answer3="checked"
	end if

end if


if Request.Form("ispostback")="1" then


 if Session("GI10917000Page2")= "1" then 
	Session("GI10918000") = Request.Form("GI10918000")
 end if
 if Session("GI10921000Page2")= "1" then 
	Session("GI10922000") = Request.Form("GI10922000")
 end if
 if Session("GI10925000Page2")= "1" then 
	Session("GI10926000") = Request.Form("GI10926000")
 end if
 if Session("GI10929000Page2")= "1" then 
	Session("GI10930000") = Request.Form("GI10930000")
 end if
 if Session("GI10933000Page2")= "1" then 
	Session("GI10934000") = Request.Form("GI10934000")
 end if
 if Session("GI10937000Page2")= "1" then 
	Session("GI10938000") = Request.Form("GI10938000")
 end if
 if Session("GI10941000Page2")= "1" then 
	Session("GI10942000") = Request.Form("GI10942000")
 end if
 if Session("GI10945000Page2")= "1" then 
	Session("GI10946000") = Request.Form("GI10946000")
 end if
 if Session("GI10949000Page2")= "1" then 
	Session("GI10950000") = Request.Form("GI10950000")
 end if
 if Session("GI10953000Page2")= "1" then 
	Session("GI10954000") = Request.Form("GI10954000")
 end if
 if Session("GI10957000Page2")= "1" then 
	Session("GI10958000") = Request.Form("GI10958000")
 end if
 if Session("GI10961000Page2")= "1" then 
	Session("GI10962000") = Request.Form("GI10962000")
 end if
 if Session("GI10965000Page2")= "1" then 
	Session("GI10966000") = Request.Form("GI10966000")
 end if
 if Session("GI10969000Page2")= "1" then 
	Session("GI10970000") = Request.Form("GI10970000")
 end if


end if


if Request.Form("StopID")="1" then
		Session("familyhistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"
		Session("Page")="6a1"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

		Session("ReturnID")="1"
		if Session("GI10919000") ="1" OR Session("GI10923000") ="1" OR Session("GI10927000") ="1" OR Session("GI10931000") ="1" OR Session("GI10935000") ="1" OR Session("GI10939000") ="1" OR Session("GI10943000") ="1" OR Session("GI10947000") ="1" OR Session("GI10951000") OR Session("GI10955000") OR Session("GI10959000") OR Session("GI10963000") OR Session("GI10967000") OR Session("GI10971000") then
	Session("Page")="6a3"
else
Session("familyhistorySectionStatus")="Complete"
	Session("Page")="0"

end if
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
	<div id="SpecialNote">
Please complete the table below for the genetic condition(s) for which YOU were tested.
	</div>

    <form action="familyhistory6a2.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->
	<!-- [ Sample Question boxes ] -->


		<!-- [ Tables - the div container is given a class name that governs the CSS:
			either 	.tableBasic
					.tablePersonalHistory
					.tableFamilyHistory

			each table is given the class name .dataTable, which is
			used for the jQuery alternating color scheme; ] -->

  <fieldset class="tabular">
  <legend class="QuestionBox">

  </legend>

	<div class="tableFamilyHistory">
		<table class="dataTable" cellspacing="0" rules="groups">
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
		  <colgroup></colgroup>
			<tr>
				<th rowspan="2">Genetic condition<br>(Genes affected)</th>
				<th colspan="3">Was the result positive?</th>

			</tr>

			<tr class="tableSubHeading">
				<th>Yes</th>
				<th>No</th>
				<th>Don't Know</th>

			</tr>
		   <tbody>
<% if Session("GI10917000")= "1" then %>
<% if Session("GI10917000Page2")= "1" then %>
		<tr>
				<td>Hereditary breast and ovarian cancer (BRCA1/2)</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10918000" value="1" id="GI10918000" <%=strGI10918000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10918000" value="2" id="GI10918000" <%=strGI10918000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10918000" value="88" id="GI10918000" <%=strGI10918000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10921000")= "1" then %>
<% if Session("GI10921000Page2")= "1" then %>
			<tr>

				<td>Hereditary non-polyposis colorectal cancer/Lynch syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10922000" value="1" id="GI10922000" <%=strGI10922000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10922000" value="2" id="GI10922000" <%=strGI10922000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10922000" value="88" id="GI10922000" <%=strGI10922000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10925000")= "1" then %>
<% if Session("GI10925000Page2")= "1" then %>

			<tr>

				<td>Familial atypical multiple mole melanoma syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10926000" value="1" id="GI10926000" <%=strGI10926000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10926000" value="2" id="GI10926000" <%=strGI10926000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10926000" value="88" id="GI10926000" <%=strGI10926000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10929000")= "1" then %>
<% if Session("GI10929000Page2")= "1" then %>

			<tr>

				<td>Peutz-Jeghers syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10930000" value="1" id="GI10930000" <%=strGI10930000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10930000" value="2" id="GI10930000" <%=strGI10930000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10930000" value="88" id="GI10930000" <%=strGI10930000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10933000")= "1" then %>
<% if Session("GI10933000Page2")= "1" then %>

			<tr>

				<td>Hereditary pancreatitis</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10934000" value="1" id="GI10934000" <%=strGI10934000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10934000" value="2" id="GI10934000" <%=strGI10934000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10934000" value="88" id="GI10934000" <%=strGI10934000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10937000")= "1" then %>
<% if Session("GI10937000Page2")= "1" then %>

			<tr>

				<td>Familial adenomatous polyposis</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10938000" value="1" id="GI10938000" <%=strGI10938000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10938000" value="2" id="GI10938000" <%=strGI10938000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10938000" value="88" id="GI10938000" <%=strGI10938000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10941000")= "1" then %>
<% if Session("GI10941000Page2")= "1" then %>

			<tr>

				<td>Familial pancreatic cancer</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10942000" value="1" id="GI10942000" <%=strGI10942000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10942000" value="2" id="GI10942000" <%=strGI10942000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10942000" value="88" id="GI10942000" <%=strGI10942000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10945000")= "1" then %>
<% if Session("GI10945000Page2")= "1" then %>


		<tr>
				<td>Ataxia-telangiectasia</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10946000" value="1" id="GI10946000" <%=strGI10946000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10946000" value="2" id="GI10946000" <%=strGI10946000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10946000" value="88" id="GI10946000" <%=strGI10946000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10949000")= "1" then %>
<% if Session("GI10949000Page2")= "1" then %>

		<tr>
				<td>Von Hippel Lindau</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10950000" value="1" id="GI10950000" <%=strGI10950000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10950000" value="2" id="GI10950000" <%=strGI10950000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10950000" value="88" id="GI10950000" <%=strGI10950000answer3%>></td>

			</tr>

<% end if %>
<% end if %>
<% if Session("GI10953000")= "1" then %>
<% if Session("GI10953000Page2")= "1" then %>
		<tr>
				<td>Cystic fibrosis</td>

				<td style="text-align: center;"><input type="radio" class="required" name="GI10954000" value="1" id="GI10954000" <%=strGI10954000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10954000" value="2" id="GI10954000" <%=strGI10954000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10954000" value="88" id="GI10954000" <%=strGI10954000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10957000")= "1" then %>
<% if Session("GI10957000Page2")= "1" then %>

			<tr>

				<td>Li Fraumeni syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10958000" value="1" id="GI10958000" <%=strGI10958000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10958000" value="2" id="GI10958000" <%=strGI10958000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10958000" value="88" id="GI10958000" <%=strGI10958000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10961000")= "1" then %>
<% if Session("GI10961000Page2")= "1" then %>

			<tr>

				<td>Fanconi anemia</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10962000" value="1" id="GI10962000" <%=strGI10962000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10962000" value="2" id="GI10962000" <%=strGI10962000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10962000" value="88" id="GI10962000" <%=strGI10962000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10965000")= "1" then %>
<% if Session("GI10965000Page2")= "1" then %>

			<tr>

				<td>Juvenile polyposis syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10966000" value="1" id="GI10966000" <%=strGI10966000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10966000" value="2" id="GI10966000" <%=strGI10966000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10966000" value="88" id="GI10966000" <%=strGI10966000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10969000")= "1" then %>
<% if Session("GI10969000Page2")= "1" then %>

		<tr>
				<td><input id="GI10969000_TXT" type="text" size="25" name="GI10969000_TXT" value='<%=Session("GI10969000_TXT")%>'</td>

				<td style="text-align: center;"><input type="radio" class="required" name="GI10970000" value="1" id="GI10970000" <%=strGI10970000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10970000" value="2" id="GI10970000" <%=strGI10970000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10970000" value="88" id="GI10970000" <%=strGI10970000answer3%>></td>

		</tr>
<% end if %>
<% end if %>

		   </tbody>
		</table>
	</div> <!-- [ /.tablePersonalHistory ] -->
  </fieldset>
<div class="ResetBox">
</div>

</div><!-- [ /#formBlock ] -->

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
