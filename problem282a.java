import java .util.*;
public class extract{
    public static void main(String args[]){
        int i,t,x=0;
        string s;
        Scanner sc=new Scanner(System.in);
        t=sc.nextInt();
        for(i=0;i<t;i++){
            s=sc.nextLine();
            if(s="++x"||s="x++"){
                x=x+1;
            }
            else if(s="--x"||s="x--"){
                x=x-1;
            }


        }
        System.out.println(x);

    }
}