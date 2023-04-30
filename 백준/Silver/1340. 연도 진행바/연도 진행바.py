month, day, year, time = input().split()
day = int(day.replace(',', ''))
year = int(year)
hour = int(time.split(':')[0])
minute = int(time.split(':')[1])

monthNames = [
    "January" , "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ]
monthDays = [
    31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
]

if year % 400 == 0 or (year % 4 == 0 and year % 100 != 0):
    monthDays[1] += 1

tol = sum(monthDays) * 24 * 60

beforeThisMonthIndex = monthNames.index(month)
current = (sum(monthDays[:beforeThisMonthIndex]) + day - 1) * 24 * 60 + hour * 60 + minute
print(current / tol * 100)