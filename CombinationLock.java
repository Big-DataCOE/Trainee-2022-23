import java.util.Scanner;

public class CombinationLock {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        int sum=0;
        String S1=sc.next();
        String S2=sc.next();
        for(int i=0;i<n;i++)
        {
            int a=S1.charAt(i)-'0';
            int b=S2.charAt(i)-'0';
            int c=Math.max(a-b,b-a);
            int d=10-c;
            sum+=Math.min(c,d);

        }
        System.out.println(sum);

    }
}
