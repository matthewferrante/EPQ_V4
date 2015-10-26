
<%

Session("familyhistorySectionStatus")="Current"
Session("PageHolder")="Family History"

Session("SurveyStatus")="Incomplete"

if Request.Form("ispostback") <> "1" then


	if Session("GI10920000")="1" then
		strGI10920000answer1="checked"
	end if
	if Session("GI10920000")="2" then
		strGI10920000answer2="checked"
	end if
	if Session("GI10920000")="88" then
		strGI10920000answer3="checked"
	end if

	if Session("GI10924000")="1" then
		strGI10924000answer1="checked"
	end if
	if Session("GI10924000")="2" then
		strGI10924000answer2="checked"
	end if
	if Session("GI10924000")="88" then
		strGI10924000answer3="checked"
	end if

	if Session("GI10928000")="1" then
		strGI10928000answer1="checked"
	end if
	if Session("GI10928000")="2" then
		strGI10928000answer2="checked"
	end if
	if Session("GI10928000")="88" then
		strGI10928000answer3="checked"
	end if

	if Session("GI10932000")="1" then
		strGI10932000answer1="checked"
	end if
	if Session("GI10932000")="2" then
		strGI10932000answer2="checked"
	end if
	if Session("GI10932000")="88" then
		strGI10932000answer3="checked"
	end if

	if Session("GI10936000")="1" then
		strGI10936000answer1="checked"
	end if
	if Session("GI10936000")="2" then
		strGI10936000answer2="checked"
	end if
	if Session("GI10936000")="88" then
		strGI10936000answer3="checked"
	end if

	if Session("GI10940000")="1" then
		strGI10940000answer1="checked"
	end if
	if Session("GI10940000")="2" then
		strGI10940000answer2="checked"
	end if
	if Session("GI10940000")="88" then
		strGI10940000answer3="checked"
	end if

	if Session("GI10944000")="1" then
		strGI10944000answer1="checked"
	end if
	if Session("GI10944000")="2" then
		strGI10944000answer2="checked"
	end if
	if Session("GI10944000")="88" then
		strGI10944000answer3="checked"
	end if

	if Session("GI10948000")="1" then
		strGI10948000answer1="checked"
	end if
	if Session("GI10948000")="2" then
		strGI10948000answer2="checked"
	end if
	if Session("GI10948000")="88" then
		strGI10948000answer3="checked"
	end if
	
	if Session("GI10952000")="1" then
		strGI10952000answer1="checked"
	end if
	if Session("GI10952000")="2" then
		strGI10952000answer2="checked"
	end if
	if Session("GI10952000")="88" then
		strGI10952000answer3="checked"
	end if
	
	if Session("GI10956000")="1" then
		strGI10956000answer1="checked"
	end if
	if Session("GI10956000")="2" then
		strGI10956000answer2="checked"
	end if
	if Session("GI10956000")="88" then
		strGI10956000answer3="checked"
	end if

	if Session("GI10960000")="1" then
		strGI10960000answer1="checked"
	end if
	if Session("GI10960000")="2" then
		strGI10960000answer2="checked"
	end if
	if Session("GI10960000")="88" then
		strGI10960000answer3="checked"
	end if

	if Session("GI10964000")="1" then
		strGI10964000answer1="checked"
	end if
	if Session("GI10964000")="2" then
		strGI10964000answer2="checked"
	end if
	if Session("GI10964000")="88" then
		strGI10964000answer3="checked"
	end if

	if Session("GI10968000")="1" then
		strGI10968000answer1="checked"
	end if
	if Session("GI10968000")="2" then
		strGI10968000answer2="checked"
	end if
	if Session("GI10968000")="88" then
		strGI10968000answer3="checked"
	end if

	if Session("GI10972000")="1" then
		strGI10972000answer1="checked"
	end if
	if Session("GI10972000")="2" then
		strGI10972000answer2="checked"
	end if
	if Session("GI10972000")="88" then
		strGI10972000answer3="checked"
	end if


end if


