try:
    print(x)
except NameError as e:
    print('NameError raised as expected')

x = "I'm global"

def problem():
    print(x)         # Local but not bound yet
    x = "I'm Local"

try:
    problem()
except UnboundLocalError as e:
    print('UnboundLocalError raised as expected')
