import datetime

def logged(f):
    def wrapper(*args, **kwargs):
        start = datetime.datetime.now()
        print(f'{f.__name__} started at {start}')
        f(*args, **kwargs)
        duration = datetime.datetime.now() - start
        print(f'{f.__name__} took {duration}')
    return wrapper

@logged
def say_hello(name):
    print('Helllllloooooooooooo, {name}')

say_hello('Alice')