x, y, w, h = map(int, input().split())
minX = 0
minY = 0

# (0,0) -> (w, h)
if abs(0 - x) >= abs(w - x):
    minX = abs(w - x)
else:
    minX = abs(0 - x)

if abs(0 - y) >= abs(h - y):
    minY = abs(h - y)
else:
    minY = abs(0 - y)

print(min(minX, minY))
