def solution(board, k):
    answer = 0
    y = 0
    x = 0
    
    for y in range(0, len(board)):
        for x in range(0, len(board[y])):
            if x + y <= k:
                answer += board[y][x]
        
    return answer