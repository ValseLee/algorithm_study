def solution(l, r):
    answer = []
    for num in range(l, r + 1):
        # 숫자는 5 또는 0 으로만 이루어져야 한다.
        if num % 5 == 0:
            if str(num).find('1') == -1 and str(num).find('2') == -1 and str(num).find('3') == -1 and str(num).find('4') == -1 and str(num).find('6') == -1 and str(num).find('7') == -1 and str(num).find('8') == -1 and str(num).find('9') == -1:
                answer.append(num)
    return answer if answer != [] else [-1]