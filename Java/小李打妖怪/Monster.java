
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
			System.out.println("�˹�������");
			return ;
		}
		this.HP -= loss;
		if(this.HP<=0) {
			System.out.println(this.name+"������");
		}
		else {
			System.out.println(this.name+"��ʧ"+loss+"HP");
		}
	}
}
