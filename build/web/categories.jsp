<%@ include file="header.jsp"%>
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
	String query="select * from categories";
	
	PreparedStatement ps=(PreparedStatement) con.prepareStatement(query); 
	ResultSet rs=ps.executeQuery();
%>


 <div id="top-categories" class="top-cat-area default-padding bottom-less">
        <div class="container">
            <div class="row">
                <div class="site-heading text-center">
                    <div class="col-md-8 col-md-offset-2">
                        <h2>Top Categories</h2>
                        <p>
                            Discourse assurance estimable applauded to so. Him everything melancholy uncommonly but solicitude inhabiting projection off. Connection stimulated estimating excellence an to impression. 
                        </p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="top-cat-items">
                    <% while (rs.next()) { %>
                    <div class="col-md-3 col-sm-6 equal-height">
                        <div class="item" style="background-image: url(<%=rs.getString(5)%>);">
                            <a href="#">
                                <i class="<%=rs.getString(3)%>"></i>
                                <div class="info">
                                    <h4><%=rs.getString(2)%></h4>
                                    <span>(<%=rs.getString(4)%>)Topics</span>
                                </div>
                            </a>
                        </div>
                    </div>
                     <% }%>
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

 
<%@ include file="footer.jsp"%>