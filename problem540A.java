// Online Java Compiler
// Use this editor to write, compile and run your Java code online
import java . util.*;
class HelloWorld {
    public static void main(String[] args) {
        String s,s1,s2;
        s2="YES";
        int i,t;
        Scanner sc=new Scanner (System.in);
        t=sc.nextInt();
        for(i=0;i<t;i++){
            s=sc.next();
            s1=s.toUpperCase();
            
            if(s1.equals(s2)){
                System.out.println("YES");
            }
                else{
                    System.out.println("NO");
                }
            }
        }
    
    }
