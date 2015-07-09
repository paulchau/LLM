package ncl.b1037041.db.tool;

import java.sql.*;

import javax.swing.JOptionPane;

public class DataBaseUtil {

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("org.gjt.mm.mysql.Driver").newInstance();
			String url ="jdbc:mysql://127.0.0.1/lpromela?user=root&password=root&useUnicode=true&characterEncoding=utf-8";  
			con= DriverManager.getConnection(url);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Error in MySQL server connection");
			JOptionPane.showMessageDialog(null, e.getMessage());
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
