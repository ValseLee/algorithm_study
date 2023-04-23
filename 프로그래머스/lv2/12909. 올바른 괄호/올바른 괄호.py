def solution(s):
    stack = []
    
    for parens in s:
        if parens == '(':
            stack.append(parens)
        else:
            if stack == []:
                return False
            else:
                stack.pop()
    
    return True if stack == [] else False