if Request.Form("ispostback")="1" then

 if Session("GI10919000Page2")= "1" then 
	Session("GI10920000") = Request.Form("GI10920000")
 end if
 if Session("GI10923000Page2")= "1" then 
	Session("GI10924000") = Request.Form("GI10924000")
 end if
 if Session("GI10927000Page2")= "1" then 
	Session("GI10928000") = Request.Form("GI10928000")
 end if
 if Session("GI10931000Page2")= "1" then 
	Session("GI10932000") = Request.Form("GI10932000")
 end if
 if Session("GI10935000Page2")= "1" then 
	Session("GI10936000") = Request.Form("GI10936000")
 end if
 if Session("GI10939000Page2")= "1" then 
	Session("GI10940000") = Request.Form("GI10940000")
 end if
 if Session("GI10943000Page2")= "1" then 
	Session("GI10944000") = Request.Form("GI10944000")
 end if
 if Session("GI10947000Page2")= "1" then 
	Session("GI10948000") = Request.Form("GI10948000")
 end if
 if Session("GI10951000Page2")= "1" then 
	Session("GI10952000") = Request.Form("GI10952000")
 end if
 if Session("GI10955000Page2")= "1" then 
	Session("GI10956000") = Request.Form("GI10956000")
 end if
 if Session("GI10959000Page2")= "1" then 
	Session("GI10960000") = Request.Form("GI10960000")
 end if
 if Session("GI10963000Page2")= "1" then 
	Session("GI10964000") = Request.Form("GI10964000")
 end if
 if Session("GI10967000Page2")= "1" then 
	Session("GI10968000") = Request.Form("GI10968000")
 end if
 if Session("GI10971000Page2")= "1" then 
	Session("GI10972000") = Request.Form("GI10972000")
 end if




end if


if Request.Form("StopID")="1" then
		Session("familyhistorySectionStatus")="Incomplete"
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("GoBackID")="1" then

		Session("ReturnID")="1"
		Session("Page")="6a3"
	 <!--#include file="autosavefunction.asp"-->
	Response.Redirect "familyhistorymaster.asp"

end if

if Session("ReturnID")="1" then
	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then

		Session("ReturnID")="1"
Session("familyhistorySectionStatus")="Complete"
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
	<div id="SpecialNote">
Please complete the table below for the genetic condition(s) for which a BLOOD RELATIVE was tested.
	</div>

    <form action="familyhistory6a4.asp" method="post" id="formQuestion" name="formQuestion">
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
<% if Session("GI10919000")= "1" then %>
<% if Session("GI10919000Page2")= "1" then %>
		<tr>
				<td>Hereditary breast and ovarian cancer (BRCA1/2)</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10920000" value="1" id="GI10920000" <%=strGI10920000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10920000" value="2" id="GI10920000" <%=strGI10920000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10920000" value="88" id="GI10920000" <%=strGI10920000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10923000")= "1" then %>
<% if Session("GI10923000Page2")= "1" then %>
			<tr>

				<td>Hereditary non-polyposis colorectal cancer/Lynch syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10924000" value="1" id="GI10924000" <%=strGI10924000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10924000" value="2" id="GI10924000" <%=strGI10924000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10924000" value="88" id="GI10924000" <%=strGI10924000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10927000")= "1" then %>
<% if Session("GI10927000Page2")= "1" then %>

			<tr>

				<td>Familial atypical multiple mole melanoma syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10928000" value="1" id="GI10928000" <%=strGI10928000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10928000" value="2" id="GI10928000" <%=strGI10928000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10928000" value="88" id="GI10928000" <%=strGI10928000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10931000")= "1" then %>
<% if Session("GI10931000Page2")= "1" then %>

			<tr>

				<td>Peutz-Jeghers syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10932000" value="1" id="GI10932000" <%=strGI10932000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10932000" value="2" id="GI10932000" <%=strGI10932000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10932000" value="88" id="GI10932000" <%=strGI10932000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10935000")= "1" then %>
