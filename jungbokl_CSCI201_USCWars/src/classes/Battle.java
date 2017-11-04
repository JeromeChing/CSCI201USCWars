package classes;

public class Battle {

	public static int runBattle(int c1, int c2)
	//choices: 0=rock, 1=paper, 2=scissors, -1=none;
	//1: p1 win, 2: p2 win, 0: tie, 3: p1 win by default, 4: p2 win by default
	{
		if(c1 == -1 || c2 == -1)
		{
			if(c1 == -1 && c2 == -1)
			{return 0;} //no choices, tie.
			else return (c1 == -1) ? 4 : 3;
			//p2 wins if c1 choice invalid, p1 wins otherwise.
		}
		if(c1 == c2) //tie
		{
			return 0;
		}
		else if(((c1+1) % 3) == c2) //p1 wins
		{
			return 1;
		}
		else //lose
		{
			return 2;
		}
	}
}
