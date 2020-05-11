import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adminInsertUser
 */
@WebServlet("/adminInsertUser")
public class adminInsertUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminInsertUser() {
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
        
        try {
			String sql = "INSERT INTO user(userFname,userLname,username,password,address,contactNo1,contactNo2,email,NIC,type) VALUES ('"+fname+"', '"+lname+"', '"+user+"', '"+pass+"', '"+add+"', '"+no1+"', '"+no2+"', '"+email+"','"+nic+"','"+type+"')";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Inserted user!"); 
			
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}

        	response.sendRedirect("adminViewUser.jsp");
	
	}

}
