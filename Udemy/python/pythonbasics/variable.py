# varialbleassigenmments

v1 = "a1"
v2 = 3
v3 = 1.2

# printing varialbles
print(v1)
print(v2)
print(v3)

# multiple assignments
a = b = c = 3
print(a)
print(b)
print(c)

# multiple values assigned to multiple variables
w, x, y, z = True, "string", 3, 1.2

print("value of w:", w)
print("value of x:", x)
print("value of y:", y)
print("value of z:", z)

# type of varialble

print("type of w:", type(w))
print("type of x:", type(x))
print("type of y:", type(y))
print("type of z:", type(z))

string = "Devops"
integer = 1
floating = 1.2
boolean = True

# List/collection of multiple datatypes, enclosed in  square brackets/mutable
List = [string, integer, floating, boolean, 1, 2.3, False, "string2"]

# printing List
print(List)

# tuple/collection of multiple datatypes, enclosed in  square brackets/immutable
touple = (string, integer, floating, boolean, 1, 2.3, False, "string2")

# printing tuple
print(touple)

# set/collection of multiple datatypes, enclosed in  flower brackets/no common elements
first_set = {string, integer, floating, boolean, 1, 2.3, False, "string2", 1}

# printing set
print(first_set)

# dictionary/collection of multiple datatypes in key:value pair, enclosed in  flower brackets
dictionary = {"string": [string, "string2"], "int": (integer, 1), "float": {floating, 2.3},
              "boolean": [boolean, False, True]}

# printing dict
print(dictionary)

# type of variables
print("type of List ", type(List))
print("type of tuple", type(touple))
print("type of dictionary", type(dictionary))
print("type of set", type(first_set))
