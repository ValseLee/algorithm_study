# N=6, H = {10, 3, 7, 4, 12, 2}
import sys

N = int(sys.stdin.readline())
li = [int(sys.stdin.readline()) for _ in range(N)]
stack, res = [], 0
for i in range(N):
    while stack != [] and stack[-1] <= li[i]:
        stack.pop()
    stack.append(li[i])
    res += len(stack)-1
print(res)