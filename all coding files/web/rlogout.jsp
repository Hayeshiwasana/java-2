

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kalana</title>
    </head>
    <body>
         <%@include file="ahead.jsp" %>
        <%
           session.invalidate();
           response.sendRedirect("ulogin.jsp");
        
        %>
    </body>
</html>
