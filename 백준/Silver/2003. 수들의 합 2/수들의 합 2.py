n, m = map(int, input().split())
arr = list(map(int, input().split()))
left, right = 0, 1
cnt = 0

while True:
    if right > n or left > right:
        break

    tol = sum(arr[left: right])
    if tol == m:
        cnt += 1
        right += 1
    
    elif tol < m:
        right += 1
    
    else:
        left += 1

print(cnt)