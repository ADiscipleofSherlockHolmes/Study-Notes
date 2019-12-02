
public class MagicSword extends AttackStrategy{
	
	public void AttackTarget(Monster monster) {
		double number = Math.random();
		int loss = (number < 0.5)?100:200;
		if(loss==200) {
			System.out.println("³öÏÖ±©»÷£¡£¡£¡");
		}
		monster.Notify(loss);
	}
}
