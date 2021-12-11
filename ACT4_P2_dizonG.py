mylistahan=[]
def push(mylistahan,stacks):
    mylistahan.insert(len(mylistahan),int(input("Enter item to push: ")))
    display(mylistahan)

def pop(mylistahan):
    mylistahan.pop()
    if len(mylistahan)!=0:
        display(mylistahan)
    else:
        print("EMPTY ")
def peek(mylistahan):
    print("TOP\t: ",len(mylistahan)-1)
    print("COUNT\t: ",len(mylistahan))
    print("ITEM\t: ", mylistahan[-1])

def half(mylistahan):
    print("\t[h]\thalf\n\t[t]\ttop-bottom")
    enter=input("Enter choice: ")
    if enter.lower()=="h":
        hati=int(input("enter count stacks: "))
        one=mylistahan[0:hati]
        two=mylistahan[hati:len(mylistahan)]
        hati1=len(mylistahan)
        a=len(mylistahan)
        bawas=0
        print("INDEX: ")
        for i in range(len(two),0,-1):
            a-=1
            bawas-=1
            hati1-=1
            print(a,"\t= ",two[bawas])
        print("\nTOP = ",len(two)-1)
        print("*"*50)
        
        a=len(two)
        bawas=0
        print("INDEX: ")
        for i in range(len(one),0,-1):
            a=a-1
            bawas-=1
            print(a,"\t= ",one[bawas])
    
        print("\nTOP = ",len(one)-1)
        
    if enter.lower()=="t":
        
        hati=int(input("enter count stacks: "))
        one=mylistahan[0:hati]
        two=mylistahan[hati:len(mylistahan)]
        
        z=len(two)
        bawas=0
        x=len(two)
        print("INDEX: ")
        
        for i in ((two)):
            x-=1
            print(x,"\t= ",i)
        print("\nTOP = ",len(two)-1)
        print("*"*50)
        
        a=len(two)
        bawas=0
        print("INDEX: ")
        for i in range(len(one),0,-1):
            a=a-1
            bawas-=1
            print(a,"\t= ",one[bawas])        
        
    
def display(mylistahan):
    a=len (mylistahan)
    bawas=0
    print("INDEX: ")
    for i in range(len(mylistahan),0,-1):
        a=a-1
        bawas-=1
        print(a,"\t= ",mylistahan[bawas])
    
    print("\nTOP = ",len(mylistahan)-1)
    
while True:        
    try:    
        stacks = int(input("Enter number of stacks: "))
        while True:
            print("\n[a]\tPush Item\n[b]\tPop Item\n[c]\tPeek\n[d]\tShare\n[e]\texit")
            ask = input("Enter choice: ")
            try:
                if ask.lower()=="a":
                    if stacks-1>=len(mylistahan):
                        push(mylistahan,stacks)
                    else:
                        print("\nFULL\n")
                elif ask.lower()=="b":
                    if len(mylistahan)!=0:
                        yes=input("are you sure you want to pop an item?[Y/N]: ") 
                        if yes.lower()=="y":
                            pop(mylistahan)
                        else:
                            print("returning...")
                    else:
                        print("\nEMPTY\n")
                elif ask.lower()=="c":
                    if len(mylistahan)!=0:
                        peek(mylistahan)
                    else:
                        print("\nEMPTY\n")

                        
                elif ask.lower()=="d":
                    half(mylistahan)
                    
                    

                    

                elif ask.lower()=="e":
                    exit()
                else:
                    print("INVALID INPUT")
            except:
                print("ERROR...")
    except:
        print("INVALID")
            
