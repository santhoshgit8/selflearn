import random


def time_activity(*args,**kwargs):
    print(args)
    print(kwargs)
    min=sum(args)+random.randint(0,50)
    choice=random.choice(list(kwargs.keys()))
    print(f"you can have {min} minutes for {kwargs[choice]}")
def vaccine(vaccine,value):
    print(f"{vaccine} has value{value}")
    if value>50 and value<75:
        print("need some trials")
    elif value>=75:
        print("good to go")
    else:
        print("needs more trials")