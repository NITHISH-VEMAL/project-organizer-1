package product1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class CommentDao {
	
	String sql="insert into store values(?, ?, ?, ?)";
	String url="jdbc:mysql://localhost:3306/nithish";
	String username="root";
	String password="vns_1998";
	
	
	
	public void insert (String name, int code, String comment, String status){
			
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement st=con.prepareStatement(sql);
			
			st.setString(1, name);
			st.setInt(2, code);
			st.setString(3, comment);
			st.setString(4, status);
			
			st.executeUpdate();				
			con.close();
		}
		catch(Exception e)
		{
			
		}
}
}