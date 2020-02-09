public class First {
    public static void main(String[] args){

        char c = 'a';
        int num = 10;
        String str = "hello";
        System.out.println(c + num + str);//107hello
        System.out.println(c + str + num);//ahello10
        System.out.println("*	*");//*	*
        System.out.println('*' + '\t' + '*');//93
        System.out.println('*' + "\t" + '*');//*	*
        System.out.println('*' + '\t' + "*");//51*
        System.out.println('*' + ('\t' + "*"));//*	*
		
		String str = 3.5f+"";
        System.out.println(str);//"3.5"
        double d = Double.parseDouble(str);
        System.out.println(d);//3.5
    }
}