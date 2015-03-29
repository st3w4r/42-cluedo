deplacer([X, X, Chevre, Chou], loup, [Y, Y, Chevre, Chou]) :- change(X, Y).
deplacer([X, Loup, X, Chou], chevre,[Y, Loup, Y, Chou]) :- change(X, Y).
deplacer([X, Loup, Chevre, X], chou,[Y, Loup, Chevre, Y]) :- change(X, Y).
deplacer([X, Loup, Chevre, Chou], rien, [Y, Loup, Chevre, Chou]) :- change(X, Y).

equivalent_a(X,X,_).
equivalent_a(X,_,X).

change(droite, gauche).
change(gauche, droite).

safe([Peon, Loup, Chevre, Chou]) :-
	equivalent_a(Peon, Chevre, Loup),
	equivalent_a(Peon, Chevre, Chou).

solution([droite, droite, droite, droite],[]).
solution(Config, [PremierDeplacement|AutreDeplacement]) :-
	deplacer(Config, PremierDeplacement, NextConfig),
	safe(NextConfig),
	solution(NextConfig, AutreDeplacement).

solve :-
	length(X,7),
	setof(t, solution([gauche, gauche, gauche, gauche],X), _),
	write(X),
	nl, !.
