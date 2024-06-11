% Facts representing states and transitions in a simplified state space graph
state(a).
state(b).
state(c).
state(d).

transition(a, b).
transition(b, c).
transition(b, d).

% Rule to check if a state is reachable in the state space graph
reachable(State) :- state(State).
reachable(NextState) :- transition(CurrentState, NextState), reachable(CurrentState).

% Facts representing nodes and edges in a simplified search tree
node(root).
node(a, root).
node(b, a).
node(c, b).
node(d, b).

edge(root, a).
edge(a, b).
edge(b, c).
edge(b, d).

% Rule to check if a node is part of the search tree
part_of_tree(Node) :- node(Node).
part_of_tree(Child) :- edge(Parent, Child), part_of_tree(Parent).

% Rule to check if a state is explored during a search
explored(State) :- part_of_tree(Node), state_at_node(State, Node).

% Rule to check if a state is associated with a specific node in the search tree
state_at_node(State, Node) :- node(Node, State).
state_at_node(State, Node) :- edge(Parent, Node), state_at_node(State, Parent).

% Example Usage:
% Query: reachable(c).
% Query: explored(c).
