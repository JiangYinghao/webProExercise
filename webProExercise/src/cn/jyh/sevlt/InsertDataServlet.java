package cn.jyh.sevlt;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertDataServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html; charset=UTF-8");
		Object myName = request.getParameter("myName");
		System.out.println(myName);
		connectDB();
	}
	@Override
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		response.setContentType("text/html; charset=UTF-8");
		Object myName = request.getParameter("myName");
		System.out.println(myName);
		connectDB();
	}

	public static void connectDB(){
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:ORCL";
		String user = "jiangyh";
		String password = "000000";
		Connection conn = null;
		Statement stat = null;
		ResultSet rs = null;
		String sql = "select * from emp";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			stat = conn.prepareStatement(sql);
			rs = stat.getResultSet();
			while(rs.next()){
				System.out.println(rs.getInt("EMPID"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			try {
				if(!(rs==null)){
					rs.close();
				}
				if(!(stat == null)){
					stat.close();
				}
				if(!(conn == null)){
					conn.close();
				} 
			}catch (SQLException e) {
					e.printStackTrace();
				}
			}
	}
}
