

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kalana</title>
        <style>
            .box{
                width:200px;
                background:#eed053;
                color:white;
                border-radius:10px;
                padding:4px;
            }
             .box:hover{
                width:200px;
                background:blueviolet;
                color:white;
                border-radius:10px;
            }
            .an{
                text-decoration:none;
                color:white;
                
            }
        </style>

    </head>
    <body>
        <%@include file="uhead.jsp" %>
      <table  align="center" style="width:1000px;text-align: center;font-size:24px;margin-top:100px;" cellspacing="20" >
          
             <tr>
           <%
               int i=1;
        MyCon x=new MyCon();
        Connection c=x.tcon();
    
        PreparedStatement pst=c.prepareStatement("select * from rest where status='true'");
     
        ResultSet rs=pst.executeQuery();
        while(rs.next()){   i++; %>
         
                    <td class="box">
                        <a href="sfood.jsp" class="an" >
                            <img src="<%=rs.getString("fimg")%>" width="200" height="200"><BR>
                        <%=rs.getString("rname")%>
                        </a>
                        </td>
                <%  if(i==5)
          {
          out.println("</tr><tr>");
          }            }
        
        
        
        
%>  </tr>  </table>
 <div style="width:100%;background:red;color:white;text-align:center;font-size:24px;">
   
</div>
    </body>
</html>
