w=int(input())
p=0
q=0
while w!=1:
    w-=1
    p+=1
    if(w%2==0 and p%2==0):
        q+=1
        break
    else:
        q=q
if(q!=0):
    print("YES")
else:
    print("NO")