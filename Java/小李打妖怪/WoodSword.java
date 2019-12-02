
public class WoodSword implements AttackStrategy{
	public void AttackTarget(Monster monster) {
		monster.Notify(20);
	}
}
