#dir fuction/ shows all in-build build fuction
print(dir(""))
print(dir([]))
print(dir(()))
print(dir({}))
print("")
print("")
#string funtion
str="covid19 has the two varieties of vaccines"
print(str)
print(str.capitalize())
print(str.upper())
print(str.islower())
print(str.isupper())
print(str.upper().isupper())
print(str.find("has"))
print(str[:8])
print(str.find("not there in str give -1"))
print("")
print("")
#tuple function
tpl=("python","java",".net")
print(tpl)
print(".".join(tpl))
print("@".join(tpl))
print("#".join(tpl))
print("")
print("")

#list function
lst=["devops","jenkins","aws","docker"]
print(lst)
lst.append("k8s")
print(lst)
lst.insert(2,"ansible")
print(lst)
lst.extend(["java","python","k8s"])
print(lst)
lst.pop()
print(lst)
lst.pop(6)
print(lst)
print("")
print("")


#dictionary functions
emp1={"Name":"jhon","tech":"blockchain","empid":1234}

print(emp1.keys())
print(emp1.values())
emp1.clear()
print(emp1)

print("thank you")

