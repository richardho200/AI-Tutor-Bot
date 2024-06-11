% Rule: dfs_better_than_bfs(+ProblemCharacteristics)
% Determines if DFS is better than BFS based on problem characteristics.
dfs_better_than_bfs(memory_usage, dfs).
dfs_better_than_bfs(solution_depth, dfs).
dfs_better_than_bfs(disconnected_graphs, dfs).
dfs_better_than_bfs(branching_factor(high), dfs).
dfs_better_than_bfs(path_length, dfs).
dfs_better_than_bfs(topological_sorting(DAG), dfs).

% Rule: bfs_better_than_dfs(+ProblemCharacteristics)
% Determines if BFS is better than DFS based on problem characteristics.
bfs_better_than_dfs(branching_factor(low), bfs).
bfs_better_than_dfs(topological_sorting(unweighted), bfs).

% Example Usage:
% Query: dfs_better_than_bfs(memory_usage, Strategy).
% Query: bfs_better_than_dfs(branching_factor(low), Strategy).
