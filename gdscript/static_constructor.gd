extends SceneTree

class Pythagoras:
    
    var two = 2
    static var three = 3
    static var answer

    static func get_four():
        return 4

    func get_five():
        return 5

    # _static_init must contain no arguments
    static func _static_init():
        # Error thrown if fetching non-static variables or functions.
        # var error = two
        # var error = get_five()
        answer = sqrt(three ** 2 + get_four() ** 2)


func _init():
    var equation = Pythagoras.new()
    assert(equation.answer == 5)
    quit()