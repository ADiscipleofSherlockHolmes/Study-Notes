
public class Monster {
	private int HP;
	private String name;
	Monster(String name,int HP){
		this.HP = HP;
		this.name = name;
	}
	public void setHP(int HP){
		this.HP = HP;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHP() {
		return this.HP;
	}
	public String getName() {
		return this.name;
	}
	public void Notify(int loss) {
		if(this.HP<=0) {
			System.out.println("此怪物已死");
			return ;
		}
		this.HP -= loss;
		if(this.HP<=0) {
			System.out.println(this.name+"被打死");
		}
		else {
			System.out.println(this.name+"损失"+loss+"HP");
		}
	}
}
