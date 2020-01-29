
:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 0.2,
		author is 'Maximiliano Cristiá, Gianfranco Rossi, and Paulo Moura',
		date is 2020/01/29,
		comment is 'Unit tests for setlog.'
	]).

	:- uses(lgtunit, [
		benchmark/2
	]).

	:- uses(user, [
		rsetlog(Goal, 4000, _, Result, []) as rsetlog(Goal, Result),
		rsetlog(Goal, 4000, Constraints, Result, []) as rsetlog(Goal, Constraints, Result)
	]).

	 test(tptp_boo_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,U) &
				disj(A,M1) &
				un(M1,M2,U) &
				disj(M1,M2) &
				A neq M2,
				Result
			),
			Time
		).

	 test(tptp_boo_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				tba(V,W,X,M1) &
				tba(V,W,Z,M2) &
				tba(M1,Y,M2,M3) &
				tba(X,Y,Z,M4) &
				tba(V,W,M4,M5) &
				M3 neq M5,
				Result
			),
			Time
		).

	 test(tptp_boo_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				tba(X,X,Y,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				un(Y,M1,U) &
				disj(Y,M1) &
				tba(M1,Y,X,M2) &
				M2 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				un(Y,M1,U) &
				disj(Y,M1) &
				tba(X,Y,M1,M2) &
				M2 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,U) &
				disj(A,M1) &
				tba(A,M1,B,M2) &
				subset(B,U) &
				M2 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e007, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(X,X,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e008, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(X,X,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				nun(X,U,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(X,{},{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(M1,Z,M2) &
				inters(Y,Z,M3) &
				ninters(X,M3,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e012, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				un(M1,Z,M2) &
				un(Y,Z,M3) &
				nun(X,M3,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e013, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				ninters(X,M1,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e014, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				nun(X,M1,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e015, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({},X,U) &
				disj({},X) &
				X neq U,
				Result
			),
			Time
		).

	 test(tptp_boo_e016, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({},M1,U) &
				disj({},M1) &
				M1 neq U,
				Result
			),
			Time
		).

	 test(tptp_boo_e017, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,U) &
				disj(X,Y) &
				un(Y,M1,U) &
				disj(Y,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e018, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,U) &
				un(X,Z,U) &
				inters(X,Y,{}) &
				inters(X,Z,{}) &
				Y neq Z,
				Result
			),
			Time
		).

	 test(tptp_boo_e019, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,Z) &
				un(Z,M3,U) &
				disj(Z,M3) &
				un(X,M1,U) &
				disj(X,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				ninters(M1,M2,M3),
				Result
			),
			Time
		).

	 test(tptp_boo_e020, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				un(M1,M2,M3) &
				inters(X,Y,M4) &
				un(M4,M5,U) &
				disj(M4,M5) &
				M5 neq M3,
				Result
			),
			Time
		).

	 test(tptp_boo_e021, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				inters(X,Y,M4) &
				un(M4,M5,U) &
				disj(M4,M5) &
				nun(M1,M2,M5),
				Result
			),
			Time
		).

	 test(tptp_boo_e022, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,Z) &
				nun(X,Z,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e023, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,Z) &
				ninters(X,Z,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e024, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(U,M1,U) &
				disj(U,M1) &
				M1 neq {},
				Result
			),
			Time
		).

	 test(tptp_boo_e025, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				tba(Y,X,X,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e026, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				un(X,M2,M3) &
				ninters(M1,M3,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e027, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(M1,Z,M2) &
				inters(M2,W,M3) &
				inters(Y,Z,M4) &
				inters(M4,X,M3) &
				un(W,M5,U) &
				disj(W,M5) &
				ninters(M2,M5,{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e028, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(M1,Z,M2) &
				un(W,M5,U) &
				disj(W,M5) &
				inters(M2,M5,{}) &
				inters(M2,W,M6) &
				inters(Y,Z,M4) &
				ninters(M4,X,M6) &
				subset(X,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e029, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				un(M1,M2,M3) &
				un(M3,M4,U) &
				disj(M3,M4) &
				un(M1,Y,M5) &
				un(M5,M6,U) &
				disj(M5,M6) &
				nun(M4,M6,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e030, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				ninters(M1,Y,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e031, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				inters(X,M1,M2) &
				inters(Y,X,M3) &
				inters(Z,X,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e032, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				nun(X,M1,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e033, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				nun(M1,Y,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e034, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				un(X,M1,M2) &
				un(Y,X,M3) &
				un(Z,X,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e035, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				ninters(X,M1,{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e036, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,A,M1) &
				ninters(A,B,M1),
				Result
			),
			Time
		).

	 test(tptp_boo_e037, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixley(X,X,Y,U,M1) &
				M1 neq Y,
				Result
			),
			Time
		).

	 test(tptp_boo_e038, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixley(X,Y,Y,U,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e039, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixley(X,Y,X,U,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e040, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				un(A,M1,M2) &
				un(A,B,M3) &
				un(A,C,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e041, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,M1) &
				nun(M1,B,B),
				Result
			),
			Time
		).

	 test(tptp_boo_e042, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,M1,U) &
				disj(B,M1) &
				inters(B,M1,M2) &
				un(A,M3,U) &
				disj(A,M3) &
				ninters(A,M3,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e043, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixleyd(X,X,Y,U,M1) &
				M1 neq Y,
				Result
			),
			Time
		).

	 test(tptp_boo_e044, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixleyd(X,Y,Y,U,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e045, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pixleyd(X,Y,X,U,M1) &
				M1 neq X,
				Result
			),
			Time
		).

	 test(tptp_boo_e046, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Z,M1) &
				inters(Y,M1,M2) &
				nun(X,M2,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e047, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(Y,Z,M2) &
				un(M1,M2,M3) &
				nun(M3,Y,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e048, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Z,M1) &
				un(Y,M1,M2) &
				ninters(X,M2,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e049, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				un(Y,Z,M2) &
				inters(M1,M2,M3) &
				ninters(M3,Y,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e050, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(Y,M2,U) &
				disj(Y,M2) &
				inters(X,M2,M3) &
				nun(M1,M3,X) &
				subset(X,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e051, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,M1,U) &
				disj(B,M1) &
				un(B,M1,M2) &
				un(A,M3,U) &
				disj(A,M3) &
				nun(A,M3,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e052, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(X,Y,M2) &
				un(M1,X,M3) &
				ninters(M3,M2,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e053, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,X,M1) &
				un(M1,Y,M2) &
				un(X,X,M3) &
				ninters(M2,M3,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e054, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(M1,Y,M2) &
				un(X,Y,M3) &
				ninters(M2,M3,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e055, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(X,M1,M2) &
				ninters(M2,Y,Y) &
				subset(Y,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e056, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(X,M1,M2) &
				nun(M2,Y,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e057, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(M1,X,M2) &
				un(X,Y,M3) &
				ninters(M2,M3,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e058, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,X,M1) &
				un(M1,Y,M2) &
				un(X,X,M3) &
				ninters(M2,M3,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e059, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(M1,Y,M2) &
				un(X,Y,M3) &
				ninters(M2,M3,Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e060, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(Y,Z,M2) &
				inters(Z,X,M3) &
				un(M2,M3,M4) &
				un(M1,M4,M5) &
				un(X,Y,M6) &
				un(Y,Z,M7) &
				un(Z,X,M8) &
				inters(M7,M8,M9) &
				ninters(M6,M9,M5),
				Result
			),
			Time
		).

	 test(tptp_boo_e061, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,U) &
				disj(A,M1) &
				tba(A,M1,B,M2) &
				tba(C,D,E,M3) &
				tba(C,D,G,M4) &
				tba(G,F,E,M5) &
				tba(D,M5,C,M6) &
				tba(M3,F,M4,M7) &
				un(M7,M8,U) &
				disj(M7,M8) &
				tba(M2,M8,M6,M9) &
				M9 neq B &
				subset(B,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e062, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,M1,U) &
				disj(B,M1) &
				tba(A,B,M1,M2) &
				M2 neq A &
				subset(A,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e063, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,Z) &
				nun(Y,X,Z),
				Result
			),
			Time
		).

	 test(tptp_boo_e064, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(X,{},X),
				Result
			),
			Time
		).

	 test(tptp_boo_e065, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				ninters(U,X,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e066, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				ninters(X,U,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e067, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(X,Z,M2) &
				un(Y,Z,M3) &
				inters(X,M3,M4) &
				nun(M1,M2,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e068, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(X,Z,M2) &
				un(Y,Z,M3) &
				un(M1,M2,M4) &
				ninters(X,M3,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e069, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,X,M1) &
				inters(Z,X,M2) &
				un(Y,Z,M3) &
				inters(M3,X,M4) &
				nun(M1,M2,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e070, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,X,M1) &
				inters(Z,X,M2) &
				un(Y,Z,M3) &
				un(M1,M2,M4) &
				ninters(M3,X,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e071, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				un(X,Z,M2) &
				inters(Y,Z,M3) &
				inters(M1,M2,M4) &
				nun(X,M3,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e072, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,X,M1) &
				un(Z,X,M2) &
				inters(Y,Z,M3) &
				un(M3,X,M4) &
				ninters(M1,M2,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e073, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,X,M1) &
				un(Z,X,M2) &
				inters(Y,Z,M3) &
				inters(M1,M2,M4) &
				nun(M3,X,M4),
				Result
			),
			Time
		).

	 test(tptp_boo_e074, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				nun(X,M1,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e075, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				ninters(X,M1,{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e076, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,U) &
				un(X,Y,V) &
				U neq V,
				Result
			),
			Time
		).

	 test(tptp_boo_e077, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,U) &
				inters(X,Y,V) &
				U neq V,
				Result
			),
			Time
		).

	 test(tptp_boo_e078, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				un(M1,Z,M2) &
				un(X,Z,M3) &
				un(Y,Z,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e079, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				un(X,M1,M2) &
				un(X,Y,M3) &
				un(X,Z,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e080, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				inters(M1,Z,M2) &
				inters(X,Z,M3) &
				inters(Y,Z,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e081, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				inters(X,M1,M2) &
				inters(X,Y,M3) &
				inters(X,Z,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_boo_e082, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun({},X,X),
				Result
			),
			Time
		).

	 test(tptp_boo_e083, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,M1) &
				un(M1,M2,U) &
				disj(M1,M2) &
				un(M2,C,M3) &
				un(M3,M4,U) &
				disj(M3,M4) &
				un(C,D,M5) &
				un(M5,M6,U) &
				disj(M5,M6) &
				un(C,M7,U) &
				disj(C,M7) &
				un(M7,M6,M8) &
				un(M8,M13,U) &
				disj(M8,M13) &
				un(A,M13,M9) &
				un(M9,M10,U) &
				disj(M9,M10) &
				un(M4,M10,M11) &
				un(M11,M12,U) &
				disj(M11,M12) &
				M12 neq C,
				Result
			),
			Time
		).

	 test(tptp_boo_e084, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,A,U,M1) &
				nand(M1,A,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e085, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,A,U,M1) &
				nand(B,A,U,M2) &
				nand(M1,M2,U,M3) &
				M3 neq A,
				Result
			),
			Time
		).

	 test(tptp_boo_e086, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,C,U,M1) &
				nand(B,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,B,U,M4) &
				nand(M4,B,U,M5) &
				nand(M5,A,U,M6) &
				M3 neq M6,
				Result
			),
			Time
		).

	 test(tptp_boo_e087, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,A,U,M1) &
				nand(M1,A,U,M2) &
				nand(A,M2,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e088, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,A,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e089, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B ,
				Result
			),
			Time
		).

	 test(tptp_boo_e090, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e091, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e092, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(A,B,U,M4) &
				nand(C,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq C,
				Result
			),
			Time
		).

	 test(tptp_boo_e093, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e094, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e095, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e096, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e097, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,B,U,M4) &
				nand(C,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq C,
				Result
			),
			Time
		).

	 test(tptp_boo_e098, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e099, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(M1,A,U,M2) &
				nand(M2,A,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e100, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(M1,A,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e101, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(M1,C,U,M2) &
				nand(M2,C,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e102, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(A,B,U,M1) &
				nand(M1,C,U,M2) &
				nand(M2,C,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e103, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(M1,A,U,M2) &
				nand(A,M2,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e104, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(C,A,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e105, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,A,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e106, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,A,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e107, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e108, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,B,U,M1) &
				nand(A,M1,U,M2) &
				nand(A,M2,U,M3) &
				nand(A,C,U,M4) &
				nand(B,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e109, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nand(B,C,U,M1) &
				nand(A,M1,U,M2) &
				nand(M2,A,U,M3) &
				nand(B,A,U,M4) &
				nand(C,M4,U,M5) &
				nand(M3,M5,U,M6) &
				M6 neq C,
				Result
			),
			Time
		).

	 test(tptp_boo_e110, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,U) &
				disj(A,M1) &
				tba(A,M1,B,M2) &
				tba(C,D,G,M3) &
				tba(C,D,E,M4) &
				tba(M4,F,M3,M5) &
				un(M5,M6,U) &
				disj(M5,M6) &
				tba(G,F,E,M7) &
				tba(D,M7,C,M8) &
				tba(M2,M6,M8,M9) &
				M9 neq B &
				subset(B,U),
				Result
			),
			Time
		).

	 test(tptp_boo_e111, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				inters(Y,Z,M2) &
				inters(Z,X,M3) &
				un(M2,M3,M4) &
				un(M1,M4,M5) &
				un(X,Y,M6) &
				un(Y,Z,M7) &
				un(Z,X,M8) &
				inters(M7,M8,M9) &
				ninters(M6,M9,M5) &
				bool(X) &
				bool(Y) &
				bool(Z),
				Result
			),
			Time
		).

	 test(tptp_boo_e112, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(A,D,M3) &
				nandb(M3,M3,M4) &
				nandb(D,C,M5) &
				nandb(M5,M4,M6) &
				nandb(A,B,M7) &
				nandb(A,M7,M8) &
				nandb(M6,M8,M9) &
				nandb(M2,M9,{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e113, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(Q,R,M1) &
				nandb(P,M1,{{}}) &
				P = {{}} &
				R = {},
				Result
			),
			Time
		).

	 test(tptp_boo_e114, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,A,M1) &
				nandb(M1,M1,M2) &
				nandb(B,B,M3) &
				nandb(M3,M2,M4) &
				nandb(M4,M4,M5) &
				nandb(A,M3,M6) &
				nandb(M6,M5,{}),
				Result
			),
			Time
		).

	 test(tptp_boo_e115, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,A,M1) &
				nandb(M1,A,M2) &
				nandb(A,M2,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e116, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,A,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e117, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e118, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e119, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e120, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(A,B,M4) &
				nandb(C,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq C &
				bool(C),
				Result
			),
			Time
		).

	 test(tptp_boo_e121, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,B,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e122, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e123, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,B,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e124, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e125, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(A,B,M4) &
				nandb(C,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq C &
				bool(C),
				Result
			),
			Time
		).

	 test(tptp_boo_e126, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e127, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(M1,A,M2) &
				nandb(M2,A,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e128, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(M1,A,M2) &
				nandb(M2,A,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e129, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(M1,C,M2) &
				nandb(M2,C,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e130, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,B,M1) &
				nandb(M1,C,M2) &
				nandb(M2,C,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e131, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(M1,A,M2) &
				nandb(A,M2,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e132, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(C,A,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e133, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,A,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e134, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,A,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B &
				bool(B),
				Result
			),
			Time
		).

	 test(tptp_boo_e135, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,B,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e136, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,B,M1) &
				nandb(A,M1,M2) &
				nandb(A,M2,M3) &
				nandb(A,C,M4) &
				nandb(B,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq B,
				Result
			),
			Time
		).

	 test(tptp_boo_e137, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(B,C,M1) &
				nandb(A,M1,M2) &
				nandb(M2,A,M3) &
				nandb(B,A,M4) &
				nandb(C,M4,M5) &
				nandb(M3,M5,M6) &
				M6 neq C &
				bool(C),
				Result
			),
			Time
		).

	 test(tptp_boo_e138, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,M1) &
				un(M1,M2,{{}}) &
				disj(M1,M2) &
				un(M2,C,M3) &
				un(M3,M4,{{}}) &
				disj(M3,M4) &
				un(C,D,M5) &
				un(M5,M6,{{}}) &
				disj(M5,M6) &
				un(C,M7,{{}}) &
				disj(C,M7) &
				un(M7,M6,M8) &
				un(M8,M13,{{}}) &
				disj(M8,M13) &
				un(A,M13,M9) &
				un(M9,M10,{{}}) &
				disj(M9,M10) &
				un(M4,M10,M11) &
				un(M11,M12,{{}}) &
				disj(M11,M12) &
				M12 neq C,
				Result
			),
			Time
		).

	 test(tptp_boo_e139, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nandb(A,C,M1) &
				nandb(B,M1,M2) &
				nandb(A,M2,M3) &
				nandb(C,B,M4) &
				nandb(M4,B,M5) &
				nandb(M5,A,M6) &
				M3 neq M6,
				Result
			),
			Time
		).

	 test(tptp_boo_e140, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				tba(V,W,X,M1) &
				tba(V,W,Z,M2) &
				tba(M1,Y,M2,M3) &
				tba(X,Y,Z,M4) &
				tba(V,W,M4,M5) &
				M3 neq M5 &
				bool(V) &
				bool(W) &
				bool(X) &
				bool(Z) &
				bool(Y),
				Result
			),
			Time
		).

	 test(tptp_boo_e141, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,{{}}) &
				disj(A,M1) &
				tba(A,M1,B,M2) &
				tba(C,D,G,M3) &
				tba(C,D,E,M4) &
				tba(M4,F,M3,M5) &
				un(M5,M6,{{}}) &
				disj(M5,M6) &
				tba(G,F,E,M7) &
				tba(D,M7,C,M8) &
				tba(M2,M6,M8,M9) &
				M9 neq B &
				bool(A) &
				bool(B) &
				bool(C) &
				bool(D) &
				bool(G) &
				bool(E) &
				bool(F),
				Result
			),
			Time
		).

	 test(tptp_boo_e142, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,{{}}) &
				disj(A,M1) &
				tba(A,M1,B,M2) &
				tba(C,D,E,M3) &
				tba(C,D,G,M4) &
				tba(M3,F,M4,M7) &
				tba(G,F,E,M5) &
				tba(D,M5,C,M6) &
				un(M7,M8,{{}}) &
				disj(M7,M8) &
				tba(M2,M8,M6,M9) &
				M9 neq B &
				bool(A) &
				bool(B) &
				bool(C) &
				bool(D) &
				bool(E) &
				bool(F) &
				bool(G),
				Result
			),
			Time
		).

:- end_object.
