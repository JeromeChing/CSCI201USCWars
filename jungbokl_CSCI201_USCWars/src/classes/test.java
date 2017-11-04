package classes;

import java.util.ArrayList;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		ArrayList<Building> test1 = new ArrayList();
		gameInit g = new gameInit();
		g.createBuildingList(test1);
		
		for(int i = 0; i < test1.size(); i++) {
			System.out.println("Building Name: " + test1.get(i).getName() + " price: " + test1.get(i).getPrice());
		}

	}

}
