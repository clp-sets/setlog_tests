
:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 0.1,
		author is 'Maximiliano Cristiá, Gianfranco Rossi, and Paulo Moura',
		date is 2020/01/15,
		comment is 'Unit tests for setlog.'
	]).

	:- uses(lgtunit, [
		benchmark/2
	]).

	:- uses(user, [
		rsetlog(Goal, 4000, _, Result, []) as rsetlog(Goal, Result)
	]).

	 test(tptp_rel_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun({},X0,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				zero(U1,U2,X0,M1) &
				nun(M1,X0,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,cp(U1,U2)) &
				nun(X0,cp(U1,U2),cp(U1,U2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				top(U1,U2,X0,M1) &
				nun(X0,M1,M1),
				Result
			),
			Time
		).

	 test(tptp_rel_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,X1) &
				inv(X0,M1) &
				inv(X1,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				inv(X1,M2) &
				subset(M1,M2) &
				nsubset(X0,X1),
				Result
			),
			Time
		).

	 test(tptp_rel_e007, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1) &
				inv(X0,M2) &
				un(M2,M3,cp(U2,U1)) &
				disj(M2,M3) &
				ninv(M1,M3) ,
				Result
			),
			Time
		).

	 test(tptp_rel_e008, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,X1,M1) &
				inv(M1,M2) &
				inv(X0,M3) &
				inv(X1,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				un(M1,X1,{}) &
				inv(X1,M2) &
				nun(X0,M2,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X1,M1) &
				un(X0,M1,{}) &
				inv(X0,M2) &
				nun(M2,X1,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X1,X2,M1) &
				comp(X0,M1,M2) &
				comp(X0,X1,M3) &
				comp(X0,X2,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e012, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,X1) &
				comp(X0,X2,M1) &
				comp(X1,X2,M2) &
				un(M1,M2,M3) &
				ncomp(X1,X2,M3),
				Result
			),
			Time
		).

	 test(tptp_rel_e013, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,X1) &
				comp(X2,X0,M1) &
				comp(X2,X1,M2) &
				un(M1,M2,M3) &
				ncomp(X2,X1,M3),
				Result
			),
			Time
		).

	 test(tptp_rel_e014, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				inters(M1,X2,{}) &
				inv(X0,M2) &
				comp(M2,X2,M3) &
				ninters(X1,M3,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e015, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X1,M1) &
				comp(M1,X2,M2) &
				inters(X0,M2,{}) &
				comp(X1,X0,M3) &
				ninters(M3,X2,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e016, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				un(M1,M2,cp(U1,U3)) &
				disj(M1,M2) &
				inv(X1,M3) &
				comp(M2,M3,M4) &
				un(X0,M5,cp(U1,U2)) &
				disj(X0,M5) &
				nun(M4,M5,M5) &
				subset(X1,cp(U2,U3)),
				Result
			),
			Time
		).

	 test(tptp_rel_e017, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(X0) &
				(ncomp(X0,{},{}) or ncomp({},X0,{})),
				Result
			),
			Time
		).

	 test(tptp_rel_e018, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,cp(U1,U2)) &
				id(U1,M1) &
				id(U2,M2) &
				(ncomp(X0,M2,X0) or ncomp(M1,X0,X0)),
				Result
			),
			Time
		).

	 test(tptp_rel_e019, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ncomp(cp(U1,U2),cp(U2,U3),cp(U1,U3)) &
				U2 neq {},
				Result
			),
			Time
		).

	 test(tptp_rel_e020, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				comp(X0,X2,M2) &
				un(M2,M3,cp(U1,U2)) &
				disj(M2,M3) &
				inters(M1,M3,M4) &
				un(X2,M5,cp(U3,U2)) &
				disj(X2,M5) &
				inters(X1,M5,M6) &
				comp(X0,M6,M7) &
				comp(X0,X2,M8) &
				un(M8,M9,cp(U1,U2)) &
				disj(M8,M9) &
				ninters(M7,M9,M4) &
				subset(X0,cp(U1,U3)) &
				subset(X2,cp(U3,U2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e021, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				un(M1,M2,cp(U1,U2)) &
				disj(M1,M2) &
				comp(X0,X2,M3) &
				un(M2,M3,M4) &
				un(X2,M5,cp(U3,U2)) &
				disj(X2,M5) &
				inters(X1,M5,M6) &
				comp(X0,M6,M7) &
				un(M7,M8,cp(U1,U2)) &
				disj(M7,M8) &
				comp(X0,X2,M9) &
				nun(M8,M9,M4) &
				subset(X0,cp(U1,U3)),
				Result
			),
			Time
		).

	 test(tptp_rel_e022, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(vec(X0,U2) &
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1),false) &
				nvec(M1,U2),
				Result
			),
			Time
		).

	 test(tptp_rel_e023, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				noirules &
				call(vec(X0,U2) &
				comp(X1,cp(U1,U2),X1) &
				inters(X0,X1,M1) &
				nvec(M1,U2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e024, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(X0,X1,M3) &
				vec(X0,U) &
				id(U,M1) &
				inters(X0,M1,M2) &
				comp(M2,X1,M3) &
				delay(dom(X1,M4) &
				subset(M4,U) &
				ran(X1,M5) &
				subset(M5,U),false),
				Result
			),
			Time
		).

	 test(tptp_rel_e025, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				noirules &
				call(nsubset(M3,M4) &
				vec(X0,U) &
				id(U,M1) &
				inters(X0,M1,M2) &
				comp(M2,X1,M3) &
				inters(X0,X1,M4) &
				ran(X1,M5) &
				subset(M5,U)),
				Result
			),
			Time
		).

	 test(tptp_rel_e026, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inters(X0,X1,M1) &
				id(U,M2) &
				inters(X0,M2,M3) &
				comp(M2,X1,M4) &
				nsubset(M1,M4) &
				dom(X1,M5) &
				subset(M5,U) ,
				Result
			),
			Time
		).

	 test(tptp_rel_e027, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X1,M1) &
				inters(X0,M1,M2) &
				inters(X1,X2,M3) &
				comp(M2,M3,M4) &
				comp(X0,M3,M5) &
				nsubset(M4,M5),
				Result
			),
			Time
		).

	 test(tptp_rel_e028, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X1,M1) &
				inters(X0,M1,M2) &
				inters(X1,X2,M3) &
				comp(M2,M3,M4) &
				comp(M2,X2,M5) &
				nsubset(M4,M5),
				Result
			),
			Time
		).

	 test(tptp_rel_e029, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(M1,M2) &
				subset(X0,M2) &
				ninv(X0,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e030, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M2) &
				subset(X0,M2) &
				comp(X0,cp(U,U),M5) &
				comp(X0,X1,M4) &
				rres(X1,U,X1) &
				ninters(M5,X1,M4),
				Result
			),
			Time
		).

	 test(tptp_rel_e031, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M2) &
				subset(X0,M2) &
				comp(X0,cp(U,U),M3) &
				diff(cp(U,U),M3,M4) &
				inters(M4,M2,M5) &
				un(X0,M7,cp(U,U)) &
				disj(X0,M7) &
				ninters(M7,M2,M5),
				Result
			),
			Time
		).

	 test(tptp_rel_e032, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(M1,M2) &
				subset(X0,M2) &
				subset(X1,M2) &
				comp(X0,X1,M3) &
				ninters(X0,X1,M3),
				Result
			),
			Time
		).

	 test(tptp_rel_e033, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(M1,M2) &
				subset(X0,M2) &
				subset(X1,M2) &
				comp(X0,X2,M3) &
				comp(X1,X2,M4) &
				inters(M3,M4,M5) &
				inters(X0,X1,M6) &
				ncomp(M6,X2,M5),
				Result
			),
			Time
		).

	 test(tptp_rel_e034, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(M1,M2) &
				subset(X0,M2) &
				comp(X0,X1,M3) &
				un(X2,M4,cp(U1,U2)) &
				disj(X2,M4) &
				inters(M3,M4,M5) &
				comp(X0,X2,M6) &
				un(M6,M7,cp(U1,U2)) &
				disj(M6,M7) &
				ninters(M3,M7,M5),
				Result
			),
			Time
		).

	 test(tptp_rel_e035, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				pfun(X1) &
				comp(X0,X1,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	 test(tptp_rel_e036, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X1,X2,M1) &
				comp(X0,M1,M2) &
				comp(X0,X1,M3) &
				comp(X0,X2,M4) &
				 inters(M3,M4,M5) &
				un(M2,M5,M6) &
				ninters(M3,M4,M6),
				Result
			),
			Time
		).

	 test(tptp_rel_e037, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inters(X0,X1,M1) &
				comp(X1,X2,M3) &
				inters(X0,M3,M2) &
				ran(X1,M4) &
				subset(M4,U) &
				ran(X2,M5) &
				subset(M5,U)  &
				ncomp(M1,X2,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e038, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inters(X0,X2,M1) &
				comp(X1,M1,M2) &
				inv(X0,M3) &
				inters(X1,M3,M4) &
				comp(M4,M1,M5) &
				nsubset(M2,M5) &
				dom(X1,M6) &
				subset(M6,U),
				Result
			),
			Time
		).

	 test(tptp_rel_e039, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inv(X0,M1) &
				inters(X1,M1,M2) &
				inters(X0,X2,M3) &
				comp(M2,M3,M4) &
				ncomp(X1,M3,M4) &
				dom(X1,M5) &
				subset(M5,U),
				Result
			),
			Time
		).

	 test(tptp_rel_e040, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inv(X0,M1) &
				inters(X1,M1,M2) &
				comp(M2,X2,M3) &
				inters(X0,X2,M4) &
				comp(M2,M4,M5) &
				nsubset(M3,M5) &
				ran(X2,M6) &
				subset(M6,U),
				Result
			),
			Time
		).

	 test(tptp_rel_e041, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				vec(X0,U) &
				inv(X0,M1) &
				inters(X1,M1,M2) &
				inters(X0,X2,M3) &
				comp(M2,M3,M4) &
				ncomp(M2,X2,M4) &
				ran(X2,M5) &
				subset(M5,U),
				Result
			),
			Time
		).

	 test(tptp_rel_e042, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				inters(M1,X2,M3) &
				inv(X0,M4) &
				comp(M4,X2,M5) &
				inters(X1,M5,M6) &
				comp(X0,M6,M7) &
				inters(M7,X2,M8) &
				nsubset(M3,M8),
				Result
			),
			Time
		).

	 test(tptp_rel_e043, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				inters(M1,X2,M2) &
				inv(X1,M3) &
				comp(X2,M3,M4) &
				inters(X0,M4,M5) &
				inv(X0,M6) &
				comp(M6,X2,M7) &
				inters(X1,M7,M8) &
				comp(M5,M8,M9) &
				nsubset(M2,M9),
				Result
			),
			Time
		).

	 test(tptp_rel_e044, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				inters(X1,X2,M5) &
				comp(X0,M5,M6) &
				comp(X0,X1,M7) &
				comp(X0,X2,M8) &
				ninters(M7,M8,M6),
				Result
			),
			Time
		).

	 test(tptp_rel_e045, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				comp(M1,X0,M2) &
				id(M3,M4) &
				subset(M2,M4) &
				npfun(X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e046, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				inv(X0,M1) &
				comp(M1,X0,M2) &
				id(U,M4) &
				rres(X0,U,X0) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	 test(tptp_rel_e047, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				comp(X0,X1,M5) &
				un(X1,M6,cp(U1,U2)) &
				disj(X1,M6) &
				comp(X0,M6,M7) &
				ninters(M5,M7,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e050, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M5) &
				un(X1,M6,cp(U1,U2)) &
				disj(X1,M6) &
				comp(X0,M6,M7) &
				inters(M5,M7,{}) &
				npfun(X0) &
				subset(X0,cp(U3,U1)),
				Result
			),
			Time
		).

	 test(tptp_rel_e051, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M4) &
				comp(X0,X1,M5) &
				un(X1,M6,cp(U,U)) &
				disj(X1,M6) &
				comp(X0,M6,M7) &
				disj(M5,M7) &
				npfun(X0) &
				comp(M4,X0,X0) &
				comp(X0,M4,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e052, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				comp(X0,X1,M5) &
				un(X1,M6,cp(U1,U2)) &
				disj(X1,M6) &
				comp(X0,M6,M7) &
				ninters(M5,M7,{}),
				Result
			),
			Time
		).

	 test(tptp_rel_e053, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X0) &
				comp(X0,X1,M5) &
				un(X1,M6,cp(U,U)) &
				disj(X1,M6) &
				comp(X0,M6,M7) &
				ninters(M5,M7,{}) ,
				Result
			),
			Time
		).

	 test(tptp_rel_e054, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X1,M1) &
				comp(X0,M1,M2) &
				subset(M2,X2) &
				un(X2,M3,cp(U3,U2)) &
				disj(X2,M3) &
				comp(M3,X1,M4) &
				un(X0,M5,cp(U3,U5)) &
				disj(X0,M5) &
				nsubset(M4,M5) &
				subset(X1,cp(U2,U5)),
				Result
			),
			Time
		).

	 test(tptp_rel_e055, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1) &
				comp(M1,X1,M2) &
				un(X2,M3,cp(U1,U3)) &
				disj(X2,M3) &
				subset(M2,M3) &
				inv(X1,M4) &
				comp(X2,M4,M5) &
				nsubset(M5,X0) &
				subset(X1,cp(U2,U3)),
				Result
			),
			Time
		).

	 test(tptp_rel_e056, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				comp(X0,M1,M2) &
				comp(M2,X0,M3) &
				nsubset(X0,M3),
				Result
			),
			Time
		).

	 test(tptp_rel_e057, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X1,X2,M1) &
				subset(X0,M1) &
				(nsubset(X0,X1) or nsubset(X0,X2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e058, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,X1) &
				subset(X0,X2) &
				inters(X1,X2,M1) &
				nsubset(X0,M1),
				Result
			),
			Time
		).

	 test(tptp_rel_e059, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,X1,M1) &
				subset(M1,X2) &
				(nsubset(X0,X2) or nsubset(X1,X2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e060, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X0,X1) &
				subset(X2,X1) &
				un(X0,X2,M1) &
				nsubset(M1,X1),
				Result
			),
			Time
		).

	 test(tptp_rel_e061, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,cp(U,U),M1) &
				un(M1,M2,cp(U,U)) &
				disj(M1,M2) &
				ncomp(M2,cp(U,U),M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e062, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,X1,M1) &
				nun(X1,X0,M1),
				Result
			),
			Time
		).

	 test(tptp_rel_e063, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X1,X2,M1) &
				un(X0,M1,M2) &
				un(X0,X1,M3) &
				nun(M3,X2,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e064, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X1,M1,cp(U1,U2)) &
				disj(X1,M1) &
				un(X0,M2,cp(U1,U2)) &
				disj(X0,M2) &
				un(M1,M2,M3) &
				un(M3,M4,cp(U1,U2)) &
				disj(M3,M4) &
				un(M2,X1,M5) &
				un(M5,M6,cp(U1,U2)) &
				disj(M5,M6) &
				nun(M6,M4,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e065, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1) &
				un(X1,M2,cp(U1,U2)) &
				disj(X1,M2) &
				un(M1,M2,M3) &
				un(M3,M4,cp(U1,U2)) &
				disj(M3,M4) &
				ninters(X0,X1,M4),
				Result
			),
			Time
		).

	 test(tptp_rel_e066, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X1,X2,M1) &
				comp(X0,M1,M2) &
				comp(X0,X1,M3) &
				ncomp(M3,X2,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e067, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U2,M2) &
				ncomp(X0,M2,X0) &
				subset(X0,cp(U1,U2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e068, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,X1,M1) &
				comp(M1,X2,M2) &
				comp(X0,X2,M3) &
				comp(X1,X2,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e069, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				ninv(M1,X0),
				Result
			),
			Time
		).

	 test(tptp_rel_e070, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,X1,M1) &
				inv(M1,M2) &
				inv(X0,M3) &
				inv(X1,M4) &
				nun(M2,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e071, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X0,X1,M1) &
				inv(M1,M2) &
				inv(X1,M3) &
				inv(X0,M4) &
				ncomp(M3,M4,M2),
				Result
			),
			Time
		).

	 test(tptp_rel_e072, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X0,M1) &
				comp(X0,X1,M2) &
				un(M2,M3,cp(U0,U2)) &
				disj(M2,M3) &
				comp(M1,M3,M4) &
				un(X1,M5,cp(U1,U2)) &
				disj(X1,M5) &
				nsubset(M4,M5) &
				subset(X0,cp(U0,U1)),
				Result
			),
			Time
		).

	 test(tptp_rel_e073, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1) &
				nun(X0,M1,cp(U1,U2)),
				Result
			),
			Time
		).

	 test(tptp_rel_e074, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X0,M1,cp(U1,U2)) &
				disj(X0,M1) &
				ninters(X0,M1,{}),
				Result
			),
			Time
		).

:- end_object.
