
import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateProcess
 */
@WebServlet("/updateProcess")
public class updateProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateProcess() {
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
		
		String pkg = request.getParameter("package"); 
		System.out.println(pkg);
        String tdate = request.getParameter("date");
        String a = request.getParameter("cardNo");
        int card = Integer.parseInt(a);
        String b = request.getParameter("cvv");
        int cvv = Integer.parseInt(b);
		String exp = request.getParameter("exp");
		
		try {
    		String user = request.getParameter("username"); 
    		String sql = "UPDATE booking SET pkgID='"+pkg+"',TDate='"+tdate+"',userN='"+user+"',cardNo='"+card+"',cvv='"+cvv+"',expDate='"+exp+"' ORDER BY bookingID DESC LIMIT 1";			
    		Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs;
			st.executeUpdate(sql);
			System.out.println("Successfully Updated Booking!");
			request.getRequestDispatcher("displayBooking.jsp").forward(request, response);
			Sesh.setUsername(user);
    		
		}catch (Exception ex) {
			ex.printStackTrace();
		}	
	}
}
