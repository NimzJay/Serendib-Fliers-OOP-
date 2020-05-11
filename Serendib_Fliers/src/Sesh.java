
public class Sesh 
{
	public static String user;
	public static int bId;
	public static String gId;
	public static int pkgId;
	public static String uid;
	
	public Sesh() {}
	public static void setUsername(String username)
	{		
		user = username;
	}
	public static String getUsername() 
	{
		return user;
	}
	public static void setBookingId(int bid)
	{		
		bId = bid;
	}
	public static int getBookingId() 
	{
		return bId;
	}
	public static void setPackageId(int pid)
	{
		pkgId = pid;
	}
	public static int getPackageId()
	{
		return pkgId;
	}
}
