# a=int(input())
# b=int(input())


a , b = input().split()
a  = int(a)
b = int(b)

x=0
while a<=b:
    a=3*a
    b=2*b
    x+=1
print(x)