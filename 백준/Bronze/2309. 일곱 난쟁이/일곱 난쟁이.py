arr = [int(input()) for _ in range(9)]

for i in arr:
    for j in arr:
        if sum(arr) - i - j == 100 and i != j:
            arr.remove(i)
            arr.remove(j)

arr.sort()            

for i in arr:
    print(i)
