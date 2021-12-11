class Node:
    def __init__(self, data):
       self.data = data
       self.next = None
 
class LinkedList:
    def __init__(self):
        self.head = None
        self.last_node = None
 
    def append(self, data):
        if self.last_node is None:
            self.head = Node(data)
            self.last_node = self.head
        else:
            self.last_node.next = Node(data)
            self.last_node = self.last_node.next
    def display(self):
        prints = self.head
        while prints is not None:
            print(prints.data, end = ' ')
            prints = prints.next
listahan = LinkedList()
n = int(input('How many elements would you like to add? '))
listahann = []
for i in range(n):
    data = int(input('Enter data item: '))
    listahan.append(data)
    listahann.append(data)
print('The linked list: \n', end = '')
listahan.display()
listahann.sort()
print("\nSorted: ")
for items in listahann:
    print(end = "")
    print(items, end = " ")



