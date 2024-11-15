extends SceneTree

func _init():
    # 2D Vector (float)
    var vec1 = Vector2(2.0, 3.0)
    var vec2 = Vector2(7.3, 5.6)
    var vec3 = Vector2()
    vec3.x = 0.2
    vec3.y = 0.9
    # 2D Vector (int)
    var vec4 = Vector2i(2, 3)
    var vec5 = Vector2i(4, 7)
    vec5.y = 5.9
    var vec6 = Vector2i()
    # 3D Vector (float)
    var vec7 = Vector3(4.0, 2.0, 6.0)
    var vec8 = Vector3(20.0, 3.0, 0.0)
    # 3D Vector (int)
    var vec9 = Vector3i(4, 2, 6)
    var vec10 = Vector3i(20, 3, 0)

    #assert(vec1 == vec4) Invalid types.
    assert(vec1 == Vector2(vec4)) # Valid!
    assert(vec7 == Vector3(vec9)) # Valid!
    #assert(Vector3(vec1) == vec8) # Cannot cast Vector2 to Vector3.
    assert(vec3 == Vector2(0.2, 0.9))
    assert(vec6 == Vector2i(0, 0))
    assert(vec1 + vec2 == Vector2(9.3, 8.6))
    assert(vec1 - vec2 == Vector2(-5.3, -2.6))
    assert(vec5 == Vector2i(4, 5))
    assert(vec4 * vec5 == Vector2i(8, 15))
    assert((vec8 / vec7).is_equal_approx(Vector3(5.0, 1.5, 0.0)))
    assert(vec10[0] == 20)
    assert(-vec10 == Vector3i(-20, -3, 0))
    assert(vec9 < vec10)

    # If you use inequalities, GDScript will check X first, then Y (and then Z).
    assert(Vector2i(0, 100000) < Vector2i(1, 0)) 
    assert(Vector2i(1, 100000) > Vector2i(1, 0))

    quit()