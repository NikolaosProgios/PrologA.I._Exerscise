/*Thema 1o*/
sum_of_lists([],[],[]).
sum_of_lists([H|T] , [K|M] , [A|AL]):-
	sum_of_lists(T,M,AL),
	A is H+K.

/*Thema 2o*/

dictionary([c,o,m,p,u,t,e,r]).
dictionary([i,n,f,o,r,m,a,t,i,o,n]).
dictionary([t,r,a,n,s,l,a,t,i,o,n]).

correctA(Word, CorrectWord) :-
	
	append(Begin, Ypoloipo, Word),
	append(Middle, [Letter|End], Ypoloipo),
	
	dictionary(CorrectWord),
	
	append(Middle, YpoloipoCW, CorrectWord),
	append([Begin|Letter], End, YpoloipoCW).

/*Thema 3o*/
iseven(Q):-
	0 is mod(Q,3).

splitA([],[],[]).
splitA([H|T], [H|TP], TN):-
	H<0,
	not(iseven(H)),
	splitA(T, TP, TN).
splitA([H|T], TP, [H|TN]):-
	H>=0,
	not(iseven(H)),
	splitA(T, TP, TN).
splitA([H|T], TP, TN):-
	iseven(H),
	splitA(T, TP, TN).