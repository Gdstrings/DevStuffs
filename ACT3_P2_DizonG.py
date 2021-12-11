quiz = []
Hw = []
def printing(quiz,Hw,Exam):
    print("*"*10,"Display Grades","*"*10)
    print("\tQuiz Scores: ")
    for scores in quiz:
        print("\t",scores)
    print("\tHomeWork Scores: ")
    for scores in Hw:
        print("\t",scores)    
    print("\tExam Scores: ")
    print("\t",Exam)
    See_ave(Exam,quiz,Hw)
    watodo(quiz,Hw,Exam)
    
def menu(quiz,Hw):
    loop_quiz = int(input("Enter number of Quiz: "))
    for x in range(loop_quiz):
        count = x + 1
        print("Enter Score of Quiz ",count)
        score1 = int(input())
        quiz.append(score1)
    print(quiz)
    loop_HW = int(input("Enter number of HomeWork: "))
    for y in range(loop_HW):
        count = y + 1
        print("Enter Score of Homework ",count)
        score2 = int(input())
        Hw.append(score2)
    print(Hw)
    Exam = int(input("Enter major Exam: \n"))
    printing(quiz,Hw,Exam)

def watodo(quiz,Hw,Exam):
    print("*"*10,"Modifications to Grades","*"*10)
    print("[a]Modify Quiz Scores\n[b]Modify Homework Scores\n[c]Modify Exam Score\n[d]See average and grades\n[e]Terminate Program")
    ask = input()
    ask = ask.upper()
    if ask == "A":
        change_quiz(quiz,Hw,Exam)
    elif ask == "B":
        change_Hw(quiz,Hw,Exam)    
    elif ask == "C":
        change_Exam(quiz,Hw,Exam)
    elif ask == "D":
        See_ave(Exam,quiz,Hw)
    
def change_quiz(quiz,Hw,Exam):
    print("*"*10,"Modifiy quiz scores","*"*10)
    print("\tQuiz Scores: ")
    for scores in quiz:
        print("\t",scores)
    print("[a]Edit specific grade\n[b]Change Every grade\n[c]Erase Grades")
    ask = input()
    ask = ask.upper()
    if ask == "A":
        which = int(input("Which quiz: "))
        what = int(input("What score do we change it into: "))
        quiz[which-1] = what
        printing(quiz,Hw,Exam)
    elif ask == "B":
        y = len(quiz)
        quiz.clear()
        for x in range(y):
            count = x + 1
            print("Enter Score of Quiz ",count)
            score1 = int(input())
            quiz.append(score1)
            printing(quiz,Hw,Exam)
    
    elif ask == "C":
        quiz.clear()
        print("GRADES ERASED! PLS Input new set of grades")
        loop_quiz = int(input("Enter number of Quiz: "))
        for x in range(loop_quiz):
            count = x + 1
            print("Enter Score of Quiz ",count)
            score1 = int(input())
            quiz.append(score1)
        printing(quiz,Hw,Exam)
    else:
        print("invalid input")
        change_quiz(quiz,Hw,Exam)
                    
def change_Hw(quiz,Hw,Exam):
    print("*"*10,"Modifiy HomeWork scores","*"*10)
    print("\HomeWork Scores: ")
    for scores in Hw:
        print("\t",scores)
    print("[a]Edit specific grade\n[b]Change Every grade\n[c]Erase Grades")
    ask = input()
    ask = ask.upper()
    if ask == "A":
        which = int(input("Which HomeWork: "))
        what = int(input("What score do we change it into: "))
        Hw[which-1] = what
        printing(quiz,Hw,Exam)
    elif ask == "B":
        y = len(Hw)
        Hw.clear()
        for x in range(y):
            count = x + 1
            print("Enter Score of HomeWork ",count)
            score1 = int(input())
            Hw.append(score1)
            printing(quiz,Hw,Exam)
    
    elif ask == "C":
        Hw.clear()
        print("GRADES ERASED! PLS Input new set of grades")
        loop_quiz = int(input("Enter number of HomeWork: "))
        for x in range(loop_quiz):
            count = x + 1
            print("Enter Score of Quiz ",count)
            score2 = int(input())
            Hw.append(score2)
        printing(quiz,Hw,Exam)
    else:
        print("invalid input")
        change_Hw(quiz,Hw,Exam)
def change_Exam(quiz,Hw,Exam):
    print("*"*10,"Modifications to Exam","*"*10)
    print("[a]Modify Exam Scores\n[b]Terminate Program")
    ask = input()
    ask = ask.upper()
    if ask == "A":
        what = int(input("Enter Score: "))
        Exam = what
        printing(quiz,Hw,Exam)
    elif ask == "B":
       
        quit()
    else:
        print("Invalid Input")
        change_Exam(quiz,Hw,Exam)
def See_ave(Exam,quiz,Hw):
    Gquiz = sum(quiz)/len(quiz)
    print("Quiz Average: ",Gquiz)
    GHw = sum(Hw)/len(Hw)
    print("HomeWork Average: ",GHw)
    
    Grade = ( Gquiz + GHw) /2 * .60 + (Exam/100) * .40
    print("Average Grade: ",Grade)
    if Grade >= 90:
        print("Grade is A")
        watodo(quiz,Hw,Exam)
    elif Grade < 90 and Grade >= 80:
        print("Grade is B")
        watodo(quiz,Hw,Exam)
    elif Grade < 80 and Grade >= 70:
        print("Grade is C")
        watodo(quiz,Hw,Exam)
    elif Grade < 70 and Grade >= 60:
        print("Grade is D")
        watodo(quiz,Hw,Exam)
    else:
        print("Grade is F")
        watodo(quiz,Hw,Exam)   
ngalan = input("Name: ")
Sub = input("Course: ")
menu(quiz,Hw)

