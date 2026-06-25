% 1. Peça raiz: não depende de nenhuma outra peça
peça_raiz(P) :-
    componente(P, _, _),
    \+ precisa(P, _).


% 2. Peça final: não é necessária para nenhuma outra peça
peça_final(P) :-
    componente(P, _, _),
    \+ precisa(_, P).


% 3. Query: peças raiz que NÃO são da categoria propulsao
?- peça_raiz(P),
   componente(P, _, Categoria),
   Categoria \= propulsao.
