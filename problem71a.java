public class Main {
    public static void main(String args[]){
        int t,l,n;
        String s;
        Scanner sc=new Scanner (System.in);
        t=sc.nextInt();
        
        for(i=0;i<t;i++){
            s=sc.next();
            l=s.length();
            n=l-2;
            if(l>=10){
                System.out.println(charAt(0)+n+charAt(n-1));
            }
            else{
                System.out.println(s);
            }
        }

    }
    
}
