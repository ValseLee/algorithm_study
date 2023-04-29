arr = [i for i in range(0,10001)]
tmp = []

for i in arr:
    # 생성자 확인하기
    selfNum = i + sum(map(int, str(i)))
    # 생성자가 없으면 나중에 지우기
    if selfNum <= 10000:
        tmp.append(selfNum)

answer = set(arr) - set(tmp)
for num in sorted(list(answer)):
    print(num)