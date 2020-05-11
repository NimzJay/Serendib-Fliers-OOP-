import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteBooking
 */
@WebServlet("/deleteBooking")
public class deleteBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deleteBooking() {
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
		
		String id=Sesh.getUsername();
		System.out.println(id);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root","");
			Statement st=conn.createStatement();
			int i=st.executeUpdate("DELETE FROM booking WHERE userN='"+id+"'");
			System.out.println("Booking Deleted Successfully!");
			request.getRequestDispatcher("clientUI.jsp").forward(request, response);
			
			String sql3 = "UPDATE guide SET availability='yes' WHERE availability = 'no'  ORDER BY GuideId DESC LIMIT 1 ";
			PreparedStatement st3 = conn.prepareStatement(sql3);
			st3.executeUpdate(sql3);
			System.out.println("Successfully Updated Guide Availability!");
		}
		catch(Exception e){
			System.out.print("Error: " + e);
			e.printStackTrace();
		}
		
	}

}
