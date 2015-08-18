/*The original code is made by Jim Sun
 * 
 */

package ncl.b1037041.dao;

import java.util.List;

import ncl.b1037041.LTL.entites.LPromelaModel;
import ncl.b1037041.LTL.entites.ModelMessageInfo;
import ncl.b1037041.LTL.entites.LTLDefinition;
import ncl.b1037041.LTL.entites.LTLInstance;

public interface InterfaceLTLDao {

	public void addLTLForlumaPrototype(String description, String formula, String nickname);
	
	public List<LTLDefinition> getAllLTLDefinition();
	
	public void removeLTLDefinition(int id);
	
	public List<LPromelaModel> getAllLpm();
	
	public LPromelaModel getLpm(int id);
	
	public void addDefinition2Lpm(int chorId, int ltlId);
	
	public void addLpmMessageInfo(int chorId, String message, String ltlSymbol, String boolMessage);
	
	public void deleteAllInfoOfLpm(int chorId);
	
	public List<ModelMessageInfo> getMessageInfo(int chorId);
	
	public List<LTLInstance> getLTLInstances(int chorId);
	
	public List<LTLInstance> getConfigedInstances(int chorId);
	
	public List<LTLInstance> getNonConfigedInstances(int chorId);
	
	public void updateLTLInstance(int instanceId, String s_formula, String s_description);
	
	public void deleteLTLInstance(int instanceId);
	
	public void deleteAllLTLInstance(int chorId);

	public void addLpm(LPromelaModel chor);
	
	public void updateLpmName(int chorId, String newName);
	
	public void deleteLpm(int chorId);
	
	public ModelMessageInfo getInfoByMessage(int chorId, String message);
	

}
