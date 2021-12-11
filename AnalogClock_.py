#Dizon Gabriel S. CS-301

from tkinter import * 
import time
import datetime




root = Tk()
myC = Canvas(root)

root.title('Analog Clock')
root.geometry('400x300')
myC = Canvas(root, height=300, width=400, bg = "gray")
def create_circle(x, y, r, Circles):
    x0 = x - r
    y0 = y - r
    x1 = x + r
    y1 = y + r
    
    return Circles.create_oval(x0, y0, x1, y1)
    
def Time():
    myC.pack()
    create_circle(200, 150, 100, myC)
    create_circle(200, 150, 75, myC)
    create_circle(200, 150, 40, myC)
    #DISPLAYCLOCKnums
    Time_q1 = myC.create_line(200,75,200,50,width = 2 , fill = "white")
    Time_q2 = myC.create_line(275,150,300,150,width = 2 , fill = "white")
    Time_q3 = myC.create_line(200,225,200,250,width = 2 , fill = "white")
    Time_q4 = myC.create_line(125,150,100,150,width = 2 , fill = "white")
    #between
    T_1 = myC.create_line(240,85,253,65,width = 2 , fill = "white")
    T_2 = myC.create_line(267,112,287,100,width = 2 , fill = "white")
    T_3 = myC.create_line(267,189,287,200,width = 2 , fill = "white")
    T_4 = myC.create_line(240,215,253,235,width = 2 , fill = "white")
    T_5 = myC.create_line(160,215,147,235,width = 2 , fill = "white")
    T_6 = myC.create_line(135,189,115,200,width = 2 , fill = "white")
    T_7 = myC.create_line(135,111,115,100,width = 2 , fill = "white")
    T_8 = myC.create_line(160,85,147,65,width = 2 , fill = "white")

    #hours
    #quarters
    H_12 = myC.create_line(200,150,200,75,width = 2 , fill = "Light Green")
    H_3 = myC.create_line(200,150,275,150,width = 2 , fill = "Light Green")
    H_6 = myC.create_line(200,150,200,225,width = 2 , fill = "Light Green")
    H_9 = myC.create_line(200,150,125,150,width = 2 , fill = "Light Green")
    
    x = time.strftime('%H')
    y = time.strftime('%M')
    z = time.strftime('%S')
    

    x = int(x)
    y = int(y)
    z = int(z)
    if x > 12:
        x = x-12
        hours_display(x)
        min_display(y)
        sec_display(z)
    else:
        hours_display(x)
        min_display(y)
        sec_display(z)


#whole

def hours_display(hourx):
    
    if hourx == 1:
        one = myC.create_line(200,150,222,115,width = 3 , fill = "Black")
        display()
    elif hourx == 2:
        two = myC.create_line(200,150,235,130,width = 3 , fill = "Black")
        display()
    elif hourx == 3:    
        three = myC.create_line(200,150,240,150,width = 3 , fill = "Black")
        display()
    elif hourx == 4:
        four = myC.create_line(200,150,235,170,width = 3 , fill = "Black")
        display()
    elif hourx == 5:
        five = myC.create_line(200,150,222,185,width = 3 , fill = "Black")
        display()
    elif hourx == 6:
        six = myC.create_line(200,150,200,190,width = 3 , fill = "Black")
        display()
    elif hourx == 7:
        seven =  myC.create_line(200,150,180,185,width = 3 , fill = "Black")
        display()
    elif hourx == 8:
        eight =  myC.create_line(200,150,165,170,width = 3 , fill = "Black")
        display()
    elif hourx == 9:
        nine = myC.create_line(200,150,160,150,width = 3 , fill = "Black")
        display()
    elif hourx == 10:
        ten =  myC.create_line(200,150,165,130,width = 3 , fill = "Black")
        display()
    elif hourx == 11:
        ele =  myC.create_line(200,150,180,115,width = 3 , fill = "Black")
        display()
    elif hourx == 12:
        twe =  myC.create_line(200,150,200,110,width = 3 , fill = "Black")
        display()


