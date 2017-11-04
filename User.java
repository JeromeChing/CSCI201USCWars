import java.util.List;

public class User {
	private String username;
	private int userID;	//may not be user
	private double money;
	private double power;
	private double totalSkill;
	private boolean isGuest;
	private List<Building> buildings;
	private List<Sports> sports;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public double getPower() {
		return power;
	}
	public void setPower(double power) {
		this.power = power;
	}
	public double getTotalSkill() {
		return totalSkill;
	}
	public void setTotalSkill(double totalSkill) {
		this.totalSkill = totalSkill;
	}
	public boolean isGuest() {
		return isGuest;
	}
	public void setGuest(boolean isGuest) {
		this.isGuest = isGuest;
	}
	public List<Building> getBuildings() {
		return buildings;
	}
	public void setBuildings(List<Building> buildings) {
		this.buildings = buildings;
	}
	public List<Sports> getSports() {
		return sports;
	}
	public void setSports(List<Sports> sports) {
		this.sports = sports;
	}
	
}
