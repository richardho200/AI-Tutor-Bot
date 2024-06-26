# CSE 240 Tutorial Bot 
Capstone Research Project-Advised by Dr. Leilani Gilpin University of California, Santa Cruz(Winter 2024-Spring 2024 Quarter)

## Winter 2024 Program: APIRequest.py Python file

There are 2 models been examined in the OpenAI's API versions during the experiment of examining these 5 sample questions during the Winter 2024 quarter: "gpt-3.5-turbo" and "gpt-4-turbo-preview"

### How to run this file:
There are five CSE 240 questions in the context of every user's role because we are asking the OpenAI's API to evaluate their answers. 

For instance question 1 is commented for reference on using respective question on conducting mutiple trials in my experiment,
```python
#Question 1
 {"role": "user", "content": "When is DFS better than BFS search?"},
```
In order to run this program with accurate results, comment all of the unused questions first. Then begin running the program to have 
accurate results. After using one question(Question 1) for experiment, uncomment Question 2 user and assistant role to begin the the trial
of API models.

If you using Question 2 to experiment the API, Comment all questions which are commented below to have the best performance 
Comment the system role to make program make different answers than original chatGPT answers uncommenting this will have same answers as ChatGPT answers
```
response = client.chat.completions.create(
    model="gpt-3.5-turbo",
    messages=[
#Get rid of the system role to make program make different answers than original chatGPT answers uncommenting this will have same answers as ChatGPT answers
     # {"role": "system", "content": "Artifical Intelligence tutor bot"},
        #Question 1
      {"role": "user", "content": "When is DFS better than BFS search?"},
        #ChatGPT Answer as an example to analyze the programs output
      {"role": "assistant", "content": "Depth-First Search (DFS) and Breadth-First Search (BFS) are two fundamental algorithms used in graph traversal. The choice between DFS and BFS depends on the specific characteristics of the problem and the requirements of the application. Here are some situations where DFS might be preferred over BFS: Memory Efficiency:  DFS is generally more memory-efficient than BFS. In DFS, you only need to keep track of the nodes along the current path from the root to the current node, while in BFS, you need to store all nodes at the current depth in a queue. If memory is a critical factor, and the depth of the tree/graph is large, DFS may be a better choice. Pathfinding to a Solution:If the goal is to find any solution or path from the start node to the goal node, DFS might be more suitable. DFS tends to go deep into the search space quickly, which can lead to finding a solution faster if the goal is located deep in the tree/graph.Space Complexity:In some cases, DFS has a lower space complexity than BFS, especially when the tree/graph is sparse. This is because DFS doesn't require maintaining a separate data structure to store all nodes at the current depth.Topological Sorting:DFS is often used for topological sorting of directed acyclic graphs (DAGs). It can efficiently find a topological ordering of the nodes, which is useful in scheduling and task dependency problems.It's important to note that the choice between DFS and BFS depends on the specific requirements of the problem at hand. BFS is generally better for finding the shortest path in an unweighted graph and guarantees the shortest path in terms of the number of edges. In contrast, DFS may find a path faster but doesn't guarantee optimality in terms of the number of edges."},
      {"role": "user", "content": "Can you translate this response into prolog?"},
      #Question 2
      #{"role": "user", "content": "What is the difference between a state space graph and a search tree?"},
    #Add more user and assistant to analyze the contents of the CSE 240 tutor bot for research project this week
    #Question 2 Adding ChatGPT answer to do compare and contrast on the output of the ChatGPTs logic
     #{"role": "assistant", "content":"""A state space graph and a search tree are two related concepts used in the context of search algorithms, such as depth-first search, breadth-first search, and A* search. Here are the key differences between them: Representation: State Space Graph: It represents the entire space of possible states and transitions between states in a problem. Nodes in the graph represent individual states, and edges represent possible transitions or actions between states. Search Tree:It is a tree structure generated during the execution of a search algorithm.Nodes in the tree represent the states encountered during the search, and edges represent the actions taken to move from one state to another. Completeness: State Space Graph: It is a complete representation of all possible states and transitions in the problem domain.The state space graph includes every state that can be reached from the initial state by applying valid actions.Search Tree:It is a partial representation of the state space, created dynamically during the search process.The search tree includes only the states that have been explored during the search up to a certain point.Exploration vs. Representation:State Space Graph: It provides a static, comprehensive view of the problem space, allowing a global understanding of the problem. It is useful for analyzing the structure of the problem and understanding the relationships between states.Search Tree:It represents the exploration process of the search algorithm.It is dynamic and reflects the states that have been visited and the actions taken during the search.Memory Requirements:State Space Graph:It may require a large amount of memory to represent the entire space of states, especially for problems with a large state space. Search Tree:It only requires memory to store the states that have been explored during the search, making it more memory-efficient in practice. Visualization: State Space Graph: It is a visual representation of the entire problem space, which may be too large to visualize in its entirety.Search Tree:It is a compact representation that visualizes the exploration process, making it easier to understand the search progress.In summary, a state space graph is a comprehensive representation of all possible states and transitions in a problem, while a search tree is a dynamically generated structure that represents the exploration process of a search algorithm within that state space. The search tree is more focused on the states encountered during the search, making it a practical tool for visualizing and understanding the search process."""},
```

