import java.util.Scanner;
public class check
{
  public static void main(String[] args)
  { 
    Scanner sc=new Scanner(System.in);
    int t=sc.nextInt();
    for(int i=1;i<=t;i++)
    {
      String s=sc.next();
      char c1=s.charAt(0);
       char c2=s.charAt(1);
        char c3=s.charAt(2);

        if((c1=='Y'||c1=='y')&&(c2=='e'||c2=='E')&&(c3=='s'||c3=='S'))
       
        System.out.println("YES");
        else
        System.out.println("NO");
    }
}
}