var q1 = Quaternion(1.0, 2.0, 3.0, 4.0)
var q2 = Quaternion()	# Quaternion(0, 0, 0, 1)
var q3 = q1.inverse()   # Quaternion(-1, -2, -3, 4)
var q4 = Quaternion(5.0, 2.0, 8.0, 9.0)
var q5 = q1 + q4        # Quaternion(6, 4, 11, 13)
var q6 = q1 * q4        # Quaternion(39, 33, 51, 3)

print(q5 == Quaternion(6, 4, 11, 13))   # true
print(q2 == q5)     # false
print(q3)           # (-1, -2, -3, 4)
print(q6)           # (39, 33, 51, 3)