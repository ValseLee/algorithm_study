arr = []
for i in range(9):
    arr.append(int(input()))
    
for i in arr:
    for j in arr:
        if sum(arr) - i - j == 100 and i != j:
            arr.remove(i)
            arr.remove(j)
arr.sort()            

for i in arr:
    print(i)
