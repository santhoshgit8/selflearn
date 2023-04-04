#continue  only skips one statement and excute rest statements  after condition becomes true
import  random
vaccine=["moderna","covaccine","covishield","sputinik","suptink"]
random.shuffle(vaccine)
lucky=random.choice(vaccine)

for vac in vaccine:
    print("#########################")
    if vac == lucky:
        print(f"{vac} is lucky vaccine")
        print("++++++++++++++++++++++")
        continue
    print(f"{vac} is not lucky")
    print("*************************")