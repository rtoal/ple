class OneTwoThree:
    def __iter__(self):
        value = 0
        class OneTwoThreeIterator:
            def __next__(self):
                nonlocal value
                value += 1
                if value > 3:
                    raise StopIteration()
                return value
        return OneTwoThreeIterator()

for i in OneTwoThree():
    print(i)
