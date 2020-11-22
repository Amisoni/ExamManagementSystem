package exam;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
	//	PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String username = request.getParameter("unm");
		String password = request.getParameter("pwd");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", ""); // create new connection with test database
		
		String query="insert into register values(NULL,?,?,?)";
		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement(query);  
		
		ps.setString(1,email);
		ps.setString(2,username);
		ps.setString(3,password);
		
		ps.executeUpdate(); // execute it on test database
		System.out.println("successfuly inserted");
		
		ps.close();
		con.close();
		}
		catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		
	}
	

}
