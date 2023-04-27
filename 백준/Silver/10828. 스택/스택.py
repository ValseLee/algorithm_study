stack = []
k = int(input())
arr = [input() for _ in range(k)]

for i in arr:
    com = i.split(' ')
    if com[0]=='push':
        stack.append(com[1])
    elif com[0]=='pop':
        if len(stack)==0:
            print(-1)
        else:
            print(stack.pop())
    elif com[0] == 'size':
        print(len(stack))
    elif com[0] == 'empty':
        if len(stack) == 0:
            print(1)
        else:
            print(0)
    elif com[0] == 'top':
        if len(stack) == 0:
            print(-1)
        else:
            print(stack[-1])    
        
