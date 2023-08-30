import threading, random, time

def print_letter(letter, times):
    for _ in range(times):
        if random.random() < 0.05:
            time.sleep(0.001)
        print(letter, end='')

# Create and start the threads
threads = []
threads.append(threading.Thread(target=print_letter, args=('A', 1000)))
threads.append(threading.Thread(target=print_letter, args=('B', 1000)))
threads.append(threading.Thread(target=print_letter, args=('C', 1000)))

for thread in threads:
    thread.start()

# Wait for all threads to finish
for thread in threads:
    thread.join()

print()  # Print a newline at the end
