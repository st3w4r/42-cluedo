femme(X) :- member(X, [anne, betty, sylvie, lisa, julie, valerie, eve]).
homme(X) :- member(X, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).
marie_de(H, F) :- member((H, F), [(marc, anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)]).
femme_de(F, H) :- marie_de(H, F).
