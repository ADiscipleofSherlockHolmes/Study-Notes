
public class IronSword implements AttackStrategy{
	public void AttackTarget(Monster monster) {
		monster.Notify(50);
	}
}
