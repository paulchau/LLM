package ncl.b1037041.LTL.entites;

public class ModelMessageInfo {

	private int id;
	private LPromelaModel lpm;
	private String message;
	private String ltlSymbol;
	private String boolMessage;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LPromelaModel getLpm() {
		return lpm;
	}
	public void setLpm(LPromelaModel lpm) {
		this.lpm = lpm;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getLtlSymbol() {
		return ltlSymbol;
	}
	public void setLtlSymbol(String ltlSymbol) {
		this.ltlSymbol = ltlSymbol;
	}
	public String getBoolMessage() {
		return boolMessage;
	}
	public void setBoolMessage(String boolMessage) {
		this.boolMessage = boolMessage;
	}
	
	@Override
	public String toString() {
		return this.message;
	}	
}
