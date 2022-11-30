# Linked Lists
-----------
-----------
Ruby Project creating Linked List methods which is my first introduction to linear Ruby Data Structures. 

## Methods
---------------------------
| Method        | Description   |
| ------------- |:-------------|
| #append(value)     | Adds a new node containing value to the end of the list |
| #prepend(value)     | Adds a new node containing value to the beginning of the list      |
| #size | Returns the total number of nodes in the list      |
| #head | Returns the first node in the list     |
| #tail | Returns the last node in the list     |
| #at(index) | Returns the node at the given index    |
| #pop | Removes and returns the last element from the list    |
| #contains?(value) | Returns true if the passed in value is in the list and otherwise returns false.     |
| #find(value) | Returns the index of the node containing value, or nil if not found.    |
| #to_s | Represent the LinkedList objects as strings printed in the console.    |
| #insert_at(value, index) | Inserts a new node with the provided value at the given index.    |
| #remove_at(index) | Removes the node at the given index.   |


## What I learnt:
---------------------------
Creating the methods above for the linked lists really cemented in what linked lists are, how they work, and how they can be created and used. 

To summarise them:

- Linear data structures. Linked list has nodes. Each node has data, and reference to next node (memory.) Head -> node1 -> Tail (nill)
- Dynamic memory management unlike arrays which are static. Each byte of a node can be in seperate places in memory. I.e. Dynamic data structure!
- There are also double linked lists and circular as well. This additional node link could be setup in the Node class, but at the cost of memory. 
