/*The original code is made by Jim Sun
 * 
 */
package ncl.b1037041.LTL.entites;

import java.io.Serializable;

@SuppressWarnings("serial")
public class LTLDefinition implements Serializable{

	private int id;
	private String formula;
	private String description;
	private String nickname;
	
	
	/* Constructor is made by Paul Chau (140349021), 2015*/
	public LTLDefinition(String formula, String description, String nickname){
		this.formula = formula;
		this.description = description;
		this.nickname = nickname;
	}
	
	public LTLDefinition() {
		this.formula="";
		this.description = "";
		this.nickname = "";
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFormula() {
		return formula;
	}
	public void setFormula(String formula) {
		this.formula = formula;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	/* The following functions are added by Paul Chau (140349021), 2015
	 * 
	 */
	public void setLTL(String formula, String description, String nickname){
		setFormula(formula);
		setDescription(description);
		setNickname(nickname);
	}
	
	public LTLDefinition getLTL(){
		return this;
	}
	
	public String display(){
		return "Name: "+nickname + "/n Formula: " + formula + "/n Description: " + description;
	}
	
	public String toString(){
		return description;
	}
}
