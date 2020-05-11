
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatePackage
 */
@WebServlet("/updatePackage")
public class updatePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatePackage() {
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
		
		try {
			String name = request.getParameter("username");
			String id = request.getParameter("id");
			String email = request.getParameter("email");   
			String Number = request.getParameter("contactNo1");
			int CNumber = Integer.parseInt(Number);
			String country = request.getParameter("country");   
			String date = request.getParameter("date");
			String pickup = request.getParameter("pickup");   
			String Adults = request.getParameter("adults");
			String Children = request.getParameter("children");  
			String duration = request.getParameter("duration");
			String accommodation = request.getParameter("accommodation");   
			String budget = request.getParameter("budget");
			String additional = request.getParameter("additional");
			
    		String user = request.getParameter("username"); 
    		String sql = "UPDATE customize SET name='"+name+"',id='"+id+"',email='"+email+"',cnumber='"+CNumber+"',country='"+country+"',date='"+date+"',pickup='"+pickup+"',adults='"+Adults+"',children='"+Children+"',accommodation ='"+accommodation+"',duration='"+duration+"',budget='"+budget+"',note='"+additional+"' ORDER BY pkgId DESC LIMIT 1";			
    		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Updated Package!");
			request.getRequestDispatcher("displaycustomize.jsp").forward(request, response);
			Sesh.setUsername(user);
    		
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
