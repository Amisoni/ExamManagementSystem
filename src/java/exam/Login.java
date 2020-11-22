package exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String no = request.getParameter("no");
		String email = request.getParameter("email");
		String username = request.getParameter("unm");
		String password = request.getParameter("pwd");
//                String password = request.getParameter
		 try
		 {
			 Class.forName("com.mysql.cj.jdbc.Driver");
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/exam", "root", "");
			 
			PreparedStatement ps = con.prepareStatement("select email,password from register where email=?and password=?");
			// PreparedStatement pst = con.prepareStatement("select * from register where username=? and  password=?");
		//ps.setInt(1, Integer.parseInt(no));
		//ps.setString(2,email);
			ps.setString(1,email);
			ps.setString(2,password);
		
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				
				HttpSession session=request.getSession();
				//session.setAttribute("no",no);
				session.setAttribute("email",email);
			//	session.setAttribute("unm",username);
				session.setAttribute("pwd",password);
				
				System.out.println("login success"); 
				
				System.out.println(email);
				System.out.println(username);
				System.out.println(no);
				response.sendRedirect("index2.jsp");
			}
			else
			{
				out.print("error");
				
			}
				
		 }
		 catch(Exception e){}
	       
	        
	}
	}