### How to run my program for analysis
From using the text generation from OpenAi api, the original code reference link:https://platform.openai.com/docs/guides/text-generation/chat-completions-api

### Variables 
`model="gpt-3.5-turbo",`: idetifies the model for the API. Used both `gpt-3.5-turbo` and `gpt-4-turbo-preview` to compare their logical reasoning within API and ChatGPT version 3.5 
`{Role: “user”}`: user asking the API from OpenAI on related CSE 240’s material content
This is an example from Question 1 from the CSE 240 material:
```python
{"role": "user", "content": "When is DFS better than BFS search?"}
```
`{Role: “assistant”}`:ChatGPT Answer as an example to analyze the programs output from question 1
```python
{"role": "assistant", "content": "Depth-First Search (DFS) and Breadth-First Search (BFS) are two fundamental algorithms used in graph traversal. The choice between DFS and BFS depends on the specific characteristics of the problem and the requirements of the application. Here are some situations where DFS might be preferred over BFS: Memory Efficiency:  DFS is generally more memory-efficient than BFS. In DFS, you only need to keep track of the nodes along the current path from the root to the current node, while in BFS, you need to store all nodes at the current depth in a queue. If memory is a critical factor, and the depth of the tree/graph is large, DFS may be a better choice. Pathfinding to a Solution:If the goal is to find any solution or path from the start node to the goal node, DFS might be more suitable. DFS tends to go deep into the search space quickly, which can lead to finding a solution faster if the goal is located deep in the tree/graph.Space Complexity:In some cases, DFS has a lower space complexity than BFS, especially when the tree/graph is sparse. This is because DFS doesn't require maintaining a separate data structure to store all nodes at the current depth.Topological Sorting:DFS is often used for topological sorting of directed acyclic graphs (DAGs). It can efficiently find a topological ordering of the nodes, which is useful in scheduling and task dependency problems.It's important to note that the choice between DFS and BFS depends on the specific requirements of the problem at hand. BFS is generally better for finding the shortest path in an unweighted graph and guarantees the shortest path in terms of the number of edges. In contrast, DFS may find a path faster but doesn't guarantee optimality in terms of the number of edges."}
```
Program Output will produce their simplified OpenAI’s API answer to vertify with their ChatGPT answers for the assistant role respectively. For instance, this is the output from the API on answering question 1 below.

```
In summary, DFS may be better than BFS when memory efficiency is critical, when finding any solution or path is sufficient, when space complexity is a concern, for topological sorting of DAGs, and when the goal is located deep in the search space.
```
In order to confirm the logic between ChatGPT 3.5 and Openai’s API 3.5 for respective questions, create a user role, which is human asking the API, to generate a generated AI Prolog code below for analysis of AI’s logical reasoning behind their answer. Typically placed this code after both the user and assistant role for respective question.

```python
{"role": "user", "content": "Can you translate this response into prolog?"},
```

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

## Spring 2024 Quarter: ROUGE and BLEU Scores
During this quarter, I had utilized ROUGE and BLEU scores to verify hypotheses of narrative similarity for my respective LLM models. The first set of experiments was to have the prediction sentence begin at the 2nd trial and reference sentence begin at the first trial respectively for my API trials. The second set of experiments was the reverse; starting from the first set of experiments.

