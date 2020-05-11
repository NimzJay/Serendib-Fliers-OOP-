/*import java.sql.*;

public class loginDao 
{
	public boolean check(String user,String pass)
	{
		try {
			String sql = "SELECT * FROM user WHERE username=? AND password=?";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/serendib_fliers","root",""); 
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, user);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()) 
			{
				return true;	
			}
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		return false;
	}

}*/
