public class Building {
	private String name;
	private int price;
	private int physical;
	private int intellectual;
	private int monetary;
	
	public Building(String name, int price, int physical, int intellectual, int monetary) {
		this.name = name;
		this.price = price;
		this.physical = physical;
		this.intellectual = intellectual;
		this.monetary = monetary;	
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getPhysical() {
		return physical;
	}

	public void setPhysical(int physical) {
		this.physical = physical;
	}

	public int getIntellectual() {
		return intellectual;
	}

	public void setIntellectual(int intellectual) {
		this.intellectual = intellectual;
	}

	public int getMonetary() {
		return monetary;
	}

	public void setMonetary(int monetary) {
		this.monetary = monetary;
	}
}

