# CSE 240 Tutorial Bot 
Capstone Research Project-Advised by Dr. Leilani Gilpin University of California, Santa Cruz(Winter 2024-Spring 2024 Quarter)


Winter 2024 Program: APIRequest.py Python file

There are 2 models been examined in the OpenAI's API versions during the experiment of examining these 5 sample questions during the Winter 2024 quarter: "gpt-3.5-turbo" and "gpt-4-turbo-preview"

How to run this file:
There are five CSE 240 questions in the context of every user's role because we are asking the OpenAI's API to evaluate their answers. 

For instance question 1 is commented for reference on using respective question on conducting mutiple trials in my experiment,
#Question 1
 {"role": "user", "content": "When is DFS better than BFS search?"},

In order to run this program with accurate results, comment all of the unused questions first. Then begin running the program to have 
accurate results. After using one question(Question 1) for experiment, uncomment Question 2 user and assistant role to begin the the trial
of API models.

If you using Question 2 to experiment the API, Comment all questions which are commented below to have the best performance 
Comment the system role to make program make different answers than original chatGPT answers uncommenting this will have same answers as ChatGPT answers

Turtorial of running my Code

From using the text generation from OpenAi api, the original code reference link:https://platform.openai.com/docs/guides/text-generation/chat-completions-api

{Role: “user”}-- user asking the API from OpenAI on related CSE 240’s material content
This is an example from Question 1 from the CSE 240 material
{"role": "user", "content": "When is DFS better than BFS search?"}

{Role: “assistant”}--ChatGPT Answer as an example to analyze the programs output from question 1

{"role": "assistant", "content": "Depth-First Search (DFS) and Breadth-First Search (BFS) are two fundamental algorithms used in graph traversal. The choice between DFS and BFS depends on the specific characteristics of the problem and the requirements of the application. Here are some situations where DFS might be preferred over BFS: Memory Efficiency:  DFS is generally more memory-efficient than BFS. In DFS, you only need to keep track of the nodes along the current path from the root to the current node, while in BFS, you need to store all nodes at the current depth in a queue. If memory is a critical factor, and the depth of the tree/graph is large, DFS may be a better choice. Pathfinding to a Solution:If the goal is to find any solution or path from the start node to the goal node, DFS might be more suitable. DFS tends to go deep into the search space quickly, which can lead to finding a solution faster if the goal is located deep in the tree/graph.Space Complexity:In some cases, DFS has a lower space complexity than BFS, especially when the tree/graph is sparse. This is because DFS doesn't require maintaining a separate data structure to store all nodes at the current depth.Topological Sorting:DFS is often used for topological sorting of directed acyclic graphs (DAGs). It can efficiently find a topological ordering of the nodes, which is useful in scheduling and task dependency problems.It's important to note that the choice between DFS and BFS depends on the specific requirements of the problem at hand. BFS is generally better for finding the shortest path in an unweighted graph and guarantees the shortest path in terms of the number of edges. In contrast, DFS may find a path faster but doesn't guarantee optimality in terms of the number of edges."}

Program Output will produce their simplified OpenAI’s API answer to vertify with their ChatGPT answers for the assistant role respectively. For instance, this is the output from the API on answering question 1 below.

In summary, DFS may be better than BFS when memory efficiency is critical, when finding any solution or path is sufficient, when space complexity is a concern, for topological sorting of DAGs, and when the goal is located deep in the search space.

In order to confirm the logic between ChatGPT 3.5 and Openai’s API 3.5 for respective questions, create a user role, which is human asking the API, to generate a generated AI Prolog code below for analysis of AI’s logical reasoning behind their answer. Typically placed this code after both the user and assistant role for respective question.

'''python
{"role": "user", "content": "Can you translate this response into prolog?"},

The output of the program prints out the Prolog code to vertify their logical reasoning for question 1, for instance, of the API below:

Here is how the explanation can be translated into Prolog:

```prolog
% Define rules for determining when DFS is better than BFS

% Case 1: Memory efficiency
dfs_better(MemoryEfficiency) :-
    MemoryEfficiency = 'DFS is more memory-efficient than BFS'.

% Case 2: Pathfinding to a solution
dfs_better(Pathfinding) :-
    Pathfinding = 'DFS is more suitable for finding any solution or path from start node to goal node'.

% Case 3: Space complexity
dfs_better(SpaceComplexity) :-
    SpaceComplexity = 'DFS has lower space complexity than BFS in sparse trees/graphs'.

% Case 4: Topological sorting
dfs_better(TopologicalSorting) :-
    TopologicalSorting = 'DFS is used for topological sorting of directed acyclic graphs'.

% Define a rule for determining when DFS is better than BFS
dfs_better_than_bfs :-
    dfs_better(_).

% Query the rule to get the output
?- dfs_better_than_bfs.
```

This Prolog code defines rules for determining when DFS is better than BFS based on different criteria. The `dfs_better_than_bfs` rule can be queried to check when DFS is preferred over BFS according to the specified criteria.

Then you need to comment out the previous question been utilized and proceed with the proceeding question thereafter with my experiment. 
Prolog was utilized to confirm the logic between these two AI models for checking the rules from their answers. For instance, they had generated rules for both ChatGPT and OpenAI’s API to analyze logical reasoning behind their answers in their program. 


