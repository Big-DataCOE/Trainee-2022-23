import java.util.Scanner;

public class Yes {
    public static void main(String[] args) {
        Scanner sc=new Scanner(System.in);
        int t=sc.nextInt();
        for(int i=0;i<t;i++)
        {
            String str= sc.next();
            if(str.equalsIgnoreCase("YES"))
                System.out.println("YES");
            else
                System.out.println("NO");
        }
    }
}
