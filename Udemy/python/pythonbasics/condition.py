a=20

if a>21:
    print("a is greater")
elif a<21:
    print("a is smaller")
else:
    print("a is equal")

print("")
print("")
print("______________________________________________________")


print("we have variety of skills in our organization")
print("you can found your skill")
usr_skill=input("enter your skill in captilized:")

Devops=("jenkins","ansible","puppet","kubernetes","docker")
Devlopment=["java","python","c",".net"]
emp1={"Name":"jhon","tech":"blockchain","empid":1234}
emp2={"Name":"james","tech":"AI","empid":1224}

if usr_skill in Devops:
    print("hurray its there in devops")
elif usr_skill in Devlopment:
    print("hurray its there in Devlopment")
elif usr_skill in emp1.values() or usr_skill in emp2.values():
    print(f"hurray we have employes with {usr_skill}")
else:
    print("no skill found check your letter must be in captilized")
print("Thank you")
