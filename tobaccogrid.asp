<%
Session("SmokingHistorySection")=2
Session("PageHolder")="Tobacco"

if Request.Form("ispostback")=1 then
	Session("chew_tobacco") = Request.Form("chew_tobacco")
	Session("chew_tobacco_yrs") = Request.Form("chew_tobacco_yrs")

	Session("snuff_dip") = Request.Form("snuff_dip")
	Session("snuff_dip_yrs") = Request.Form("snuff_dip_yrs")

	Session("pipe") = Request.Form("pipe")
	Session("pipe_yrs") = Request.Form("pipe_yrs")

	Session("cigar") = Request.Form("cigar")
	Session("cigar_yrs") = Request.Form("cigar_yrs")

	Session("chew_tobaccco_day_freq_use") = Request.Form("chew_tobaccco_day_freq_use")
	Session("chew_tobaccco_week_freq_use") = Request.Form("chew_tobaccco_week_freq_use")
	Session("chew_tobaccco_month_freq_use") = Request.Form("chew_tobaccco_month_freq_use")

	Session("snuff_dip_day_freq_use") = Request.Form("snuff_dip_day_freq_use")
	Session("snuff_dip_week_freq_use") = Request.Form("snuff_dip_week_freq_use")
	Session("snuff_dip_month_freq_use") = Request.Form("snuff_dip_month_freq_use")

	Session("pipe_day_freq_use") = Request.Form("pipe_day_freq_use")
	Session("pipe_week_freq_use") = Request.Form("pipe_week_freq_use")
	Session("pipe_month_freq_use") = Request.Form("pipe_month_freq_use")

	Session("cigar_day_freq_use") = Request.Form("cigar_day_freq_use")
	Session("cigar_week_freq_use") = Request.Form("cigar_week_freq_use")
	Session("cigar_month_freq_use") = Request.Form("cigar_month_freq_use")

end if
if Request.Form("StopID")="1" then
		Session("Exposures")=1
		Response.Redirect "moffittreport.asp"
end if

if Request.Form("PauseID")="1" then
		Response.Redirect "patientpause.asp"
end if

if Request.Form("GoBackID")="1" then
		Session("ReturnID")="1"
	if Session("chemotherapy_ever") = "1" then
		Session("Page")=11
		Response.Redirect "medicalhistorymaster.asp"
	else
		Session("Page")=10
		Response.Redirect "medicalhistorymaster.asp"
	end if
end if

if Session("ReturnID")="1" then
	if Session("chew_tobacco") = "2" then
		strchew_tobaccocurrent="checked"
	else
	end if
	if Session("chew_tobacco") = "1" then
		strchew_tobaccoquit="checked"
	else
	end if
	if Session("chew_tobacco") = "0" then
		strchew_tobacconever="checked"
	else
	end if
	if Session("snuff_dip") = "2" then
		strsnuff_dipcurrent="checked"
	else
	end if
	if Session("snuff_dip") = "1" then
		strsnuff_dipquit="checked"
	else
	end if
	if Session("snuff_dip") = "0" then
		strsnuff_dipnever="checked"
	else
	end if

	if Session("pipe") = "2" then
		strpipecurrent="checked"
	else
	end if
	if Session("pipe") = "1" then
		strpipequit="checked"
	else
	end if
	if Session("pipe") = "0" then
		strpipenever="checked"
	else
	end if
	if Session("cigar") = "2" then
		strcigarcurrent="checked"
	else
	end if
	if Session("cigar") = "1" then
		strcigarquit="checked"
	else
	end if
	if Session("cigar") = "0" then
		strcigarnever="checked"
	else
	end if



	Session("ReturnID")="0"
end if

