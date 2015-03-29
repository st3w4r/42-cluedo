femme(X) :- member(X, [anne, betty, sylvie, lisa, julie, valerie, eve]).
homme(X) :- member(X, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).

mari_de(H, F) :- member((H, F), [(marc, anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)]).
femme_de(F, H) :- mari_de(H, F).

beaupere_de(X, Y) :- member((X, Y), [(luc, eve), (luc, jules), (marc, loic), (leon, paul)]).
bellemere_de(X, Y) :- member((X, Y), [(anne, sylvie), (anne, eve), (betty, jules), (betty, leon), (sylvie, paul)]).

enfant_de(E, P) :- member([E|P], [[jean|marc], [jules|marc], [leon|marc]]).
enfant_de(E, P) :- member([E|P], [[lisa|luc], [loic|luc], [gerard|luc]]).
enfant_de(E, P) :- member([E|P], [[jacques|jules]]).
enfant_de(E, P) :- member([E|P], [[herve|leon], [julie|leon]]).
enfant_de(E, P) :- member([E|P], [[paul|loic], [valerie|loic]]).
enfant_de(E, P) :- femme(P), femme_de(P, Y), enfant_de(E, Y).

ancetre_de(A, E) :- enfant_de(E, A).
ancetre_de(A, E) :- enfant_de(E, X), ancetre_de(A, X).
