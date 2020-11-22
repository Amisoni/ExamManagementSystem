package exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class course_update
 */
@WebServlet("/course_update")
public class course_update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public course_update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		PrintWriter out = response.getWriter();
		String no=request.getParameter("no");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String image = request.getParameter("file");
		
		String description = request.getParameter("desc");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
		
		String query="update courses set name=?,price=?,image=?,description=? WHERE no=?";
		
		PreparedStatement ps=con.prepareStatement(query);  // generates sql query
		
		
		ps.setString(1,name);
		ps.setString(2,price);
		ps.setString(3,image);
		ps.setString(4,description);
		ps.setInt(5, Integer.parseInt(no));
	
		ps.executeUpdate(); // execute it on test database
		System.out.println("successfuly update");
		ps.close();
		con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	}
		RequestDispatcher rd= request.getRequestDispatcher("Admin/index.jsp");
		rd.forward(request, response);
		
	}

}
