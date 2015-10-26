<%
Session("SmokingHistorySection")=2
Session("PageHolder")="Smoking"

if Request.Form("ispostback")=1 then
	Session("yrs_stop") = Request.Form("yrs_stop")
	Session("month_stop") = Request.Form("month_stop")
	Session("date_stop_day") = Request.Form("date_stop_day")
	Session("date_stop_month") = Request.Form("date_stop_month")
	Session("date_stop_year") = Request.Form("date_stop_year")

	if len(Session("date_stop_day")) > 1 then 
		Session("date_stop")=Session("date_stop_month")&"/"&Session("date_stop_day")&"/"&Session("date_stop_year")
	end if
end if

if Request.Form("StopID")="1" then

		Session("FamilyHistory")=1
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("PauseID")="1" then

		Response.Redirect "patientpause.asp"
end if


if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	Session("Page")=9
	Response.Redirect "smokinghistorymaster.asp"
end if

if Session("ReturnID")="1" then

	if Session("age_stop") = "1" then
		strage_stopyes="checked"
	end if
	if Session("age_stop") = "0" then
		strage_stopno="checked"
	end if

	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
		Session("Page")=11
		Response.Redirect "smokinghistorymaster.asp"
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
		<img src="images/moffitt.gif" />
</div>

<div id="wrapper">
 <div id="formWrapper">

	<span class="heading">Please answer the following question and click CONTINUE</span><br />

   <div id="formBlock">
    <form action="stopdate.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ispostback" value="1" ID="ispostback">

<!-- [Question boxes ] -->		
	<div class="QAbox">
		How long ago did you stop?<br>
		<label for="yrs_stop">Years</label> 
		<select id="yrs_stop" type="text" size="1" name="yrs_stop" value=<%Session("yrs_stop")%> />
		<OPTION VALUE="<%=Session("yrs_stop")%>" ><%=Session("yrs_stop")%></OPTION>
		<OPTION VALUE="1" >1</OPTION>
		<OPTION VALUE="2" >2</OPTION>
		<OPTION VALUE="3" >3</OPTION>
		<OPTION VALUE="4" >4</OPTION>
		<OPTION VALUE="5" >5</OPTION>
		<OPTION VALUE="6" >6</OPTION>
		<OPTION VALUE="7" >7</OPTION>
		<OPTION VALUE="8" >8</OPTION>
		<OPTION VALUE="9" >9</OPTION>
		<OPTION VALUE="10" >10</OPTION>
		<OPTION VALUE="11" >11</OPTION>
		<OPTION VALUE="12" >12</OPTION>
		<OPTION VALUE="13" >13</OPTION>
		<OPTION VALUE="14" >14</OPTION>
		<OPTION VALUE="15" >15</OPTION>
		<OPTION VALUE="16" >16</OPTION>
		<OPTION VALUE="17" >17</OPTION>
		<OPTION VALUE="18" >18</OPTION>
		<OPTION VALUE="19" >19</OPTION>
		<OPTION VALUE="20" >20</OPTION>

		</select>
		<label for="month_stop">Month</label> 
		<select id="month_stop" type="text" size="1" name="month_stop" value=<%Session("month_stop")%> /><label for="month_stop">Month</label> 
		<OPTION VALUE="<%=Session("month_stop")%>" ><%=Session("month_stop")%></OPTION>
		<OPTION VALUE="1" >1</OPTION>
		<OPTION VALUE="2" >2</OPTION>
		<OPTION VALUE="3" >3</OPTION>
		<OPTION VALUE="4" >4</OPTION>
		<OPTION VALUE="5" >5</OPTION>
		<OPTION VALUE="6" >6</OPTION>
		<OPTION VALUE="7" >7</OPTION>
		<OPTION VALUE="8" >8</OPTION>
		<OPTION VALUE="9" >9</OPTION>
		<OPTION VALUE="10" >10</OPTION>
		<OPTION VALUE="11" >11</OPTION>
		<OPTION VALUE="12" >12</OPTION>

		</select
