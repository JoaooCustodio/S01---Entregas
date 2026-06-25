% Hangar com pelo menos duas peças de combate
hangar_combate(H) :-
    possui(H, P1),
    possui(H, P2),
    P1 \= P2,
    componente(P1, _, combate),
    componente(P2, _, combate).

% Hangar sem nenhuma peça de propulsão
falta_energia(H) :-
    \+ (possui(H, P), componente(P, _, propulsao)).

% Query
?- hangar_combate(H), falta_energia(H).
