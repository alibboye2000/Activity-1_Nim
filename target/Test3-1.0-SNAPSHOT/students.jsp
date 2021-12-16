<!DOCTYPE html>
<html>
        <title>students database</title>
        
    
    <body>
        <%
          try{
          
          
             Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con=(java.sql.Connection)java.sql.DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/cobadb","root","Fatima@27012018");
        java.sql.Statement st=con.createStatement();
        java.sql.ResultSet rs=st.executeQuery("select * from students;");
          %>
        <h1>Student Database</h1>
        
       
        
        <table  border=1 align=center style="text-align:center">
            
            <thead>
                <tr>
                    <th>ID</th>
                    <th>KTP Number</th>
                    <th>Name</th>
                    <th>Address</th>
                </tr>
            </thead>
            
            <tbody>
                
               
                
                
                 <%while(rs.next())
            {
            %>
            <tr>
                <td><%=rs.getString("ID") %></td>
                <td><%=rs.getString("KTP_Number") %></td>
                <td><%=rs.getString("Name") %></td>
                <td><%=rs.getString("Address") %></td>
            </tr>
            <%}%>
            
            
            </tbody>
            
        </table>
        
        
          <%
              }catch(Exception e){
              out.println(e);
          
          
            }
          %>
          
    </body>
</html>
