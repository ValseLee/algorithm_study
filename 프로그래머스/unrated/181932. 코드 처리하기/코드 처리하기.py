def solution(code):
    # 글자수만큼 반복
    ret = ""
    mode = 0
    for i in range(len(code)):
        if mode == 0 and code[i] != '1' and i % 2 == 0:
            ret += code[i]
        elif mode == 0 and code[i] == '1':
            mode = 1
        elif mode == 1 and code[i] != '1' and i % 2 != 0:
            ret += code[i]
        elif mode == 1 and code[i] == '1':
            mode = 0
            
    return ret if ret != "" else 'EMPTY'