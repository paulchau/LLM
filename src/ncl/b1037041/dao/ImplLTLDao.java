/*The original code is made by Jim Sun
 * 
 */
package ncl.b1037041.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import ncl.b1037041.LTL.entites.*;
import ncl.b1037041.db.tool.DataBaseUtil;


public class ImplLTLDao{

	public void addLTLForlumaPrototype(String description, String formula, String nickname) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "insert into ltl_formula_definition (description, formula, nickname) "
				+ "values ('"+description+"', '"+formula+"', '"+nickname+"')";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
	}

	public ArrayList<LTLDefinition> getAllLTLDefinition() {
		ArrayList<LTLDefinition> results = new ArrayList<LTLDefinition>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from ltl_formula_definition";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			LTLDefinition definition = null;
			while(rs.next()) {
				definition = new LTLDefinition();
				definition.setId(rs.getInt("id"));
				definition.setFormula(rs.getString("formula"));
				definition.setDescription(rs.getString("description"));
				definition.setNickname(rs.getString("nickname"));
				results.add(definition);
			}
		} catch(Exception e) {
			JOptionPane.showMessageDialog(null, "Error in SQL connections. No Database detected.");
		} finally {
			if(rs != null) {
				DataBaseUtil.closeResultSet(rs);
			}
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
		return results;
	}

	public void removeLTLDefinition(int id) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from ltl_formula_definition where id = " + id;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}
	}

	public List<LPromelaModel> getAllLpm() {
		List<LPromelaModel> results = new ArrayList<LPromelaModel>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from lpromela_model";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			LPromelaModel lpm = null;
			while(rs.next()) {
				lpm = new LPromelaModel();
				lpm.setId(rs.getInt("id"));
				lpm.setName(rs.getString("name"));
				lpm.setFilePath(rs.getString("file_path"));
				results.add(lpm);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				DataBaseUtil.closeResultSet(rs);
			}
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
		return results;
	}

	public LPromelaModel getLpm(int id) {
		LPromelaModel lpm = null;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from lpromela_model where id = " + id;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				lpm = new LPromelaModel();
				lpm.setId(rs.getInt("id"));
				lpm.setName(rs.getString("name"));
				lpm.setFilePath(rs.getString("file_path"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				DataBaseUtil.closeResultSet(rs);
			}
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
		return lpm;
	}

	public void addDefinition2Lpm(int chorId, int ltlId) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "insert into ltl_formula_instance (model_id, definition_id) "
				+ "values ("+chorId+", "+ltlId+")";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
	}

	public void addLpmMessageInfo(int chorId, String message,
			String ltlSymbol, String boolMessage) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "insert into lpromela_model_message_info "
				+ "(model_id, message, ltl_symbol, bool_message) "
				+ "values ("+chorId+", '"+message+"', '"+ltlSymbol+"', '"+boolMessage+"')";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
	}

	public void deleteAllInfoOfLpm(int chorId) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from lpromela_model_message_info where model_id = " + chorId;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}
	}

	public List<ModelMessageInfo> getMessageInfo(int chorId) {
		List<ModelMessageInfo> results = new ArrayList<ModelMessageInfo>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select i.id id, i.message message, i.ltl_symbol symbol, i.bool_message bool, "
				+ "b.id model_id, b.name model_name, b.file_path file"
				+ "from lpromela_model_message_info i left outer join lpromela_model b "
				+ "on i.model_id = b.id where b.id = " + chorId;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			ModelMessageInfo info = null;
			while(rs.next()) {
				info = new ModelMessageInfo();
				info.setId(rs.getInt("id"));
				info.setMessage(rs.getString("message"));
				info.setLtlSymbol(rs.getString("symbol"));
				info.setBoolMessage(rs.getString("bool"));
				
				LPromelaModel lpm = new LPromelaModel();
				lpm.setId(rs.getInt("model_id"));
				lpm.setName(rs.getString("model_name"));
				lpm.setFilePath(rs.getString("file"));
				
				info.setLpm(lpm);
				
				results.add(info);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				DataBaseUtil.closeResultSet(rs);
			}
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
		return results;
	}

	public void addLpm(LPromelaModel chor) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "insert into lpromela_model (name, file_path) "
				+ "values ('"+chor.getName()+"', '"+chor.getFilePath()+ "') ";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
	}

	public void updateLpmName(int chorId, String newName) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "update lpromela_model set "
				 + "name = '"+newName+"' "
				 + "where id = " + chorId;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}
	}

	public void deleteLpm(int chorId) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from lpromela_model where id = " + chorId;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}
	}

	public void deleteLTL(int id){
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from ltl_formula_definition where id = " + id;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			ps.execute();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}
	}
	


	public ModelMessageInfo getInfoByMessage(int chorId, String message) {
		ModelMessageInfo info = null;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from lpromela_model_message_info " +
				"where model_id = " + chorId + " and message = '" + message + "'";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				info = new ModelMessageInfo();
				info.setId(rs.getInt("id"));
				info.setMessage(rs.getString("message"));
				info.setLtlSymbol(rs.getString("ltl_symbol"));
				info.setBoolMessage(rs.getString("bool_message"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null) {
				DataBaseUtil.closeResultSet(rs);
			}
			if(ps != null) {
				DataBaseUtil.closeStatement(ps);				
			}
			if(connection != null) {
				DataBaseUtil.closeConnection(connection);
			}
		}	
		return info;
	}


}
