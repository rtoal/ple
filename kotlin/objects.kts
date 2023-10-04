object Boundary {
    var radius = 1.0
    var area: Double
        get() = Math.PI * radius * radius
        set(value) {
            radius = Math.sqrt(value / Math.PI)
        }
    fun draw() = "I can't draw yet"
}

assert(Boundary.radius == 1.0)
Boundary.radius = 2.0
assert(Boundary.area == 4 * Math.PI)
Boundary.area = 64.0 * Math.PI
assert(Boundary.radius == 8.0)
assert(Boundary.draw() == "I can't draw yet")
