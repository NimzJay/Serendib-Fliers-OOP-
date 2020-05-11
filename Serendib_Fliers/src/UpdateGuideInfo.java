
import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateGuideInfo
 */
@WebServlet("/UpdateGuideInfo")
public class UpdateGuideInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGuideInfo() {
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
	//	doGet(request, response);
		
		try {
			
			String gid = request.getParameter("id"); 
			System.out.println("@Updateinfo.jsp: "+gid);
			String gfname = request.getParameter("firstname");
			String glname = request.getParameter("lastname");
			String a = request.getParameter("age");
			int age = Integer.parseInt(a);
			String mail = request.getParameter("mail");
			String b = request.getParameter("num");
			int cnumber = Integer.parseInt(b);
			String avl = request.getParameter("avl");
		 
    		String sql = "UPDATE guide SET GuideId='"+gid+"',FirstName='"+gfname+"',LastName='"+glname+"',age='"+age+"',Email='"+mail+"',ContactNumber='"+cnumber+"',availability='"+avl+"' WHERE GuideId = '"+gid+"'";			
    		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Updated Guide!");
			request.getRequestDispatcher("View.jsp").forward(request, response);
    		
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}

}
