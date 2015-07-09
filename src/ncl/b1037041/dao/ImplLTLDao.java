package ncl.b1037041.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import ncl.b1037041.LTL.entites.LPromelaModel;
import ncl.b1037041.LTL.entites.ModelMessageInfo;
import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.LTL.entites.LTLInstance;
import ncl.b1037041.LTL.entites.StatisticsLTLUsage;
import ncl.b1037041.db.tool.DataBaseUtil;


public class ImplLTLDao implements InterfaceLTLDao {

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
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

	@Override
	public List<LTLInstance> getLTLInstances(int chorId) {
		List<LTLInstance> results = new ArrayList<LTLInstance>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select i.id id, i.specific_description s_d, i.specific_formula s_f, i.is_setup setup, "
				+ "c.id model_id, c.name model_name, c.file_path file, "
				+ "d.id desc_id, d.formula formula, d.description description, d.nickname nickname "
				+ "from ltl_formula_instance i "
				+ "inner join lpromela_model c on i.model_id = c.id "
				+ "inner join ltl_formula_definition d on i.definition_id = d.id "
				+ "where i.model_id = " + chorId;
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			LTLInstance instance = null;
			while(rs.next()) {
				instance = new LTLInstance();
				instance.setId(rs.getInt("id"));
				instance.setSpecificFormula(rs.getString("s_f"));
				instance.setSpecificDescription(rs.getString("s_d"));
				instance.setIsSetup(rs.getInt("setup"));
				
				LPromelaModel lpm = new LPromelaModel();
				lpm.setId(rs.getInt("model_id"));
				lpm.setName(rs.getString("model_name"));
				lpm.setFilePath(rs.getString("file"));
				
				instance.setLpm(lpm);
				
				LTLDefinition definition = new LTLDefinition();
				definition.setId(rs.getInt("desc_id"));
				definition.setFormula(rs.getString("formula"));
				definition.setDescription(rs.getString("description"));
				definition.setNickname(rs.getString("nickname"));
				
				instance.setDefinition(definition);
				
				results.add(instance);
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

	@Override
	public void updateLTLInstance(int instanceId, String s_formula,
			String s_description) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "update ltl_formula_instance set "
				 + "specific_formula = '"+s_formula+"', "
				 + "specific_description = '"+s_description+"', "
				 + "is_setup = 1 "
				 + "where id = " + instanceId;
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

	@Override
	public List<LTLInstance> getConfigedInstances(int chorId) {
		List<LTLInstance> results = new ArrayList<LTLInstance>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select i.id id, i.specific_description s_d, i.specific_formula s_f, i.is_setup setup, "
				+ "c.id model_id, c.name model_name, c.file_path file, "
				+ "d.id desc_id, d.formula formula, d.description description, d.nickname nickname "
				+ "from ltl_formula_instance i "
				+ "inner join lpromela_model c on i.model_id = c.id "
				+ "inner join ltl_formula_definition d on i.definition_id = d.id "
				+ "where i.model_id = " + chorId + " "
				+ "and i.is_setup = 1 order by id";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			LTLInstance instance = null;
			while(rs.next()) {
				instance = new LTLInstance();
				instance.setId(rs.getInt("id"));
				instance.setSpecificFormula(rs.getString("s_f"));
				instance.setSpecificDescription(rs.getString("s_d"));
				instance.setIsSetup(rs.getInt("setup"));
				
				LPromelaModel lpm = new LPromelaModel();
				lpm.setId(rs.getInt("model_id"));
				lpm.setName(rs.getString("model_name"));
				lpm.setFilePath(rs.getString("file"));
				
				instance.setLpm(lpm);
				
				LTLDefinition definition = new LTLDefinition();
				definition.setId(rs.getInt("desc_id"));
				definition.setFormula(rs.getString("formula"));
				definition.setDescription(rs.getString("description"));
				definition.setNickname(rs.getString("nickname"));
				
				instance.setDefinition(definition);
				
				results.add(instance);
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

	@Override
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

	@Override
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

	@Override
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

	@Override
	public List<StatisticsLTLUsage> getLTLUsageStatistics() {
		List<StatisticsLTLUsage> results = new ArrayList<StatisticsLTLUsage>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select d.id, d.nickname, a.num from "
				+ "(select i.definition_id did, count(i.definition_id) num from "
				+ " ltl_formula_instance i group by i.definition_id order by num desc limit 5) a "
				+ " inner join ltl_formula_definition d on a.did = d.id ";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			StatisticsLTLUsage usage = null;
			while(rs.next()) {
				usage = new StatisticsLTLUsage();
				usage.setId(rs.getInt("id"));
				usage.setNickname(rs.getString("nickname"));
				usage.setNum(rs.getInt("num"));
				results.add(usage);
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

	@Override
	public List<LTLInstance> getNonConfigedInstances(int chorId) {
		List<LTLInstance> results = new ArrayList<LTLInstance>();
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select i.id id, i.specific_description s_d, i.specific_formula s_f, i.is_setup setup, "
				+ "c.id model_id, c.name model_name, c.file_path file, "
				+ "d.id desc_id, d.formula formula, d.description description, d.nickname nickname "
				+ "from ltl_formula_instance i "
				+ "inner join lpromela_model c on i.model_id = c.id "
				+ "inner join ltl_formula_definition d on i.definition_id = d.id "
				+ "where i.model_id = " + chorId + " "
				+ "and i.is_setup = 0";
		try {
			connection = DataBaseUtil.getConnection();
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			LTLInstance instance = null;
			while(rs.next()) {
				instance = new LTLInstance();
				instance.setId(rs.getInt("id"));
				instance.setSpecificFormula(rs.getString("s_f"));
				instance.setSpecificDescription(rs.getString("s_d"));
				instance.setIsSetup(rs.getInt("setup"));
				
				LPromelaModel lpm = new LPromelaModel();
				lpm.setId(rs.getInt("model_id"));
				lpm.setName(rs.getString("model_name"));
				lpm.setFilePath(rs.getString("file"));
				
				instance.setLpm(lpm);
				
				LTLDefinition definition = new LTLDefinition();
				definition.setId(rs.getInt("desc_id"));
				definition.setFormula(rs.getString("formula"));
				definition.setDescription(rs.getString("description"));
				definition.setNickname(rs.getString("nickname"));
				
				instance.setDefinition(definition);
				
				results.add(instance);
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

	@Override
	public void deleteLTLInstance(int instanceId) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from ltl_formula_instance where id = " + instanceId;
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

	@Override
	public void deleteAllLTLInstance(int chorId) {
		Connection connection = null;
		PreparedStatement ps = null;
		String sql = "delete from ltl_formula_instance where model_id = " + chorId;
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

	@Override
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
