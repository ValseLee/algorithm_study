def solution(array, commands):
    answer = []
    for each in commands:
        answer.append(sorted(array[each[0]-1:each[1]])[each[2]-1])
    return answer