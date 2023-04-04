import  time
#for loop is for sequencing
str="employee"
for  i in str:
    print(f"the value of i is {i}")

#while loop is excueted based on condition
print("")
print("while loop")
print("")
a=5
while a<=10:
    time.sleep(2)
    print(f'the value of a is {a}')
    print("looping")
    a+=3

#for loop with list and tuple
print("")
print("for loop with list and tuple")
print("")
l_list=["devops","python","java","k8s","docker"]
for skill in l_list:
    print(f"i would like to learn {skill}")
print("thank you list ends")
print("")


l_tuple=("devops","python","java","k8s","docker")
for skills in l_list:
    print(f"i would like to learn {skills}")
print("thank you")

