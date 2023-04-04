#break   skips all statement and not excute rest statements  after condition becomes true
import  random
vaccine=["moderna","covaccine","covishield","sputinik","suptink"]
random.shuffle(vaccine)
lucky=random.choice(vaccine)

for vac in vaccine:
    print("#########################")
    if vac == lucky:
        print(f"{vac} is lucky vaccine")
        print("++++++++++++++++++++++")
        break
    print(f"{vac} is not lucky")
    print("*************************")
