package exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class categories
 */
@WebServlet("/categories")
public class categories extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public categories() {
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
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String cls = request.getParameter("cls");
		String topic=request.getParameter("topic");
		String image = request.getParameter("file");
		

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		// loads mysql driver
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
		
		String query="insert into categories values(NULL,?,?,?,?)";
		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);  // generates sql query
		
		ps.setString(1,name);
		ps.setString(2,cls);
		ps.setString(3,topic);
		ps.setString(4,image);
		
		
		ps.executeUpdate(); // execute it on test database
		System.out.println("successfuly inserted");
		out.print("inserted");
		
		ps.close();
		con.close();
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("error");
		} 
				
		RequestDispatcher rd= request.getRequestDispatcher("Admin/course_view.jsp");
		rd.forward(request, response);
		
	}

}
