import datetime

def logged(f):
    def wrapper(*args, **kwargs):
        start = datetime.datetime.now()
        print('{} started at {}'.format(f.__name__, str(start)))
        f(*args, **kwargs)
        duration = datetime.datetime.now() - start
        print('{} took {}'.format(f.__name__, duration))
    return wrapper

@logged
def say_hello(name):
    print('Helllllloooooooooooo, {}'.format(name))

say_hello('Alice')