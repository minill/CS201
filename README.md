= CS 201 - Data Structures

A *Data Structure* is simply a way of organizing data which makes certain operations on that data very fast.

In this class we will *use* and *build* many data structures. We will begin by writing several sorting algorithms which use the most basic data structure, the array. We will quickly move on to building simple datas structure on top of arrays: resizable arrays, stacks, and circular arrays.

From there we will move on to node-based data structures: linked lists and binary search trees. We'll spend some time balancing binary search trees so they don't fall over.

Next we'll cover hash tables. We'll use hash tables to build graphs, then write a few graph algorithms.

If time permits, we'll even implement a few *functional data structures*: data structure where updates are additive, meaning they leave the previous version of the data in tact.

We will analyze the run time of everything we implement in this class. In particular, we care about the *asymptotic run time*, or how the run time of an algorithm grows as we run it on larger and larger data sets.

The class will be taught in Dafny, a new programming language that enables us to formally verify the correctness of the programs we write.

== Meta-topics

* Big-O analysis
* Correctness
* Interface & implementation

== Topics

* Sorting
  * Bubble sort
  * Insertion sort
  * Merge sort
  * Quick sort
* Array based data structures
  * Resizable arrays - stack
  * Circular arrays - queue, deque
* Node based data structures
  * Linked lists - queue
  * Binary search trees - set, map
    * Unbalanced
    * Balanced
* Hash tables
* Graphs
  * DFS
  * BFS
  * Dijkstra
  * A-Star
* Functional data structures
  * Finger trees
  * Merkle trees - Git, Bitcoin

== Schedule

*Week 1:* Introduction to Dafny, sorting
  Day 1: Intro. About Dafny.
  Day 2: [Dafny Guide.] Bubble + insertion sort. Run time analysis.
  Day 3: [Bubble + insertion sort. Dafny ???.] Merge + quick sort. Recursive run time analysis.
*Week 2:* Resizable arrays, stacks, queues, deques
  Day 1: [Merge + quick sort.] Resizing. Amortized run time analysis. Stacks. Interface vs. implementation.
  Day 2: [Resizable array. Stack using resizable array.] Queues. Deques. Circular arrays.
  Day 3: [Deque.] Test?
*Week 3:* Linked lists, binary search trees, balancing
  Day 1: Pointers. Linked lists.
  Day 2: [Linke list queue.] Trees. Binary search trees.
  Day 3: [Binary search tree.] Balancing. Runtime proofs?
*Week 4:* Hash tables
  Day 1: [Balanced binary search tree.]
*Week 5:* Graphs

== Summary

* Data structures
  * Array based
    * Resizable arrays
    * Circular arrays
    * Hash tables
  * Node based
    * Linked list
    * Binary search trees
  * Functional
    * Finger trees
    * Merkle trees
* Interfaces
  * Stack
  * Queue
  * Deque = stack + queue
  * Set
  * Map
  * Graph
* Algorithms
  * Sorting
    * Merge sort
    * Quick sort
  * Graph
    * DFS
    * BFS
    * Dijkstra
    * A-Star
* Run-time analysis
  * Worst case
  * Amortized + average
