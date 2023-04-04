# slicing
# slicing a string
print("slicing string")
s = "slicing of string"

print(s[0])
print(s[1])
print(s[2])
# reverse
print(s[-1])
print(s[-2])
print(s[-3])

print(s)
print(s[:])
print(s[:-1])
print(s[9:11])

# slicing tuple
print("slicing tuple")
s_tuple = (["devops", "ansible", "jenkins"], {1, 1, 2}, ("python", "java", "c"))

print(s_tuple[0])
print(s_tuple[-1])
print(s_tuple[-1][1][1:])

# slicing List
print("slicing list")
s_list = [["devops", "ansible", "jenkins"], {1, 1, 2}, ("python", "java", "c")]

print(s_list[0])
print(s_list[-1])
print(s_list[-1][1][1:])

# Examples of dictionary
print("slicing dict")

s_dict = {"list": ["devops", "ansible", "jenkins"], "set": {1, 1, 2}, "tuple": ("python", "java", "c")}

print(s_dict["list"][:])
print(s_dict["tuple"][1][1:])
