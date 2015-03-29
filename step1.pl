femme(X) :- member(X, [anne, betty, sylvie, lisa, julie, valerie, eve]).
homme(X) :- member(X, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).
mari_de(H, F) :- member((H, F), [(marc, anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)]).
femme_de(F, H) :- marie_d(H, F).
beaupere_de(X, Y) :- member((X, Y), [(luc, eve), (luc, jules), (marc, loic), (leon, paul)]).
bellemere_de(X, Y) :- member((X, Y), [(anne, sylvie), (anne, eve), (betty, jules), (betty, leon), (sylvie, paul), (loic, )]).
