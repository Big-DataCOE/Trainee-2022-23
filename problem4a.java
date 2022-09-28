import java .util.*;
class watermeleon{
    public static void main (String args[]){
        int n,a,b;
        Scanner sc=new Scanner(System.in);
        n=sc.nextInt();
        for(a=2;a<=n/2;a=a+2){
            b=n-b;
            if(b%2==0){
                System.out.println("YES");
            }
            else{
                System.out.println("NO");
            }
            
        }

        }

    }
}