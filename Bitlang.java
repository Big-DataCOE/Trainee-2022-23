package CP;

import java.util.Scanner;
//Problem 282A
public class Bitlang {
    public static void main(String[] args) {
        Scanner scanner= new Scanner(System.in);
        int x=0;
        int n=scanner.nextInt();//no of testcases
        for (int i = 0; i < n; i++) {
            String s= scanner.next();
            if (s.toCharArray()[1]=='+'){
                x+=1;

            }
            else {
                x-=1;
            }

        }
        System.out.println(x);
    }
}
