def solution(citations):
    arr = sorted(citations)
    for idx, h in enumerate(arr):
        if h >= len(arr) - idx:
            return len(arr) - idx
        
    return 0
        
#     첫 시도 멸망
#     answer = 0
#     arr = sorted(citations)
#     idxs = []
    
#     # print(arr)
#     for idx in range(0,len(arr)):
#         h = arr[idx]
#         if h <= len(arr[idx:]) and len(arr[:idx-1]) <= h:
#             # print(len(arr[idx:]), len(arr[:idx-1]), idx)
#             idxs.append(h)
        
#     # print(idxs)
#     return max(idxs)

