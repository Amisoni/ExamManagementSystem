<%@include file="index.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	// loads mysql driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
	
	String query="select * from categories";
	
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(query); 
	ResultSet rs=ps.executeQuery();
%>
 <div class="row clearfix" style="margin-left: 350px;margin-right: 10px;margin-top: 100px;">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                       
                        <div class="body table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Class</th>
                                        <th>Topic</th>
                                        <th>Images</th>
                                        <th>Update</th>
                                        <th>Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<%
					    while (rs.next()) {
					%>
									<tr>
										<td><%=rs.getString(1)%></td>
                                        <td><%=rs.getString(2)%></td>
										<td><%=rs.getString(3)%></td>
										<td><%=rs.getString(4)%></td>
										<td><img src="<%=rs.getString(5)%>"></td>
										<td><a href="categories_update.jsp?no=<%=rs.getString(1) %>">Update</a></td>  

										<td><a href="categories_delete.jsp?no=<%=rs.getString(1) %>">Delete</a></td> 
								</tr>
									<%
									} 
									%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%
// close all the connections.
rs.close();
ps.close();
con.close();	
} catch (Exception ex) {}
%>