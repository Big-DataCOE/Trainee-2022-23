import java.util.Scanner;

public class Codeforces {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int n=sc.nextInt();
        String[] NS =new String[n];
        for(int i=0;i<n;i++)
        {
            String S=sc.next();
            int l=S.length();
            if(l>10) {
                char start = S.charAt(0);
                char end = S.charAt(l - 1);
                int m = l - 2;
                NS[i] = start + Integer.toString(m) + end;

            }
            else
            {
                NS[i]=S;
            }
        }
        for(int j=0;j<n;j++)
            System.out.println(NS[j]);
    }
}
