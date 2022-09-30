import java.util.Scanner;
 
public class Maxe {
 
public static void main(String args[]) 
{      
    Scanner sc=new Scanner(System.in);
     int n=sc.nextInt();
    int i,r,sum=0;
    String s=sc.next();
    String s1=sc.next();
    for(i=0;i<s.length();i++)
    {
        char c=s.charAt(i);
        char c1=s1.charAt(i);
        r=(c-c1);
 
 
        if(r<0)
       r=r*(-1);
        if(r>5)
        {
            r=10-r;
        } 
        
        sum=sum+r;
 
}  System.out.println(sum); 
    }    
 
 
 
}