<%@ include file="index.jsp" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%
try {
	String no=request.getParameter("no");

	Class.forName("com.mysql.cj.jdbc.Driver");

	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
	
	String query="select * from courses where no='"+no+"'";
	
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(query); 
	ResultSet rs=ps.executeQuery();
%>
<%
while (rs.next()) {
%>
<form action="../course_delete" method="post">
<div style="margin-top: 150px;margin-right: 50px; margin-left: 350px;">
                            <h2 class="card-inside-title">Courses</h2>
                            <div class="row clearfix">
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <div class="form-line">
                                         <input type="hidden" class="form-control" placeholder="Name" name="no" value="<%=rs.getString(1)%>"/>
                                            <input type="text" class="form-control" placeholder="Name" name="name" value="<%=rs.getString(2)%>"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" class="form-control" placeholder="Price" name="price" value="<%=rs.getString(3)%>"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="file" class="form-control" placeholder="Upload File" name="file" value="<img src="<%=rs.getString(4)%>"height="50px" width="50px">"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-line">
                                            <input type="text" class="form-control" placeholder="Description" name="desc" value="<%=rs.getString(5)%>"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
						<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>
</div>
</form>
<%} %>
<%
// close all the connections.
rs.close();
ps.close();
con.close();
} catch (Exception ex) {}
%>