

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class leaderBoard
 */
@WebServlet("/leaderBoard")
public class leaderBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = null;
		Statement st =null;
		ResultSet rs = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//SSL ? 
			conn = DriverManager.getConnection("jdbc:mysql://localhost/FinalProject?user=root&password=root&useSSL=false");
			st = conn.createStatement();
			// all of methods can be pass thr sql st will excute. diff is what is retured from DB
			
			rs = st.executeQuery("SELECT username, totalSkill FROM leaderboard ORDER BY totalSkill DESC"); // return ResultSet (table) 
			
		
			ArrayList <Double> totalSkill = new ArrayList<Double> ();
			ArrayList <String> userName = new ArrayList<String>();
			while(rs.next()) {
				Double totalskill = rs.getDouble("totalSkill");
				String username = rs.getString("username");
				
				System.out.println(username);
				totalSkill.add(totalskill);
				userName.add(username);
				
				
			}
			request.setAttribute("totalSkill", totalSkill);
			request.setAttribute("userName", userName);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/leaderBoard.jsp");
			dispatcher.forward(request, response);
			
		}catch(SQLException sqle) {
			System.out.println("sqle:" + sqle.getMessage());
		}catch(ClassNotFoundException cnfe) {
			System.out.println("cnfe: " + cnfe.getMessage());
		}finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if(st !=null) {
					st.close();
				}
				if(conn != null) {
					conn.close();
				}
			}catch(SQLException sqle) {
				System.out.println("sqle closing stuff : " + sqle.getMessage());
			}
		}
	}
		
	

}
