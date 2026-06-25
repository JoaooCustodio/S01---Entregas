% 1. Peça faltante
item_faltante(Hangar, Peca) :-
    precisa(_, Peca),
    \+ possui(Hangar, Peca).

% 2. Pode montar
pode_montar(Hangar, Componente) :-
    componente(Componente, _, Categoria),
    Categoria \= fundamental,
    \+ (precisa(Componente, Peca),
        \+ possui(Hangar, Peca)).

% 3. Queries
?- pode_montar(hangar_beta, X).

?- pode_montar(hangar_gamma, ia_navegação).
