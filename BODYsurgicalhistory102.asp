

Prolapse
Removal of Portion

<% if session("EPQ30757300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757300Page2")=1  %>
<tr>
<td>
Tubal ligation (tying the tubes to prevent pregnancy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757340" type="text" size= "3" name= "EPQ30757340" value =<%=Session ("EPQ30757340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757320" value =<%=Session ("EPQ30757320")%>>/
<input id="EPQ30757330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757330" value =<%=Session ("EPQ30757330")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757350Page2")=1  %>
<tr>
<td>
Urinary leakage surgery (for bladder control)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757390" type="text" size= "3" name= "EPQ30757390" value =<%=Session ("EPQ30757390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757370" value =<%=Session ("EPQ30757370")%>>/
<input id="EPQ30757380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757380" value =<%=Session ("EPQ30757380")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30757400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757400Page2")=1  %>
<tr>
<td>
Other female reproductive (Gyn) surgery, specify: <%=Session("EPQ30757440Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757440" type="text" size= "3" name= "EPQ30757440" value =<%=Session ("EPQ30757440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757420" value =<%=Session ("EPQ30757420")%>>/
<input id="EPQ30757430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757430" value =<%=Session ("EPQ30757430")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30757450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757450Page2")=1  %>
<tr>
<td>Cleft lip or palate surgery </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757450N" type="text" size= "3" name= "TEMP1EPQ30757450N" value =<%=Session ("TEMP1EPQ30757450N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757450MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757450MM" value =<%=Session ("TEMP1EPQ30757450MM")%>>/
<input id="TEMP1EPQ30757450YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757450YY" value =<%=Session ("TEMP1EPQ30757450YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30757500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757500Page2")=1  %>
<tr>
<td>
Dental or Oral surgery (including the removal of your wisdom teeth)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757540" type="text" size= "3" name= "EPQ30757540" value =<%=Session ("EPQ30757540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757520" value =<%=Session ("EPQ30757520")%>>/
<input id="EPQ30757530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757530" value =<%=Session ("EPQ30757530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757550Page2")=1  %>
<tr>
<td>
Eye surgery (including the removal of cataracts and laser surgery such as LASIK)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757590" type="text" size= "3" name= "EPQ30757590" value =<%=Session ("EPQ30757590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757570" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30757570" value =<%=Session ("EPQ30757570")%>>/
<input id="EPQ30757580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757580" value =<%=Session ("EPQ30757580")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757600Page2")=1  %>
<tr>
<td>
Ear surgery (including tubes)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757640" type="text" size= "3" name= "EPQ30757640" value =<%=Session ("EPQ30757640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757620" value =<%=Session ("EPQ30757620")%>>/
<input id="EPQ30757630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757630" value =<%=Session ("EPQ30757630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30757600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757600Page2")=1  %>
<tr>
<td>Laryngectomy (removal of larynx or voice box)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757600N" type="text" size= "3" name= "TEMP1EPQ30757600N" value =<%=Session ("TEMP1EPQ30757600N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757600MM" value =<%=Session ("TEMP1EPQ30757600MM")%>>/
<input id="TEMP1EPQ30757600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757600YY" value =<%=Session ("TEMP1EPQ30757600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757650Page2")=1  %>
<tr>
<td>
Laryngoscopy (a test to see inside the back of the throat or vocal cords)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757690" type="text" size= "3" name= "EPQ30757690" value =<%=Session ("EPQ30757690")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757670" value =<%=Session ("EPQ30757670")%>>/
<input id="EPQ30757680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757680" value =<%=Session ("EPQ30757680")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757700Page2")=1  %>
<tr>
<td>
Nasal or sinus surgery (including deviated septum)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757740" type="text" size= "3" name= "EPQ30757740" value =<%=Session ("EPQ30757740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757720" value =<%=Session ("EPQ30757720")%>>/
<input id="EPQ30757730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757730" value =<%=Session ("EPQ30757730")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30757750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30757750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30757750Page2")=1  %>
<tr>
<td>Neck (cervical spine) surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30757750N" type="text" size= "3" name= "TEMP1EPQ30757750N" value =<%=Session ("TEMP1EPQ30757750N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30757750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30757750MM" value =<%=Session ("TEMP1EPQ30757750MM")%>>/
<input id="TEMP1EPQ30757750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30757750YY" value =<%=Session ("TEMP1EPQ30757750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757800Page2")=1  %>
<tr>
<td>
Parathyroid surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757840" type="text" size= "3" name= "EPQ30757840" value =<%=Session ("EPQ30757840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757820" value =<%=Session ("EPQ30757820")%>>/
<input id="EPQ30757830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757830" value =<%=Session ("EPQ30757830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757850Page2")=1  %>
<tr>
<td>
Plastic surgery (including facelifts and rhinoplasty)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30757890" type="text" size= "3" name= "EPQ30757890" value =<%=Session ("EPQ30757890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757870" value =<%=Session ("EPQ30757870")%>>/
<input id="EPQ30757880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757880" value =<%=Session ("EPQ30757880")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30757800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30757800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30757800Page2")=1  %>
<tr>
<td>Sleep apnea surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30757800N" type="text" size= "3" name= "TEMP2EPQ30757800N" value =<%=Session ("TEMP2EPQ30757800N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30757800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30757800MM" value =<%=Session ("TEMP2EPQ30757800MM")%>>/
<input id="TEMP2EPQ30757800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30757800YY" value =<%=Session ("TEMP2EPQ30757800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30757900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757900Page2")=1  %>
<tr>
<td>
Thyroid surgery (including removal of thyroid)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30757940" type="text" size= "3" name= "EPQ30757940" value =<%=Session ("EPQ30757940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757920" value =<%=Session ("EPQ30757920")%>>/
<input id="EPQ30757930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757930" value =<%=Session ("EPQ30757930")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30757950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30757950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30757950Page2")=1  %>
<tr>
<td>
Tonsillectomy or adenoidectomy (removal of your tonsils and/or adenoids)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30757990" type="text" size= "3" name= "EPQ30757990" value =<%=Session ("EPQ30757990")%>> </td>
<td style="text-align: center;"> <input id="EPQ30757970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30757970" value =<%=Session ("EPQ30757970")%>>/
<input id="EPQ30757980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30757980" value =<%=Session ("EPQ30757980")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758000Page2")=1  %>
<tr>
<td>
Tracheotomy (surgery to open your windpipe and help you breathe)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758040" type="text" size= "3" name= "EPQ30758040" value =<%=Session ("EPQ30758040")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758020" value =<%=Session ("EPQ30758020")%>>/
<input id="EPQ30758030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758030" value =<%=Session ("EPQ30758030")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758100Page2")=1  %>
<tr>
<td>
Other ENT, oral, or eye surgery, specify: <%=Session("EPQ30758140Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758140" type="text" size= "3" name= "EPQ30758140" value =<%=Session ("EPQ30758140")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758120" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758120" value =<%=Session ("EPQ30758120")%>>/
<input id="EPQ30758130" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758130" value =<%=Session ("EPQ30758130")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758150Page2")=1  %>
<tr>
<td>AV fistula or graft for hemodialysis</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758150N" type="text" size= "3" name= "TEMP1EPQ30758150N" value =<%=Session ("TEMP1EPQ30758150N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758150MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758150MM" value =<%=Session ("TEMP1EPQ30758150MM")%>>/
<input id="TEMP1EPQ30758150YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758150YY" value =<%=Session ("TEMP1EPQ30758150YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758150Page2")=1  %>
<tr>
<td>
Aneurysm repair
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758190" type="text" size= "3" name= "EPQ30758190" value =<%=Session ("EPQ30758190")%>> </td>
<td style="text-align: center;"><input id="EPQ30758170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758170" value =<%=Session ("EPQ30758170")%>>/
<input id="EPQ30758180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758180" value =<%=Session ("EPQ30758180")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758200Page2")=1  %>
<tr>
<td>
Angioplasty (placement of a stent in your artery)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758240" type="text" size= "3" name= "EPQ30758240" value =<%=Session ("EPQ30758240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758220" value =<%=Session ("EPQ30758220")%>>/
<input id="EPQ30758230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758230" value =<%=Session ("EPQ30758230")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758250Page2")=1  %>
<tr>
<td>
Cardiac catherization (passing a small tube from your leg or arm into your heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758290" type="text" size= "3" name= "EPQ30758290" value =<%=Session ("EPQ30758290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758270" value =<%=Session ("EPQ30758270")%>>/
<input id="EPQ30758280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758280" value =<%=Session ("EPQ30758280")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758300Page2")=1  %>
<tr>
<td>
Carotid endarterectomy (removal of plaque from  your arteries)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758340" type="text" size= "3" name= "EPQ30758340" value =<%=Session ("EPQ30758340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758320" value =<%=Session ("EPQ30758320")%>>/
<input id="EPQ30758330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758330" value =<%=Session ("EPQ30758330")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758350Page2")=1  %>
<tr>
<td>
Heart bypass surgery (also called coronary artery bypass surgery or CABG)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758390" type="text" size= "3" name= "EPQ30758390" value =<%=Session ("EPQ30758390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758370" ;type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758370" value =<%=Session ("EPQ30758370")%>>/
<input id="EPQ30758380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758380" value =<%=Session ("EPQ30758380")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30758150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30758150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30758150Page2")=1  %>
<tr>
<td>Heart transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30758150N" type="text" size= "3" name= "TEMPEPQ30758150N" value =<%=Session ("TEMPEPQ30758150N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30758150MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30758150MM" value =<%=Session ("TEMPEPQ30758150MM")%>>/
<input id="TEMPEPQ30758150YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30758150YY" value =<%=Session ("TEMPEPQ30758150YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758400Page2")=1  %>
<tr>
<td>
Pacemaker or ICD (placement of a life saving device into your heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758440" type="text" size= "3" name= "EPQ30758440" value =<%=Session ("EPQ30758440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758420" value =<%=Session ("EPQ30758420")%>>/
<input id="EPQ30758430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758430" value =<%=Session ("EPQ30758430")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758450Page2")=1  %>
<tr>
<td>
Valve replacement
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758490" type="text" size= "3" name= "EPQ30758490" value =<%=Session ("EPQ30758490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758470" value =<%=Session ("EPQ30758470")%>>/
<input id="EPQ30758480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758480" value =<%=Session ("EPQ30758480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758500Page2")=1  %>
<tr>
<td>
Varicose Veins
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758540" type="text" size= "3" name= "EPQ30758540" value =<%=Session ("EPQ30758540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758520" value =<%=Session ("EPQ30758520")%>>/
<input id="EPQ30758530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758530" value =<%=Session ("EPQ30758530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758550Page2")=1  %>
<tr>
<td>
Other cardiac surgery, specify:<%=Session("EPQ30758590Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758590" type="text" size= "3" name= "EPQ30758590" value =<%=Session ("EPQ30758590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758570" value =<%=Session ("EPQ30758570")%>>/
<input id="EPQ30758580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758580" value =<%=Session ("EPQ30758580")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30756500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756500Page2")=1  %>
<tr>
<td>
Bronchoscopy (a tube with a camera is used to view the airways with or without biopsy) 
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756540" type="text" size= "3" name= "EPQ30756540" value =<%=Session ("EPQ30756540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756520" value =<%=Session ("EPQ30756520")%>>/
<input id="EPQ30756530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756530" value =<%=Session ("EPQ30756530")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756550Page2")=1  %>
<tr>
<td>Esophageal dilation (stretching to open the esophagus)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756550N" type="text" size= "3" name= "TEMP1EPQ30756550N" value =<%=Session ("TEMP1EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756550MM" value =<%=Session ("TEMP1EPQ30756550MM")%>>/
<input id="TEMP1EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756550YY" value =<%=Session ("TEMP1EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756550Page2")=1  %>
<tr>
<td>Laparoscopic esophageal surgery (Nissen fundoplication, Heller myotomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756550N" type="text" size= "3" name= "TEMP2EPQ30756550N" value =<%=Session ("TEMP2EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756550MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756550MM" value =<%=Session ("TEMP2EPQ30756550MM")%>>/
<input id="TEMP2EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756550YY" value =<%=Session ("TEMP2EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30756550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30756550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30756550Page2")=1  %>
<tr>
<td>Lung transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30756550N" type="text" size= "3" name= "TEMP3EPQ30756550N" value =<%=Session ("TEMP3EPQ30756550N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30756550MM" type;="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30756550MM" value =<%=Session ("TEMP3EPQ30756550MM")%>>/
<input id="TEMP3EPQ30756550YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30756550YY" value =<%=Session ("TEMP3EPQ30756550YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30756600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756600Page2")=1  %>
<tr>
<td>
Mediastinoscopy (usually done to obtain a biopsy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756640" type="text" size= "3" name= "EPQ30756640" value =<%=Session ("EPQ30756640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756620" value =<%=Session ("EPQ30756620")%>>/
<input id="EPQ30756630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756630" value =<%=Session ("EPQ30756630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30756700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756700Page2")=1  %>
<tr>
<td>
Pericardial window (to drain fluid around the heart)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756740" type="text" size= "3" name= "EPQ30756740" value =<%=Session ("EPQ30756740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756720" value =<%=Session ("EPQ30756720")%>>/
<input id="EPQ30756730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756730" value =<%=Session ("EPQ30756730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756750Page2")=1  %>
<tr>
<td>Pleurodesis (removal of fluid and sealing of space between chest and lung)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756750N" type="text" size= "3" name= "TEMP1EPQ30756750N" value =<%=Session ("TEMP1EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756750MM" value =<%=Session ("TEMP1EPQ30756750MM")%>>/
<input id="TEMP1EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756750YY" value =<%=Session ("TEMP1EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30756750Page2")=1  %>
<tr>
<td>Removal of a portion of the esophagus containing cancer (esophagogastrectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30756750N" type="text" size= "3" name= "TEMP3EPQ30756750N" value =<%=Session ("TEMP3EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30756750MM" value =<%=Session ("TEMP3EPQ30756750MM")%>>/
<input id="TEMP3EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30756750YY" value =<%=Session ("TEMP3EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP4EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30756750Page2")=1  %>
<tr>
<td>Removal of lung/portions of the lung (lobectomy, pneumonectomy, wedge resection/segmentectomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30756750N" type="text" size= "3" name= "TEMP4EPQ30756750N" value =<%=Session ("TEMP4EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30756750MM" value =<%=Session ("TEMP4EPQ30756750MM")%>>/
<input id="TEMP4EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30756750YY" value =<%=Session ("TEMP4EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30756800Page2")=1  %>
<tr>
<td>Robotic-assisted chest surgery (da Vinci surgery) </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30756800N" type="text" size= "3" name= "TEMP1EPQ30756800N" value =<%=Session ("TEMP1EPQ30756800N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30756800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30756800MM" value =<%=Session ("TEMP1EPQ30756800MM")%>>/
<input id="TEMP1EPQ30756800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30756800YY" value =<%=Session ("TEMP1EPQ30756800YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP2EPQ30756750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756750Page2")=1  %>
<tr>
<td>Thoracoscopic sympathectomy (ETS)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756750N" type="text" size= "3" name= "TEMP2EPQ30756750N" value =<%=Session ("TEMP2EPQ30756750N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756750MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756750MM" value =<%=Session ("TEMP2EPQ30756750MM")%>>/
<input id="TEMP2EPQ30756750YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756750YY" value =<%=Session ("TEMP2EPQ30756750YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP2EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30756800Page2")=1  %>
<tr>
<td>Thoracoscopy or VATS (a tube with a camera is used to view the lungs and a procedure is performed)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30756800N" type="text" size= "3" name= "TEMP2EPQ30756800N" value =<%=Session ("TEMP2EPQ30756800N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30756800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30756800MM" value =<%=Session ("TEMP2EPQ30756800MM")%>>/
<input id="TEMP2EPQ30756800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30756800YY" value =<%=Session ("TEMP2EPQ30756800YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30756800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756800Page2")=1  %>
<tr>
<td>
Tracheotomy
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756840" type="text" size= "3" name= "EPQ30756840" value =<%=Session ("EPQ30756840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756820" value =<%=Session ("EPQ30756820")%>>/
<input id="EPQ30756830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756830" value =<%=Session ("EPQ30756830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30756850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30756850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30756850Page2")=1  %>
<tr>
<td>
Other lung surgery, specify:<%=Session("EPQ30756890Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30756890" type="text" size= "3" name= "EPQ30756890" value =<%=Session ("EPQ30756890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30756870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30756870" value =<%=Session ("EPQ30756870")%>>/
<input id="EPQ30756880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30756880" value =<%=Session ("EPQ30756880")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30758600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758600Page2")=1  %>
<tr>
<td>HoLEP surgery (Holmium Laser Enucleation of the prostate)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758600N" type="text" size= "3" name= "TEMP1EPQ30758600N" value =<%=Session ("TEMP1EPQ30758600N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758600MM" value =<%=Session ("TEMP1EPQ30758600MM")%>>/
<input id="TEMP1EPQ30758600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758600YY" value =<%=Session ("TEMP1EPQ30758600YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30758650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30758650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30758650Page2")=1  %>
<tr>
<td>Laser PUP surgery (vaporization of prostate)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30758650N" type="text" size= "3" name= "TEMP2EPQ30758650N" value =<%=Session ("TEMP2EPQ30758650N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30758650MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30758650MM" value =<%=Session ("TEMP2EPQ30758650MM")%>>/
<input id="TEMP2EPQ30758650YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30758650YY" value =<%=Session ("TEMP2EPQ30758650YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30758800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758800Page2")=1  %>
<tr>
<td>
Orchiectomy (removal of the testicle or testes)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758840" type="text" size= "3" name= "EPQ30758840" value =<%=Session ("EPQ30758840")%>> </td>
<td style="text-align: center;"><input id="EPQ30758820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758820" value =<%=Session ("EPQ30758820")%>>/
<input id="EPQ30758830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758830" value =<%=Session ("EPQ30758830")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758850")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758850Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758850Page2")=1  %>
<tr>
<td>
Penectomy (removal of the penis)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758890" type="text" size= "3" name= "EPQ30758890" value =<%=Session ("EPQ30758890")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758870" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758870" value =<%=Session ("EPQ30758870")%>>/
<input id="EPQ30758880" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758880" value =<%=Session ("EPQ30758880")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30758800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758800Page2")=1  %>
<tr>
<td>Penile implant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758800N" type="text" size= "3" name= "TEMP1EPQ30758800N" value =<%=Session ("TEMP1EPQ30758800N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758800MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758800MM" value =<%=Session ("TEMP1EPQ30758800MM")%>>/
<input id="TEMP1EPQ30758800YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758800YY" value =<%=Session ("TEMP1EPQ30758800YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758750Page2")=1  %>
<tr>
<td>
Radical prostatectomy (removal of all of the prostate gland to treat cancer)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758790" type="text" size= "3" name= "EPQ30758790" value =<%=Session ("EPQ30758790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758770" value =<%=Session ("EPQ30758770")%>>/
<input id="EPQ30758780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758780" value =<%=Session ("EPQ30758780")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP1EPQ30758900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30758900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30758900Page2")=1  %>
<tr>
<td>Testicular descent surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30758900N" type="text" size= "3" name= "TEMP1EPQ30758900N" value =<%=Session ("TEMP1EPQ30758900N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30758900MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30758900MM" value =<%=Session ("TEMP1EPQ30758900MM")%>>/
<input id="TEMP1EPQ30758900YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30758900YY" value =<%=Session ("TEMP1EPQ30758900YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30758700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758700Page2")=1  %>
<tr>
<td>
TURP or Transurethral Resection of the Prostate (the removal of all or part of the prostate gland, sometimes called a "roto-rooter job")
;</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758740" type="text" size= "3" name= "EPQ30758740" value =<%=Session ("EPQ30758740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758720" value =<%=Session ("EPQ30758720")%>>/
<input id="EPQ30758730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758730" value =<%=Session ("EPQ30758730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30758900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758900Page2")=1  %>
<tr>
<td>
Vasectomy (to prevent pregnancy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758940" type="text" size= "3" name= "EPQ30758940" value =<%=Session ("EPQ30758940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30758920" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30758920" value =<%=Session ("EPQ30758920")%>>/
<input id="EPQ30758930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758930" value =<%=Session ("EPQ30758930")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30758950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758950Page2")=1  %>
<tr>
<td>
Other male reproductive surgery, specify:<%Session("EPQ30758990Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758990" type="text" size= "3" name= "EPQ30758990" value =<%=Session ("EPQ30758990")%>> </td>
<td style="text-align: center;"><input id="EPQ30758970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758970" value =<%=Session ("EPQ30758970")%>>/
<input id="EPQ30758980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758980" value =<%=Session ("EPQ30758980")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP1EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30755400Page2")=1  %>
<tr>
<td>Ankle surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30755400N" type="text" size= "3" name= "TEMP1EPQ30755400N" value =<%=Session ("TEMP1EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30755400MM" value =<%=Session ("TEMP1EPQ30755400MM")%>>/
<input id="TEMP1EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30755400YY" value =<%=Session ("TEMP1EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP2EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30755400Page2")=1  %>
<tr>
<td>Arm surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30755400N" type="text" size= "3" name= "TEMP2EPQ30755400N" value =<%=Session ("TEMP2EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30755400MM" value =<%=Session ("TEMP2EPQ30755400MM")%>>/
<input id="TEMP2EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30755400YY" value =<%=Session ("TEMP2EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP3EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30755400Page2")=1  %>
<tr>
<td>Elbow surgery (Ulnar nerve transposition)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30755400N" type="text" size= "3" name= "TEMP3EPQ30755400N" value =<%=Session ("TEMP3EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30755400MM" value =<%=Session ("TEMP3EPQ30755400MM")%>>/
<input id="TEMP3EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30755400YY" value =<%=Session ("TEMP3EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755450Page2")=1  %>
<tr>
<td>
Foot surgery (including bunions)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30755490" type="text" size= "3" name= "EPQ30755490" value =<%=Session ("EPQ30755490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755470" value =<%=Session ("EPQ30755470")%>>/
<input id="EPQ30755480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755480" value =<%=Session ("EPQ30755480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30755500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755500Page2")=1  %>
<tr>
<td>
Fractures or broken bones requiring surgery (not just a cast)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755540" type="text" size= "3" name= "EPQ30755540" value =<%=Session ("EPQ30755540")%>> </td>
<td style="text-align: center;"><input id="EPQ30755520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755520" value =<%=Session ("EPQ30755520")%>>/
<input id="EPQ30755530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755530" value =<%=Session ("EPQ30755530")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30755550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755550Page2")=1  %>
<tr>
<td>
Hand surgery (including carpal tunnel)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755590" type="text" size= "3" name= "EPQ30755590" value =<%=Session ("EPQ30755590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755570" value =<%=Session ("EPQ30755570")%>>/
<input id="EPQ30755580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755580" value =<%=Session ("EPQ30755580")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMP4EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30755400Page2")=1  %>
<tr>
<td>Hip fracture surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30755400N" type="text" size= "3" name= "TEMP4EPQ30755400N" value =<%=Session ("TEMP4EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30755400MM" value =<%=Session ("TEMP4EPQ30755400MM")%>>/
<input id="TEMP4EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30755400YY" value =<%=Session ("TEMP4EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30755400Page2")=1  %>
<tr>
<td>Hip replacement</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30755400N" type="text" size= "3" name= "TEMP5EPQ30755400N" value =<%=Session ("TEMP5EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30755400MM" value =<%=Session ("TEMP5EPQ30755400MM")%>>/
<input id="TEMP5EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30755400YY" value =<%=Session ("TEMP5EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP6EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP6EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP6EPQ30755400Page2")=1  %>
<tr>
<td>Hip resurfacing surgery (shaving of bone or hip impingement)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP6EPQ30755400N" type="text" size= "3" name= "TEMP6EPQ30755400N" value =<%=Session ("TEMP6EPQ30755400N")%>></td>
<td style="text-align: center;"><input id="TEMP6EPQ30755400MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP6EPQ30755400MM" value =<%=Session ("TEMP6EPQ30755400MM")%>>/
<input id="TEMP6EPQ30755400YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP6EPQ30755400YY" value =<%=Session ("TEMP6EPQ30755400YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755600Page2")=1  %>
<tr>
<td>
Hip Surgery (including replacement)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755640" type="text" size= "3" name= "EPQ30755640" value =<%=Session ("EPQ30755640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755620" value =<%=Session ("EPQ30755620")%>>/
<input id="EPQ30755630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755630" value =<%=Session ("EPQ30755630")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP7EPQ30755650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP7EPQ30755650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP7EPQ30755650Page2")=1  %>
<tr>
<td>Knee replacement</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP7EPQ30755650N" type="text" size= "3" name= "TEMP7EPQ30755650N" value =<%=Session ("TEMP7EPQ30755650N")%>></td>
<td style="text-align: center;"><input id="TEMP7EPQ30755650MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP7EPQ30755650MM" value =<%=Session ("TEMP7EPQ30755650MM")%>>/
<input id="TEMP7EPQ30755650YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP7EPQ30755650MM" value =<%=Session ("TEMP7EPQ30755650YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755650Page2")=1  %>
<tr>
<td>
Knee surgery (including ACL reconstruction and arthroscopic procedures)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755690" type="text" size= "3" name= "EPQ30755690" value =<%=Session ("EPQ30755690")%>> </td>
<td style="text-align: center;"><input id="EPQ30755670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755670" value =<%=Session ("EPQ30755670")%>>/
<input id="EPQ30755680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755680" value =<%=Session ("EPQ30755680")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP8EPQ30755600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP8EPQ30755600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP8EPQ30755600Page2")=1  %>
<tr>
<td>Leg surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP8EPQ30755600N" type="text" size= "3" name= "TEMP8EPQ30755600N" value =<%=Session ("TEMP8EPQ30755600N")%>></td>
<td style="text-align: center;"><input id="TEMP8EPQ30755600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP8EPQ30755600MM" value =<%=Session ("TEMP8EPQ30755600MM")%>>/
<input id="TEMP8EPQ30755600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP8EPQ30755600YY" value =<%=Session ("TEMP8EPQ30755600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30755700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755700Page2")=1  %>
<tr>
<td>
Shoulder surgery (including arthroscopic procedures)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755740" type="text" size= "3" name= "EPQ30755740" value =<%=Session ("EPQ30755740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755720" value =<%=Session ("EPQ30755720")%>>/
<input id="EPQ30755730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755730" value =<%=Session ("EPQ30755730")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30755400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755400Page2")=1  %>
<tr>
<td>
Spine or back surgery (including discectomy or laminectomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755440" type="text" size= "3" name= "EPQ30755440" value =<%=Session ("EPQ30755440")%>> </td>
<td style="text-align: center;"><input id="EPQ30755420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755420" value =<%=Session ("EPQ30755420")%>>/
<input id="EPQ30755430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755430" value =<%=Session ("EPQ30755430")%>>
</td>
</tr>
<% end if %>
<% end if %>





<% if session("EPQ30755750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30755750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30755750Page2")=1  %>
<tr>
<td>
Other orthopedic surgery, specify:<%=Session("EPQ30755790Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30755790" type="text" size= "3" name= "EPQ30755790" value =<%=Session ("EPQ30755790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30755770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30755770" value =<%=Session ("EPQ30755770")%>>/
<input id="EPQ30755780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30755780" value =<%=Session ("EPQ30755780")%>>
</td>
</tr>
<% end if %>
<% end if %>










<% if session("EPQ30758650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30758650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30758650Page2")=1  %>
<tr>
<td>
Biopsy of prostate
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30758690" type="text" size= "3" name= "EPQ30758690" value =<%=Session ("EPQ30758690")%>> </td>
<td style="text-align: center;"><input id="EPQ30758670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30758670" value =<%=Session ("EPQ30758670")%>>/
<input id="EPQ30758680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30758680" value =<%=Session ("EPQ30758680")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if Session("TEMPEPQ30759050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759050Page2")=1  %>
<tr>
<td>Body contouring</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759050N" type="text" size= "3" name= "TEMPEPQ30759050N" value =<%=Session ("TEMPEPQ30759050N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759050MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759050MM" value =<%=Session ("TEMPEPQ30759050MM")%>>/
<input id="TEMPEPQ30759050YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759050YY" value =<%=Session ("TEMPEPQ30759050YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759050Page2")=1  %>
<tr>
<td>
Body lift (post-bariatric surgery or post major weight loss)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759090" type="text" size= "3" name= "EPQ30759090" value =<%=Session ("EPQ30759090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759070" value =<%=Session ("EPQ30759070")%>>/
<input id="EPQ30759080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759080" value =<%=Session ("EPQ30759080")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30759200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759200Page2")=1  %>
<tr>
<td>Brow lift</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759200N" type="text" size= "3" name= "TEMPEPQ30759200N" value =<%=Session ("TEMPEPQ30759200N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759200MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759200MM" value =<%=Session ("TEMPEPQ30759200MM")%>>/
<input id="TEMPEPQ30759200YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759200YY" value =<%=Session ("TEMPEPQ30759200YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759200Page2")=1  %>
<tr>
<td>
Ear surgery (otoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759240" type="text" size= "3" name= "EPQ30759240" value =<%=Session ("EPQ30759240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759220" type="text" class="dateMonth" maxlength="2"  size= "3" name= "EPQ30759220" value =<%=Session ("EPQ30759220")%>>/
<input id="EPQ30759230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759230" value =<%=Session ("EPQ30759230")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759250Page2")=1  %>
<tr>
<td>
Eyelid (blepharoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759290" type="text" size= "3" name= "EPQ30759290" value =<%=Session ("EPQ30759290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759270" value =<%=Session ("EPQ30759270")%>>/
<input id="EPQ30759280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759280" value =<%=Session ("EPQ30759280")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759300Page2")=1  %>
<tr>
<td>
Face lift
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759340" type="text" size= "3" name= "EPQ30759340" value =<%=Session ("EPQ30759340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759320" value =<%=Session ("EPQ30759320")%>>/
<input id="EPQ30759330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759330" value =<%=Session ("EPQ30759330")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759350")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759350Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759350Page2")=1  %>
<tr>
<td>
Liposuction, specify where:<%=Session("TEMPEPQ30759540Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759390" type="text" size= "3" name= "EPQ30759390" value =<%=Session ("EPQ30759390")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759370" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759370" value =<%=Session ("EPQ30759370")%>>/
<input id="EPQ30759380" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759380" value =<%=Session ("EPQ30759380")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759400")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759400Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759400Page2")=1  %>
<tr>
<td>
Neck lift (cervicoplasty and/or platysmaplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759440" type="text" size= "3" name= "EPQ30759440" value =<%=Session ("EPQ30759440")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759420" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759420" value =<%=Session ("EPQ30759420")%>>/
<input id="EPQ30759430" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759430" value =<%=Session ("EPQ30759430")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30759450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759450Page2")=1  %>
<tr>
<td>Thigh lift</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759450N" type="text" size= "3" name= "TEMPEPQ30759450N" value =<%=Session ("TEMPEPQ30759450N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759450MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759450MM" value =<%=Session ("TEMPEPQ30759450MM")%>>/
<input id="TEMPEPQ30759450YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759450YY" value =<%=Session ("TEMPEPQ30759450YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759450")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759450Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759450Page2")=1  %>
<tr>
<td>
Tummy tuck (abdominoplasty)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759490" type="text" size= "3" name= "EPQ30759490" value =<%=Session ("EPQ30759490")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759470" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759470" value =<%=Session ("EPQ30759470")%>>/
<input id="EPQ30759480" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759480" value =<%=Session ("EPQ30759480")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759500")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759500Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759500Page2")=1  %>
<tr>
<td>
Other plastic surgery, specify:<%=Session("EPQ30759540Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759540" type="text" size= "3" name= "EPQ30759540" value =<%=Session ("EPQ30759540")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759520" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759520" value =<%=Session ("EPQ30759520")%>>/
<input id="EPQ30759530" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759530" value =<%=Session ("EPQ30759530")%>>
</td>
</tr>
<% end if %>
<% end if %>




<% if Session("TEMPEPQ30759600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30759600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30759600Page2")=1  %>
<tr>
<td>PIC line</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30759600N" type="text" size= "3" name= "TEMPEPQ30759600N" value =<%=Session ("TEMPEPQ30759600N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30759600MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30759600MM" value =<%=Session ("TEMPEPQ30759600MM")%>>/
<input id="TEMPEPQ30759600YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30759600YY" value =<%=Session ("TEMPEPQ30759600YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759550")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759550Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759550Page2")=1  %>
<tr>
<td>
Placement of port
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759590" type="text" size= "3" name= "EPQ30759590" value =<%=Session ("EPQ30759590")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759570" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759570" value =<%=Session ("EPQ30759570")%>>/
<input id="EPQ30759580" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759580" value =<%=Session ("EPQ30759580")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759600")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759600Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759600Page2")=1  %>
<tr>
<td>
Removal of port
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759640" type="text" size= "3" name= "EPQ30759640" value =<%=Session ("EPQ30759640")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759620" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759620" value =<%=Session ("EPQ30759620")%>>/
<input id="EPQ30759630" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759630" value =<%=Session ("EPQ30759630")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30759650")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759650Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759650Page2")=1  %>
<tr>
<td>
Other port surgery, specify:<%=Session("EPQ30759690Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759690" type="text" size= "3" name= "EPQ30759690" value =<%=Session ("EPQ30759690")%>> </td>
<td style="text-align: center;"><input id="EPQ30759670" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759670" value =<%=Session ("EPQ30759670")%>>/
<input id="EPQ30759680" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759680" value =<%=Session ("EPQ30759680")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30759700Page2")=1  %>
<tr>
<td>Burning of skin lesion (electrosurgery)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30759700N" type="text" size= "3" name= "TEMP1EPQ30759700N" value =<%=Session ("TEMP1EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30759700MM" value =<%=Session ("TEMP1EPQ30759700MM")%>>/
<input id="TEMP1EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30759700YY" value =<%=Session ("TEMP1EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30759700Page2")=1  %>
<tr>
<td>Chemotherapy creams (Aldara, Carac, Efudex, Fluoroplex, Picato, Solaraze, Zyclara, etc.) </td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30759700N" type="text" size= "3" name= "TEMP2EPQ30759700N" value =<%=Session ("TEMP2EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30759700MM" value =<%=Session ("TEMP2EPQ30759700MM")%>>/
<input id="TEMP2EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30759700YY" value =<%=Session ("TEMP2EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759700Page2")=1  %>
<tr>
<td>
Cyst removal
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759740" type="text" size= "3" name= "EPQ30759740" value =<%=Session ("EPQ30759740")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759720" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759720" value =<%=Session ("EPQ30759720")%>>/
<input id="EPQ30759730" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759730" value =<%=Session ("EPQ30759730")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30759800")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759800Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759800Page2")=1  %>
<tr>
<td>
Excision of a skin cancer (removal of a skin cancer)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759840" type="text" size= "3" name= "EPQ30759840" value =<%=Session ("EPQ30759840")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759820" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759820" value =<%=Session ("EPQ30759820")%>>/
<input id="EPQ30759830" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759830" value =<%=Session ("EPQ30759830")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP3EPQ30759700")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30759700Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30759700Page2")=1  %>
<tr>
<td>Freezing of skin lesion (cryotherapy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30759700N" type="text" size= "3" name= "TEMP3EPQ30759700N" value =<%=Session ("TEMP3EPQ30759700N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30759700MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30759700MM" value =<%=Session ("TEMP3EPQ30759700MM")%>>/
<input id="TEMP3EPQ30759700YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30759700YY" value =<%=Session ("TEMP3EPQ30759700YY")%>></td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30759750")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759750Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759750Page2")=1  %>
<tr>
<td>
Mohs surgery (removal of a skin cancer using a special technique)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759790" type="text" size= "3" name= "EPQ30759790" value =<%=Session ("EPQ30759790")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759770" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759770" value =<%=Session ("EPQ30759770")%>>/
<input id="EPQ30759780" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759780" value =<%=Session ("EPQ30759780")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP4EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30755300Page2")=1  %>
<tr>
<td>Mole removal</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30755300N" type="text" size= "3" name= "TEMP4EPQ30755300N" value =<%=Session ("TEMP4EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30755300MM" value =<%=Session ("TEMP4EPQ30755300MM")%>>/
<input id="TEMP4EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30755300YY" value =<%=Session ("TEMP4EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30755300Page2")=1  %>
<tr>
<td>Skin flap surgery (skin repositioned to the wound)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30755300N" type="text" size= "3" name= "TEMP5EPQ30755300N" value =<%=Session ("TEMP5EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30755300MM" value =<%=Session ("TEMP5EPQ30755300MM")%>>/
<input id="TEMP5EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30755300YY" value =<%=Session ("TEMP5EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP6EPQ30755300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP6EPQ30755300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP6EPQ30755300Page2")=1  %>
<tr>
<td>Skin graft (skin relocated to the wound)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP6EPQ30755300N" type="text" size= "3" name= "TEMP6EPQ30755300N" value =<%=Session ("TEMP6EPQ30755300N")%>></td>
<td style="text-align: center;"><input id="TEMP6EPQ30755300MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP6EPQ30755300MM" value =<%=Session ("TEMP6EPQ30755300MM")%>>/
<input id="TEMP6EPQ30755300YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP6EPQ30755300YY" value =<%=Session ("TEMP6EPQ30755300YY")%>></td>
</tr>
<% end if %>
<% end if %>




<% if session("EPQ30759900")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759900Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759900Page2")=1  %>
<tr>
<td>
Other skin surgery or procedure, specify:<%=Session("EPQ30759940Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759940" type="text" size= "3" name= "EPQ30759940" value =<%=Session ("EPQ30759940")%>> </td>
<td style="text-align: center;"> <input id="EPQ30759920" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759920" value =<%=Session ("EPQ30759920")%>>/
<input id="EPQ30759930" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759930" value =<%=Session ("EPQ30759930")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP1EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP1EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP1EPQ30759950Page2")=1  %>
<tr>
<td>Back joint injections or nerve blocks</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP1EPQ30759950N" type="text" size= "3" name= "TEMP1EPQ30759950N" value =<%=Session ("TEMP1EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP1EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP1EPQ30759950MM" value =<%=Session ("TEMP1EPQ30759950MM")%>>/
<input id="TEMP1EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP1EPQ30759950YY" value =<%=Session ("TEMP1EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP2EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP2EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP2EPQ30759950Page2")=1  %>
<tr>
<td>Pain pump or spinal cord stimulator</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP2EPQ30759950N" type="text" size= "3" name= "TEMP2EPQ30759950N" value =<%=Session ("TEMP2EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP2EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP2EPQ30759950MM" value =<%=Session ("TEMP2EPQ30759950MM")%>>/
<input id="TEMP2EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP2EPQ30759950YY" value =<%=Session ("TEMP2EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP3EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP3EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP3EPQ30759950Page2")=1  %>
<tr>
<td>Spinal fusion (kyphoplasty, where bone cement is injected for fractures)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP3EPQ30759950N" type="text" size= "3" name= "TEMP3EPQ30759950N" value =<%=Session ("TEMP3EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP3EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP3EPQ30759950MM" value =<%=Session ("TEMP3EPQ30759950MM")%>>/
<input id="TEMP3EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP3EPQ30759950YY" value =<%=Session ("TEMP3EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP4EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30759950Page2")=1  %>
<tr>
<td>Spine surgery</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30759950N" type="text" size= "3" name= "TEMP4EPQ30759950N" value =<%=Session ("TEMP4EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30759950MM" value =<%=Session ("TEMP4EPQ30759950MM")%>>/
<input id="TEMP4EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30759950YY" value =<%=Session ("TEMP4EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP5EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30759950Page2")=1  %>
<tr>
<td>Steroid injections to back</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30759950N" type="text" size= "3" name= "TEMP5EPQ30759950N" value =<%=Session ("TEMP5EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30759950MM" value =<%=Session ("TEMP5EPQ30759950MM")%>>/
<input id="TEMP5EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30759950YY" value =<%=Session ("TEMP5EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMPEPQ30760250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMPEPQ30760250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMPEPQ30760250Page2")=1  %>
<tr>
<td>Other spine surgery, specify: <%=Session("TEMPEPQ30760290Describe")%></td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMPEPQ30760250N" type="text" size= "3" name= "TEMPEPQ30760250N" value =<%=Session ("TEMPEPQ30760250N")%>></td>
<td style="text-align: center;"><input id="TEMPEPQ30760250MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMPEPQ30760250MM" value =<%=Session ("TEMPEPQ30760250MM")%>>/
<input id="TEMPEPQ30760250YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMPEPQ30760250YY" value =<%=Session ("TEMPEPQ30760250YY")%>></td>
</tr>
<% end if %>
<% end if %>





<% if session("EPQ30760000")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760000Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760000Page2")=1  %>
<tr>
<td>
Bladder surgery (cystectomy, removal of all or part of the bladder)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760040" type="text" size= "3" name= "EPQ30760040" value =<%=Session ("EPQ30760040")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760020" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760020" value =<%=Session ("EPQ30760020")%>>/
<input id="EPQ30760030" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760030" value =<%=Session ("EPQ30760030")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30759950Page2")=1  %>
<tr>
<td>
Cystoscopy (placement of a tube into the bladder)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30759990" type="text" size= "3" name= "EPQ30759990" value =<%=Session ("EPQ30759990")%>> </td>
<td style="text-align: center;"><input id="EPQ30759970" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30759970" value =<%=Session ("EPQ30759970")%>>/
<input id="EPQ30759980" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30759980" value =<%=Session ("EPQ30759980")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30760050")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760050Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760050Page2")=1  %>
<tr>
<td>
Ileostomy or urostomy (creation of an opening in your abdomen that allows waste to leave your body)
</td>
<td style="text-align: center;"><input  class="howMany required" maxlength="3"  id="EPQ30760090" type="text" size= "3" name= "EPQ30760090" value =<%=Session ("EPQ30760090")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760070" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760070" value =<%=Session ("EPQ30760070")%>>/
<input id="EPQ30760080" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760080" value =<%=Session ("EPQ30760080")%>>
</td>
</tr>
<% end if %>
<% end if %>

<% if Session("TEMP4EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP4EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP4EPQ30759950Page2")=1  %>
<tr>
<td>Kidney drainage tube placement (nephrostomy)</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP4EPQ30759950N" type="text" size= "3" name= "TEMP4EPQ30759950N" value =<%=Session ("TEMP4EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP4EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP4EPQ30759950MM" value =<%=Session ("TEMP4EPQ30759950MM")%>>/
<input id="TEMP4EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP4EPQ30759950YY" value =<%=Session ("TEMP4EPQ30759950"YY)%>></td>
</tr>
<% end if %>
<% end if %>

<% if session("EPQ30760100")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760100Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760100Page2")=1  %>
<tr>
<td>
Kidney removal surgery (nephrectomy or partial nephrectomy)
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760140" type="text" size= "3" name= "EPQ30760140" value =<%=Session ("EPQ30760140")%>> </td>
<td style="text-align: center;"><input id="EPQ30760120" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760120" value =<%=Session ("EPQ30760120")%>>/
<input id="EPQ30760130" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760130" value =<%=Session ("EPQ30760130")%>>
</td>
</tr>
<% end if %>
<% end if %>



<% if session("EPQ30760150")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760150Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760150Page2")=1  %>
<tr>
<td>
Kidney stone surgery
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760190" type="text" size= "3" name= "EPQ30760190" value =<%=Session ("EPQ30760190")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760170" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760170" value =<%=Session ("EPQ30760170")%>>/
<input id="EPQ30760180" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760180" value =<%=Session ("EPQ30760180")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30760200")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760200Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760200Page2")=1  %>
<tr>
<td>
Kidney stent
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"  id="EPQ30760240" type="text" size= "3" name= "EPQ30760240" value =<%=Session ("EPQ30760240")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760220" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760220" value =<%=Session ("EPQ30760220")%>>/
<input id="EPQ30760230" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760230" value =<%=Session ("EPQ30760230")%>>
</td>
</tr>
<% end if %>
<% end if %>


<% if Session("TEMP5EPQ30759950")=1 then %>
<% if session("DisplayCount") < 6 AND Session("TEMP5EPQ30759950Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("TEMP5EPQ30759950Page2")=1  %>
<tr>
<td>Kidney transplant</td>
<td style="text-align: center;"><input class="howMany required" maxlength="3"  id="TEMP5EPQ30759950N" type="text" size= "3" name= "TEMP5EPQ30759950N" value =<%=Session ("TEMP5EPQ30759950N")%>></td>
<td style="text-align: center;"><input id="TEMP5EPQ30759950MM" type="text" class="dateMonth" maxlength="2" size= "3" name= "TEMP5EPQ30759950MM" value =<%=Session ("TEMP5EPQ30759950MM")%>>/
<input id="TEMP5EPQ30759950YY" class="yearRange required" maxlength="4" type="text" size= "4" name= "TEMP5EPQ30759950YY" value =<%=Session ("TEMP5EPQ30759950YY")%>></td>
</tr>
<% end if %>
<% end if %>


<% if session("EPQ30760250")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760250Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760250Page2")=1  %>
<tr>
<td>
Other urinary or kidney surgery, <%=Session("EPQ30760290Describe")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"   id="EPQ30760290" type="text" size= "3" name= "EPQ30760290" value =<%=Session ("EPQ30760290")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760270" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760270" value =<%=Session ("EPQ30760270")%>>/
<input id="EPQ30760280" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760280" value =<%=Session ("EPQ30760280")%>>
</td>
</tr>
<% end if %>
<% end if %>
<% if session("EPQ30760300")=1 then %>
<% if session("DisplayCount") < 6 AND Session("EPQ30760300Page1") <> 1 then %>
<% session("DisplayCount") = Session("DisplayCount") +1 %>
<% session("EPQ30760300Page2")=1  %>
<tr>
<td>
Other type of surgery, specify:<%=Session("TEMPEPQ30714000")%>
</td>
<td style="text-align: center;"> <input  class="howMany required" maxlength="3"   id="EPQ30760340" type="text" size= "3" name= "EPQ30760340" value =<%=Session ("EPQ30760340")%>> </td>
<td style="text-align: center;"> <input id="EPQ30760320" type="text" class="dateMonth" maxlength="2" size= "3" name= "EPQ30760320" value =<%=Session ("EPQ30760320")%>>/
<input id="EPQ30760330" class="yearRange required" maxlength="4" type="text" size= "4" name= "EPQ30760330" value =<%=Session ("EPQ30760330")%>>
</td>
</tr>
<% end if %>
<% end if %>