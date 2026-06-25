% 1. Peça crítica:
% Um componente é crítico se consome mais de 5 MW
% e é necessário para pelo menos dois componentes diferentes.

peça_crítica(P) :-
    componente(P, Energia, _),
    Energia > 5,
    precisa(P1, P),
    precisa(P2, P),
    P1 \= P2.


% 2. Query:
% Componentes da categoria sistemas, com consumo de 6 MW,
% que não são necessários para nenhum outro componente.

?- componente(P, 6, sistemas),
   \+ precisa(_, P).
