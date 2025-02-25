import string

class Player 
    var name, team, avg

    def init(name, team, avg)
        self.name = name
        self.team = team
        self.avg = avg
    end

    def <(other)
        return self.avg < other.avg
    end

    def >(other)
        return self.avg > other.avg
    end

    def tostring()
        return string.format("%-22s%-4s%8.2f", self.name, self.team, self.avg)
    end
end

class Empty end

class Node
    var val, left, right

    def init(val, left, right)
        self.val = val
        self.left = left ? left : Empty()
        self.right = right ? right : Empty()
    end

    def insert(val)
        if (self.val < val)
            return Node(self.val, self.left, self.right.insert(val))
        elif (self.val > val)
            return Node(self.val, self.left.insert(val), self.right)
        else
            return Node(self.val)
        end
    end

    def getTopTen()
        return self.getList()
    end

    def getList()
        return self.left.getList() + [self.val] + self.right.getList()
    end
end

class Empty 
    def insert(val)
        return Node(val)
    end

    def getList()
        return []
    end
end

players = Empty()
data = _argv
data.remove(0)
for line: data
    player = string.split(line, ",")
    team = player[0]
    name = player[1]
    games = number(player[2]) * 1.0
    points = number(player[3]) * 1.0
    if (games >= 15)
        players = players.insert(Player(name, team, points / games))
    end
end
top_ten = players.getTopTen()
top_ten.reverse().resize(10)
for player: top_ten
    print(player)
end



