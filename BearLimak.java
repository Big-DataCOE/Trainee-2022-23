package CP;

import java.util.Scanner;
//Problem 791A
public class BearLimak {
    public static void main(String[] args) {
        Scanner scanner=new Scanner(System.in);
        int a=scanner.nextInt();
        int b=scanner.nextInt();
        int count=0;
        while (b>=a){
            a=a*3;
            b=b*2;
            count++;
        }
        System.out.println(count);
    }
}
