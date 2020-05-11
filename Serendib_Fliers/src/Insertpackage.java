

import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;

@WebServlet("/insertpackage")
public class Insertpackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public Insertpackage() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
       
        
        try {
        	String user = request.getParameter("username"); 
		System.out.println(user);
			String sql = "INSERT INTO customize(name,id,email,cnumber,country,date,pickup,adults,children,duration,accommodation,budget,note) VALUES ('"+name+"', '"+id+"', '"+email+"', '"+CNumber+"', '"+country+"', '"+date+"', '"+pickup+"', '"+Adults+"','"+Children+"','"+duration+"', '"+accommodation+"', '"+budget+"', '"+additional+"')";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
			System.out.println("Successfully Registered Package!"); 
			ResultSet rs = st.getGeneratedKeys();
			while(rs.next()) {
				int  pkgId = rs.getInt(1);			
				Sesh.pkgId =  pkgId;
				System.out.println("customizeId: "+ pkgId +"\nstatic: "+Sesh.pkgId);
				
				request.getRequestDispatcher("displaycustomize.jsp").forward(request, response);
				Sesh.setUsername(user);
			}
			
			
		}catch(Exception ex) {
			ex.printStackTrace();
							}

        

	}

}
