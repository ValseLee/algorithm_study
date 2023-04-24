def solution(priorities, location):
    queue = [(v, idx) for idx, v in enumerate(priorities)]
    answer = 0
    
    while True:
        if queue[0][0] == max(queue)[0]:
            answer += 1
            if queue[0][1] == location:
                break
            queue.pop(0)
        else:
            queue.append(queue.pop(0))
            
    return answer