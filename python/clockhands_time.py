import time
for i in range(0, 11):
    print(time.strftime('%I:%M:%S', time.gmtime((43200 * i + 21600) // 11)))