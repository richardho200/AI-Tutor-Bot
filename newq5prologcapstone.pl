% Facts representing admissible heuristics h1 and h2
admissible_heuristic(h1).
admissible_heuristic(h2).

% Rule: max_heuristic(+State, -MaxHeuristic)
% Calculates the maximum admissible heuristic value for a given state.
max_heuristic(State, MaxHeuristic) :-
    findall(HeuristicValue, (admissible_heuristic(Heuristic), calculate_heuristic(Heuristic, State, HeuristicValue)), HeuristicValues),
    max_list(HeuristicValues, MaxHeuristic).

% Rule: calculate_heuristic(+Heuristic, +State, -HeuristicValue)
% Calculates the admissible heuristic value for a given state using a specific heuristic.
calculate_heuristic(h1, State, HeuristicValue) :-
    % Define the calculation for h1 based on the state.
    % For simplicity, let's assume a placeholder calculation.
    HeuristicValue is State * 2.

calculate_heuristic(h2, State, HeuristicValue) :-
    % Define the calculation for h2 based on the state.
    % For simplicity, let's assume a different placeholder calculation.
    HeuristicValue is State * State.

% Example Usage:
% Query: max_heuristic(10, MaxHeuristic).
% This query calculates the maximum admissible heuristic value for the state 10.

% Utility predicate to find the maximum value in a list
max_list([H], H).
max_list([H | T], Max) :-
    max_list(T, RestMax),
    (H >= RestMax -> Max = H ; Max = RestMax).
