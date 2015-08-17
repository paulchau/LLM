package ncl.b1037041.db.tool;

import java.sql.*;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class DataBaseUtil {

	private static String url = "jdbc:mysql://db4free.net:3306/lpromela?"+"user=pcch&password=pi314e27"+"&useUnicode=true&characterEncoding=utf-8";  
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con= DriverManager.getConnection(url);
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in MySQL server connection");
			Object[] options = {"OK","Cancel"};
			JTextField ip = new JTextField();
			ip.setToolTipText("default: localhost");
			JTextField port  = new JTextField();
			port.setToolTipText("default: 3306");
			JTextField user = new JTextField();
			JTextField pwd = new JTextField();
			Object[] questions = {
					"MySQL Server IP: ", ip,
					"Port: ", port,
					"Username: ", user,
					"Password", pwd
			};
			int button = JOptionPane.showConfirmDialog(null, questions, "Please input the login information of the MySQL server: ", JOptionPane.OK_CANCEL_OPTION);
			if (button == JOptionPane.OK_OPTION){
				url = "jdbc:mysql://" + ip.getText() + ":" + port.getText()
						+ "/LPromela?" + "user=" + user.getText() + "&password="
						+ pwd.getText() + "&useUnicode=true&characterEncoding=utf-8";
				try {
					Connection con1 = null;
					con1 = DriverManager.getConnection(url);
					return con1;
				} catch (SQLException e1) {
					System.out.println(e1.getMessage());
					JOptionPane.showMessageDialog(null, "Wrong information. System is going to close.");
					System.exit(1);
				}
			}else{
				JOptionPane.showMessageDialog(null, "No connection with a MySQL server. Please setup a MySQL server.");
				System.exit(1);
			}			
			System.out.println(e.getMessage()+" "+e.getSQLState());
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			JOptionPane.showMessageDialog(null, "Invalid access");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			JOptionPane.showMessageDialog(null, "Error in loading the Java MySQL Database library. Please report to the github page");
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