<br>		
	</div><!-- [ /#QABox] -->

	<div class="QAbox">
		OR When did you stop?<br>
		<label for="date_stop_month">Month</label> 
		<select id="date_stop_month" type="text" size="1" name="date_stop_month" value=<%Session("date_stop_month")%> /><label for="date_stop_month">Month</label> 
		<OPTION VALUE="<%=Session("date_stop_month")%>" ><%=Session("date_stop_month")%></OPTION>
		<OPTION VALUE="01" >01</OPTION>
		<OPTION VALUE="02" >02</OPTION>
		<OPTION VALUE="03" >03</OPTION>
		<OPTION VALUE="04" >04</OPTION>
		<OPTION VALUE="05" >05</OPTION>
		<OPTION VALUE="06" >06</OPTION>
		<OPTION VALUE="07" >07</OPTION>
		<OPTION VALUE="08" >08</OPTION>
		<OPTION VALUE="09" >09</OPTION>
		<OPTION VALUE="10" >10</OPTION>
		<OPTION VALUE="11" >11</OPTION>
		<OPTION VALUE="12" >12</OPTION>
		</select
<br>		
		<label for="date_stop_day">Day</label> 
		<select id="date_stop_day" type="text" size="1" name="date_stop_day" value=<%Session("date_stop_day")%> /><label for="date_stop_day">Day</label> 
		<OPTION VALUE="<%=Session("date_stop_day")%>" ><%=Session("date_stop_day")%></OPTION>
		<OPTION VALUE="01" >01</OPTION>
		<OPTION VALUE="02" >02</OPTION>
		<OPTION VALUE="03" >03</OPTION>
		<OPTION VALUE="04" >04</OPTION>
		<OPTION VALUE="05" >05</OPTION>
		<OPTION VALUE="06" >06</OPTION>
		<OPTION VALUE="07" >07</OPTION>
		<OPTION VALUE="08" >08</OPTION>
		<OPTION VALUE="09" >09</OPTION>
		<OPTION VALUE="10" >10</OPTION>
		<OPTION VALUE="11" >11</OPTION>
		<OPTION VALUE="12" >12</OPTION>
		<OPTION VALUE="13" >13</OPTION>
		<OPTION VALUE="14" >14</OPTION>
		<OPTION VALUE="15" >15</OPTION>
		<OPTION VALUE="16" >16</OPTION>
		<OPTION VALUE="17" >17</OPTION>
		<OPTION VALUE="18" >18</OPTION>
		<OPTION VALUE="19" >19</OPTION>
		<OPTION VALUE="20" >20</OPTION>
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25" >25</OPTION>
		<OPTION VALUE="26" >26</OPTION>
		<OPTION VALUE="27" >27</OPTION>
		<OPTION VALUE="28" >28</OPTION>
		<OPTION VALUE="29" >29</OPTION>
		<OPTION VALUE="30" >30</OPTION>
		<OPTION VALUE="31" >31</OPTION>

		</select
<br>		

		<label for="date_stop_year">Year</label> 
		<select id="date_stop_year" type="text" size="1" name="date_stop_year" value=<%Session("date_stop_year")%> />
		<OPTION VALUE="<%=Session("date_stop_year")%>" ><%=Session("date_stop_year")%></OPTION>
		<OPTION VALUE="1950" >1950</OPTION>
		<OPTION VALUE="1951" >1951</OPTION>
		<OPTION VALUE="1952" >1952</OPTION>
		<OPTION VALUE="1953" >1953</OPTION>
		<OPTION VALUE="1954" >1954</OPTION>
		<OPTION VALUE="1955" >1955</OPTION>
		<OPTION VALUE="1956" >1956</OPTION>
		<OPTION VALUE="1957" >1957</OPTION>
		<OPTION VALUE="1958" >1958</OPTION>
		<OPTION VALUE="1959" >1959</OPTION>
		<OPTION VALUE="1960" >1960</OPTION>
		<OPTION VALUE="1961" >1961</OPTION>
		<OPTION VALUE="1962" >1962</OPTION>
		<OPTION VALUE="1963" >1963</OPTION>
		<OPTION VALUE="1964" >1964</OPTION>
		<OPTION VALUE="1965" >1965</OPTION>
		<OPTION VALUE="1966" >1966</OPTION>
		<OPTION VALUE="1967" >1967</OPTION>
		<OPTION VALUE="1968" >1968</OPTION>
		<OPTION VALUE="1969" >1969</OPTION>
		<OPTION VALUE="1970" >1970</OPTION>
		<OPTION VALUE="1971" >1971</OPTION>
		<OPTION VALUE="1972" >1972</OPTION>
		<OPTION VALUE="1973" >1973</OPTION>
		<OPTION VALUE="1974" >1974</OPTION>
		<OPTION VALUE="1975" >1975</OPTION>
		<OPTION VALUE="1976" >1976</OPTION>
		<OPTION VALUE="1977" >1977</OPTION>
		<OPTION VALUE="1978" >1978</OPTION>
		<OPTION VALUE="1979" >1979</OPTION>
		<OPTION VALUE="1980" >1980</OPTION>
		<OPTION VALUE="1981" >1981</OPTION>
		<OPTION VALUE="1982" >1982</OPTION>
		<OPTION VALUE="1983" >1983</OPTION>
		<OPTION VALUE="1984" >1984</OPTION>
		<OPTION VALUE="1985" >1985</OPTION>
		<OPTION VALUE="1986" >1986</OPTION>
		<OPTION VALUE="1987" >1987</OPTION>
		<OPTION VALUE="1988" >1988</OPTION>
		<OPTION VALUE="1989" >1989</OPTION>
		<OPTION VALUE="1990" >1990</OPTION>
		<OPTION VALUE="1991" >1991</OPTION>
		<OPTION VALUE="1992" >1992</OPTION>
		<OPTION VALUE="1993" >1993</OPTION>
		<OPTION VALUE="1994" >1994</OPTION>
		<OPTION VALUE="1995" >1995</OPTION>
		<OPTION VALUE="1996" >1996</OPTION>
		<OPTION VALUE="1997" >1997</OPTION>
		<OPTION VALUE="1998" >1998</OPTION>
		<OPTION VALUE="1999" >1999</OPTION>
		<OPTION VALUE="2000" >2000</OPTION>
		<OPTION VALUE="2001" >2001</OPTION>
		<OPTION VALUE="2002" >2002</OPTION>
		<OPTION VALUE="2003" >2003</OPTION>
		<OPTION VALUE="2004" >2004</OPTION>
		<OPTION VALUE="2005" >2005</OPTION>
		<OPTION VALUE="2006" >2006</OPTION>
		<OPTION VALUE="2007" >2007</OPTION>
		<OPTION VALUE="2008" >2008</OPTION>
		<OPTION VALUE="2009" >2009</OPTION>
		<OPTION VALUE="2010" >2010</OPTION>

		</select>
	</div><!-- [ /#QABox] -->

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
