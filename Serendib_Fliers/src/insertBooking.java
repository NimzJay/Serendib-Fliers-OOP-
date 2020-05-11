import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

//import insertBooking.bookingDao;

/**
 * Servlet implementation class insertBooking
 */
@WebServlet("/insertBooking")
public class insertBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertBooking() {
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
        String tdate = request.getParameter("date");
        String a = request.getParameter("cardNo");
        int card = Integer.parseInt(a);
        String b = request.getParameter("cvv");
        int cvv = Integer.parseInt(b);
		String exp = request.getParameter("exp");  
		
		try {
        		String user = request.getParameter("username"); 
        		System.out.println(user);
    			Class.forName("com.mysql.jdbc.Driver");
    			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
    			
    			String sql2 = ("SELECT * FROM guide WHERE availability = 'yes' ORDER BY GuideId ASC LIMIT 1");
				PreparedStatement st2 = con.prepareStatement(sql2);
				ResultSet r = st2.executeQuery(sql2);
				while(r.next()) {
					String gid = r.getString("GuideId");
					System.out.println("GuideId" +gid);
    			
					String sql = "INSERT INTO booking (pkgID,TDate,userN,cardNo,cvv,expDate,GuideId) VALUES ('"+pkg+"', '"+tdate+"','"+user+"', '"+card+"', '"+cvv+"','"+exp+"','"+gid+"')";
					PreparedStatement st = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
					st.executeUpdate();
					System.out.println("Successfully Booked!");
					ResultSet rs = st.getGeneratedKeys();
					while(rs.next()) {
						int id = rs.getInt(1);
    				
						Sesh.bId = id;
						System.out.println("BookingId: "+id +"\nstatic: "+Sesh.bId);
						
						request.getRequestDispatcher("displayBooking.jsp").forward(request, response);
						Sesh.setUsername(user);
					}
				}
				String sql3 = "UPDATE guide SET availability='no' WHERE availability = 'yes'  ORDER BY GuideId ASC LIMIT 1 ";
				PreparedStatement st3 = con.prepareStatement(sql3);
				st3.executeUpdate(sql3);
				System.out.println("Successfully Updated Guide Availability!");
    			
        }catch (Exception ex) {
        	ex.printStackTrace();
        }
		
		/*try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root","");
			String sql2 = ("SELECT * FROM guide WHERE availability = 'yes' AND GuideId = (SELECT MAX(GuideId) FROM guide)");
			PreparedStatement st2 = con.prepareStatement(sql2);
			st2.executeUpdate();
			//System.out.println("Successfully Booked!");
			
		}catch(Exception x) {
			x.printStackTrace();
		}*/
		
	}

}
