
:- object(tests(_Entity_),
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

	:- uses(_Entity_, [
		rsetlog(Goal, 4000, _, Result, []) as rsetlog(Goal, Result),
		rsetlog(Goal, 4000, Constraints, Result, []) as rsetlog(Goal, Constraints, Result)
	]).

	cover(setlog).

	test(zmt_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				rel(N1) &
				(nrel(Q) or nrel(R)),
				Result
			),
			Time
		).

	test(zmt_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Q) &
				rel(R) &
				un(Q,R,N1) &
				nrel(N1),
				Result
			),
			Time
		).

	test(zmt_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				dom(R,N1) &
				X nin N1,
				Result
			),
			Time
		).

	test(zmt_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom({},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom({[X,Y]},N1) &
				N1 neq {X},
				Result
			),
			Time
		).

	test(zmt_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(X,R,M1) &
				rres(M1,X,M2) &
				ninters(R,cp(X,X),M2),
				Result
			),
			Time
		).

	test(zmt_e007, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				dom(R,N4) &
				nun(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e008, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				ran(R,N1) &
				Y nin N1,
				Result
			),
			Time
		).

	test(zmt_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran({},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran({[X,Y]},N1) &
				N1 neq {Y},
				Result
			),
			Time
		).

	test(zmt_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(X,R,M1) &
				inters(R,cp(X,X),M2) &
				nrres(M1,X,M2),
				Result
			),
			Time
		).

	test(zmt_e012, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				nran(N1,N2) &
				ran(Q,N3) &
				ran(R,N4) &
				un(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e013, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				[P1,P2] in N1 &
				(P1 nin X or P2 nin X or P1 neq P2),
				Result
			),
			Time
		).

	test(zmt_e014, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				P1 in X &
				P2 in X &
				P1 = P2 &
				[P1,P2] nin N1,
				Result
			),
			Time
		).

	test(zmt_e015, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				[P1,P2] in N1 &
				(P1 neq P2 or P1 nin X),
				Result
			),
			Time
		).

	test(zmt_e016, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				P1 = P2 &
				P1 in X &
				id(X,N1) &
				[P1,P2] nin N1,
				Result
			),
			Time
		).

	test(zmt_e017, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				P1 in X &
				napply(N1,P1,P1),
				Result
			),
			Time
		).

	test(zmt_e018, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				ndom(N1,S),
				Result
			),
			Time
		).

	test(zmt_e019, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				nran(N1,S),
				Result
			),
			Time
		).

	test(zmt_e020, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id({},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e021, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id({X},N1) &
				N1 neq {[X,X]},
				Result
			),
			Time
		).

	test(zmt_e022, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,N1) &
				id(N1,N2) &
				id(A,N3) &
				id(B,N4) &
				nun(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e023, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(B,C,A1) &
				comp(A,A1,A2) &
				comp(A,B,A3) &
				comp(A3,C,A4) &
				A2 neq A4,
				Result
			),
			Time
		).

	test(zmt_e024, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp({},R,N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e025, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(R,{},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e026, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				nsubset(N2,N3),
				Result
			),
			Time
		).

	test(zmt_e027, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Q,N1) &
				dom(R,N2) &
				subset(N1,N2) &
				comp(Q,R,N3) &
				dom(N3,N4) &
				ndom(Q,N4),
				Result
			),
			Time
		).

	test(zmt_e028, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				ran(N1,N2) &
				ran(R,N3) &
				nsubset(N2,N3),
				Result
			),
			Time
		).

	test(zmt_e029, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				ran(Q,N2) &
				subset(N1,N2) &
				comp(Q,R,N3) &
				ran(N3,N4) &
				nran(R,N4),
				Result
			),
			Time
		).

	test(zmt_e030, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				apply(F,X,N2) &
				comp(F,G,N4) &
				napply(N4,X,N5) &
				apply(G,N2,N5),
				Result
			),
			Time
		).

	test(zmt_e031, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Q_,Q) &
				subset(R_,R) &
				comp(Q_,R_,N1) &
				comp(Q,R,N2) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e032, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Q) &
				rel(R) &
				comp(Q,R,N1) &
				nrel(N1),
				Result
			),
			Time
		).

	test(zmt_e033, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				comp(F,G,N1) &
				npfun(N1),
				Result
			),
			Time
		).

	test(zmt_e034, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				[X,Y] in N1 &
				([X,Y] nin R or X nin S),
				Result
			),
			Time
		).

	test(zmt_e035, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				X in S &
				dres(S,R,N2) &
				[X,Y] nin N2,
				Result
			),
			Time
		).

	test(zmt_e036, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				[X,Y] in N1 &
				([X,Y] nin R or Y nin S),
				Result
			),
			Time
		).

	test(zmt_e037, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				Y in S &
				rres(R,S,N2) &
				[X,Y] nin N2,
				Result
			),
			Time
		).

	test(zmt_e038, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				ndom(N1,N2) &
				dom(R,N3) &
				inters(S,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e039, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				nran(N1,N2) &
				ran(R,N3) &
				inters(N3,S,N2),
				Result
			),
			Time
		).

	test(zmt_e040, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				nsubset(N1,R),
				Result
			),
			Time
		).

	test(zmt_e041, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				nsubset(N1,R),
				Result
			),
			Time
		).

	test(zmt_e042, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				ncomp(N1,R,N2) &
				dres(S,R,N2),
				Result
			),
			Time
		).

	test(zmt_e043, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				comp(R,N1,N2) &
				nrres(R,S,N2),
				Result
			),
			Time
		).

	test(zmt_e044, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				dres(S,N1,N2) &
				inters(S,T,N3) &
				nid(N3,N2),
				Result
			),
			Time
		).

	test(zmt_e045, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				inters(S,T,N3) &
				id(N3,N2) &
				ndres(S,N1,N2),
				Result
			),
			Time
		).

	test(zmt_e046, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				rres(N1,T,N2) &
				inters(S,T,N3) &
				nid(N3,N2),
				Result
			),
			Time
		).

	test(zmt_e047, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				inters(S,T,N3) &
				id(N3,N2) &
				nrres(N1,T,N2),
				Result
			),
			Time
		).

	test(zmt_e048, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(T,R,N1) &
				dres(S,N1,N2) &
				inters(S,T,N3) &
				ndres(N3,R,N2),
				Result
			),
			Time
		).

	test(zmt_e049, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				rres(N1,T,N2) &
				inters(S,T,N3) &
				nrres(R,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e050, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,C) &
				id(A,IA) &
				id(B,IB) &
				id(C,IC) &
				ncomp(IA,IB,IC),
				Result
			),
			Time
		).

	test(zmt_e051, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(A,IA) &
				id(B,IB) &
				id(C,IC) &
				comp(IA,IB,IC) &
				ninters(A,B,C),
				Result
			),
			Time
		).

	test(zmt_e052, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				inters(S,N1,{}) &
				ndres(S,R,{}),
				Result
			),
			Time
		).

	test(zmt_e053, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				inters(S,N1,{}) &
				nrres(R,S,{}),
				Result
			),
			Time
		).

	test(zmt_e054, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres({},R,N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e055, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,{},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e056, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,{},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e057, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres({},S,N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e058, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				ndres(S,R,R),
				Result
			),
			Time
		).

	test(zmt_e059, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				subset(N1,S) &
				nrres(R,S,R),
				Result
			),
			Time
		).

	test(zmt_e060, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,{[X,Y]},N1) &
				(X in S &
				N1 neq {[X,Y]} or X nin S &
				N1 neq {}),
				Result
			),
			Time
		).

	test(zmt_e061, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres({[X,Y]},S,N1) &
				(Y in S &
				N1 neq {[X,Y]} or Y nin S &
				N1 neq {}),
				Result
			),
			Time
		).

	test(zmt_e062, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				X nin N1 &
				dres({X},R,N2) &
				N2 neq {},
				Result
			),
			Time
		).

	test(zmt_e063, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				Y nin N1 &
				rres(R,{Y},N2) &
				N2 neq {},
				Result
			),
			Time
		).

	test(zmt_e064, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				ndres(S,N1,N4) &
				dres(S,Q,N3) &
				dres(S,R,N2) &
				un(N2,N3,N4),
				Result
			),
			Time
		).

	test(zmt_e065, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				nrres(N1,S,N2) &
				rres(Q,S,N3) &
				rres(R,S,N4) &
				un(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e066, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X in S &
				dom(F,N1) &
				X in N1 &
				dres(S,F,N2) &
				apply(N2,X,N3) &
				napply(F,X,N3),
				Result
			),
			Time
		).

	test(zmt_e067, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(R,S,M1) &
				ninv(M1,M2) &
				inv(R,M3) &
				inv(S,M4) &
				inters(M3,M4,M2),
				Result
			),
			Time
		).

	test(zmt_e068, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				N2 in S &
				rres(F,S,N3) &
				napply(N3,X,N2),
				Result
			),
			Time
		).

	test(zmt_e070, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				[X,Y] in N1 &
				([X,Y] nin R or X in S),
				Result
			),
			Time
		).

	test(zmt_e071, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				X nin S &
				dares(S,R,N2) &
				[X,Y] nin N2,
				Result
			),
			Time
		).

	test(zmt_e072, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				[X,Y] in N1 &
				([X,Y] nin R or Y in S),
				Result
			),
			Time
		).

	test(zmt_e073, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in R &
				Y nin S &
				rares(R,S,N2) &
				[X,Y] nin N2,
				Result
			),
			Time
		).

	test(zmt_e074, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				ndom(N1,N2) &
				dom(R,N3) &
				diff(N3,S,N2),
				Result
			),
			Time
		).

	test(zmt_e075, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				ran(N1,N2) &
				ran(R,N3) &
				ndiff(N3,S,N2),
				Result
			),
			Time
		).

	test(zmt_e076, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				nsubset(N1,R),
				Result
			),
			Time
		).

	test(zmt_e077, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				nsubset(N1,R),
				Result
			),
			Time
		).

	test(zmt_e078, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				dares(S,N1,N2) &
				diff(T,S,N3) &
				nid(N3,N2),
				Result
			),
			Time
		).

	test(zmt_e079, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				rares(N1,T,N2) &
				diff(S,T,N3) &
				nid(N3,N2),
				Result
			),
			Time
		).

	test(zmt_e080, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(T,R,N1) &
				dares(S,N1,N2) &
				un(S,T,N3) &
				ndares(N3,R,N2),
				Result
			),
			Time
		).

	test(zmt_e081, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				rares(N1,T,N2) &
				un(S,T,N3) &
				nrares(R,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e082, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				inters(S,N1,{}) &
				ndares(S,R,R),
				Result
			),
			Time
		).

	test(zmt_e083, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				inters(S,N1,{}) &
				nrares(R,S,R),
				Result
			),
			Time
		).

	test(zmt_e084, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares({},R,N1) &
				N1 neq R,
				Result
			),
			Time
		).

	test(zmt_e085, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,{},N1) &
				N1 neq R,
				Result
			),
			Time
		).

	test(zmt_e086, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				ndares(S,R,{}),
				Result
			),
			Time
		).

	test(zmt_e087, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				subset(N1,S) &
				nrares(R,S,{}),
				Result
			),
			Time
		).

	test(zmt_e088, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(R,{},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e089, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares({},S,N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e090, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,{[X,Y]},N1) &
				(X in S &
				N1 neq {} or X nin S &
				N1 neq {[X,Y]}),
				Result
			),
			Time
		).

	test(zmt_e091, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares({[X,Y]},S,N1) &
				(Y in S &
				N1 neq {} or Y nin S &
				N1 neq {[X,Y]}),
				Result
			),
			Time
		).

	test(zmt_e092, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				ndares(S,N1,N2) &
				dares(S,Q,N3) &
				dares(S,R,N4) &
				un(N4,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e093, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				nrares(N1,S,N2) &
				rares(Q,S,N3) &
				rares(R,S,N4) &
				un(N4,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e094, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X nin S &
				dom(F,N1) &
				X in N1 &
				dares(S,F,N2) &
				apply(N2,X,N3) &
				napply(F,X,N3),
				Result
			),
			Time
		).

	test(zmt_e096, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				N2 nin S &
				rares(F,S,N3) &
				napply(N3,X,N2),
				Result
			),
			Time
		).

	test(zmt_e098, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				[X,Y] in N1 &
				[Y,X] nin R,
				Result
			),
			Time
		).

	test(zmt_e099, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				[Y,X] in R &
				[X,Y] nin N1,
				Result
			),
			Time
		).

	test(zmt_e100, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				N1 = N2 &
				Q neq R,
				Result
			),
			Time
		).

	test(zmt_e101, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				Q = R &
				N1 neq N2,
				Result
			),
			Time
		).

	test(zmt_e102, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				subset(N1,N2) &
				nsubset(Q,R),
				Result
			),
			Time
		).

	test(zmt_e103, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				subset(Q,R) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e104, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv({},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e105, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv({[X,Y]},N1) &
				N1 neq {[Y,X]},
				Result
			),
			Time
		).

	test(zmt_e106, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				nun(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e107, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				ninters(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e108, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				ndiff(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e109, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				ninv(N1,R),
				Result
			),
			Time
		).

	test(zmt_e110, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				ncomp(N4,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e111, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				ninv(N1,N1),
				Result
			),
			Time
		).

	test(zmt_e112, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				nrres(N3,S,N2),
				Result
			),
			Time
		).

	test(zmt_e113, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				ndres(S,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e114, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				nrares(N3,S,N2),
				Result
			),
			Time
		).

	test(zmt_e115, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				ndares(S,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e116, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				dom(N1,N2) &
				nran(R,N2),
				Result
			),
			Time
		).

	test(zmt_e117, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				ran(N1,N2) &
				ndom(R,N2),
				Result
			),
			Time
		).

	test(zmt_e118, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(R,S,N1) &
				ran(R,N2) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e119, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(S,T) &
				subset(Q,R) &
				rimg(Q,S,N1) &
				rimg(R,T,N2) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e120, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(S,T) &
				rimg(R,S,N1) &
				rimg(R,T,N2) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e121, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Q,R) &
				rimg(Q,S,N1) &
				rimg(R,S,N2) &
				nsubset(N1,N2),
				Result
			),
			Time
		).

	test(zmt_e122, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(R,{},N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e123, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg({},S,N1) &
				N1 neq {},
				Result
			),
			Time
		).

	test(zmt_e124, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(S,T,N1) &
				rimg(R,N1,N2) &
				rimg(R,S,N3) &
				rimg(R,T,N4) &
				nun(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e125, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				nran(R,N3) &
				rimg(R,S,N3),
				Result
			),
			Time
		).

	test(zmt_e126, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				inters(S,T,N2) &
				nrimg(N1,T,N2) ,
				Result
			),
			Time
		).

	test(zmt_e127, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				rimg(N1,T,N2) &
				inters(S,T,N3) &
				rimg(R,N3,N4) &
				N2 neq N4,
				Result
			),
			Time
		).

	test(zmt_e128, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				rimg(N1,T,N2) &
				rimg(R,T,N4) &
				ninters(N4,S,N2),
				Result
			),
			Time
		).

	test(zmt_e129, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				rimg(N1,T,N2) &
				diff(T,S,N3) &
				rimg(R,N3,N4) &
				N2 neq N4,
				Result
			),
			Time
		).

	test(zmt_e130, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				rimg(N1,T,N2) &
				rimg(R,T,N4) &
				ndiff(N4,S,N2),
				Result
			),
			Time
		).

	test(zmt_e131, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				rimg(N1,S,N2) &
				rimg(Q,S,N3) &
				rimg(R,N3,N4) &
				N2 neq N4,
				Result
			),
			Time
		).

	test(zmt_e132, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				rimg(N1,S,N2) &
				X in N2 &
				dom(F,N3) &
				apply(F,X,N4) &
				(X nin N3 or N4 nin S),
				Result
			),
			Time
		).

	test(zmt_e133, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				rimg(N1,S,N2) &
				dom(F,N3) &
				apply(F,X,N4) &
				X in N3 &
				N4 in S &
				X nin N2,
				Result
			),
			Time
		).

	test(zmt_e134, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				dom(N1,N2) &
				dom(R,N3) &
				inv(Q,N4) &
				nrimg(N4,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e135, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				ran(N1,N2) &
				ran(Q,N3) &
				nrimg(R,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e136, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X in S &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				rimg(F,S,N3) &
				N2 nin N3,
				Result
			),
			Time
		).

	test(zmt_e137, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Q) &
				rel(R) &
				oplus(Q,R,N1) &
				nrel(N1),
				Result
			),
			Time
		).

	test(zmt_e138, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				oplus(F,G,N1) &
				npfun(N1),
				Result
			),
			Time
		).

	test(zmt_e139, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(Q,R,N1) &
				oplus(N1,S,N2) &
				oplus(R,S,N3) &
				noplus(Q,N3,N2),
				Result
			),
			Time
		).

	test(zmt_e140, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(R,{},N1) &
				N1 neq R,
				Result
			),
			Time
		).

	test(zmt_e141, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Q,N1) &
				dom(R,N2) &
				subset(N1,N2) &
				noplus(Q,R,R),
				Result
			),
			Time
		).

	test(zmt_e142, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus({},R,N1) &
				N1 neq R,
				Result
			),
			Time
		).

	test(zmt_e143, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				dom(R,N4) &
				nun(N3,N4,N2),
				Result
			),
			Time
		).

	test(zmt_e144, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(N1,IB) &
				comp(IR,R,N1) &
				id(B,IB) &
				pfun(R) &
				subset(R,cp(A,B)) &
				inv(R,IR),
				Result
			),
			Time
		).

	test(zmt_e145, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(R) &
				subset(R,cp(A,B)) &
				inv(R,IR) &
				id(B,IB) &
				comp(IR,R,N1) &
				subset(N1,IB),
				Result
			),
			Time
		).

	test(zmt_e146, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				A in N1 &
				apply(F,A,N2) &
				ran(F,N3) &
				N2 nin N3,
				Result
			),
			Time
		).

	test(zmt_e147, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				[X,Y] in F &
				apply(F,X,N1) &
				Y neq N1,
				Result
			),
			Time
		).

	test(zmt_e148, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Z = X &
				apply({[X,Y]},Z,N1) &
				N1 neq Y,
				Result
			),
			Time
		).

	test(zmt_e149, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				un(F,G,N1) &
				dom(F,N2) &
				X in N2 &
				apply(N1,X,N3) &
				napply(F,X,N3),
				Result
			),
			Time
		).

	test(zmt_e150, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				un(F,G,N1) &
				dom(G,N2) &
				X in N2 &
				apply(N1,X,N3) &
				napply(G,X,N3),
				Result
			),
			Time
		).

	test(zmt_e151, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				subset(F,G) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				napply(G,X,N2),
				Result
			),
			Time
		).

	test(zmt_e152, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				dom(F,N2) &
				X in N2 &
				Y in N2 &
				apply(F,X,N3) &
				apply(F,Y,N3) &
				X neq Y,
				Result
			),
			Time
		).

	test(zmt_e153, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				subset(G,F) &
				inv(G,N2) &
				(npfun(G) or npfun(N2)),
				Result
			),
			Time
		).

	test(zmt_e154, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				dom(F,N2) &
				X in N2 &
				apply(F,X,N3) &
				napply(N1,N3,X),
				Result
			),
			Time
		).

	test(zmt_e155, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				npfun(N1),
				Result
			),
			Time
		).

	test(zmt_e156, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,N1) &
				inv({},N2) &
				comp(N2,{},N3) &
				subset(N1,N3) &
				B neq {},
				Result
			),
			Time
		).

	test(zmt_e157, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,N1) &
				inv({},N2) &
				comp(N2,{},N3) &
				B = {} &
				nsubset(N1,N3),
				Result
			),
			Time
		).

	test(zmt_e158, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,N1) &
				inv({},N2) &
				comp(N2,{},N3) &
				subset(N1,N3) &
				pfun({}) &
				dom({},A) &
				(A neq {} or B neq {}),
				Result
			),
			Time
		).

	test(zmt_e159, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,N1) &
				inv({},N2) &
				comp(N2,{},N3) &
				dom({},A) &
				A = {} &
				B = {} &
				(nsubset(N1,N3) or npfun({})),
				Result
			),
			Time
		).

	test(zmt_e160, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(A,B)) &
				id(A,IA) &
				id(B,IB) &
				(ncomp(IA,R,R) or ncomp(R,IB,R)),
				Result
			),
			Time
		).

	test(zmt_e161, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(S,M1) &
				rres(R,M1,M2) &
				ran(R,M3) &
				dres(M3,S,M4) &
				comp(M2,M4,M5) &
				ncomp(R,S,M5),
				Result
			),
			Time
		).

	test(zmt_e162, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				inv(N1,N2) &
				npfun(N2),
				Result
			),
			Time
		).

	test(zmt_e163, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				inv(N1,N2) &
				comp(N2,N1,N3) &
				nsubset(N1,N3),
				Result
			),
			Time
		).

	test(zmt_e164, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(U,U)) &
				dom(R,DR) &
				ncomp(R,cp(U,U),cp(DR,U)),
				Result
			),
			Time
		).

	test(zmt_e200, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				dom(R,N4) &
				un(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e201, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,N1) &
				id(N1,N2) &
				id(A,N3) &
				id(B,N4) &
				un(N3,N4,N2) &
				A neq {} &
				B neq {},
				Result
			),
			Time
		).

	test(zmt_e202, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(B,C,A1) &
				comp(A,A1,A2) &
				comp(A,B,A3) &
				comp(A3,C,A2) &
				B neq {} &
				C neq {} &
				A neq {},
				Result
			),
			Time
		).

	test(zmt_e203, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				dom(N1,N2) &
				dom(R,N3) &
				inv(Q,N4) &
				rimg(N4,N3,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e204, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(Q,R,N1) &
				oplus(N1,S,N2) &
				oplus(R,S,N3) &
				oplus(Q,N3,N2) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e205, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				dom(R,N4) &
				un(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e206, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				dres(S,N1,N2) &
				inters(S,T,N3) &
				id(N3,N2) &
				T neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e207, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(T,R,N1) &
				dres(S,N1,N2) &
				inters(S,T,N3) &
				dres(N3,R,N2) &
				T neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e208, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				ran(N1,N2) &
				ran(R,N3) &
				diff(N3,S,N2) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e209, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				rares(N1,T,N2) &
				un(S,T,N3) &
				rares(R,N3,N2) &
				R neq {} &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e210, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				N1 = N2 &
				Q = R &
				Q neq {},
				Result
			),
			Time
		).

	test(zmt_e211, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N1) &
				Q = R &
				Q neq {},
				Result
			),
			Time
		).

	test(zmt_e212, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				subset(N1,N2) &
				subset(Q,R) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e213, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Q,N1) &
				inv(R,N2) &
				subset(Q,R) &
				subset(N1,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e216, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				un(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e217, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				inters(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e218, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				diff(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e219, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				inv(N1,R) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e221, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				inv(N1,N2) &
				inv(Q,N3) &
				inv(R,N4) &
				comp(N4,N3,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e222, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				inv(N1,N1) &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e223, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				rres(N3,S,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e224, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				dres(S,N3,N2) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e225, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				rares(N3,S,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e226, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				inv(N1,N2) &
				inv(R,N3) &
				dares(S,N3,N2) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e227, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				dom(N1,N2) &
				ran(R,N2) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e228, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,N1) &
				ran(N1,N2) &
				dom(R,N2) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e229, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(R,S,N1) &
				ran(R,N2) &
				subset(N1,N2) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e230, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(S,T) &
				subset(Q,R) &
				rimg(Q,S,N1) &
				rimg(R,T,N2) &
				subset(N1,N2) &
				S neq {} &
				T neq {} &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e231, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(S,T) &
				rimg(R,S,N1) &
				rimg(R,T,N2) &
				subset(N1,N2) &
				S neq {} &
				T neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e232, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Q,R) &
				rimg(Q,S,N1) &
				rimg(R,S,N2) &
				subset(N1,N2) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e235, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(S,T,N1) &
				rimg(R,N1,N2) &
				rimg(R,S,N3) &
				rimg(R,T,N4) &
				un(N3,N4,N2) &
				S neq {} &
				T neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e236, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				ran(R,N3) &
				rimg(R,S,N3) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e237, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				inters(S,T,N2) &
				rimg(N1,T,N2) &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e238, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				rimg(N1,T,N2) &
				inters(S,T,N3) &
				rimg(R,N3,N2) &
				S neq {} &
				R neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e239, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				rimg(N1,T,N2) &
				rimg(R,T,N4) &
				inters(N4,S,N2) &
				R neq {} &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e240, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				rimg(N1,T,N2) &
				diff(T,S,N3) &
				rimg(R,N3,N2) &
				S neq {} &
				R neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e241, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				ran(N1,N2) &
				ran(Q,N3) &
				ran(R,N4) &
				un(N3,N4,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e242, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				rimg(N1,T,N2) &
				rimg(R,T,N4) &
				diff(N4,S,N2) &
				R neq {} &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e243, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				rimg(N1,S,N2) &
				rimg(Q,S,N3) &
				rimg(R,N3,N2) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e244, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				rimg(N1,S,N2) &
				X in N2 &
				dom(F,N3) &
				apply(F,X,N4) &
				X in N3 &
				N4 in S &
				F neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e245, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				rimg(N1,S,N2) &
				dom(F,N3) &
				apply(F,X,N4) &
				X in N3 &
				N4 in S &
				X in N2 &
				F neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e246, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				ran(N1,N2) &
				ran(Q,N3) &
				rimg(R,N3,N2) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e247, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X in S &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				rimg(F,S,N3) &
				N2 in N3 &
				F neq {} &
				S nin {},
				Result
			),
			Time
		).

	test(zmt_e248, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Q) &
				rel(R) &
				oplus(Q,R,N1) &
				rel(N1) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e249, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				oplus(F,G,N1) &
				pfun(N1) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e250, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				[P1,P2] in N1 &
				P1 in X &
				P2 in X &
				P1 = P2 &
				X neq {},
				Result
			),
			Time
		).

	test(zmt_e251, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus(R,{},R) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e252, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Q,N1) &
				dom(R,N2) &
				subset(N1,N2) &
				oplus(Q,R,R) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e253, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				oplus({},R,R) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e254, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(R) &
				ran(R,N1) &
				inv(R,N2) &
				comp(N2,R,N3) &
				id(N1,N4) &
				subset(N3,N4) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e255, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				inv(R,N2) &
				comp(N2,R,N3) &
				id(N1,N4) &
				subset(N3,N4) &
				pfun(R) &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e256, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				A in N1 &
				apply(F,A,N2) &
				ran(F,N3) &
				N2 in N3 &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e257, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				[X,Y] in F &
				apply(F,X,N1) &
				Y = N1 &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e259, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				un(F,G,N1) &
				dom(F,N2) &
				X in N2 &
				apply(N1,X,N3) &
				apply(F,X,N3) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e260, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				P1 in X &
				P2 in X &
				P1 = P2 &
				[P1,P2] in N1 &
				X neq {},
				Result
			),
			Time
		).

	test(zmt_e261, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				un(F,G,N1) &
				dom(G,N2) &
				X in N2 &
				apply(N1,X,N3) &
				apply(G,X,N3) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e262, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				subset(F,G) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				apply(G,X,N2) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e263, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				dom(F,N2) &
				X in N2 &
				Y in N2 &
				apply(F,X,N3) &
				apply(F,Y,N3) &
				X = Y &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e264, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				subset(G,F) &
				inv(G,N2) &
				pfun(G) &
				pfun(N2) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e265, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				dom(F,N2) &
				X in N2 &
				apply(F,X,N3) &
				apply(N1,N3,X) &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e266, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,N1) &
				pfun(N1) &
				pfun(N1) &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e271, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(X,N1) &
				[P1,P2] in N1 &
				P1 = P2 &
				P1 in X &
				X neq {},
				Result
			),
			Time
		).

	test(zmt_e272, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,N1) &
				inv({[N4,N5]},N2) &
				comp(N2,{[N4,N5]},N3) &
				subset(N1,N3) &
				pfun({[N4,N5]}) &
				dom({[N4,N5]},A) &
				A = {N4} &
				B = {N5},
				Result
			),
			Time
		).

	test(zmt_e278, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				dom(N1,S) &
				S neq{},
				Result
			),
			Time
		).

	test(zmt_e279, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				ran(N1,S) &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e280, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				rel(N1) &
				rel(Q) &
				rel(R) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e285, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				dom(N1,N2) &
				dom(Q,N3) &
				subset(N2,N3) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e286, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Q,N1) &
				dom(R,N2) &
				subset(N1,N2) &
				comp(Q,R,N3) &
				dom(N3,N4) &
				dom(Q,N4) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e287, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Q,R,N1) &
				ran(N1,N2) &
				ran(Q,N3) &
				subset(N2,N3) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e288, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				ran(Q,N2) &
				subset(N1,N2) &
				comp(Q,R,N3) &
				ran(N3,N4) &
				ran(R,N4) &
				R neq {} &
				Q neq {},
				Result
			),
			Time
		).

	test(zmt_e290, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				dom(G,N3) &
				N2 in N3 &
				comp(F,G,N4) &
				apply(N4,X,N5) &
				apply(G,N2,N5) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e291, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Q_,Q) &
				subset(R_,R) &
				comp(Q_,R_,N1) &
				comp(Q,R,N2) &
				subset(N1,N2) &
				Q_ neq {} &
				Q neq {} &
				R_ neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e292, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Q) &
				rel(R) &
				comp(Q,R,N1) &
				rel(N1) &
				Q neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e293, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				pfun(G) &
				comp(F,G,N1) &
				pfun(N1) &
				F neq {} &
				G neq {},
				Result
			),
			Time
		).

	test(zmt_e294, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				[X,Y] in N1 &
				[X,Y] in R &
				W in S,
				Result
			),
			Time
		).

	test(zmt_e296, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				[X,Y] in N1 &
				[X,Y] in R &
				W in S,
				Result
			),
			Time
		).

	test(zmt_e298, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				dom(N1,N2) &
				dom(R,N3) &
				inters(S,N3,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e299, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				ran(N1,N2) &
				ran(R,N3) &
				inters(N3,S,N2) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e301, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,R,N1) &
				subset(N1,R) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e302, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				subset(N1,R) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e303, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				comp(N1,R,N2) &
				dres(S,R,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e304, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				comp(R,N1,N2) &
				rres(R,S,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e305, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				inters(S,T,N3) &
				id(N3,N2) &
				dres(S,N1,N2) &
				T neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e306, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				rres(N1,T,N2) &
				inters(S,T,N3) &
				id(N3,N2) &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e309, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(R,S,N1) &
				rres(N1,T,N2) &
				inters(S,T,N3) &
				rres(R,N3,N2) &
				R neq {} &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e310, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				inters(S,N1,{}) &
				dres(S,R,{}) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e311, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				inters(S,N1,{}) &
				rres(R,S,{}) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e316, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				dres(S,R,R) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e317, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				subset(N1,S) &
				rres(R,S,R) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e319, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(S,{[X,Y]},N1) &
				W in S &
				N1 = {[X,Y]},
				Result
			),
			Time
		).

	test(zmt_e320, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres({[X,Y]},S,N1) &
				W in S &
				N1 = {[X,Y]},
				Result
			),
			Time
		).

	test(zmt_e323, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				dres(S,N1,N4) &
				dres(S,Q,N3) &
				dres(S,R,N2) &
				un(N2,N3,N4) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e324, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				rres(N1,S,N2) &
				rres(Q,S,N3) &
				rres(R,S,N4) &
				un(N4,N3,N2) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e325, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X in S &
				dom(F,N1) &
				X in N1 &
				dres(S,F,N2) &
				apply(N2,X,N3) &
				apply(F,X,N3) &
				F neq {},
				Result
			),
			Time
		).

	test(zmt_e326, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				N2 in S &
				rres(F,S,N3) &
				apply(N3,X,N2) &
				F neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e327, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				[X,Y] in N1 &
				[X,Y] in R &
				W in S,
				Result
			),
			Time
		).

	test(zmt_e329, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				[X,Y] in N1 &
				[X,Y] in R &
				W nin S &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e331, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				dom(N1,N2) &
				dom(R,N3) &
				diff(N3,S,N2) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e332, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,R,N1) &
				subset(N1,R) &
				S neq {} &
				R neq {},
				Result
			),
			Time
		).

	test(zmt_e333, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares(R,S,N1) &
				subset(N1,R) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e334, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(T,N1) &
				dares(S,N1,N2) &
				diff(T,S,N3) &
				id(N3,N2) &
				T neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e335, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(S,N1) &
				rares(N1,T,N2) &
				diff(S,T,N3) &
				id(N3,N2) &
				S neq {} &
				T neq {},
				Result
			),
			Time
		).

	test(zmt_e336, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(T,R,N1) &
				dares(S,N1,N2) &
				un(S,T,N3) &
				dares(N3,R,N2) &
				T neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e337, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				inters(S,N1,{}) &
				dares(S,R,R) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e338, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				inters(S,N1,{}) &
				rares(R,S,R) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e341, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,N1) &
				subset(N1,S) &
				dares(S,R,{}) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e342, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(R,N1) &
				subset(N1,S) &
				rares(R,S,{}) &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e346, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dares(S,{[X,Y]},N1) &
				W in S &
				N1 = {[X,Y]},
				Result
			),
			Time
		).

	test(zmt_e347, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rares({[X,Y]},S,N1) &
				Y nin S &
				S neq {} &
				N1 = {[X,Y]},
				Result
			),
			Time
		).

	test(zmt_e348, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				dares(S,N1,N4) &
				dares(S,Q,N3) &
				dares(S,R,N2) &
				un(N2,N3,N4) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e349, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Q,R,N1) &
				rares(N1,S,N2) &
				rares(Q,S,N3) &
				rares(R,S,N4) &
				un(N4,N3,N2) &
				Q neq {} &
				R neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e350, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				X nin S &
				dom(F,N1) &
				X in N1 &
				dares(S,F,N2) &
				apply(N2,X,N3) &
				apply(F,X,N3) &
				F neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e351, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,N1) &
				X in N1 &
				apply(F,X,N2) &
				N2 nin S &
				rares(F,S,N3) &
				apply(N3,X,N2) &
				F neq {} &
				S neq {},
				Result
			),
			Time
		).

	test(zmt_e352, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B neq {} &
				ndom(cp(A,B),A),
				Result
			),
			Time
		).

	test(zmt_e353, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq {} &
				nran(cp(A,B),B),
				Result
			),
			Time
		).

	test(zmt_e354, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,M1) &
				subset(M1,cp(A,B)) &
				nsubset(R,cp(B,A)),
				Result
			),
			Time
		).

	test(zmt_e355, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(R,M1) &
				nsubset(M1,cp(A,B)) &
				subset(R,cp(B,A)),
				Result
			),
			Time
		).

	test(zmt_e356, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninv(cp(A,B),cp(B,A)),
				Result
			),
			Time
		).

	test(zmt_e357, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in A &
				nrimg(cp(A,B),{X},B),
				Result
			),
			Time
		).

	test(zmt_e358, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in A &
				ndres({X},cp(A,B),cp({X},B)),
				Result
			),
			Time
		).

	test(zmt_e359, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y in B &
				nrres(cp(A,B),{Y},cp(A,{Y})),
				Result
			),
			Time
		).

	test(zmt_e360, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in A &
				diff(cp(A,B),cp({X},B),M1) &
				ndares({X},cp(A,B),M1),
				Result
			),
			Time
		).

	test(zmt_e361, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y in B &
				diff(cp(A,B),cp(A,{Y}),M1) &
				nrares(cp(A,B),{Y},M1),
				Result
			),
			Time
		).

	test(zmt_e362, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(A,B)) &
				subset(Q,cp(A,B)) &
				oplus(R,Q,M1) &
				nsubset(M1,cp(A,B)),
				Result
			),
			Time
		).

	test(zmt_e363, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				C neq {} &
				noplus(cp(A,B),cp(A,C),cp(A,C)),
				Result
			),
			Time
		).

	test(zmt_e364, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(cp(A,{Y})),
				Result
			),
			Time
		).

	test(zmt_e365, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in D &
				napply(cp(D,{Y}),X,Y),
				Result
			),
			Time
		).

:- end_object.