if Request.Form("ContinueID")="1" then
		Session("Page")=2
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

	<span class="heading">Have you currently or formerly ever used any of the following tobacco</span><br />
	<span class="heading">products on a daily, weekly, or monthly basis?</span><br />

   <div id="formBlock">
    <form action="tobaccogrid.asp" method="post" id="formQuestion" name="formQuestion">
			<!-- [ ' Values are filled in in the OnAnswerQuestion function above. ] -->
			<input type="hidden" name="ispostback" value="1" ID="ispostback">
			<input type="hidden" name="ContinueID" value="" id="Hidden1">
			<input type="hidden" name="GoBackID" value="" id="Hidden2">
			<input type="hidden" name="StopID" value="" id="Hidden3">
			<input type="hidden" name="PauseID" value="" id="Hidden4">
			<input type="hidden" name="ClearID" value="" id="Hidden5">

<!-- [Question boxes ] -->

<div class="QAbox">
<div class="sub_table_alcohol">
	<div class="row0">
		<div class="header0"> </div>
		<div class="header0">Yes, Currently</div>
		<div class="header0">Yes, Quit</div>
		<div class="header0">Never</div>
		<div class="header1">How Many Times a DAY?</div>
		<div class="header1">How Many Times a WEEK?</div>
		<div class="header1">How Many Times a MONTH?</div>
		<div class="header1">For how many years?</div>
	</div>

	<div class="row1">
		<div class="cell0">Chewing Tobacco</div>
		<div class="cell0">
		<input type="radio" name="chew_tobacco" value="2" id="chew_tobacco" <%=strchew_tobaccocurrent%>>

		</div>
		<div class="cell0">
		<input type="radio" name="chew_tobacco" value="1" id="chew_tobacco" <%=strchew_tobaccoquit%>>
		<label for="chew_tobacco"></label></br>
		</div>
		<div class="cell0">
		<input type="radio" name="chew_tobacco" value="0" id="chew_tobacco" <%=strchew_tobacconever%>>
		<label for="chew_tobacco"></label></br>
		</div>

		<div class="cell1">
		<select id="chew_tobacco_day_freq_use" type="text" size="1" value="" name="chew_tobacco_day_freq_use" value=<%Session("chew_tobacco_day_freq_use")%> /><label for="chew_tobacco_day_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("chew_tobacco_day_freq_use")%>" ><%Session("chew_tobacco_day_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="chew_tobacco_week_freq_use" type="text" size="1" value="" name="chew_tobacco_week_freq_use" value=<%Session("chew_tobacco_week_freq_use")%> /><label for="chew_tobacco_week_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("chew_tobacco_week_freq_use")%>" ><%Session("chew_tobacco_week_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="chew_tobacco_month_freq_use" type="text" size="1" value="" name="chew_tobacco_month_freq_use" value=<%Session("chew_tobacco_month_freq_use")%> /><label for="chew_tobacco_month_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("chew_tobacco_month_freq_use")%>" ><%Session("chew_tobacco_month_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="chew_tobacco_yrs" type="text" size="1" value="" name="chew_tobacco_yrs" value=<%Session("chew_tobacco_yrs")%> /><label for="chew_tobacco_yrs"></label> </br>
		<OPTION VALUE="<%Session("chew_tobacco_yrs")%>" ><%Session("chew_tobacco_yrs")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">Snuff or Dip</div>
		<div class="cell0">
		<input type="radio" name="snuff_dip" value="2" id="snuff_dip" <%=strsnuff_dipcurrent%>>

		</div>
		<div class="cell0">
		<input type="radio" name="snuff_dip" value="1" id="snuff_dip" <%=strsnuff_dipquit%>>
		</br>
		</div>
		<div class="cell0">
		<input type="radio" name="snuff_dip" value="0" id="snuff_dip" <%=strsnuff_dipnever%>>
		</br>
		</div>

		<div class="cell1">
		<select id="snuff_dip_day_freq_use" type="text" size="1" value="" name="snuff_dip_day_freq_use" value=<%Session("snuff_dip_day_freq_use")%> /><label for="snuff_dip_day_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("snuff_dip_day_freq_use")%>" ><%Session("snuff_dip_day_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="snuff_dip_week_freq_use" type="text" size="1" value="" name="snuff_dip_week_freq_use" value=<%Session("snuff_dip_week_freq_use")%> /><label for="snuff_dip_week_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("snuff_dip_week_freq_use")%>" ><%Session("snuff_dip_week_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="snuff_dip_month_freq_use" type="text" size="1" value="" name="snuff_dip_month_freq_use" value=<%Session("snuff_dip_month_freq_use")%> /><label for="snuff_dip_month_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("snuff_dip_month_freq_use")%>" ><%Session("snuf_dip_month_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="snuff_dip_yrs" type="text" size="1" value="" name="snuff_dip_yrs" value=<%Session("snuff_dip_yrs")%> /><label for="snuff_dip_yrs"></label> </br>
		<OPTION VALUE="<%Session("snuff_dip_yrs")%>" ><%Session("snuff_dip_yrs")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>
	</div>


	<div class="row1">
		<div class="cell0">Pipe</div>
		<div class="cell0">
		<input type="radio" name="pipe" value="2" id="pipe" <%=strpipecurrent%>>

		</div>
		<div class="cell0">
		<input type="radio" name="pipe" value="1" id="pipe" <%=strpipequit%>>
		</br>
		</div>
		<div class="cell0">
		<input type="radio" name="pipe" value="2" id="pipe" <%=strpipenever%>>
		</br>
		</div>

		<div class="cell1">
		<select id="pipe_day_freq_use" type="text" size="1" value="" name="pipe_day_freq_use" value=<%Session("pipe_day_freq_use")%> /><label for="pipe_day_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("pipe_day_freq_use")%>" ><%Session("pipe_day_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="pipe_week_freq_use" type="text" size="1" value="" name="pipe_week_freq_use" value=<%Session("pipe_week_freq_use")%> /><label for="pipe_week_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("pipe_week_freq_use")%>" ><%Session("pipe_week_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="pipe_month_freq_use" type="text" size="1" value="" name="pipe_month_freq_use" value=<%Session("pipe_month_freq_use")%> /><label for="pipe_month_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("pipe_month_freq_use")%>" ><%Session("pipe_month_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>
		<div class="cell1">
		<select id="pipe_yrs" type="text" size="1" value="" name="pipe_yrs" value=<%Session("pipe_yrs")%> /><label for="pipe_yrs"></label> </br>
		<OPTION VALUE="<%Session("pipe_yrs")%>" ><%Session("pipe_yrs")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>
	</div>

	<div class="row1">
		<div class="cell0">Cigars</div>
		<div class="cell0">
		<input type="radio" name="cigar" value="2" id="cigar" <%=strcigarcurrent%>>

		</div>
		<div class="cell0">
		<input type="radio" name="cigar" value="1" id="beer_use" <%=strcigarquit%>>
		</br>
		</div>
		<div class="cell0">
		<input type="radio" name="cigar" value="2" id="beer_use" <%=strcigarnever%>>
		</br>
		</div>

		<div class="cell1">
		<select id="cigar_day_freq_use" type="text" size="1" value="" name="cigar_day_freq_use" value=<%Session("cigar_day_freq_use")%> /><label for="cigar_day_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("cigar_day_freq_use")%>" ><%Session("cigar_day_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="cigar_week_freq_use" type="text" size="1" value="" name="cigar_week_freq_use" value=<%Session("cigar_week_freq_use")%> /><label for="cigar_week_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("cigar_week_freq_use")%>" ><%Session("cigar_week_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="cigar_month_freq_use" type="text" size="1" value="" name="cigar_month_freq_use" value=<%Session("cigar_month_freq_use")%> /><label for="cigar_month_freq_use">OR</label> </br>
		<OPTION VALUE="<%Session("cigar_month_freq_use")%>" ><%Session("cigar_month_freq_use")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>

		<div class="cell1">
		<select id="cigar_yrs" type="text" size="1" value="" name="cigar_yrs" value=<%Session("cigar_yrs")%> /><label for="cigar_yrs"></label> </br>
		<OPTION VALUE="<%Session("cigar_yrs")%>" ><%Session("cigar_yrs")%></OPTION>
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
		<OPTION VALUE="21" >21</OPTION>
		<OPTION VALUE="22" >22</OPTION>
		<OPTION VALUE="23" >23</OPTION>
		<OPTION VALUE="24" >24</OPTION>
		<OPTION VALUE="25+" >25+</OPTION>
		</select>
		</div>
	</div>
</div><!-- [ /#subtable] -->
&nbsp;<br>
&nbsp;<br>
</div><!-- [ /#QABlock ] -->



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
