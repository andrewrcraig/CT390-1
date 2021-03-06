<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t1" uri="/WEB-INF/tlds/SubstrDescriptor.tld"%> 
<%@taglib prefix="t2" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CT390 - Lab 7</title>
<style type="text/css">
.answer {
	border: 2px solid blue;
	padding: 2px;
}
.hint {
	color: grey;
}
.grade {
  border: 1px solid red;
}
</style>
</head>
<body>

<h1>Lab 7 - Tags</h1>

<p>In this lab you will experiment with and write custom tags</p>

<p class="hint">Hint's show up like this</p>

<t2:prompt prompt="Why do we use tags?" answer="
tags are used in JSPs in order to separate the java code from the jsp pages, separating presentation<br>
logic, making for cleaner code and easier maintenance. The tag libraries contain custom tags which gives<br>
the dev better access to the framework, or add in other frameworks to access.  These libraries can be<br>
used as per your need and you can even create your own custom tags
" heading="" 
hint="Hint: DRY.  This lab uses tags for the prompt and answer.  
Put your inside the tag attribute called 'answer'.  
Don't use double quotes in your answer.  But it can span multiple lines."/>

<t2:prompt prompt="How many tag libraries are we declaring in index.jsp?" answer="3" heading="Tag Libraries" hint="look at the top of the file"></t2:prompt>

<t2:prompt prompt="What files provide for (are needed in order to use) the 'substring' tag?  See the substring tag in use below"
answer="SubstrDescriptor.tld | SubstrTagHandler.java" heading="Java Tags" hint="look at the top of this file for the uri attribute, then look in that file for the tagclass."></t2:prompt>

<t1:substring input="GOODMORNING" start="0" end="11"/> 

<t2:prompt prompt="What is the substring tag doing?" answer="the substring will output letters starting with the send letter 0 and 
continue on through the 6th letter which is R, so all other letters are omitted -> so essentially OODMOR" heading="Substring Tags" hint="play around with it and it's parameters, read the code."></t2:prompt>

<t2:prompt prompt="What files provide for the 'prompt' tag?" answer="/WEB-INF/tags/prompt.tag" heading="JSP Tags" hint="look at the top of this file for the tagdir attribute."></t2:prompt>

<t2:prompt prompt="What files provide for the 'c' tag? (see below)" answer="the above URI is used for tomcat to search thru the libraries to find the right library.  
This is NOT a URL to go out on the web to get anything!). This keeps it more dynamic. It uses http://... to remain unique" heading="JAR Tags" hint="libraries"></t2:prompt>

<c:out value="The 'core' library has a lot of useful functions, like conditionals and looping"></c:out>

<% boolean learning = true; %>

<c:if test="${pageContext.request.method=='GET'}">
Here is an example of a conditional.
</c:if>

Here is an example of looping:
<c:forEach var="i" begin="1" end="20" step="1" varStatus ="status">
<c:out value="${status.index}"/>
</c:forEach>


<h2>Write a tag</h2>

<p>Uncomment the code below and write a JSP tag (greeter.tag) that says "hello world" or "hello Anna" (or whatever name attribute is passed in).</p>

<p class="hint">Use prompt.tag as an example</p>

<t2:greeter name="Anna" color="blue"/>

<t2:greeter color="blue"/>



</body>
</html>
