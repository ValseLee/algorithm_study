k = int(input())
arr = [int(input()) for _ in range(k)]
stack = []

for i in arr:
    if i != 0:
        stack.append(i)
    if i == 0:
        stack.pop()
        
print(sum(stack))