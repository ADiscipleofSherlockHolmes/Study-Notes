public class ClientProgram {
	public static void main(String []args) {
		Monster monster1 = new Monster("СС��",20);
		Monster monster2 = new Monster("С��",50);
		Monster monster3 = new Monster("����",200);
		Monster monster4 = new Monster("����BOSS",1000);
		
		Role role = new Role();
		
		role.weapon = new WoodSword();
		role.Attack(monster1);
		
		role.weapon = new IronSword();
		role.Attack(monster2);
		role.Attack(monster3);
		
		role.weapon = new MagicSword();
		role.Attack(monster3);
		role.Attack(monster4);
		role.Attack(monster4);
		role.Attack(monster4);
		role.Attack(monster4);
		role.Attack(monster4);
		
	}
}
