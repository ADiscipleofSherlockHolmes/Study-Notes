
public class Role {
	
	AttackStrategy weapon;
	
	public void getWeapon(AttackStrategy weapon) {
		this.weapon =  weapon;
	}
	public AttackStrategy getWeaopn(AttackStrategy weapon) {
		return this.weapon;
	}
	
	public void Attack(Monster monster) {
		this.weapon.AttackTarget(monster);
	}

}