# BLEU Score.py Python file
This Python programming file allows to analyze prediction and reference sentences to calculate the BLEU score to vertify hypthesis of narrative similiarity for my LLM models. In order to run this program, you need to label the sample sentences for respective roles for prediction and reference sentences to calculate BLEU scores below. The following examples for both prediction and references sentences will be given to summarize my experiment for my Master's Capstone Research project similiar to calculation of ROUGE scores. 
```
referencesq5a10=["""In summary, the main reasons for using max(h1, h2) rather than either h1 or h2 alone as the heuristic evaluation function in A* search are:
1. Admissibility: By taking the maximum of two admissible heuristics, the combined heuristic remains admissible.
2. Dominance: The maximum heuristic allows for capturing the strengths of both heuristics by considering the most optimistic estimate at each state.
3. Balance: It strikes a balance between the two heuristics, ensuring that the heuristic function is not overly optimistic or pessimistic.
4. Improved Guidance: The maximum heuristic guides the search more effectively by incorporating the advantages of both heuristics in different situations.
Overall, using max(h1, h2) can lead to a more informed and efficient search process in A* search algorithm.
""","Overall, using"]

predictionsq5a9=["""In the context of A* search, using the maximum of two admissible heuristics (max(h1, h2)) as the heuristic evaluation function is preferred over using either h1 or h2 alone because it can provide a better estimate of the true cost to reach the goal.

Here are a few reasons why using the maximum heuristic can be beneficial:

1. Improved accuracy: By taking the maximum of two admissible heuristics, the resulting heuristic value is guaranteed to be at least as good as the better of the two individual heuristics. This can lead to more accurate estimates of the cost to reach the goal, as the maximum heuristic is more likely to capture the true cost in a wider range of states.

2. Handling uncertainty: Different heuristics may perform better in different parts of the search space or under different conditions. By combining them using the maximum function, the resulting heuristic can adapt to the strengths and weaknesses of each individual heuristic. This can help in handling uncertainty and variability in the search process.

3. Avoiding underestimation: Using the maximum of two admissible heuristics helps in avoiding underestimation of the true cost. If one heuristic underestimates the cost in certain states, the other heuristic can compensate for this by providing a more accurate estimate. This can prevent the search algorithm from expanding unnecessary nodes and potentially reaching suboptimal solutions.

4. Ensuring admissibility: If both h1 and h2 are admissible heuristics, then max(h1, h2) will also be admissible. This property is important in A* search, as it guarantees that the search algorithm will always find an optimal solution if one exists.

Overall, using the maximum of two admissible heuristics as the heuristic evaluation function in A* search can lead to more accurate and robust search performance. It allows for the benefits of multiple heuristics to be combined effectively, improving the quality of the heuristic guidance provided to the search algorithm.
""",["Overall, using"]]
```
This code calculates the both reference and prediction sentences for the BLEU scores in my research. 
```
# Load the BLEU evaluation metric
bleu = evaluate.load("bleu")

# Compute the BLEU score
results = bleu.compute(predictions=predictionsq5a9, references=referencesq5a10)

# Print the results
print(results)
```
# ROUGE Score.py Python file
Similiar to the BLEU score instructions above, we are now using prediction and reference sentences to calculate the narrative similiarity for AI model with ROUGE method in Python. The given examples for prediction and reference will be referenced below. 
```
referencesq5a10=["""In summary, the main reasons for using max(h1, h2) rather than either h1 or h2 alone as the heuristic evaluation function in A* search are:
1. Admissibility: By taking the maximum of two admissible heuristics, the combined heuristic remains admissible.
2. Dominance: The maximum heuristic allows for capturing the strengths of both heuristics by considering the most optimistic estimate at each state.
3. Balance: It strikes a balance between the two heuristics, ensuring that the heuristic function is not overly optimistic or pessimistic.
4. Improved Guidance: The maximum heuristic guides the search more effectively by incorporating the advantages of both heuristics in different situations.
Overall, using max(h1, h2) can lead to a more informed and efficient search process in A* search algorithm.
""","Overall, using"]

referencesq5a9=["""In the context of A* search, using the maximum of two admissible heuristics (max(h1, h2)) as the heuristic evaluation function is preferred over using either h1 or h2 alone because it can provide a better estimate of the true cost to reach the goal.

Here are a few reasons why using the maximum heuristic can be beneficial:

1. Improved accuracy: By taking the maximum of two admissible heuristics, the resulting heuristic value is guaranteed to be at least as good as the better of the two individual heuristics. This can lead to more accurate estimates of the cost to reach the goal, as the maximum heuristic is more likely to capture the true cost in a wider range of states.

2. Handling uncertainty: Different heuristics may perform better in different parts of the search space or under different conditions. By combining them using the maximum function, the resulting heuristic can adapt to the strengths and weaknesses of each individual heuristic. This can help in handling uncertainty and variability in the search process.

3. Avoiding underestimation: Using the maximum of two admissible heuristics helps in avoiding underestimation of the true cost. If one heuristic underestimates the cost in certain states, the other heuristic can compensate for this by providing a more accurate estimate. This can prevent the search algorithm from expanding unnecessary nodes and potentially reaching suboptimal solutions.

4. Ensuring admissibility: If both h1 and h2 are admissible heuristics, then max(h1, h2) will also be admissible. This property is important in A* search, as it guarantees that the search algorithm will always find an optimal solution if one exists.

Overall, using the maximum of two admissible heuristics as the heuristic evaluation function in A* search can lead to more accurate and robust search performance. It allows for the benefits of multiple heuristics to be combined effectively, improving the quality of the heuristic guidance provided to the search algorithm.
""",["Overall, using"]]
```
This code calculates the both reference and prediction sentences for the ROGUE scores in my research below. 
```
# Load the ROUGE evaluation metric
rouge = evaluate.load('rouge')


# Compute the ROUGE score
results = rouge.compute(predictions=predictionsq5a9, references=referencesq5a10)

# Print the results
print(results)
```

# Research Findings of the CSE 240 bot
For more information about my research, please refer to the Master Capstone Project.pdf on my research findings. 
