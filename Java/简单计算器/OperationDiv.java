
public class OperationDiv extends Operation{
	public double getResult() {
		double result = 0;
		if(getNumberB()==0) {
			System.out.println("������������Ϊ�㣡���������룡");	
		}
		else {
			result = getNumberA()/getNumberB();
		}
		return result;
	}
}
