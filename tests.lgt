
:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 0.1,
		author is 'Maximiliano Cristiá, Gianfranco Rossi, and Paulo Moura',
		date is 2020/01/15,
		comment is 'Unit tests for setlog.'
	]).

	:- uses(user, [
		setlog/4
	]).

	test(setlog_01, fail) :-
		setlog(
			inv(R,N1) & comp(N1,R,N2) & subset(R,cp(X,Y)) & id(Y,N4) & subset(N2,N4) & npfun(R),
			2000,
			_,
			_
		).

	test(setlog_02, fail) :-
		setlog(
			R neq S & inters(R,S,N1) & un(R,CR,cp(A,B)) & disj(R,CR) & un(S,CS,cp(A,B)) & disj(S,CS) & inters(CR,CS,N2) & un(N1,N2,cp(A,B)),
			2000,
			_,
			_
		).

	test(setlog_03, fail) :-
		setlog(
			nandb(B,B,M1) & nandb(A,M1,M2) & nandb(A,M2,M3) & nandb(A,C,M4) & nandb(B,M4,M5) & nandb(M3,M5,M6) & M6 neq B,
			2000,
			_,
			_
		).

	test(setlog_04, fail) :-
		setlog(
			un(A,M1,{{}}) & disj(A,M1) & tba(A,M1,B,M2) & tba(C,D,G,M3) & tba(C,D,E,M4) & tba(M4,F,M3,M5) & un(M5,M6,{{}}) & disj(M5,M6) & tba(G,F,E,M7) & tba(D,M7,C,M8) & tba(M2,M6,M8,M9) & M9 neq B & bool(A) & bool(B) & bool(C) & bool(D) & bool(G) & bool(E) & bool(F),
			2000,
			_,
			_
		).

:- end_object.
