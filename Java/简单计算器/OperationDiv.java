
public class OperationDiv extends Operation{
	public double getResult() {
		double result = 0;
		if(getNumberB()==0) {
			System.out.println("被除数不可以为零！请重新输入！");	
		}
		else {
			result = getNumberA()/getNumberB();
		}
		return result;
	}
}
