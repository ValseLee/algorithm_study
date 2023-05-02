# e <= 15
# s <= 28
# m <= 19

e, s, m = 1, 1, 1
targetE, targetS, targetM = map(int, input().split())
current = 1

while True:
    if targetS == s and targetE == e and targetM == m:
        break

    current += 1
    e += 1
    s += 1
    m += 1

    if e > 15:
        e = 1
    
    if s > 28:
        s = 1
    
    if m > 19:
        m = 1

print(current)