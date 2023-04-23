def solution(arr):
    answer = []
    tmp = -1
    for num in arr:
        if num != tmp:
            answer.append(num)
        tmp = num
        
    return answer