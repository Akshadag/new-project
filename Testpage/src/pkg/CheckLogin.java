package pkg;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
PrintWriter out=response.getWriter();
String uname=request.getParameter("username");

String password=request.getParameter("password"); 


HttpSession session=request.getSession();
session.setAttribute("str", uname);
if(uname.equals("Admin") && password.equals("Admin123"))
{
	response.sendRedirect("AdminNewHome.html");
}
else if(Velidate.CheckLogin(uname,password))
{
	
response.sendRedirect("EmployeeHome.jsp");	
}
else
{
out.print("<center><h2>Sorry you entered wrong information</h2></center>");
RequestDispatcher rd=request.getRequestDispatcher("Login3.html");
rd.include(request, response);
}

	}
}

	
