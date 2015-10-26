
	  <input id="previous" name="previous" type="image" title="Previous"
		src="images/formImages/buttons/button_previous1.png" onClick= "GoBackQuestion();"/>
	  <input id="continue" name="continue" type="image" title="Continue"
		src="images/formImages/buttons/savecontinue.png" onClick= "ContinueQuestion();"/>

<% if Session("testmode")=1 then %>
	  <input id="submit" name="submit" type="image" title="Submit"
		src="images/formImages/buttons/button_submit1.png" onClick= "StopQuestion();"/>
<% end if %>
<% if Session("testmode")=2 then %>
	  <input id="submit" name="submit" type="image" title="Submit"
		src="images/formImages/buttons/saveexit.png" onClick= "StopQuestion();"/>
<% end if %>
<% if Session("testmode")=3 then %>
	  <input id="submit" name="submit" type="image" title="Submit"
		src="images/formImages/buttons/saveexit.png" onClick= "StopQuestion();"/>
<% end if %>



