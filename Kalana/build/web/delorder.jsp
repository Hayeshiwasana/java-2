<%-- 
    Document   : delorder
    Created on : May 19, 2020, 6:46:08 AM
    Author     : Nawod Senanayaka
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pkg.MyCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String fid;
        fid=request.getParameter("fid");
        
        PreparedStatement pst=c.prepareStatement("delete from orders where fid=?");
        pst.setString(1,fid);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        JOptionPane.showMessageDialog(null,"delete order");
        }
        else
        {
         JOptionPane.showMessageDialog(null,"not delete order");
        }
        
        
        
        %>
    </body>
</html>
