public class ClientProgram {
	public static void main(String []args) {
		Monster monster1 = new Monster("小小怪",20);
		Monster monster2 = new Monster("小怪",50);
		Monster monster3 = new Monster("关主",200);
		Monster monster4 = new Monster("最终BOSS",1000);
		
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
