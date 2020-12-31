

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
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
        String fid;
        fid=request.getParameter("fid");
        
        PreparedStatement pst=c.prepareStatement("delete from food where fid=?");
        pst.setString(1,fid);
        
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("food.jsp?msg= Deleted");
        }
        else
        {
        response.sendRedirect("food.jsp?msg=Category Not Deleted");
        }
        
        
        
        %>
    </body>
</html>
