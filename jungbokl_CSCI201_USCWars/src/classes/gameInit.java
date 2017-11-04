package classes;
import java.util.ArrayList;

public class gameInit {
		//private ArrayList<Building> buildingList = null;
		//private ArrayList<Sports> sportsList = null;
		
		public gameInit() {
			
		}
		
		public static void createBuildingList(ArrayList<Building> buildingList) {
			
			//this.buildingList = new ArrayList<Building>();
		
			Building lyon = new Building("Lyon Center", 500000, 40, 10, 10, " Assets/LyonCenter.jpg");
			Building heritageHall = new Building("Heritage Hall", 600000, 40, 10, 10, "Assets/HeritageHall.jpg");
			Building village = new Building("Village", 5000000, 20, 20, 20, "Assets/Village.jpg");
			Building thh = new Building("Taper Hall of Humanities", 1000000, 10, 30, 20, "Assets/THH.jpg");
			Building leavey = new Building("Leavey Library", 2000000, 10,40,10, "Assets/LVL.jpg");
		
			Building cromwell = new Building("Cromwell Track and Field", 200000, 40, 10, 10, "Assets/Cromwell.jpg");
			Building annenberg = new Building("Annenberg Building", 3000000, 20, 20, 20, "Assets/Annenberg.jpg");
			Building ped = new Building("PED", 500000, 40, 10, 10, "Assets/PED.jpg");
			Building wph = new Building("WPH", 300000, 20, 20, 20, "Assets/WPH.jpg");
			Building bovard = new Building("Bovard Auditorian", 2000000, 10, 40, 10, "Assets/Bovard.jpg");
			
			Building kap = new Building("KAP", 200000, 20, 20, 20, "Assets/KAP.jpg");
		    Building rth = new Building("RTH", 300000, 20, 20, 20, "RTH.jpg");
		    Building miller = new Building("Miller's Office", 2147483647, 2147483647, 2147483647, 2147483647, "Assets/Miller.jpg");
		    Building bookstore = new Building("USC Bookstore", 700000, 10, 10, 40, "Assets/Bookstore.jpg");
		    Building tommyTrojan = new Building("Tommy Trojan", 1000000, 20, 20, 20, "Assets/TommyTrojan.jpg");
		    
		    Building parkside = new Building("Parkside", 3000000, 20, 20, 20, "Assets/Parkside.jpg");
		    Building sal = new Building("SAL", 10000000, 10, 10, 10, "Assets/SAL.jpg");
		    Building coliseum = new Building("Coliseum", 7000000, 0, 60, 0, "Assets/Coliseum.jpg");
		    Building tcc  = new Building("TCC", 3000000, 20, 20, 20, "Assets/TCC.jpg");
		    Building fertitta = new Building("Fertitta Hall", 2000000, 20, 10, 30, "Assets/Fertitta.jpg");
		    
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
			buildingList.add(rth);
			buildingList.add(miller);
			buildingList.add(bookstore);
			buildingList.add(tommyTrojan);
			
			buildingList.add(parkside);
			buildingList.add(sal);
			buildingList.add(coliseum);
			buildingList.add(tcc);
			buildingList.add(fertitta);	
		}
		
		
		public static void createSportsList(ArrayList<Sports> sportsList) {
			Sports football = new Sports("Football", 100000, 30, 10, 50, "");
			Sports w_soccer = new Sports("W Soccer", 50000, 20, 15, 20, "");
			Sports w_vball = new Sports("W Volleyball", 50000, 20, 10, 25, "");
			Sports m_vball = new Sports("M Volleyball", 30000, 30, 0, 20, "");
			Sports w_tennis = new Sports("W Tennis", 10000, 10, 15, 30, "");
			Sports m_tennis = new Sports("M Tennis", 10000, 10, 15, 30, "");
			
			sportsList.add(football);
			sportsList.add(w_soccer);
			sportsList.add(w_vball);
			sportsList.add(m_vball);
			sportsList.add(w_tennis);
			sportsList.add(m_tennis);
			
		}
		
		
		
		
}
