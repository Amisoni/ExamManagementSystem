
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<body>
<%
try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	// loads mysql driver
	//String unm=request.getParameter("unm");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
	//String name = (String) session.getAttribute("name");
	String query="select * from courses";
	
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(query); 
	ResultSet rs=ps.executeQuery();
%>

		<!--  <tr> <th>Name</th>	<th>Designation</th> <th>DA</th>	<th>HRA</th><th>Salary</th>	<th>Total_salary</th> <th>Tax</th>	<th>Total</th><th>Update</th> <th>Delete</th> <th>Logout</th> </tr>-->
<div class="popular-courses circle bg-gray carousel-shadow default-padding">
        <div class="container">
           
 <div class="row">
                <div class="site-heading text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h2>Popular Courses</h2>
                        <p>
                            Discourse assurance estimable applauded to so. Him everything melancholy uncommonly but solicitude inhabiting projection off. Connection stimulated estimating excellence an to impression. 
                        </p>
                    </div>
                </div>
            </div>
<div>
                 <div class="col-md-12">
                    <div class="popular-courses-items popular-courses-carousel owl-carousel owl-theme">
		
<%
while (rs.next()) {
%>
<!--  <TR>

<TD><%=rs.getString(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<td><img src="<%=rs.getString(4)%>" height="100px" width="20%"> </td>
<TD><%=rs.getString(5)%></TD>

</TR>-->
<!-- Start Popular Courses 
    ============================================= -->
    
            <!--  <div>
                 <div class="col-md-12">
                    <div class="popular-courses-items popular-courses-carousel owl-carousel owl-theme">-->
                        <!-- Single Item -->
                        <div class="item">
                            <div class="thumb">
                                <a href="#">
                                <img src="<%=rs.getString(4)%>"alt="Thumb">
                                    <!--  <img src="assets/img/courses/1.jpg" alt="Thumb">-->
                                </a>
                                <div class="price">Price: <%=rs.getString(3)%></div>
                            </div>
                            <div class="info">
                                
                                <h5 style="font-size: 18px;"><a href="#"><%=rs.getString(2)%></a></h5>
                                <p>
                                   <%=rs.getString(5)%> 
                                </p>
                                <div class="bottom-info">
                                   <!--   <ul>
                                        <li>
                                            <i class="fas fa-user"></i> 6,690
                                        </li>
                                        <li>
                                            <i class="fas fa-clock"></i> 16:00
                                        </li>
                                    </ul>-->
                                    <a href="#">Enroll Now</a>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Item 
                                            </div>
                </div>
           -->
    <!-- End Popular Courses -->


<% 

} %>
 </div>
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
