
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminUpdateUser
 */
@WebServlet("/adminUpdateUser")
public class adminUpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminUpdateUser() {
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
		//doGet(request, response);
		
		try {
			
			String fname = request.getParameter("userFname");   
			String lname = request.getParameter("userLname");
			String user = request.getParameter("username");   
			String pass = request.getParameter("password");
			String add = request.getParameter("address");   
			String x = request.getParameter("contactNo1");
			int no1 = Integer.parseInt(x);
			String y = request.getParameter("contactNo2");
			int no2 = Integer.parseInt(y); 
			String email = request.getParameter("email");
			String nic = request.getParameter("nic");
			String type = request.getParameter("type");
			
			//userFname,userLname,username,password,address,contactNo1,contactNo2,email,NIC,type
		 
    		String sql = "UPDATE user SET userFname='"+fname+"',userLname='"+lname+"',username='"+user+"',password='"+pass+"',address='"+add+"',contactNo1='"+no1+"',contactNo2='"+no2+"',email='"+email+"',NIC='"+nic+"',type='"+type+"' WHERE username = '"+user+"'";			
    		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Updated User!");
			request.getRequestDispatcher("adminViewUser.jsp").forward(request, response);
    		
		}catch (Exception ex) {
			ex.printStackTrace();
		}
		
	}

}
