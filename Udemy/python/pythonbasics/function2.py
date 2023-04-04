#varialble length argument *args & **kwargs
import random


def time_activity(*args,**kwargs):
    print(args)
    print(kwargs)
    min=sum(args)+random.randint(0,50)
    choice=random.choice(list(kwargs.keys()))
    print(f"you can have {min} minutes for {kwargs[choice]}")

time_activity(10,20,30,hobby="music",learn="dance",work="Devops")
