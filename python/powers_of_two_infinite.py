def powers_of_two(limit):
    value = 1
    while True:
        yield value
        value += value
