a = int(input())
array = set(map(int, input().split()))
b = int(input())
target = list(map(int, input().split()))

for num in target:
    print(1) if num in array else print(0)