def min_display(minx):
    #by5minutes
    if minx == 0:
        m0  = myC.create_line(200,150,200,75,width  = 3 , fill = "Black")
        display()
    elif minx == 5:
        m5  = myC.create_line(200,150,240,85,width = 3 , fill = "Black")
        display()
    elif minx == 10:
        m10 = myC.create_line(200,150,267,112,width = 3 , fill = "Black")
        display()
    elif minx == 15:
        m15 = myC.create_line(200,150,275,150,width = 3 , fill = "Black")
        display()
    elif minx == 20:
        m20 = myC.create_line(200,150,267,189,width = 3 , fill = "Black")
        display()
    elif minx == 25:
        m25 = myC.create_line(200,150,240,215,width = 3 , fill = "Black")
        display()
    elif minx == 30:
        m30 = myC.create_line(200,150,200,225,width = 3 , fill = "Black")
        display()
    elif minx == 35:
        m35 = myC.create_line(200,150,160,215,width = 3 , fill = "Black")
        display()
    elif minx == 40:
        m40 = myC.create_line(200,150,135,189,width = 3 , fill = "Black")
        display()
    elif minx == 45:
        m45 = myC.create_line(200,150,125,150,width = 3 , fill = "Black")
        display()
    elif minx == 50:
        m50 = myC.create_line(200,150,135,111,width = 3 , fill = "Black")
        display()
    elif minx == 55:
        m55 = myC.create_line(200,150,160,85,width  = 3 , fill = "Black")
        display()

    #minsby1
    elif minx == 1:
        m1 =  myC.create_line(200,150,208,76,width  = 3  , fill = "Black")
        display()
    elif minx == 2:
        m2 =  myC.create_line(200,150,218,77,width  = 3 , fill = "Black")
        display()
    elif minx == 3:
        m3 =  myC.create_line(200,150,227,79,width  = 3 , fill = "Black")
        display()
    elif minx == 4:
        m4 =  myC.create_line(200,150,234,82,width  = 3 , fill = "Black")
        display()
        
    elif minx == 6:
        m6 = myC.create_line(200,150,245,90,width = 3 , fill = "Black")
        display()
    elif minx == 7:
        m7 = myC.create_line(200,150,252,94,width = 3 , fill = "Black")
        display()
    elif minx == 8:
        m8 = myC.create_line(200,150,257,100,width = 3 , fill = "Black")
        display()
    elif minx == 9:
        m9 = myC.create_line(200,150,260,106,width = 3 , fill = "Black")
        display()

    elif minx == 11:
        m11 = myC.create_line(200,150,270,119,width = 3 , fill = "Black")
        display()
    elif minx == 12:
        m12 = myC.create_line(200,150,271,125,width = 3 , fill = "Black")
        display()
    elif minx == 13:
        m13 = myC.create_line(200,150,274,132,width = 3 , fill = "Black")
        display()
    elif minx == 14:
        m14 = myC.create_line(200,150,276,140,width = 3 , fill = "Black")
        display()

    elif minx == 16:
        m16 = myC.create_line(200,150,276,158,width = 3 , fill = "Black")
        display()
    elif minx == 17:
        m17 = myC.create_line(200,150,274,165,width = 3 , fill = "Black")
        display()
    elif minx == 18:
        m18 = myC.create_line(200,150,271,172,width = 3 , fill = "Black")
        display()
    elif minx == 19:
        m19 = myC.create_line(200,150,270,180,width = 3 , fill = "Black")
        display()
        
    elif minx == 21:
        m21 = myC.create_line(200,150,260,194,width = 3 , fill = "Black")
        display()
    elif minx == 22:
        m22 = myC.create_line(200,150,257,201,width = 3 , fill = "Black")
        display()
    elif minx == 23:
        m23 = myC.create_line(200,150,252,206,width = 3 , fill = "Black")
        display()
    elif minx == 24:
        m24 = myC.create_line(200,150,245,210,width = 3 , fill = "Black")
        display()
    
    elif minx == 26:
        m26 = myC.create_line(200,150,234,218,width = 3 , fill = "Black")
        display()
    elif minx == 27:
        m27 = myC.create_line(200,150,227,221,width = 3 , fill = "Black")
        display()
    elif minx == 28:
        m28 = myC.create_line(200,150,218,223,width = 3 , fill = "Black")
        display()
    elif minx == 29:
        m29 = myC.create_line(200,150,208,225,width = 3 , fill = "Black")
        display()
    
    elif minx == 31:
        m31 = myC.create_line(200,150,192,225,width = 3 , fill = "Black")
        display()
    elif minx == 32:
        m32 = myC.create_line(200,150,184,223,width = 3 , fill = "Black")
        display()
    elif minx == 33:
        m33 = myC.create_line(200,150,176,221,width = 3 , fill = "Black")
        display()
    elif minx == 34:
        m34 = myC.create_line(200,150,168,218,width = 3 , fill = "Black")
        display()

    elif minx == 36:
        m36 = myC.create_line(200,150,155,210,width = 3 , fill = "Black")
        display()
    elif minx == 37:
        m37 = myC.create_line(200,150,150,206,width = 3 , fill = "Black")
        display()
    elif minx == 38:
        m38 = myC.create_line(200,150,145,201,width = 3 , fill = "Black")
        display()
    elif minx == 39:
        m39 = myC.create_line(200,150,141,194,width = 3 , fill = "Black")
        display()

    elif minx == 41:
        m41 = myC.create_line(200,150,132,180,width = 3 , fill = "Black")
        display()
    elif minx == 42:
        m42 = myC.create_line(200,150,129,172,width = 3 , fill = "Black")
        display()
    elif minx == 43:
        m43 = myC.create_line(200,150,126,165,width = 3 , fill = "Black")
        display()
    elif minx == 44:
        m44 = myC.create_line(200,150,126,158,width = 3 , fill = "Black")
        display()

    elif minx == 46:
        m46 = myC.create_line(200,150,126,142,width = 3 , fill = "Black")
        display()
    elif minx == 47:
        m47 = myC.create_line(200,150,126,134,width = 3 , fill = "Black")
        display()
    elif minx == 48:
        m48 = myC.create_line(200,150,129,125,width = 3 , fill = "Black")
        display()
    elif minx == 49:
        m49 = myC.create_line(200,150,132,119,width = 3 , fill = "Black")
        display()

    elif minx == 51:
        m51 = myC.create_line(200,150,141,106,width = 3 , fill = "Black")
        display()
    elif minx == 52:
        m52 = myC.create_line(200,150,145,100,width = 3 , fill = "Black")
        display()
    elif minx == 53:
        m53 = myC.create_line(200,150,150,94, width = 3 , fill = "Black")
        display()
    elif minx == 54:
        m54 = myC.create_line(200,150,155,90,width = 3 , fill = "Black")
        display()

    elif minx == 56:
        m56 = myC.create_line(200,150,168,82,width  = 3 , fill = "Black")
        display()
    elif minx == 57:
        m57 = myC.create_line(200,150,176,79,width  = 3 , fill = "Black")
        display()
    elif minx == 58:
        m58 = myC.create_line(200,150,184,77,width  = 3 , fill = "Black")
        display()
    elif minx == 59:
        m59 = myC.create_line(200,150,192,76,width  = 3 , fill = "Black")
        display()


