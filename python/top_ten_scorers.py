import sys
from heapq import nlargest
from operator import itemgetter

players = []

for line in sys.stdin:
    team, name, games, points = line.strip().split(',')
    if int(games) >= 15:
        players.append((name, team, int(points)/int(games)))

for name, team, ppg in nlargest(10, players, key=itemgetter(2)):
    print(f'{name:22}{team:4}{ppg:8.2f}')
