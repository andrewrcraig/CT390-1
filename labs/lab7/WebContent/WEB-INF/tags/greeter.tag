<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="name" required="false" %>
<%@ attribute name="color" required="false" %>
<div class="answer">
	<% 
		if (name != null) {
			session.getAttribute(name);
		}
		else {
			name = "world";
		}
	%>
	Hello <%= name %>
</div>