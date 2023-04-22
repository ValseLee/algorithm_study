def solution(arr, query):
    s, e = 0, len(arr)
    for queryNums in range(len(query)):
        if queryNums % 2 == 0: # 우
            e = s + query[queryNums]
        elif queryNums % 2 != 0: # 좌
            s += query[queryNums]

    # 빈 배열이면 [-1]
    return arr[s:e] if arr[s:e] != [] else [-1]