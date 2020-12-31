
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kalana</title>
         <style>
            .p2{
                width:450px;
                margin:auto;
                margin-top:100px;
                background:purple;
                opacity:.8;
                padding:10px;
                text-align:center;
                font-size:24px;
                color:white;
            }
            .t1{
                width:350px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            .t2{ width:365px;
                font-size:18px;
                padding:5px;
                border-radius:5px;
                margin-left:20px;
                margin-bottom:5px;
            }
            </style>
    </head>
    <body>
        <h2> <%
     String un=session.getAttribute("fid").toString();
     out.println("Welocme "+un);
     %>
        </h2><%@include file="ahead.jsp" %>
        <HR>
     
        <%@include file="amenu.jsp" %>
        <BR>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String cname;
        int fid;
        fid=Integer.parseInt(request.getParameter("fid"));
        
        PreparedStatement pst=c.prepareStatement("select * from food where fid=?");
        pst.setInt(1,fid);
        
        ResultSet rs=pst.executeQuery();
        if(rs.next()){
            
         
        %>
        <form action="dofood.jsp" class="p2">
           Update Category
           <input type="text" name="fid" placeholder="Enter food ID "  class="t1" value="<%=rs.getInt("fid")%>"/>
            <input type="text" name="fname" placeholder="Enter food "  class="t1" value="<%=rs.getString("fname")%>"/>
           
            <input type="submit"  class="t2" value="Update food"/>
              <%
                  
                    
        }//end of if
            if(request.getParameter("msg")!=null)
            out.println(request.getParameter("msg"));
        
        %>
        </form>
       
    </body>
</html>
