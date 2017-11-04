import java.util.ArrayList;

public class CreateBuildings {
	public static void main(String [] args) {
		ArrayList<Building> buildingList = new ArrayList<Building>();

		Building lyon = new Building("Lyon Center", 500000, 40, 10, 10);
		Building heritageHall = new Building("Heritage Hall", 600000, 40, 10, 10);
		Building village = new Building("Village", 5000000, 20, 20, 20);
		Building thh = new Building("Taper Hall of Humanities", 1000000, 10, 30, 20);
		Building leavey = new Building("Leavey Library", 2000000, 10,40,10);
		
		Building cromwell = new Building("Cromwell Track and Field", 200000, 40, 10, 10);
		Building annenberg = new Building("Annenberg Building", 3000000, 20, 20, 20);
		Building ped = new Building("PED", 500000, 40, 10, 10);
		Building wph = new Building("WPH", 300000, 20, 20, 20);
		Building bovard = new Building("Bovard Auditoriam", 2000000, 10, 40, 10);
		
		Building kap = new Building("KAP", 200000, 20, 20, 20);
		Building sgm = new Building("SGM", 300000, 20, 20, 20);
		Building miller = new Building("Miller's Office", 2147483647, 2147483647, 2147483647, 2147483647);
		Building bookstore = new Building("USC Bookstore", 700000, 10, 10, 40);
		Building tommyTrojan = new Building("Tommy Trojan", 1000000, 20, 20, 20);
		
		Building parkside = new Building("Parkside", 3000000, 20, 20, 20);
		Building sal = new Building("SAL", 10000000, 10, 10, 10);
		Building coliseum = new Building("Coliseum", 7000000, 0, 60, 0);
		Building tcc  = new Building("TCC", 3000000, 20, 20, 20);
		Building fertitta = new Building("Fertitta Hall", 2000000, 20, 10, 30);
		
		buildingList.add(lyon);
		buildingList.add(heritageHall);
		buildingList.add(village);
		buildingList.add(thh);
		buildingList.add(leavey);
		
		buildingList.add(cromwell);
		buildingList.add(annenberg);
		buildingList.add(ped);
		buildingList.add(wph);
		buildingList.add(bovard);

		buildingList.add(kap);
		buildingList.add(sgm);
		buildingList.add(miller);
		buildingList.add(bookstore);
		buildingList.add(tommyTrojan);
		
		buildingList.add(parkside);
		buildingList.add(sal);
		buildingList.add(coliseum);
		buildingList.add(tcc);
		buildingList.add(fertitta);	
	}	
}
