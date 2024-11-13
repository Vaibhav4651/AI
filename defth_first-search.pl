
edge(a, b).
edge(a, c).
edge(b, d).
edge(b, e).
edge(c, f).
edge(e, g).
edge(f, g).

dfs(Start, Goal, Path) :-
 dfs_recursive(Start, Goal, [Start], Path).
dfs_recursive(Goal, Goal, Path, Path).
dfs_recursive(Start, Goal, Visited, Path) :-
 edge(Start, NextNode),
 \+ member(NextNode, Visited),
 dfs_recursive(NextNode, Goal, [NextNode | Visited], Path). 
