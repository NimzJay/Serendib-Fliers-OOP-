import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	public class loginDao 
	{
		public String check(String user,String pass)
		{
			try {
				
				String sql = "SELECT * FROM user";			
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs = st.executeQuery(sql);
				while(rs.next()) 
				{
					String typeDB = rs.getString("type");
					
					if(user.equals(rs.getString("username"))&& pass.equals(rs.getString("password"))&& typeDB.equals("client")) {
						return "clientUI";
					}
					if(user.equals(rs.getString("username"))&& pass.equals(rs.getString("password"))&& typeDB.equals("admin")) {
						return "adminUI";
					}
				}
				
			}catch(Exception ex) {
				ex.printStackTrace();
			}
					
			return "Invalid User Credentials";
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	        String user = request.getParameter("user");   
	        String pass = request.getParameter("pass");
	        //System.out.println(user+pass); 
	        
	        loginDao dao = new loginDao();
	        
	        try {
	        
	        	String userValidate = dao.check(user,pass);
	        	if(userValidate.equals("clientUI")) 
	        	{
	        		System.out.println("Client");
	        		Sesh.setUsername(user);
	        		System.out.println(Sesh.getUsername());
	        		request.getRequestDispatcher("clientUI.jsp").forward(request, response);
	           	}
	        	else if(userValidate.equals("adminUI"))
	        	{
	        		System.out.println("Admin");
	        		request.getRequestDispatcher("adminUI.jsp").forward(request, response);
	        	}
	        	else 
	        	{
	        		
	           		request.getRequestDispatcher("Signin.jsp").forward(request, response);
	        	}  
	        }catch (Exception e) {
	        	
	        }
	}

}
