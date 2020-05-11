import java.io.IOException;
import java.sql.*;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertGuideInfo
 */
@WebServlet("/InsertGuideInfo")
public class InsertGuideInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertGuideInfo() {
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
		doGet(request, response);
		try {
			String GuideId = request.getParameter("id");
			Sesh.gId = GuideId;
			String FirstName = request.getParameter("firstname");
			String LastName = request.getParameter("lastname");
			String a = request.getParameter("age");
			int age = Integer.parseInt(a);
			String Email = request.getParameter("mail");
			String ContactNumber = request.getParameter("num");
			String avl = request.getParameter("avl");

			Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root","");
			String sql = "Insert into guide(GuideId,FirstName,LastName,age,Email,ContactNumber,availability) values('"+GuideId+"','"+FirstName+"','"+LastName+"','"+age+"','"+Email+"','"+ContactNumber+"','"+avl+"')"; 
		    PreparedStatement st = con.prepareStatement(sql);
		    st.executeUpdate(sql);
		    System.out.println("Insert Guide succeeded");
		    request.getRequestDispatcher("View.jsp").forward(request, response);
		}catch(Exception ex) {
			System.out.println("Error: " + ex);
		}

	}

}
