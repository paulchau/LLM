package ncl.b1037041.db.tool;

import java.sql.*;

import javax.swing.JOptionPane;

public class DataBaseUtil {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url ="jdbc:mysql://localhost:3307/LPromela?"+"user=root&password=root"+"&useUnicode=true&characterEncoding=utf-8";  
			con= DriverManager.getConnection(url);
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in MySQL server connection");
			JOptionPane.showMessageDialog(null, e.getMessage());
			System.out.println(e.getMessage()+" "+e.getSQLState());
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
	}

	public static void closeConnection(Connection connection) {
		try {
			connection.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in MySQL server disconnection.");
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
	
	public static void closeStatement(Statement statement) {
		try {
			statement.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in closing statement.");
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
	
	public static void closeResultSet(ResultSet resultSet) {
		try {
			resultSet.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in closing result set.");
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}

	public static void rollbackConnection(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in rolling back to connection.");
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}	
}
