### 带标签的break和continue的使用
```java
public class Main {
    public static void main(String[] args){
        label:for(int i = 1;i <= 4;i++){
            for(int j = 1;j <= 10;j++){
                if(j % 4 == 0){
                    //break; //跳出包裹此关键字最近的一层循环
                    //continue;

                    //break label;//结束指定标识的一层循环结构
                    continue label;//结束指定标识的一层循环结构当次循环
                }
                System.out.print(j);
            }
        }
    }
}
```