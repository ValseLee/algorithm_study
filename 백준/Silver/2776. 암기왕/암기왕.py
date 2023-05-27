def binary(arr, target):
    start, end = 0, len(arr) - 1
    while start <= end:
        # 몫으로 받아야 하더라
        mid = (start + end) // 2
        
        if arr[mid] == target:
            return 1
        elif arr[mid] < target:
            start = mid + 1
        else:
            end = mid - 1
    return 0

for _ in range(int(input())):
    # 배열의 count
    n = int(input())
    # 수첩1
    targetArr = sorted(list(map(int, input().split())))
    
    m = int(input())
    # 수첩2
    arr = list(map(int, input().split()))
    
    for num in arr:
        print(binary(targetArr, num))
    
