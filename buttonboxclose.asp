
<% if Session("kioskmode")=1 then %>
	  <input id="continue" name="continue" type="image" title="Continue"
		src="images/formImages/buttons/button_end.png" onClick= "ContinueQuestion();"/>
<% end if %>

<% if Session("kioskmode")=2 then %>
	  <input id="continue" name="continue" type="image" title="Continue"
		src="images/formImages/buttons/button_end.png" onClick= "ContinueQuestion();"/>
<% end if %>

<% if Session("kioskmode")<>1 AND Session("kioskmode")<>2 then %>
	  <input id="continue" name="continue" type="image" title="Continue"
		src="images/formImages/buttons/button_end.png" onClick="return closeAndForward('<%=strReturnURL%>');"/>
<% end if %>




