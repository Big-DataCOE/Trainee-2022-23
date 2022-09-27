java.util.*;

public static void main String (args[]){
int x,y,n;
n=0;
Scanner sc=new Scanner(System.in);
int x=sc.nextInt();
int y=sc.nextInt();
while (x<y){
    x=3*x;
    y=2*y;
    n++;
}
System.out.println("Number of years="+n);
}