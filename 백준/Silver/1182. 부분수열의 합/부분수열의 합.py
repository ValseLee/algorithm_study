from itertools import combinations

a, b = map(int, input().split())
arr = list(map(int, input().split()))
answer = 0

for i in range(1, a + 1):
    for k in list(combinations(arr, i)):
        if sum(k) == b:
            answer += 1

print(answer)