<% if Session("GI10935000Page2")= "1" then %>

			<tr>

				<td>Hereditary pancreatitis</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10936000" value="1" id="GI10936000" <%=strGI10936000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10936000" value="2" id="GI10936000" <%=strGI10936000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10936000" value="88" id="GI10936000" <%=strGI10936000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10939000")= "1" then %>
<% if Session("GI10939000Page2")= "1" then %>

			<tr>

				<td>Familial adenomatous polyposis</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10940000" value="1" id="GI10940000" <%=strGI10940000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10940000" value="2" id="GI10940000" <%=strGI10940000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10940000" value="88" id="GI10940000" <%=strGI10940000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10943000")= "1" then %>
<% if Session("GI10943000Page2")= "1" then %>

			<tr>

				<td>Familial pancreatic cancer</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10944000" value="1" id="GI10944000" <%=strGI10944000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10944000" value="2" id="GI10944000" <%=strGI10944000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10944000" value="88" id="GI10944000" <%=strGI10944000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10947000")= "1" then %>
<% if Session("GI10947000Page2")= "1" then %>


		<tr>
				<td>Ataxia-telangiectasia</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10948000" value="1" id="GI10948000" <%=strGI10948000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10948000" value="2" id="GI10948000" <%=strGI10948000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10948000" value="88" id="GI10948000" <%=strGI10948000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10951000")= "1" then %>
<% if Session("GI10951000Page2")= "1" then %>

		<tr>
				<td>Von Hippel Lindau</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10952000" value="1" id="GI10952000" <%=strGI10952000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10952000" value="2" id="GI10952000" <%=strGI10952000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10952000" value="88" id="GI10952000" <%=strGI10952000answer3%>></td>

			</tr>

<% end if %>
<% end if %>
<% if Session("GI10955000")= "1" then %>
<% if Session("GI10955000Page2")= "1" then %>
		<tr>
				<td>Cystic fibrosis</td>

				<td style="text-align: center;"><input type="radio" class="required" name="GI10956000" value="1" id="GI10956000" <%=strGI10956000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10956000" value="2" id="GI10956000" <%=strGI10956000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10956000" value="88" id="GI10956000" <%=strGI10956000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10959000")= "1" then %>
<% if Session("GI10959000Page2")= "1" then %>

			<tr>

				<td>Li Fraumeni syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10960000" value="1" id="GI10960000" <%=strGI10960000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10960000" value="2" id="GI10960000" <%=strGI10960000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10960000" value="88" id="GI10960000" <%=strGI10960000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10963000")= "1" then %>
<% if Session("GI10963000Page2")= "1" then %>

			<tr>

				<td>Fanconi anemia</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10964000" value="1" id="GI10964000" <%=strGI10964000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10964000" value="2" id="GI10964000" <%=strGI10964000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10964000" value="88" id="GI10964000" <%=strGI10964000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10967000")= "1" then %>
<% if Session("GI10967000Page2")= "1" then %>

			<tr>

				<td>Juvenile polyposis syndrome</td>
				<td style="text-align: center;"><input type="radio" class="required" name="GI10968000" value="1" id="GI10968000" <%=strGI10968000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10968000" value="2" id="GI10968000" <%=strGI10968000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10968000" value="88" id="GI10968000" <%=strGI10968000answer3%>></td>

			</tr>
<% end if %>
<% end if %>
<% if Session("GI10971000")= "1" then %>
<% if Session("GI10971000Page2")= "1" then %>

		<tr>
				<td><input id="GI10969000_TXT" type="text" size="25" name="GI10971000_TXT" value='<%=Session("GI10971000_TXT")%>'</td>

				<td style="text-align: center;"><input type="radio" class="required" name="GI10972000" value="1" id="GI10972000" <%=strGI10972000answer1%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10972000" value="2" id="GI10972000" <%=strGI10972000answer2%>></td>
				<td style="text-align: center;"><input type="radio" name="GI10972000" value="88" id="GI10972000" <%=strGI10972000answer3%>></td>

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
