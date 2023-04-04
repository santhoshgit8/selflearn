# Arthmetic operators

a = 2
b = 5
print("arthimetic:")
print("")
add = a + b
print(add)

sub = a - b
print(sub)

multi = a * b
print(multi)

div = a / b
print(div)

rem = a % b
print(rem)

expo = b ** a
print(expo)

# Comparison operator
print("")
print("comparision")
print(a > b)
print(a < b)
print(a == b)
print(a >= b)
print(a <= b)
print(a != b)

# Assignment operator
print("")
print("assignment")
a += b
print(a)
a -= b
print(a)

# logical operators
print("")
print("logical")
print("")
print((a > b) and (a < b))
print((a > b) or (a < b))

# Membership operator
print("")
print("Membership")
s_list = [["devops", "ansible", "jenkins"], {1, 1, 2}, ("python", "java", "c")]
print("devops" in s_list)
print("devops" not in s_list)
print(("python", "java", "c") in s_list)
print(("python", "java", "c") not in s_list)

# Identity operator
print("")
print("Identity operator")
c = 5
print(c is a)
print(c is b)
print(c is not a)
print(c is not b)
