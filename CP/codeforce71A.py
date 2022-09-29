n=int(input())
for i in range (0,n):
    word = str(input())
    l=len(word)
    if(l<=10):
        print(word)
    else:
        print(f"{word[0]}{len(word)-2}{word[-1]}")