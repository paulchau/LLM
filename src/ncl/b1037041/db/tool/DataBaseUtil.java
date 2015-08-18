/*The original code is made by Jim Sun
 * Modification and extra functions have beeen added by Ching Hay CHAU (Paul)
 */
package ncl.b1037041.db.tool;

import java.sql.*;

import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class DataBaseUtil {
	
	private static String url = "jdbc:mysql://db4free.net:3306/lpromela?"+"user=pcch&password=pi314e27"+"&useUnicode=true&characterEncoding=utf-8";
	private static String localhostUrl = "";
	private static int choice = -100;
	private static boolean input = false;
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			if (choice == -100){
				Object[] dbChoice = {"Online Database (Trial)", "Local Database", "Cancel"};
				choice = JOptionPane.showOptionDialog(null, "Please choose which database you would like to access", "Database", JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE, null, dbChoice, dbChoice[2]);
			}
			if (choice == JOptionPane.YES_OPTION){
				con= DriverManager.getConnection(url);
			}else if (choice == JOptionPane.NO_OPTION){
				if (!input){
					con = DatabaseSetup();
					input = true;
				}else{
					con = DriverManager.getConnection(localhostUrl);
				}
			}
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, "Error in MySQL server connection");
			DatabaseSetup();
			System.out.println(e.getMessage()+" "+e.getSQLState());
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			JOptionPane.showMessageDialog(null, "Invalid access");
			
		} catch (ClassNotFoundException e) {
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
	
	public static void initialise(){
		url = "jdbc:mysql://db4free.net:3306/lpromela?"+"user=pcch&password=pi314e27"+"&useUnicode=true&characterEncoding=utf-8";
		localhostUrl = "";
		choice = -100;
		input = false;
	}
	
	public static Connection DatabaseSetup(){
		Connection con = null;
		JTextField ip = new JTextField();
		ip.setToolTipText("default: localhost");
		JTextField port  = new JTextField();
		port.setToolTipText("default: 3306");
		JTextField user = new JTextField();
		JTextField pwd = new JTextField();
		JTextField db = new JTextField();
		Object[] questions = {
				"MySQL Server IP: ", ip,
				"Port: ", port,
				"Username: ", user,
				"Password", pwd,
				"Database name", db
		};
		int button = JOptionPane.showConfirmDialog(null, questions, "Please input the login information of the MySQL server: ", JOptionPane.OK_CANCEL_OPTION);
		if (button == JOptionPane.OK_OPTION){
			localhostUrl = "jdbc:mysql://" + ip.getText() + ":" + port.getText()
					+ "/" + db.getText() + "?" + "user=" + user.getText() + "&password="
					+ pwd.getText() + "&useUnicode=true&characterEncoding=utf-8";
			try {
				con = DriverManager.getConnection(localhostUrl);
				return con;
			} catch (SQLException e1) {
				System.out.println(e1.getMessage());
				JOptionPane.showMessageDialog(null, "Wrong information. System is going to close.");
				System.exit(1);
			}
		}else{
			JOptionPane.showMessageDialog(null, "No connection with a MySQL server. Please setup a MySQL server.");
			System.exit(1);
		}			
		
		return con;
	}
}