def sec_display(scnd):
    #by5seconds
    if scnd == 0:
        m0  = myC.create_line(200,150,200,75,width  = 1 , fill = "Red")
        last_display()
    elif scnd == 5:
        m5  = myC.create_line(200,150,240,85,width = 1 , fill = "Red")
        last_display()
    elif scnd == 10:
        m10 = myC.create_line(200,150,267,112,width = 1 , fill = "Red")
        last_display()
    elif scnd == 15:
        m15 = myC.create_line(200,150,275,150,width = 1 , fill = "Red")
        last_display()
    elif scnd == 20:
        m20 = myC.create_line(200,150,267,189,width = 1 , fill = "Red")
        last_display()
    elif scnd == 25:
        m25 = myC.create_line(200,150,240,215,width = 1 , fill = "Red")
        last_display()
    elif scnd == 30:
        m30 = myC.create_line(200,150,200,225,width = 1 , fill = "Red")
        last_display()
    elif scnd == 35:
        m35 = myC.create_line(200,150,160,215,width = 1 , fill = "Red")
        last_display()
    elif scnd == 40:
        m40 = myC.create_line(200,150,135,189,width = 1 , fill = "Red")
        last_display()
    elif scnd == 45:
        m45 = myC.create_line(200,150,125,150,width = 1 , fill = "Red")
        last_display()
    elif scnd == 50:
        m50 = myC.create_line(200,150,135,111,width = 1 , fill = "Red")
        last_display()
    elif scnd == 55:
        m55 = myC.create_line(200,150,160,85,width  = 1 , fill = "Red")
        last_display()

    #secsby1
    elif scnd == 1:
        m1 =  myC.create_line(200,150,208,76,width  = 1  , fill = "Red")
        last_display()
    elif scnd == 2:
        m2 =  myC.create_line(200,150,218,77,width  = 1 , fill = "Red")
        last_display()
    elif scnd == 3:
        m3 =  myC.create_line(200,150,227,79,width  = 1 , fill = "Red")
        last_display()
    elif scnd == 4:
        m4 =  myC.create_line(200,150,234,82,width  = 1 , fill = "Red")
        last_display()
        
    elif scnd == 6:
        m6 = myC.create_line(200,150,245,90,width = 1 , fill = "Red")
        last_display()
    elif scnd == 7:
        m7 = myC.create_line(200,150,252,94,width = 1 , fill = "Red")
        last_display()
    elif scnd == 8:
        m8 = myC.create_line(200,150,257,100,width = 1 , fill = "Red")
        last_display()
    elif scnd == 9:
        m9 = myC.create_line(200,150,260,106,width = 1 , fill = "Red")
        last_display()

    elif scnd == 11:
        m11 = myC.create_line(200,150,270,119,width = 1 , fill = "Red")
        last_display()
    elif scnd == 12:
        m12 = myC.create_line(200,150,271,125,width = 1 , fill = "Red")
        last_display()
    elif scnd == 13:
        m13 = myC.create_line(200,150,274,132,width = 1 , fill = "Red")
        last_display()
    elif scnd == 14:
        m14 = myC.create_line(200,150,276,140,width = 1 , fill = "Red")
        last_display()

    elif scnd == 16:
        m16 = myC.create_line(200,150,276,158,width = 1 , fill = "Red")
        last_display()
    elif scnd == 17:
        m17 = myC.create_line(200,150,274,165,width = 1 , fill = "Red")
        last_display()
    elif scnd == 18:
        m18 = myC.create_line(200,150,271,172,width = 1 , fill = "Red")
        last_display()
    elif scnd == 19:
        m19 = myC.create_line(200,150,270,180,width = 1 , fill = "Red")
        last_display()
        
    elif scnd == 21:
        m21 = myC.create_line(200,150,260,194,width = 1 , fill = "Red")
        last_display()
    elif scnd == 22:
        m22 = myC.create_line(200,150,257,201,width = 1 , fill = "Red")
        last_display()
    elif scnd == 23:
        m23 = myC.create_line(200,150,252,206,width = 1 , fill = "Red")
        last_display()
    elif scnd == 24:
        m24 = myC.create_line(200,150,245,210,width = 1 , fill = "Red")
        last_display()
    
    elif scnd == 26:
        m26 = myC.create_line(200,150,234,218,width = 1 , fill = "Red")
        last_display()
    elif scnd == 27:
        m27 = myC.create_line(200,150,227,221,width = 1 , fill = "Red")
        last_display()
    elif scnd == 28:
        m28 = myC.create_line(200,150,218,223,width = 1 , fill = "Red")
        last_display()
    elif scnd == 29:
        m29 = myC.create_line(200,150,208,225,width = 1 , fill = "Red")
        last_display()
    
    elif scnd == 31:
        m31 = myC.create_line(200,150,192,225,width = 1 , fill = "Red")
        last_display()
    elif scnd == 32:
        m32 = myC.create_line(200,150,184,223,width = 1 , fill = "Red")
        last_display()
    elif scnd == 33:
        m33 = myC.create_line(200,150,176,221,width = 1 , fill = "Red")
        last_display()
    elif scnd == 34:
        m34 = myC.create_line(200,150,168,218,width = 1 , fill = "Red")
        last_display()

    elif scnd == 36:
        m36 = myC.create_line(200,150,155,210,width = 1 , fill = "Red")
        last_display()
    elif scnd == 37:
        m37 = myC.create_line(200,150,150,206,width = 1 , fill = "Red")
        last_display()
    elif scnd == 38:
        m38 = myC.create_line(200,150,145,201,width = 1 , fill = "Red")
        last_display()
    elif scnd == 39:
        m39 = myC.create_line(200,150,141,194,width = 1 , fill = "Red")
        last_display()

    elif scnd == 41:
        m41 = myC.create_line(200,150,132,180,width = 1 , fill = "Red")
        last_display()
    elif scnd == 42:
        m42 = myC.create_line(200,150,129,172,width = 1 , fill = "Red")
        last_display()
    elif scnd == 43:
        m43 = myC.create_line(200,150,126,165,width = 1 , fill = "Red")
        last_display()
    elif scnd == 44:
        m44 = myC.create_line(200,150,126,158,width = 1 , fill = "Red")
        last_display()

    elif scnd == 46:
        m46 = myC.create_line(200,150,126,142,width = 1 , fill = "Red")
        last_display()
    elif scnd == 47:
        m47 = myC.create_line(200,150,126,134,width = 1 , fill = "Red")
        last_display()
    elif scnd == 48:
        m48 = myC.create_line(200,150,129,125,width = 1 , fill = "Red")
        last_display()
    elif scnd == 49:
        m49 = myC.create_line(200,150,132,119,width = 1 , fill = "Red")
        last_display()

    elif scnd == 51:
        m51 = myC.create_line(200,150,141,106,width = 1 , fill = "Red")
        last_display()
    elif scnd == 52:
        m52 = myC.create_line(200,150,145,100,width = 1 , fill = "Red")
        last_display()
    elif scnd == 53:
        m53 = myC.create_line(200,150,150,94, width =1 , fill = "Red")
        last_display()
    elif scnd == 54:
        m54 = myC.create_line(200,150,155,90,width = 1 , fill = "Red")
        last_display()

    elif scnd == 56:
        m56 = myC.create_line(200,150,168,82,width  = 1 , fill = "Red")
        last_display()
    elif scnd == 57:
        m57 = myC.create_line(200,150,176,79,width  = 1  , fill = "Red")
        last_display()
    elif scnd == 58:
        m58 = myC.create_line(200,150,184,77,width  = 1 , fill = "Red")
        last_display()
    elif scnd == 59:
        m59 = myC.create_line(200,150,192,76,width  = 1 , fill = "Red")
        last_display()







def loop():
    myC = Canvas(root, height=300, width=650, bg = "black")
    Time()

def clear():
    myC.delete("all")
    root.after(0,loop)
def display():
    myC.pack()
def last_display():
    myC.pack()
    root.after(500,clear)

Time()
#def display():
        
