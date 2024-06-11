% Facts representing variables and their dependencies in a nearly tree-structured CSP
dependency(a, b).
dependency(b, c).
dependency(b, d).
dependency(c, e).

% Rule: is_tree_structured_csp(+Variable)
% Checks if a CSP is tree-structured based on variable dependencies.
is_tree_structured_csp(Variable) :-
    \+ has_multiple_parents(Variable).

% Rule: has_multiple_parents(+Variable)
% Checks if a variable has multiple parents in the CSP.
has_multiple_parents(Variable) :-
    dependency(Variable, Parent1),
    dependency(Variable, Parent2),
    Parent1 \= Parent2.

% Rule: transform_to_tree_structured_csp(+NearlyTreeStructuredCSP, -TreeStructuredCSP)
% Transforms a nearly tree-structured CSP into a strictly tree-structured CSP.
transform_to_tree_structured_csp(NearlyTreeStructuredCSP, TreeStructuredCSP) :-
    findall(Variable, is_tree_structured_csp(Variable), TreeVariables),
    filter_variables(NearlyTreeStructuredCSP, TreeVariables, TreeStructuredCSP).

% Rule: filter_variables(+Variables, +AllowedVariables, -FilteredVariables)
% Filters variables based on those allowed in the tree-structured CSP.
filter_variables([], _, []).
filter_variables([Variable | Rest], AllowedVariables, [Variable | FilteredRest]) :-
    member(Variable, AllowedVariables),
    filter_variables(Rest, AllowedVariables, FilteredRest).
filter_variables([Variable | Rest], AllowedVariables, FilteredRest) :-
    \+ member(Variable, AllowedVariables),
    filter_variables(Rest, AllowedVariables, FilteredRest).

% Example Usage:
% Query: TransformToTreeStructuredCsp([a, b, c, d, e], TreeStructuredCSP).
