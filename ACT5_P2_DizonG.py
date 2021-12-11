import collections 
mylist=collections.deque([])
def app(mylist,De):
    mylist.append(int(input("Enter item to append: ")))
    display(mylist)
def appleft(mylist,De):
    mylist.appendleft(int(input("Enter item to append: ")))
    display(mylist)    

def pop(mylist):
    mylist.pop()
    if len(mylist)!=0:
        display(mylist)
    else:
        print("EMPTY ")
def popleft(mylist):
    mylist.popleft()
    if len(mylist)!=0:
        display(mylist)
    else:
        print("EMPTY ")
       
def display(mylist):
    print(mylist)
   
        
       
        

    
while True:        
    try:    
        De = int(input("Enter number of Dequeue: "))
        while True:
            print("\n[a]\tAppend Item\n[b]\tAppend Left Item\n[c]\tPop\n[d]\tPop Left\n[e]\texit")
            choice = input("Enter choice: ")
            try:
                if choice.lower()=="a":
                    if De-1>=len(mylist):
                        app(mylist,De)
                    else:
                        print("\nOVERFLOW\n")
                elif choice.lower()=="b":
                    if De-1>=len(mylist):
                        appleft(mylist,De)
                    else:
                        print("\nOVERFLOW\n")        
                elif choice.lower()=="c":
                    if len(mylist)!=0:
                        choice =input("are you sure you want to pop an item?[Y/N]: ") 
                        if choice.lower()=="y":
                            pop(mylist)
                        else:
                            print("Returning...")
                    else:
                        print("\nEMPTY!UNDERFLOW\n")
                        
                elif choice.lower()=="d":
                    if len(mylist)!=0:
                        choice=input("are you sure you want to pop left an item?[Y/N]: ") 
                        if choice.lower()=="y":
                            popleft(mylist)
                        else:
                            print("Returning...")
                    else:
                        print("\nEMPTY!UNDERFLOW\n")
   
                elif choice.lower()=="e":
                    exit()
                else:
                    print("INVALID INPUT")
            except:
                print(" ")
    except:
        print("INVALID INPUT")
            
