<%-- 
    Document   : delorder
    Created on : May 19, 2020, 6:46:08 AM
    Author     : Nawod Senanayaka
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kalana</title>
    </head>
    <body>
   <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        int id;
        id=Integer.parseInt(request.getParameter("id"));
        
        PreparedStatement pst=c.prepareStatement("delete from rest where id=?");
        pst.setInt(1,id);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("adminhome.jsp?msg=Category Deleted");
        }
        else
        {
        response.sendRedirect("adminehome.jsp?msg=Category Not Deleted");
        }
        
        
        
        %>
    </body>
</html>
