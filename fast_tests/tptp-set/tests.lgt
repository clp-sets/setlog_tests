:- object(tests(_Entity_, _Timeout_),
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
		rsetlog(Goal, _Timeout_, _, Result, []) as rsetlog(Goal, Result),
		rsetlog(Goal, _Timeout_, Constraints, Result, []) as rsetlog(Goal, Constraints, Result)
	]).

	cover(setlog).

	test(tptp_set_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B = BB &
				Element_of_b in B &
				Element_of_b nin BB,
				Result
			),
			Time
		).

	test(tptp_set_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,A,AUA) &
				AUA neq A,
				Result
			),
			Time
		).

	test(tptp_set_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,A,AUA) &
				nsubset(A,AUA),
				Result
			),
			Time
		).

	test(tptp_set_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,AUB) &
				nsubset(A,AUB),
				Result
			),
			Time
		).

	test(tptp_set_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,AIB) &
				inters(B,C,BIC) &
				inters(A,BIC,AIBIC) &
				ninters(AIB,C,AIBIC),
				Result
			),
			Time
		).

	test(tptp_set_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(D,A,D) &
				nsubset(D,A),
				Result
			),
			Time
		).

	test(tptp_set_e007, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,Buc) &
				inters(A,B,Aib) &
				inters(A,C,Aic) &
				ninters(A,Buc,Ai_buc) &
				un(Aib,Aic,Ai_buc),
				Result
			),
			Time
		).

	test(tptp_set_e008, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,A,Bda) &
				inters(A,Bda,Ai_bda) &
				Ai_bda neq {},
				Result
			),
			Time
		).

	test(tptp_set_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,A) &
				diff(B,A,Bda) &
				diff(B,D,Bdd) &
				nsubset(Bda,Bdd),
				Result
			),
			Time
		).

	test(tptp_set_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,Aib) &
				diff(C,A,Cda) &
				diff(C,B,Cdb) &
				diff(C,Aib,Cd_aib) &
				nun(Cda,Cdb,Cd_aib),
				Result
			),
			Time
		).

	test(tptp_set_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(A,B,Adb) &
				diff(A,Adb,Ad_adb) &
				ninters(A,B,Ad_adb),
				Result
			),
			Time
		).

	test(tptp_set_e012, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,M1,U) &
				disj(A,M1) &
				un(M1,M2,U) &
				disj(M1,M2) &
				M2 neq A,
				Result
			),
			Time
		).

	test(tptp_set_e013, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(As,Bs,M1) &
				ninters(Bs,As,M1),
				Result
			),
			Time
		).

	test(tptp_set_e014, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(As,Cs) &
				subset(Bs,Cs) &
				un(As,Bs,M1) &
				nsubset(M1,Cs),
				Result
			),
			Time
		).

	test(tptp_set_e015, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(As,Bs,M1) &
				nun(Bs,As,M1),
				Result
			),
			Time
		).

	test(tptp_set_e016, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[W,X] = [Y,Z] &
				W neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e017, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X,Y} = {X,Z} &
				Y neq Z,
				Result
			),
			Time
		).

	test(tptp_set_e018, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[W,X] = [Y,Z] &
				X neq Z,
				Result
			),
			Time
		).

	test(tptp_set_e019, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,A) &
				subset(A,B) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e020, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = [U,V] &
				prolog_call(nth1(1,X,M1)) &
				prolog_call(nth1(2,X,M2)) &
				(M1 neq U or M2 neq V),
				Result
			),
			Time
		).

	test(tptp_set_e021, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				prolog_call(nth1(2,[A,B],M1)) &
				M1 neq B,
				Result
			),
			Time
		).

	test(tptp_set_e022, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X nin {X},
				Result
			),
			Time
		).

	test(tptp_set_e023, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(A,B,M1) &
				nrel(M1),
				Result
			),
			Time
		).

	test(tptp_set_e024, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(B,A,M1) &
				ran(M1,M2) &
				ran(A,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e025, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(A,M1) &
				dom(B,M2) &
				subset(M1,M2) &
				comp(A,B,M3) &
				dom(A,M4) &
				ndom(M3,M4),
				Result
			),
			Time
		).

	test(tptp_set_e026, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				pfun(Another_function) &
				comp(Another_function,A_function,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e027, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Function1) &
				dom(Function1,A) &
				ran(Function1,M1) &
				subset(M1,B) &
				pfun(Function2) &
				dom(Function2,C) &
				ran(Function2,M2) &
				subset(M2,D) &
				M1 = C &
				comp(Function1,Function2,M3) &
				(ndom(M3,A) or nran(M3,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e028, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				[A,B] in A_function &
				napply(A_function,A,B) ,
				Result
			),
			Time
		).

	test(tptp_set_e029, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				dom(A_function,M1) &
				A in M1 &
				apply(A_function,A,B) &
				[A,B] nin A_function,
				Result
			),
			Time
		).

	test(tptp_set_e030, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				dom(A_function,A_domain) &
				ran(A_function,A_range) &
				A in A_domain &
				apply(A_function,A,M1) &
				M1 nin A_range,
				Result
			),
			Time
		).

	test(tptp_set_e031, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				apply(A_function,A,M2) &
				apply(Another_function,M2,M3) &
				comp(A_function,Another_function,M4) &
				apply(M4,A,M5) &
				M3 neq M5,
				Result
			),
			Time
		).

	test(tptp_set_e032, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in Set_a &
				B in Set_b &
				[A,B] nin cp(Set_a,Set_b),
				Result
			),
			Time
		).

	test(tptp_set_e034, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				set(Y) &
				(X = Y &
				Y neq X or Y = X &
				X neq Y),
				Result
			),
			Time
		).

	test(tptp_set_e035, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				f(X,Y) in cp(U,V) or
				X nin {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e036, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y nin {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e037, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(X,X),
				Result
			),
			Time
		).

	test(tptp_set_e038, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				X neq X,
				Result
			),
			Time
		).

	test(tptp_set_e039, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = Y &
				(U in X &
				U nin Y or W nin X &
				W in Y),
				Result
			),
			Time
		).

	test(tptp_set_e040, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(M1,X,M2) &
				Y in M2,
				Result
			),
			Time
		).

	test(tptp_set_e041, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Z in {},
				Result
			),
			Time
		).

	test(tptp_set_e042, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset({},X),
				Result
			),
			Time
		).

	test(tptp_set_e043, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,{}) &
				X neq {},
				Result
			),
			Time
		).

	test(tptp_set_e044, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Z = {} &
				Y in Z,
				Result
			),
			Time
		).

	test(tptp_set_e045, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset({}),
				Result
			),
			Time
		).

	test(tptp_set_e046, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X,Y} neq {Y,X},
				Result
			),
			Time
		).

	test(tptp_set_e047, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset({X,X},{X,Y}),
				Result
			),
			Time
		).

	test(tptp_set_e048, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset({Y},{X,Y}),
				Result
			),
			Time
		).

	test(tptp_set_e049, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X,Z} = {Y,Z} &
				X neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e050, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X,Y} = {},
				Result
			),
			Time
		).

	test(tptp_set_e051, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Z &
				Y in Z &
				nsubset({X,Y},Z),
				Result
			),
			Time
		).

	test(tptp_set_e052, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset({X}),
				Result
			),
			Time
		).

	test(tptp_set_e053, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{Y} nin {X,{Y}},
				Result
			),
			Time
		).

	test(tptp_set_e054, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X} = {},
				Result
			),
			Time
		).

	test(tptp_set_e055, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{} nin {{}},
				Result
			),
			Time
		).

	test(tptp_set_e056, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y in {X} &
				Y neq X,
				Result
			),
			Time
		).

	test(tptp_set_e057, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X} = {Y} &
				X neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e058, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{Y,Z} = {X} &
				X neq Y &
				X neq Z,
				Result
			),
			Time
		).

	test(tptp_set_e059, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(Y) &
				M1 in {Y} &
				nset(M1) ,
				Result
			),
			Time
		).

	test(tptp_set_e060, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(Y) &
				M1 in {Y} &
				{M1} neq {Y},
				Result
			),
			Time
		).

	test(tptp_set_e061, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in {X} &
				nset(M1) &
				M1 = {X},
				Result
			),
			Time
		).

	test(tptp_set_e062, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in {X} &
				{M1} neq {X} &
				M1 neq {X},
				Result
			),
			Time
		).

	test(tptp_set_e063, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = {U} &
				M1 in X &
				M1 neq U,
				Result
			),
			Time
		).

	test(tptp_set_e064, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in X &
				{M1} = X &
				nset(X),
				Result
			),
			Time
		).

	test(tptp_set_e065, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in {X} &
				{M1} = {X} &
				Y in {X} &
				M1 neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e066, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Y &
				nsubset({X},Y),
				Result
			),
			Time
		).

	test(tptp_set_e067, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,{Y}) &
				X neq {} &
				X neq {Y},
				Result
			),
			Time
		).

	test(tptp_set_e068, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				(X = {} or X = {M1} or (V in X &
				un({V},M1,U) &
				disj({V},M1) &
				inters(M1,X,M2) &
				W in M2)),
				Result
			),
			Time
		).

	test(tptp_set_e069, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				(X = {} or X = {M1} or (V in X &
				un({V},M1,U) &
				disj({V},M1) &
				inters(M1,X,M2) &
				W in M2 &
				W in X)),
				Result
			),
			Time
		).

	test(tptp_set_e070, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun({X},{Y},{X,Y}),
				Result
			),
			Time
		).

	test(tptp_set_e071, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X} nin {{X},{X,{Y}}},
				Result
			),
			Time
		).

	test(tptp_set_e072, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X,{Y}} nin {{X},{X,{Y}}},
				Result
			),
			Time
		).

	test(tptp_set_e073, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[Y,Z] in cp(U1,U2) &
				prolog_call(nth1(1,[Y,Z],M1)) &
				prolog_call(nth1(2,[Y,Z],M2)) &
				[M1,M2] nin cp(U1,U2),
				Result
			),
			Time
		).

	test(tptp_set_e074, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset({{X},{X,{Y}}}),
				Result
			),
			Time
		).

	test(tptp_set_e075, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in cp(U1,U2) &
				sop(X,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e076, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in {Y/Z} &
				X neq Y &
				X nin Z,
				Result
			),
			Time
		).

	test(tptp_set_e077, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				X nin {X/Z},
				Result
			),
			Time
		).

	test(tptp_set_e078, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Z &
				X nin {Y/Z},
				Result
			),
			Time
		).

	test(tptp_set_e079, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{}} neq {X},
				Result
			),
			Time
		).

	test(tptp_set_e080, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{Y}} neq {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e081, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({Y},{Z},M1) &
				nun({X},M1,{X/{Y/{Z/{}}}}),
				Result
			),
			Time
		).

	test(tptp_set_e082, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U in {X/{Y/{Z/{}}}} &
				U neq X &
				U neq Y &
				U neq Z,
				Result
			),
			Time
		).

	test(tptp_set_e083, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U nin {U/{Y/{Z/{}}}},
				Result
			),
			Time
		).

	test(tptp_set_e084, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U nin {X/{U/{Z/{}}}},
				Result
			),
			Time
		).

	test(tptp_set_e085, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U nin {X/{Y/{U/{}}}},
				Result
			),
			Time
		).

	test(tptp_set_e086, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U in X &
				V in X &
				W in X &
				nsubset({U/{V/{W/{}}}},X),
				Result
			),
			Time
		).

	test(tptp_set_e087, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{U/{Y/{Z/{}}}} = {},
				Result
			),
			Time
		).

	test(tptp_set_e088, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{U/{Z/{}}}} = {},
				Result
			),
			Time
		).

	test(tptp_set_e089, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{Y/{U/{}}}} = {},
				Result
			),
			Time
		).

	test(tptp_set_e090, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U in X &
				V in X &
				W in X &
				{U/{V/{W/{}}}} = {},
				Result
			),
			Time
		).

	test(tptp_set_e091, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U nin {U/{V/{W/{}}}},
				Result
			),
			Time
		).

	test(tptp_set_e092, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{X/{Y/{}}}} neq {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e093, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{Y/{X/{}}}} neq {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e094, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{Y/{Y/{}}}} neq {X,Y},
				Result
			),
			Time
		).

	test(tptp_set_e095, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X/{Y/{Z/{}}}} neq {Y/{X/{Z/{}}}},
				Result
			),
			Time
		).

	test(tptp_set_e096, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				inters(M1,D,M2) &
				inters(C,D,M3) &
				ninters(B,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e097, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				inters(D,C,M1) &
				un(B,M1,M2) &
				un(B,D,M3) &
				ninters(M3,C,M2),
				Result
			),
			Time
		).

	test(tptp_set_e098, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				inters(X,M1,M2) &
				inters(X,Z,M3) &
				ninters(Y,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e099, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(B,{},{}),
				Result
			),
			Time
		).

	test(tptp_set_e100, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				ninters(U,X,X),
				Result
			),
			Time
		).

	test(tptp_set_e101, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(B,B,B),
				Result
			),
			Time
		).

	test(tptp_set_e102, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				ninters(X,M1,M1),
				Result
			),
			Time
		).

	test(tptp_set_e103, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(M1,M2,U) &
				disj(M1,M2) &
				M2 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e104, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({},M1,U) &
				disj({},M1) &
				M1 neq U,
				Result
			),
			Time
		).

	test(tptp_set_e105, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(U,M1,U) &
				disj(U,M1) &
				M1 neq {},
				Result
			),
			Time
		).

	test(tptp_set_e106, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				ninters(M1,X,{}),
				Result
			),
			Time
		).

	test(tptp_set_e107, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				nun(M1,X,U),
				Result
			),
			Time
		).

	test(tptp_set_e108, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				un(A,B,M1) &
				diff(E,M1,M2) &
				diff(E,A,M3) &
				diff(E,B,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e109, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				inters(A,B,M1) &
				diff(E,M1,M2) &
				diff(E,A,M3) &
				diff(E,B,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e110, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,U) &
				inters(X,Y,{}) &
				un(X,M1,U) &
				disj(X,M1) &
				M1 neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e111, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y in X &
				un(X,M1,U) &
				disj(X,M1) &
				Z in M1 &
				Y = Z,
				Result
			),
			Time
		).

	test(tptp_set_e112, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				un(M1,D,M2) &
				un(C,D,M3) &
				nun(B,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e113, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nun(Y,X,M1),
				Result
			),
			Time
		).

	test(tptp_set_e114, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				un(X,M1,M2) &
				un(X,Z,M3) &
				nun(Y,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e115, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(B,{},B),
				Result
			),
			Time
		).

	test(tptp_set_e116, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U) &
				nun(U,X,U),
				Result
			),
			Time
		).

	test(tptp_set_e117, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nun(X,M1,M1) ,
				Result
			),
			Time
		).

	test(tptp_set_e118, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				X in M1 &
				X nin Y &
				X nin Z,
				Result
			),
			Time
		).

	test(tptp_set_e119, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Y &
				un(Y,Z,M1) &
				X nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e120, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Z &
				un(Y,Z,M1) &
				X nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e121, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				inters(B,M1,M2) &
				inters(B,C,M3) &
				inters(B,D,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e122, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Z,M1) &
				inters(Y,Z,M2) &
				un(M1,M2,M3) &
				un(X,Y,M4) &
				ninters(M4,Z,M3),
				Result
			),
			Time
		).

	test(tptp_set_e123, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(C,D,M1) &
				un(B,M1,M2) &
				un(B,C,M3) &
				un(B,D,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e124, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Z,M1) &
				un(Y,Z,M2) &
				inters(M1,M2,M3) &
				inters(X,Y,M4) &
				nun(M4,Z,M3),
				Result
			),
			Time
		).

	test(tptp_set_e125, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				ninters(B,M1,B),
				Result
			),
			Time
		).

	test(tptp_set_e126, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Z,M1) &
				inters(Y,M1,M2) &
				inters(X,M2,M3) &
				ninters(X,Y,M3),
				Result
			),
			Time
		).

	test(tptp_set_e127, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				nun(B,M1,B),
				Result
			),
			Time
		).

	test(tptp_set_e128, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Z,M1) &
				un(Y,M1,M2) &
				un(X,M2,M3) &
				nun(X,Y,M3),
				Result
			),
			Time
		).

	test(tptp_set_e129, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(M1,Z,M2) &
				un(X,M2,M3) &
				nun(X,Z,M3) &
				subset(Z,U),
				Result
			),
			Time
		).

	test(tptp_set_e130, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(M1,Z,M2) &
				un(Y,M2,M3) &
				un(X,M3,M4) &
				un(Y,Z,M5) &
				nun(X,M5,M4) &
				subset(Z,U),
				Result
			),
			Time
		).

	test(tptp_set_e131, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				un(X,M2,U) &
				disj(X,M2) &
				inters(M2,M1,M3) &
				inters(X,Z,M4) &
				un(M4,M3,M5) &
				nun(M4,M1,M5) &
				subset(Y,U),
				Result
			),
			Time
		).

	test(tptp_set_e132, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(X,Z,M2) &
				un(M1,M2,M3) &
				nun(M1,Z,M3) &
				subset(Z,U),
				Result
			),
			Time
		).

	test(tptp_set_e133, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(X,Z,M2) &
				un(Y,M2,M3) &
				un(M1,M3,M4) &
				un(Y,Z,M5) &
				nun(M1,M5,M4) &
				subset(Z,U),
				Result
			),
			Time
		).

	test(tptp_set_e134, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				inters(M1,Y,M2) &
				inters(X,Y,M3) &
				nun(M2,M3,Y) &
				subset(Y,U),
				Result
			),
			Time
		).

	test(tptp_set_e135, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				ninters(B,C,B),
				Result
			),
			Time
		).

	test(tptp_set_e136, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,X) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e137, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				nun(B,C,C),
				Result
			),
			Time
		).

	test(tptp_set_e138, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,Y) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e139, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				un(Y,M1,U) &
				disj(Y,M1) &
				ninters(M1,X,{}),
				Result
			),
			Time
		).

	test(tptp_set_e140, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,M1,U) &
				disj(Y,M1) &
				inters(M1,X,{}) &
				nsubset(X,Y) &
				subset(X,U),
				Result
			),
			Time
		).

	test(tptp_set_e141, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,M1,U) &
				disj(Y,M1) &
				inters(M1,X,{}) &
				subset(Y,X) &
				X neq Y &
				subset(X,U),
				Result
			),
			Time
		).

	test(tptp_set_e142, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				sop(A,M1) &
				first1(M1,M2) &
				nset(M2),
				Result
			),
			Time
		).

	test(tptp_set_e143, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				sop(A,M1) &
				second1(M1,M2) &
				nset(M2),
				Result
			),
			Time
		).

	test(tptp_set_e144, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				sop(A,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e145, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				un(X,M1,U) &
				disj(X,M1) &
				nun(M1,Y,U) &
				subset(Y,U),
				Result
			),
			Time
		).

	test(tptp_set_e146, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,U) &
				disj(X,M1) &
				un(M1,Y,U) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e147, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				un(Y,M1,U) &
				disj(Y,M1) &
				un(X,M2,U) &
				disj(X,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e148, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,M1,U) &
				disj(Y,M1) &
				un(X,M2,U) &
				disj(X,M2) &
				subset(M1,M2) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e149, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				nsubset(B,M1),
				Result
			),
			Time
		).

	test(tptp_set_e150, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nsubset(Y,M1),
				Result
			),
			Time
		).

	test(tptp_set_e151, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				nsubset(M1,B),
				Result
			),
			Time
		).

	test(tptp_set_e152, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				nsubset(M1,Y),
				Result
			),
			Time
		).

	test(tptp_set_e153, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(B,D) &
				inters(C,D,M1) &
				nsubset(B,M1),
				Result
			),
			Time
		).

	test(tptp_set_e154, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(D,E) &
				un(B,D,M1) &
				un(C,E,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e155, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(D,E) &
				inters(B,D,M1) &
				inters(C,E,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e156, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U1) &
				subset(Y,U2) &
				nsubset(cp(X,Y),cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e157, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U1) &
				subset(Y,U2) &
				U in X &
				V in Y &
				[U,V] nin cp(U1,U2),
				Result
			),
			Time
		).

	test(tptp_set_e158, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[U,V] in cp(X,Y) &
				[V,U] nin cp(Y,X),
				Result
			),
			Time
		).

	test(tptp_set_e159, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(X,{}) neq {},
				Result
			),
			Time
		).

	test(tptp_set_e160, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp({},Y) neq {},
				Result
			),
			Time
		).

	test(tptp_set_e161, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,cp(U1,U2),M1) &
				dom(X,M2) &
				nsubset(M1,cp(M2,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e162, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				nsubset(cp(X,Z),cp(Y,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e163, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Y,Z) &
				nsubset(cp(X,Y),cp(X,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e164, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nsubset(cp(X,Z),cp(M1,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e165, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nsubset(cp(Y,Z),cp(M1,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e166, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				nsubset(cp(X,Y),cp(X,M1)),
				Result
			),
			Time
		).

	test(tptp_set_e167, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				nsubset(cp(X,Z),cp(X,M1)),
				Result
			),
			Time
		).

	test(tptp_set_e168, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				nsubset(cp(M1,Z),cp(X,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e169, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				nsubset(cp(M1,Z),cp(Y,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e170, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				nsubset(cp(X,M1),cp(X,Y)),
				Result
			),
			Time
		).

	test(tptp_set_e171, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				nsubset(cp(X,M1),cp(X,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e172, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				nun(cp(X,Z),cp(Y,Z),cp(M1,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e173, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				nun(cp(X,Y),cp(X,Z),cp(X,M1)),
				Result
			),
			Time
		).

	test(tptp_set_e174, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				ninters(cp(X,Z),cp(Y,Z),cp(M1,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e175, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				ninters(cp(X,Y),cp(X,Z),cp(X,M1)),
				Result
			),
			Time
		).

	test(tptp_set_e176, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(cp(W,X),cp(Y,Z),M1) &
				nsubset(M1,cp(W,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e177, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(W,Y,M1) &
				inters(X,Z,M2) &
				nsubset(cp(M1,M2),cp(W,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e178, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(W,Y,M1) &
				inters(X,Z,M2) &
				ninters(cp(W,X),cp(Y,Z),cp(M1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e179, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninv(cp(X,X),cp(X,X)),
				Result
			),
			Time
		).

	test(tptp_set_e180, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(U,V) = cp(W,X) &
				U neq {} &
				V neq X,
				Result
			),
			Time
		).

	test(tptp_set_e181, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(U,V) = cp(W,X) &
				W neq {} &
				V neq X,
				Result
			),
			Time
		).

	test(tptp_set_e182, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(U,V) = cp(W,X) &
				V neq {} &
				U neq W,
				Result
			),
			Time
		).

	test(tptp_set_e183, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(U,V) = cp(W,X) &
				X neq {} &
				U neq W,
				Result
			),
			Time
		).

	test(tptp_set_e184, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(U,U) = cp(W,W) &
				U neq W,
				Result
			),
			Time
		).

	test(tptp_set_e185, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(cp(X,Y),Z) &
				NSE in cp(X,Y) &
				NSE nin Z &
				prolog_call(nth1(1,NSE,NSE1)) &
				prolog_call(nth1(2,NSE,NSE2)) &
				[NSE1,NSE2] neq NSE,
				Result
			),
			Time
		).

	test(tptp_set_e186, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(cp(X,Y),Z) &
				NSE in cp(X,Y) &
				NSE nin Z &
				prolog_call(nth1(1,NSE,NSE1)) &
				NSE1 nin X,
				Result
			),
			Time
		).

	test(tptp_set_e187, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(cp(X,Y),Z) &
				NSE in cp(X,Y) &
				NSE nin Z &
				prolog_call(nth1(2,NSE,NSE2)) &
				NSE2 nin Y,
				Result
			),
			Time
		).

	test(tptp_set_e188, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(cp(X,Y),Z) &
				NSE in cp(X,Y) &
				NSE nin Z &
				prolog_call(nth1(1,NSE,NSE1)) &
				prolog_call(nth1(2,NSE,NSE2)) &
				[NSE1,NSE2] in Z,
				Result
			),
			Time
		).

	test(tptp_set_e189, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,cp(U1,U2)) &
				M1 in X &
				M1 nin Y &
				prolog_call(nth1(1,M1,M2)) &
				prolog_call(nth1(2,M1,M3)) &
				[M2,M3] nin X &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e190, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,cp(U1,U2)) &
				M1 in X &
				M1 nin Y &
				prolog_call(nth1(1,M1,M2)) &
				prolog_call(nth1(2,M1,M3)) &
				[M2,M3] in Y &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e191, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				nsubset(M1,cp(U1,U2)) &
				subset(X,U1) &
				subset(Y,U2),
				Result
			),
			Time
		).

	test(tptp_set_e192, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				Z in M1 &
				prolog_call(nth1(1,Z,M2)) &
				prolog_call(nth1(2,Z,M3)) &
				[M2,M3] nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e193, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				Z in M1 &
				Z nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e194, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				[U,V] in M1 &
				U nin X,
				Result
			),
			Time
		).

	test(tptp_set_e195, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				[U,V] in M1 &
				V nin Y,
				Result
			),
			Time
		).

	test(tptp_set_e196, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Z in Xr &
				X in cp(X,Y) &
				restrict(Xr,X,Y,M1) &
				Z nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e197, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xf,X1,Y1,M1) &
				restrict(M1,X2,Y2,M2) &
				inters(X1,X2,M3) &
				inters(Y1,Y2,M4) &
				nrestrict(Xf,M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e198, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrestrict(cp(U1,U2),X,Y,cp(X,Y)) &
				subset(X,U1) &
				subset(Y,U2),
				Result
			),
			Time
		).

	test(tptp_set_e199, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrestrict({},X,Y,{}),
				Result
			),
			Time
		).

	test(tptp_set_e200, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrestrict(Xr,{},Y,{}),
				Result
			),
			Time
		).

	test(tptp_set_e201, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrestrict(Xr,X,{},{}),
				Result
			),
			Time
		).

	test(tptp_set_e202, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr1,X1,Y1,M1) &
				restrict(Xr2,X2,Y2,M2) &
				ninters(M1,M2,M3) &
				inters(Xr1,Xr2,M4) &
				inters(X1,X2,M5) &
				inters(Y1,Y2,M6) &
				restrict(M4,M5,M6,M3),
				Result
			),
			Time
		).

	test(tptp_set_e203, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr1,X,Y,M1) &
				restrict(Xr2,X,Y,M2) &
				un(M1,M2,M3) &
				un(Xr1,Xr2,M4) &
				nrestrict(M4,X,Y,M3),
				Result
			),
			Time
		).

	test(tptp_set_e204, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Y,M1) &
				inv(M1,M2) &
				un(M1,M2,M3) &
				inv(X,M4) &
				un(X,M4,M5) &
				nrestrict(M5,Y,Y,M3),
				Result
			),
			Time
		).

	test(tptp_set_e205, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				nsubset(M1,X),
				Result
			),
			Time
		).

	test(tptp_set_e206, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				nsubset(M1,cp(Y,Z)),
				Result
			),
			Time
		).

	test(tptp_set_e207, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X1,X2) &
				restrict(X1,Y,Z,M1) &
				restrict(X2,Y,Z,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e208, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Y1,Y2) &
				restrict(X,Y1,Z,M1) &
				restrict(X,Y2,Z,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e209, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Z1,Z2) &
				restrict(X,Y,Z1,M1) &
				restrict(X,Y,Z2,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e210, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrestrict(cp(X,Y),X,Y,cp(X,Y)),
				Result
			),
			Time
		).

	test(tptp_set_e211, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Xr,M1) &
				X in M1 &
				range(Xr,X,U2,M2) &
				[X,M2] nin cp(U1,U2) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e212, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Xr,M1) &
				X in M1 &
				range(Xr,X,U2,M2) &
				[X,M2] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e213, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in Xr &
				[X,Y] in cp(U1,U2) &
				dom(Xr,M1) &
				X nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e214, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndom({},{}),
				Result
			),
			Time
		).

	test(tptp_set_e215, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(cp(U,U),D) &
				D neq U,
				Result
			),
			Time
		).

	test(tptp_set_e216, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(X,M1) &
				dom(Y,M2) &
				un(M1,M2,M3) &
				un(X,Y,M4) &
				ndom(M4,M3),
				Result
			),
			Time
		).

	test(tptp_set_e217, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				dom(X,M1) &
				dom(Y,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e218, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				dom(M1,M2) &
				dom(X,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e219, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				dom(M1,M2) &
				dom(Y,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e220, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(X,M1) &
				un(M1,M2,U) &
				disj(M1,M2) &
				un(X,M3,cp(U,U)) &
				disj(X,M3) &
				dom(M3,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e221, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,cp(U1,U2),M1) &
				dom(X,M2) &
				nsubset(M1,cp(M2,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e222, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,cp(U1,U2),M1) &
				dom(M1,M2) &
				ndom(X,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e223, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(cp(X,Y),M1) &
				M1 neq X &
				Y = {M2/M3},
				Result
			),
			Time
		).

	test(tptp_set_e224, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(cp(X,X),M1) &
				M1 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e225, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Xr,M1) &
				inters(M1,X,M2) &
				restrict(Xr,M2,Y,M3) &
				nrestrict(Xr,X,Y,M3) ,
				Result
			),
			Time
		).

	test(tptp_set_e226, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Xr,M1) &
				restrict(Xr,M1,Y,M2) &
				nrestrict(Xr,U1,Y,M2) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e227, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,U2,M1) &
				dom(M1,M2) &
				dom(X,M3) &
				ninters(M3,Y,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e228, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				dom(M1,M2) &
				dom(X,M3) &
				inters(M3,Y,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e229, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				dom(M1,M2) &
				dom(X,M3) &
				inters(M3,Y,M4) &
				nsubset(cp(M2,U),cp(M4,U)),
				Result
			),
			Time
		).

	test(tptp_set_e230, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				dom(M1,M2) &
				dom(X,M3) &
				inters(M3,Y,M4) &
				nsubset(cp(U,M2),cp(U,M4)),
				Result
			),
			Time
		).

	test(tptp_set_e231, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X1,Y1,Z1,M1) &
				dom(M1,M2) &
				restrict(X2,Y2,Z2,M3) &
				dom(M3,M4) &
				nsubset(cp(M2,M4),cp(Y1,Y2)),
				Result
			),
			Time
		).

	test(tptp_set_e232, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,Y,{Z},M1) &
				dom(M1,M2) &
				U in M2 &
				[U,Z] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e233, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(X,{}) &
				subset(X,cp(U1,U2)) &
				X neq {},
				Result
			),
			Time
		).

	test(tptp_set_e234, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,X) &
				dom(R,Y) &
				X neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e235, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(R,X) &
				nrel(R),
				Result
			),
			Time
		).

	test(tptp_set_e236, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in cp(U1,U2) &
				ndom({[X,Y]},{X}),
				Result
			),
			Time
		).

	test(tptp_set_e237, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in cp(U1,U2) &
				dom(X,M1) &
				un(X,{[M1,Y]},M2) &
				dom(M2,M3) &
				nun(M1,{M1},M3),
				Result
			),
			Time
		).

	test(tptp_set_e238, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				un(Y,M1,cp(U1,U2)) &
				disj(Y,M1) &
				inters(M1,X,M2) &
				ndom(M2,{}),
				Result
			),
			Time
		).

	test(tptp_set_e239, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,cp(U1,U2)) &
				un(Y,M1,cp(U1,U2)) &
				disj(Y,M1) &
				inters(M1,X,M2) &
				dom(M2,{}) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e240, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				nsubset(M1,cp(U1,U2)) &
				subset(X,cp(U2,U1)),
				Result
			),
			Time
		).

	test(tptp_set_e241, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				[U,V] in M1 &
				[V,U] nin X,
				Result
			),
			Time
		).

	test(tptp_set_e242, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				[U,V] in cp(U1,U2) &
				[V,U] in X &
				[U,V] nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e243, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninv({},{}),
				Result
			),
			Time
		).

	test(tptp_set_e244, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninv(cp(U1,U2),cp(U2,U1)),
				Result
			),
			Time
		).

	test(tptp_set_e245, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				inv(Y,M2) &
				un(M1,M2,M3) &
				un(X,Y,M4) &
				ninv(M4,M3),
				Result
			),
			Time
		).

	test(tptp_set_e246, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				inv(Y,M2) &
				inters(M1,M2,M3) &
				inters(X,Y,M4) &
				ninv(M4,M3),
				Result
			),
			Time
		).

	test(tptp_set_e247, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				dom(M1,M2) &
				nran(X,M2),
				Result
			),
			Time
		).

	test(tptp_set_e248, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				ran(M1,M2) &
				ndom(X,M2),
				Result
			),
			Time
		).

	test(tptp_set_e249, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,M1,cp(U1,U2)) &
				disj(X,M1) &
				inv(M1,M2) &
				inv(X,M3) &
				un(M3,M4,cp(U2,U1)) &
				disj(M3,M4) &
				ninters(M4,cp(U2,U1),M2),
				Result
			),
			Time
		).

	test(tptp_set_e250, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninv(cp(X,Y),cp(Y,X)),
				Result
			),
			Time
		).

	test(tptp_set_e251, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				inv(M1,M2) &
				nrestrict(X,U1,U2,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e252, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,Y,X,M1) &
				inv(M1,M2) &
				inv(Xr,M3) &
				nrestrict(M3,X,Y,M2) ,
				Result
			),
			Time
		).

	test(tptp_set_e253, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Xr,M1) &
				Y in M1 &
				apply(Xr,X,Y) &
				[X,Y] nin cp(U1,U2) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e254, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in Xr &
				[X,Y] in cp(U1,U2) &
				ran(Xr,M1) &
				Y nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e255, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Xr,M1) &
				Y in M1 &
				apply(Xr,X,Y) &
				[X,Y] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e256, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nran({},{}),
				Result
			),
			Time
		).

	test(tptp_set_e257, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U1 neq {} &
				U2 neq {} &
				nran(cp(U1,U2),U2),
				Result
			),
			Time
		).

	test(tptp_set_e258, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(X,M1) &
				ran(Y,M2) &
				un(M1,M2,M3) &
				un(X,Y,M4) &
				nran(M4,M3),
				Result
			),
			Time
		).

	test(tptp_set_e259, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				ran(X,M1) &
				ran(Y,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e260, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				ran(M1,M2) &
				ran(Y,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e261, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M1) &
				ran(M1,M2) &
				ran(X,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e262, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,cp(U1,U2),M1) &
				ran(X,M2) &
				nsubset(M1,cp(U1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e263, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,cp(U1,U2),M1) &
				ran(M1,M2) &
				nran(X,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e264, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = {M1/M2} &
				ran(X,M3) &
				npair(M1),
				Result
			),
			Time
		).

	test(tptp_set_e265, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = {M1/M2} &
				dom(X,M3) &
				npair(M1),
				Result
			),
			Time
		).

	test(tptp_set_e266, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(cp(X,Y),M1) &
				M1 neq Y &
				X neq {},
				Result
			),
			Time
		).

	test(tptp_set_e267, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Xr,M1) &
				inters(Y,M1,M2) &
				restrict(Xr,X,M2,M3) &
				nrestrict(Xr,X,Y,M3),
				Result
			),
			Time
		).

	test(tptp_set_e268, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Xr,M1) &
				restrict(Xr,X,M1,M2) &
				nrestrict(Xr,X,U2,M2) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e269, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,U1,Z,M1) &
				ran(M1,M2) &
				ran(X,M3) &
				ninters(M2,Z,M2),
				Result
			),
			Time
		).

	test(tptp_set_e270, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				ran(M1,M2) &
				ran(X,M3) &
				inters(Z,M3,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e271, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				ran(M1,M2) &
				ran(X,M3) &
				inters(Z,M3,M4) &
				nsubset(cp(M2,U),cp(M4,U)),
				Result
			),
			Time
		).

	test(tptp_set_e272, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,Y,Z,M1) &
				ran(M1,M2) &
				ran(X,M3) &
				inters(Z,M3,M4) &
				nsubset(cp(U,M2),cp(U,M4)),
				Result
			),
			Time
		).

	test(tptp_set_e273, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X1,Y1,Z1,M1) &
				ran(M1,M2) &
				restrict(X2,Y2,Z2,M3) &
				ran(M3,M4) &
				nsubset(cp(M2,M4),cp(Z1,Z2)),
				Result
			),
			Time
		).

	test(tptp_set_e274, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(Z,M1) &
				Y in M1 &
				domain(Z,U1,Y,M2) &
				dom(Z,M3) &
				M2 nin M3 ,
				Result
			),
			Time
		).

	test(tptp_set_e275, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Z,M1) &
				X in M1 &
				range(Z,X,U2,M2) &
				ran(Z,M3) &
				M2 nin M3,
				Result
			),
			Time
		).

	test(tptp_set_e276, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(X,{}) &
				subset(X,cp(U1,U2)) &
				X neq {},
				Result
			),
			Time
		).

	test(tptp_set_e277, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,X,M1) &
				Y in M1 &
				domain(Xr,X,Y,M2) &
				[M2,Y] nin cp(U1,U2) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e278, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,X,M1) &
				Y in M1 &
				domain(Xr,X,Y,M2) &
				[M2,Y] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e279, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,X,M1) &
				Y in M1 &
				domain(Xr,X,Y,M2) &
				dom(Xr,M3) &
				M2 nin M3,
				Result
			),
			Time
		).

	test(tptp_set_e280, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,X,M1) &
				Y in M1 &
				domain(Xr,X,Y,M2) &
				M2 nin X,
				Result
			),
			Time
		).

	test(tptp_set_e281, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,{X},M1) &
				Y in M1 &
				[X,Y] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e282, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in Xr &
				[X,Y] in cp(U1,U2) &
				X in Z &
				rimg(Xr,Z,M1) &
				Y nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e283, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in Xr &
				[X,Y] in cp(U1,U2) &
				rimg(Xr,{X},M1) &
				Y nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e284, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Xr,M1) &
				rimg(Xr,M1,M2) &
				nran(Xr,M2),
				Result
			),
			Time
		).

	test(tptp_set_e285, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xr,U1,M1) &
				nran(Xr,M1) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e286, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Y,Z) &
				rimg(Xr,Y,M1) &
				rimg(Xr,Z,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e287, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Xr,Yr) &
				rimg(Xr,Z,M1) &
				rimg(Yr,Z,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e288, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Z,M1) &
				inters(X,M1,{}) &
				nrimg(Z,X,{}),
				Result
			),
			Time
		).

	test(tptp_set_e289, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(Z) &
				nrimg(Z,{},{}),
				Result
			),
			Time
		).

	test(tptp_set_e290, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrimg({},X,{}),
				Result
			),
			Time
		).

	test(tptp_set_e291, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Z,M1) &
				X nin M1 &
				nrimg(Z,{X},{}),
				Result
			),
			Time
		).

	test(tptp_set_e292, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nrimg(cp(U1,U2),X,U2) &
				X neq {} &
				subset(X,U1),
				Result
			),
			Time
		).

	test(tptp_set_e293, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				rimg(Xr,M1,M2) &
				rimg(Xr,Y,M3) &
				rimg(Xr,Z,M4) &
				un(M3,M4,M5) &
				nsubset(M2,M5),
				Result
			),
			Time
		).

	test(tptp_set_e294, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(Y,Z,M1) &
				rimg(Xr,M1,M2) &
				rimg2(Xr,Y,M3) &
				rimg2(Xr,Z,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e295, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(Xr,X,Y,M1) &
				nsubset(M1,cp(U1,U2)) &
				subset(Xr,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e296, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,cp(U1,U2)) &
				dom(X,M1) &
				ran(X,M2) &
				nsubset(X,cp(M1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e297, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,cp(U1,U2)) &
				nrestrict(X,U1,U2,X),
				Result
			),
			Time
		).

	test(tptp_set_e298, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,U1,U2,M1) &
				dom(X,M2) &
				ran(X,M3) &
				nsubset(M1,cp(M2,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e299, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				inv(M1,M2) &
				ninv(M2,M1),
				Result
			),
			Time
		).

	test(tptp_set_e300, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				restrict(X,U1,U2,X) &
				nsubset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e301, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Yf,Xf,M1) &
				[U,V] in M1 &
				rimg2(Yf,{U},M2) &
				domain(Xf,M2,V,M3) &
				[U,M3] nin Yf,
				Result
			),
			Time
		).

	test(tptp_set_e302, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xf,Yf,M1) &
				[U,V] in M1 &
				rimg(Xf,{U},M2) &
				domain(Yf,M2,V,M3) &
				[U,M3] nin cp(U,U) &
				subset(Xf,cp(U,U)) &
				subset(Yf,cp(U,U)),
				Result
			),
			Time
		).

	test(tptp_set_e303, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xf,Yf,M1) &
				[U,V] in M1 &
				rimg2(Yf,{U},M2) &
				domain(Xf,M2,V,M3) &
				[M3,V] nin Xf,
				Result
			),
			Time
		).

	test(tptp_set_e304, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xf,Yf,M1) &
				[U,V] in M1 &
				rimg(Yf,{U},M2) &
				domain(Xf,M2,V,M3) &
				[M3,V] nin cp(U,U) &
				subset(Xf,cp(U,U)) &
				subset(Yf,cp(U,U)),
				Result
			),
			Time
		).

	test(tptp_set_e305, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in Xr &
				[Y,Z] in Yr &
				[X,Y] in cp(U1,U2) &
				[Y,Z] in cp(U1,U3) &
				comp(Xr,Yr,M1) &
				[X,Z] nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e306, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U2,M1) &
				comp(X,M1,M2) &
				nrestrict(X,U1,U2,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e307, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U1,M1) &
				comp(M1,X,M2) &
				nrestrict(X,U1,U2,M2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e308, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,Y) &
				subset(Y,Z) &
				nsubset(X,Z),
				Result
			),
			Time
		).

	test(tptp_set_e309, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xr,Yr,M1) &
				rimg(M1,X,M2) &
				rimg(Xr,X,M3) &
				nrimg(Yr,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e310, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xr,Yr,M1) &
				dom(M1,M2) &
				dom(Xr,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e311, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xr,Yr,M1) &
				ran(M1,M2) &
				ran(Yr,M3) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e312, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xr,Yr,M1) &
				comp(M1,Zr,M2) &
				comp(Yr,Zr,M3) &
				ncomp(Xr,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e313, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp({},X,M1) &
				M1 neq {},
				Result
			),
			Time
		).

	test(tptp_set_e314, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(X,{},M1) &
				M1 neq {},
				Result
			),
			Time
		).

	test(tptp_set_e315, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(U2,X,M1) &
				ran(M1,M2) &
				M3 = cp(U1,M2) &
				ran(X,M4) &
				M3 neq cp(U1,M4) &
				subset(X,cp(U2,U3)),
				Result
			),
			Time
		).

	test(tptp_set_e316, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rres(X,U2,M1) &
				dom(M1,M2) &
				M3 = cp(M2,U2) &
				dom(X,M4) &
				M3 neq cp(M4,U2) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e317, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Yr,M1) &
				ran(Xr,M2) &
				subset(M1,M2) &
				comp(Xr,Yr,M3) &
				ran(M3,M4) &
				nran(Yr,M4),
				Result
			),
			Time
		).

	test(tptp_set_e318, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Xr,Yr) &
				comp(Xr,Zr,M1) &
				comp(Yr,Zr,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e319, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Xr,Yr) &
				comp(Zr,Xr,M1) &
				comp(Zr,Yr,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e320, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(Xr,Yr) &
				comp(Ur,Xr,M1) &
				comp(M1,Zr,M2) &
				comp(Ur,Yr,M3) &
				comp(M3,Zr,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e321, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				subset(Xr,M1) &
				comp(Ur,Xr,M2) &
				comp(M2,Zr,M3) &
				comp(Ur,Zr,M4) &
				nsubset(M3,M4),
				Result
			),
			Time
		).

	test(tptp_set_e322, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(Xr,Yr,M1) &
				inv(M1,M2) &
				inv(Yr,M3) &
				inv(Xr,M4) &
				ncomp(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e323, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(Y,Z,M1) &
				comp(X,M1,M2) &
				comp(X,Y,M3) &
				comp(X,Z,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e324, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Z,M1) &
				Y in M1 &
				rimg(Z,{Y},M3) &
				ncomp({[X,Y]},Z,M4) &
				comp({[X,X]},M4,M4) &
				ran(M4,M3),
				Result
			),
			Time
		).

	test(tptp_set_e325, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(Z,M1) &
				Y nin M1 &
				ncomp({[X,Y]},Z,{}),
				Result
			),
			Time
		).

	test(tptp_set_e326, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Z) &
				[U,V] in cp(U1,U2) &
				[U,W] in cp(U1,U2) &
				[U,V] in Z &
				[U,W] in Z &
				V neq W,
				Result
			),
			Time
		).

	test(tptp_set_e327, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(X) &
				inv(X,M1) &
				comp(M1,X,M2) &
				id(U1,M3) &
				[M4,M5] in M2 &
				[M4,M5] nin M3 &
				rimg(M1,{M4},M6) &
				domain(X,M6,M5,M7) &
				[M7,M4] nin X ,
				Result
			),
			Time
		).

	test(tptp_set_e328, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(X) &
				inv(X,M1) &
				comp(M1,X,M2) &
				[M3,M4] in M2 &
				id(U1,M5) &
				[M3,M4] nin M5 &
				rimg(M1,{M3},M6) &
				domain(X,M6,M4,M7) &
				[M7,M4] nin X,
				Result
			),
			Time
		).

	test(tptp_set_e329, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(X,M1) &
				comp(M1,X,M2) &
				[M3,M3] in M2 &
				id(U2,M5) &
				[M3,M3] nin M5 &
				delay(npfun(X),false) &
				subset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e330, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				inters(X,Y,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e331, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				dom(X,M1) &
				Z in M1 &
				rimg(X,{Z},M2) &
				M3 in M2 &
				{M3} neq M2,
				Result
			),
			Time
		).

	test(tptp_set_e332, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xr) &
				pfun(Yr) &
				comp(Xr,Yr,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e333, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Z) &
				[U,V] in Z &
				[U,W] in Z &
				V neq W,
				Result
			),
			Time
		).

	test(tptp_set_e334, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(X) &
				inv(X,M1) &
				comp(M1,X,M2) &
				id(U,M3) &
				[M4,M5] in M2 &
				[M4,M5] nin M3 &
				rimg(M1,{M4},M6) &
				domain(X,M6,M5,M7) &
				[M7,M4] nin X,
				Result
			),
			Time
		).

	test(tptp_set_e335, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(X) &
				inv(X,M1) &
				comp(M1,X,M2) &
				[M3,M4] in M2 &
				id(U1,M5) &
				[M3,M4] nin M5 &
				rimg(M1,{M3},M6) &
				domain(X,M6,M4,M7) &
				[M7,M4] nin X,
				Result
			),
			Time
		).

	test(tptp_set_e336, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun(X) &
				inv(X,M1) &
				comp(M1,X,M2) &
				[M3,M4] in M2 &
				id(U,M5) &
				[M3,M4] nin M5 &
				M3 = M4 &
				dom(M2,M6) &
				ran(M2,M7) &
				subset(M6,U) &
				subset(M7,U),
				Result
			),
			Time
		).

	test(tptp_set_e337, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				inters(X,Y,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e338, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				inters(Y,X,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e339, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				dom(X,M1) &
				Z in M1 &
				rimg(X,{Z},M2) &
				M3 in M2 &
				{M3} neq M2,
				Result
			),
			Time
		).

	test(tptp_set_e340, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun({}),
				Result
			),
			Time
		).

	test(tptp_set_e341, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xf) &
				restrict(Xf,X,Y,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e342, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				pfun(Y) &
				inters(X,Y,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e343, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xf) &
				nrestrict(Xf,U1,U2,Xf) &
				subset(Xf,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e344, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				pfun(Y) &
				un(X,M1,cp(U1,U2)) &
				disj(X,M1) &
				inters(M1,Y,M2) &
				npfun(M2),
				Result
			),
			Time
		).

	test(tptp_set_e345, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				pfun(Y) &
				dom(X,M1) &
				dom(Y,M2) &
				inters(M1,M2,{}) &
				un(X,Y,M3) &
				npfun(M3),
				Result
			),
			Time
		).

	test(tptp_set_e346, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				un(X,{[Y,Z]},M1) &
				npfun(M1) &
				dom(X,M2) &
				Y nin M2,
				Result
			),
			Time
		).

	test(tptp_set_e347, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npfun({[X,Y]}),
				Result
			),
			Time
		).

	test(tptp_set_e348, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Y) &
				subset(X,Y) &
				dom(X,M1) &
				nrestrict(Y,M1,U2,X) &
				id(U2,I2) &
				comp(X,I2,X),
				Result
			),
			Time
		).

	test(tptp_set_e349, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				subset(Y,X) &
				dom(Y,M1) &
				subset(Z,M1) &
				restrict(X,Z,U2,M2) &
				nrestrict(Y,Z,U2,M2),
				Result
			),
			Time
		).

	test(tptp_set_e350, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				nsubset(M1,cp(U,U)),
				Result
			),
			Time
		).

	test(tptp_set_e351, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				[X,Y] in M1 &
				X neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e352, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in cp(U,U) &
				X = Y &
				id(U,M1) &
				[X,Y] nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e353, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e354, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				restrict(M1,X,Y,M2) &
				npfun(M2),
				Result
			),
			Time
		).

	test(tptp_set_e355, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				ndom(M1,U),
				Result
			),
			Time
		).

	test(tptp_set_e356, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				nran(M1,U),
				Result
			),
			Time
		).

	test(tptp_set_e357, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				restrict(M1,X,Y,M2) &
				dom(M2,M3) &
				ninters(X,Y,M3) &
				(subset(X,U) or subset(Y,U)),
				Result
			),
			Time
		).

	test(tptp_set_e358, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(X,Y,M3) &
				id(U,M1) &
				restrict(M1,X,Y,M2) &
				ran(M2,M3) &
				(subset(X,U) or subset(Y,U)),
				Result
			),
			Time
		).

	test(tptp_set_e359, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				nrimg(M1,X,X) &
				subset(X,U),
				Result
			),
			Time
		).

	test(tptp_set_e360, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(X,Y,M3) &
				id(U,M1) &
				restrict(M1,X,X,M2) &
				nrimg(M2,Y,M3) &
				(subset(X,U) or subset(Y,U)),
				Result
			),
			Time
		).

	test(tptp_set_e361, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				nbij(M1),
				Result
			),
			Time
		).

	test(tptp_set_e362, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				ninv(M1,M1),
				Result
			),
			Time
		).

	test(tptp_set_e363, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				delay(subset(cp(X,X),M1),false) &
				X = {M2,M3/M4} &
				M2 neq M3,
				Result
			),
			Time
		).

	test(tptp_set_e364, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X = {} &
				id(U,M1) &
				nsubset(cp(X,X),M1),
				Result
			),
			Time
		).

	test(tptp_set_e365, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in X &
				{M1} = X &
				id(U,M2) &
				nsubset(cp(X,X),M2) &
				M1 in U,
				Result
			),
			Time
		).

	test(tptp_set_e366, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M2 in X &
				{M2} neq X &
				X neq {} &
				delay(subset(cp(X,X),M1),false) &
				id(U,M1),
				Result
			),
			Time
		).

	test(tptp_set_e367, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U in X &
				un({U},M1,Un) &
				disj({U},M1) &
				inters(X,M1,M2) &
				M3 in M2 &
				M3 nin X &
				id(Un,M4) &
				nsubset(cp(X,X),M4),
				Result
			),
			Time
		).

	test(tptp_set_e368, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				U in X &
				comp({U},M1,Un) &
				disj({U},M1) &
				inters(X,M1,M2) &
				M3 in M2 &
				M3 = U &
				id(Un,M4) &
				nsubset(cp(X,X),M4),
				Result
			),
			Time
		).

	test(tptp_set_e369, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Y = {} &
				restrict(X,Y,Y,M1) &
				ndom(M1,Y),
				Result
			),
			Time
		).

	test(tptp_set_e370, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U1,M1) &
				un(X,M1,M2) &
				subset(cp(Y,Y),M2) &
				restrict(X,Y,Y,M3) &
				ndom(M3,Y) &
				nsubset(cp(Y,Y),M1),
				Result
			),
			Time
		).

	test(tptp_set_e371, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				un(X,M1,M2) &
				subset(cp(Y,Y),M2) &
				restrict(X,Y,Y,M3) &
				ndom(M3,Y) &
				M4 in Y &
				{M4} neq Y &
				set(Y),
				Result
			),
			Time
		).

	test(tptp_set_e372, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				inters(X,M1,M2) &
				inv(X,M3) &
				inters(X,M3,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e373, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(Y) &
				subset(X,Y) &
				nset(X),
				Result
			),
			Time
		).

	test(tptp_set_e374, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(Y) &
				inters(X,Y,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e375, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(X) &
				dom(X,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e376, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(X) &
				ran(X,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e377, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(X,U1) &
				subset(Y,U2) &
				nsubset(cp(X,Y),cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e378, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(X,M1) &
				ran(X,M2) &
				subset(M1,U1) &
				subset(M2,U2) &
				nsubset(X,cp(U1,U2)),
				Result
			),
			Time
		).

	test(tptp_set_e379, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rel(X) &
				inv(X,M1) &
				nrel(X),
				Result
			),
			Time
		).

	test(tptp_set_e380, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xf) &
				dom(Xf,M1) &
				set(M1) &
				nset(Xf),
				Result
			),
			Time
		).

	test(tptp_set_e381, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				apply(A_function,Element,M1) &
				rimg(A_function,{Element},M2) &
				nsubset({M1},M2),
				Result
			),
			Time
		).

	test(tptp_set_e382, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				apply(A_function,Element,M1) &
				rimg(A_function,{Element},M2) &
				nsubset(M2,{M1}),
				Result
			),
			Time
		).

	test(tptp_set_e383, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				apply(A_function,B,M1) &
				nset({M1}),
				Result
			),
			Time
		).

	test(tptp_set_e384, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				dom(A_function,M1) &
				A in M1 &
				apply(A_function,A,M2) &
				apply(Another_function,M2,M3) &
				comp(A_function,Another_function,M4) &
				apply(M5,A,M5) &
				nsubset({M3},{M5}),
				Result
			),
			Time
		).

	test(tptp_set_e385, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(A_function) &
				dom(A_function,M1) &
				A in M1 &
				apply(A_function,A,M2) &
				apply(Another_function,M2,M3) &
				comp(A_function,Another_function,M4) &
				apply(M5,A,M5) &
				nsubset({M5},{M3}),
				Result
			),
			Time
		).

	test(tptp_set_e386, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in X &
				M1 nin Y &
				M1 nin Y &
				X = Y &
				M2 in Y &
				M2 nin X &
				M2 in Y,
				Result
			),
			Time
		).

	test(tptp_set_e387, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in Y &
				M1 nin X &
				M1 nin X &
				X = Y &
				M2 in X &
				M2 nin Y &
				M2 in X,
				Result
			),
			Time
		).

	test(tptp_set_e388, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in X &
				M1 nin Y &
				M1 nin Y &
				M2 in Y &
				M2 nin X &
				M2 nin X &
				X = Y,
				Result
			),
			Time
		).

	test(tptp_set_e389, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] in cp(U,V) &
				{X,Y} = {},
				Result
			),
			Time
		).

	test(tptp_set_e390, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				set(Y) &
				restrict(X,Y,U2,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e391, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(X,Y,M1) &
				set(M1) &
				nset(X),
				Result
			),
			Time
		).

	test(tptp_set_e392, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,X] in Y &
				id(U,M1) &
				inters(Y,M1,M2) &
				dom(M2,M3) &
				X nin M3 &
				X in U,
				Result
			),
			Time
		).

	test(tptp_set_e393, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in M3 &
				id(U,M1) &
				inters(Y,M1,M2) &
				dom(M2,M3) &
				[X,X] nin Y,
				Result
			),
			Time
		).

	test(tptp_set_e394, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in M3 &
				napply(Y,X,X) &
				id(U,M1) &
				dom(M2,M3) &
				pfun(Y) &
				inters(Y,M1,M2) ,
				Result
			),
			Time
		).

	test(tptp_set_e395, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				un(X,M2,cp(U,U)) &
				disj(X,M2) &
				inters(M2,M1,M3) &
				ndom(M3,M4) &
				diagonalize(X,U,M4),
				Result
			),
			Time
		).

	test(tptp_set_e396, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diagonalize(Xr,U,M1) &
				Z in M1 &
				[Z,Z] in Xr,
				Result
			),
			Time
		).

	test(tptp_set_e397, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				Z in U &
				diagonalize(Xr,U,M1) &
				Z nin M1 &
				[Z,Z] nin Xr,
				Result
			),
			Time
		).

	test(tptp_set_e398, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U,M1) &
				inters(Xr,M1,M2) &
				ran(M2,M3) &
				un(M3,M4,U) &
				disj(M3,M4) &
				diagonalize(Xr,U,M5) &
				M4 neq M5,
				Result
			),
			Time
		).

	test(tptp_set_e399, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Xr,M1) &
				comp(Xs,M1,M2) &
				diagonalize(M2,U,M3) &
				inters(Xr,Xs,M4) &
				dom(M4,M5) &
				un(M5,M6,U) &
				disj(M5,M6) &
				M3 neq M6,
				Result
			),
			Time
		).

	test(tptp_set_e400, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inv(Xs,M1) &
				comp(M1,Xr,M2) &
				diagonalize(M2,U,M3) &
				inters(Xr,Xs,M4) &
				ran(M4,M5) &
				un(M5,M6,U) &
				disj(M5,M6) &
				M3 neq M6,
				Result
			),
			Time
		).

	test(tptp_set_e401, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in X,
				Result
			),
			Time
		).

	test(tptp_set_e402, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X} = X,
				Result
			),
			Time
		).

	test(tptp_set_e403, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				M1 in X &
				{M1} = X &
				M1 = X,
				Result
			),
			Time
		).

	test(tptp_set_e404, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in Y &
				Y in X &
				set(X) &
				set(Y),
				Result
			),
			Time
		).

	test(tptp_set_e405, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] = X or {{X},{X,{Y}}} = X,
				Result
			),
			Time
		).

	test(tptp_set_e406, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,Y] = Y or {{X},{X,{Y}}} = Y,
				Result
			),
			Time
		).

	test(tptp_set_e407, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				napply(Z,X,M3) &
				M3 in M2  &
				pfun(Z) &
				dom(Z,M1) &
				X in M1 &
				rimg(Z,{X},M2),
				Result
			),
			Time
		).

	test(tptp_set_e408, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Z) &
				dom(Z,M1) &
				X in M1 &
				rimg(Z,{X},M2) &
				apply(Z,X,M3) &
				M2 neq {M3},
				Result
			),
			Time
		).

	test(tptp_set_e409, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Z) &
				dom(Z,M1) &
				X in M1 &
				apply(Z,X,M2) &
				ran(Z,M3) &
				M2 nin M3,
				Result
			),
			Time
		).

	test(tptp_set_e410, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				apply(Z,M2,Y1) &
				Y in M1 &
				pfun(Z) &
				ran(Z,M1) &
				domain(Z,U,Y2,M2) &
				Y1 neq Y2,
				Result
			),
			Time
		).

	test(tptp_set_e411, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				apply(Xf,M2,Y1) &
				Y in M1 &
				fimg(Xf,X,M1) &
				domain(Xf,X,Y2,M2) &
				Y1 neq Y2,
				Result
			),
			Time
		).

	test(tptp_set_e412, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xf) &
				X in Y &
				dom(Xf,M1) &
				X in M1 &
				apply(Xf,X,M2) &
				rimg(Xf,Y,M3) &
				M2 nin M3,
				Result
			),
			Time
		).

	test(tptp_set_e413, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				napply(Yf,M4,M3) &
				delay(pfun(Yf),false) &
				comp(Xf,Yf,M1) &
				apply(M1,X,M3) &
				apply(Xf,X,M4),
				Result
			),
			Time
		).

	test(tptp_set_e414, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				napply(X,U,M3) &
				pfun(X) &
				inters(Y,X,M1) &
				dom(M1,M2) &
				U in M2 &
				apply(M1,U,M3),
				Result
			),
			Time
		).

	test(tptp_set_e415, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xf) &
				id(U,M1) &
				inters(Xf,M1,M2) &
				dom(M2,M3) &
				subset(X,M3) &
				nrimg(Xf,X,X),
				Result
			),
			Time
		).

	test(tptp_set_e416, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				compatible(Xh1,Xf1,Xf2) &
				compatible(Xh2,Xf2,Xf3) &
				ran(Xh1,M1) &
				dom(Xh2,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e417, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				compatible(Xh1,Xf1,Xf2) &
				compatible(Xh2,Xf2,Xf3) &
				comp(Xh1,Xh2,M1) &
				dom(M1,M2) &
				ndom(Xh1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e418, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				compatible(Xh1,Xf1,Xf2) &
				compatible(Xh2,Xf2,Xf3) &
				comp(Xh1,Xh2,M1) &
				dom(M1,M2) &
				dom(Xh1,M3) &
				cp(M2,M2) neq cp(M3,M3),
				Result
			),
			Time
		).

	test(tptp_set_e419, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				compatible(Xh1,Xf1,Xf2) &
				compatible(Xh2,Xf2,Xf3) &
				comp(Xh1,Xh2,M1) &
				(dom(Xf1,M2) &
				dom(M2,M3) &
				ndom(M1,M3) or ran(M1,M4) &
				dom(Xf3,M5) &
				dom(M5,M6) &
				nsubset(M4,M6)),
				Result
			),
			Time
		).

	test(tptp_set_e420, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B in C &
				disj(C,D) &
				B in D,
				Result
			),
			Time
		).

	test(tptp_set_e421, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B in C &
				B in D &
				disj(C,D),
				Result
			),
			Time
		).

	test(tptp_set_e422, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(C,D,M1) &
				B in M1 &
				(B nin C or B in D) &
				(B nin D or B in C) &
				((B in C & B nin D) or (B in D & B nin C)) &
				B nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e423, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B in C &
				B in D &
				inters(C,D,{}),
				Result
			),
			Time
		).

	test(tptp_set_e424, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(C,B) &
				B neq C,
				Result
			),
			Time
		).

	test(tptp_set_e425, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				un(B,C,M1) &
				un(C,D,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e426, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				un(B,D,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e427, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				inters(B,D,M1) &
				inters(C,D,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e428, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,{}) &
				nsubset(B,C),
				Result
			),
			Time
		).

	test(tptp_set_e429, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				ndiff(B,C,{}),
				Result
			),
			Time
		).

	test(tptp_set_e430, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				diff(B,D,M1) &
				diff(C,D,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e431, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(D,E) &
				diff(B,E,M1) &
				diff(C,D,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e432, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,M1) &
				nsubset(M1,B),
				Result
			),
			Time
		).

	test(tptp_set_e433, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,B,M1) &
				subset(B,M1) &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e434, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(B,D) &
				inters(C,D,{}) &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e435, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				subset(B,M1) &
				diff(B,C,M2) &
				diff(B,D,M3) &
				(nsubset(M2,D) or nsubset(M3,C)),
				Result
			),
			Time
		).

	test(tptp_set_e436, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				inters(B,D,M2) &
				un(M1,M2,B) &
				un(C,D,M4) &
				nsubset(B,M4),
				Result
			),
			Time
		).

	test(tptp_set_e437, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				diff(C,B,M1) &
				nun(B,M1,C),
				Result
			),
			Time
		).

	test(tptp_set_e438, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				inters(C,D,{}) &
				ninters(B,D,{}),
				Result
			),
			Time
		).

	test(tptp_set_e439, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,M1) &
				symdiff(B,C,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e440, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{X} = {Y} &
				X neq Y,
				Result
			),
			Time
		).

	test(tptp_set_e441, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				set(X) &
				set(Y) &
				un(X,Y,M1) &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e442, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(U1,M1) &
				dom(X,M2) &
				restrict(M1,M2,U2,M3) &
				inv(X,M4) &
				comp(X,M4,M5) &
				nsubset(M3,M5),
				Result
			),
			Time
		).

	test(tptp_set_e443, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				dom(X,M1) &
				dom(Y,M2) &
				subset(M1,M2) &
				nsubset(X,Y) &
				dres(M1,X,M3) &
				dres(M2,Y,M4) &
				subset(M3,M4),
				Result
			),
			Time
		).

	test(tptp_set_e444, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(X) &
				dom(X,M1) &
				dom(Y,M2) &
				subset(M1,M2) &
				dfes(M1,X,M3) &
				dres(M1,Y,M3) &
				nsubset(X,Y),
				Result
			),
			Time
		).

	test(tptp_set_e445, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				npair(XY) &
				XY in cp(U1,U2),
				Result
			),
			Time
		).

	test(tptp_set_e446, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,X) &
				second(X,M1) &
				X neq M1,
				Result
			),
			Time
		).

	test(tptp_set_e447, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				second(X,X) &
				first(X,M1) &
				X neq M1,
				Result
			),
			Time
		).

	test(tptp_set_e448, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				{M1,{M1,M2}} = X &
				nset(M1),
				Result
			),
			Time
		).

	test(tptp_set_e449, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				{M1,{M1,M2}} = X &
				nset(M2),
				Result
			),
			Time
		).

	test(tptp_set_e450, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,{}) &
				(B neq {} or C neq {}),
				Result
			),
			Time
		).

	test(tptp_set_e451, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(B,C,{}) &
				B = {} &
				C = {},
				Result
			),
			Time
		).

	test(tptp_set_e452, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				inters(C,D,M2) &
				un(M1,M2,M3) &
				inters(D,B,M4) &
				un(M3,M4,M5) &
				un(B,C,M6) &
				un(C,D,M7) &
				inters(M6,M7,M8) &
				un(D,B,M9) &
				ninters(M8,M9,M5),
				Result
			),
			Time
		).

	test(tptp_set_e453, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff(B,B,{}),
				Result
			),
			Time
		).

	test(tptp_set_e454, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff(B,{},B),
				Result
			),
			Time
		).

	test(tptp_set_e455, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({},B,{}),
				Result
			),
			Time
		).

	test(tptp_set_e456, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				ndiff(B,M1,{}),
				Result
			),
			Time
		).

	test(tptp_set_e457, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				diff(B,M1,M2) &
				ndiff(B,C,M2),
				Result
			),
			Time
		).

	test(tptp_set_e458, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,B,M1) &
				un(B,M1,M2) &
				nun(B,C,M2),
				Result
			),
			Time
		).

	test(tptp_set_e459, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				diff(B,C,M2) &
				nun(M1,M2,B),
				Result
			),
			Time
		).

	test(tptp_set_e460, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,D,M1) &
				diff(B,M1,M2) &
				diff(B,C,M3) &
				inters(B,D,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e461, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				diff(M1,C,M2) &
				ndiff(B,C,M2),
				Result
			),
			Time
		).

	test(tptp_set_e462, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,{}) &
				ndiff(B,C,B),
				Result
			),
			Time
		).

	test(tptp_set_e463, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(B,C,{}) &
				diff(B,C,B),
				Result
			),
			Time
		).

	test(tptp_set_e464, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				diff(B,M1,M2) &
				diff(B,C,M3) &
				diff(B,D,M4) &
				ninters(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e465, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				inters(B,C,M2) &
				diff(M1,M2,M3) &
				diff(B,C,M4) &
				diff(C,B,M5) &
				nun(M4,M5,M3),
				Result
			),
			Time
		).

	test(tptp_set_e466, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,M1) &
				diff(M1,D,M2) &
				un(C,D,M3) &
				ndiff(B,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e467, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				diff(M1,D,M2) &
				diff(B,D,M3) &
				diff(C,D,M4) &
				nun(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e468, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,M1) &
				diff(C,B,M1) &
				B neq C,
				Result
			),
			Time
		).

	test(tptp_set_e469, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(B,{},M1) &
				M1 neq B &
				symdiff({},B,M2) &
				M2 neq B,
				Result
			),
			Time
		).

	test(tptp_set_e470, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(B,B,M1) &
				M1 neq {},
				Result
			),
			Time
		).

	test(tptp_set_e471, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,M1) &
				symdiff(B,C,M2) &
				inters(B,C,M3) &
				nun(M2,M3,M1),
				Result
			),
			Time
		).

	test(tptp_set_e472, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(B,C,M1) &
				un(B,C,M2) &
				inters(B,C,M3) &
				ndiff(M2,M3,M1),
				Result
			),
			Time
		).

	test(tptp_set_e473, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(B,C,M1) &
				ndiff(M1,D,M2) &
				un(C,D,M3) &
				diff(B,M3,M4) &
				un(B,D,M5) &
				diff(C,M5,M6) &
				un(M4,M6,M2),
				Result
			),
			Time
		).

	test(tptp_set_e474, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(C,D,M1) &
				ndiff(B,M1,M2) &
				un(C,D,M3) &
				diff(B,M3,M4) &
				inters(B,C,M5) &
				inters(M5,D,M6) &
				un(M4,M6,M2),
				Result
			),
			Time
		).

	test(tptp_set_e475, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				symdiff(B,C,M1) &
				symdiff(M1,D,M2) &
				symdiff(C,D,M3) &
				symdiff(B,M3,M4) &
				M2 neq M4,
				Result
			),
			Time
		).

	test(tptp_set_e476, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				ndisj(B,M1) &
				disj(B,C) &
				disj(B,D),
				Result
			),
			Time
		).

	test(tptp_set_e477, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				disj(B,M1) &
				(ndisj(B,C) or ndisj(B,D)),
				Result
			),
			Time
		).

	test(tptp_set_e478, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj(B,C) &
				subset(C,D) &
				disj(B,D),
				Result
			),
			Time
		).

	test(tptp_set_e479, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(C,D,M1) &
				ndisj(B,M1) &
				disj(B,C),
				Result
			),
			Time
		).

	test(tptp_set_e480, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj(B,{}),
				Result
			),
			Time
		).

	test(tptp_set_e481, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj(B,B) &
				B = {},
				Result
			),
			Time
		).

	test(tptp_set_e482, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				disj(B,B) &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e483, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				diff(B,C,M2) &
				ndisj(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e484, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(B,C,M1) &
				symdiff(B,C,M2) &
				ndisj(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e485, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,D,M1) &
				ndisj(B,M1) &
				disj(B,C),
				Result
			),
			Time
		).

	test(tptp_set_e486, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				subset(B,D) &
				disj(C,D) &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e487, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,C,M1) &
				subset(M1,D) &
				diff(C,B,M2) &
				subset(M2,D) &
				symdiff(B,C,M3) &
				nsubset(M3,D),
				Result
			),
			Time
		).

	test(tptp_set_e488, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,D,M1) &
				inters(B,M1,M2) &
				inters(B,C,M3) &
				ndiff(M3,D,M2),
				Result
			),
			Time
		).

	test(tptp_set_e489, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(C,D,M1) &
				inters(B,M1,M2) &
				inters(B,C,M3) &
				inters(B,D,M4) &
				ndiff(M3,M4,M2),
				Result
			),
			Time
		).

	test(tptp_set_e490, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				disj(B,C) &
				ninters(B,C,{}),
				Result
			),
			Time
		).

	test(tptp_set_e491, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj(B,C) &
				inters(B,C,{}),
				Result
			),
			Time
		).

	test(tptp_set_e492, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj(B,C) &
				inters(B,C,{}),
				Result
			),
			Time
		).

	test(tptp_set_e493, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(C,D,M1) &
				subset(B,M1) &
				inters(B,D,{}) &
				nsubset(B,C),
				Result
			),
			Time
		).

	test(tptp_set_e494, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(B,C) &
				inters(C,B,{}) &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e495, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(C,D)) &
				subset(B,E) &
				nsubset(B,cp(C,D)),
				Result
			),
			Time
		).

	test(tptp_set_e496, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,C)) &
				D in E &
				(npair(D) or D = [F,G] &
				(F nin B or G nin C)),
				Result
			),
			Time
		).

	test(tptp_set_e497, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(F,cp(B,C)) &
				[D,E] in F &
				(D nin B or E nin C),
				Result
			),
			Time
		).

	test(tptp_set_e498, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				D in B &
				E in C &
				nsubset({[D,E]},cp(B,C)),
				Result
			),
			Time
		).

	test(tptp_set_e499, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(C,M1) &
				subset(M1,B) &
				ran(C,M2) &
				nsubset(C,cp(B,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e500, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ran(C,M1) &
				subset(M1,B) &
				dom(C,M2) &
				nsubset(C,cp(M2,B)),
				Result
			),
			Time
		).

	test(tptp_set_e501, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(D,M1) &
				subset(M1,B) &
				ran(D,M2) &
				subset(M2,C) &
				nsubset(D,cp(B,C)),
				Result
			),
			Time
		).

	test(tptp_set_e502, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				dom(D,M1) &
				ran(D,M2) &
				(nsubset(M1,B) or nsubset(M2,C)),
				Result
			),
			Time
		).

	test(tptp_set_e503, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,D)) &
				dom(E,M1) &
				subset(M1,C) &
				nsubset(E,cp(C,D)),
				Result
			),
			Time
		).

	test(tptp_set_e504, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(D,B)) &
				ran(E,M1) &
				subset(M1,C) &
				nsubset(E,cp(D,C)),
				Result
			),
			Time
		).

	test(tptp_set_e505, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,D)) &
				subset(B,C) &
				nsubset(E,cp(C,D)),
				Result
			),
			Time
		).

	test(tptp_set_e506, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(D,B)) &
				subset(B,C) &
				nsubset(E,cp(D,C)),
				Result
			),
			Time
		).

	test(tptp_set_e507, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(F,cp(B,D)) &
				subset(B,C) &
				subset(D,E) &
				nsubset(F,cp(C,E)),
				Result
			),
			Time
		).

	test(tptp_set_e508, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				ninters(D,cp(B,C),D),
				Result
			),
			Time
		).

	test(tptp_set_e509, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				dom(B,M1) &
				ran(B,M2) &
				un(M1,M2,M3) &
				un(B,C,M4) &
				nsubset(M2,M3),
				Result
			),
			Time
		).

	test(tptp_set_e510, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(B,M1) &
				ran(B,M2) &
				nsubset(B,cp(M1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e511, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				inv(D,M1) &
				(dom(M1,M2) &
				nran(D,M2) or ran(M1,M3) &
				ndom(D,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e512, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset({},cp(B,C)),
				Result
			),
			Time
		).

	test(tptp_set_e513, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				subset(D,cp({},C)) &
				D neq {},
				Result
			),
			Time
		).

	test(tptp_set_e514, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				subset(D,cp(C,{})) &
				D neq {},
				Result
			),
			Time
		).

	test(tptp_set_e515, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,M1) &
				nsubset(M1,cp(B,B)),
				Result
			),
			Time
		).

	test(tptp_set_e516, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,C)) &
				id(D,M1) &
				subset(M1,E) &
				dom(E,M2) &
				ran(E,M3) &
				(nsubset(D,M2) or nsubset(D,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e517, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(C,B)) &
				id(C,M1) &
				subset(M1,D) &
				ran(D,M3) &
				(ndom(D,C) or nsubset(C,M3)) ,
				Result
			),
			Time
		).

	test(tptp_set_e518, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				id(C,M1) &
				subset(M1,D) &
				dom(D,M1) &
				(nsubset(C,M1) or nran(D,C)),
				Result
			),
			Time
		).

	test(tptp_set_e519, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,D)) &
				dres(C,E,M1) &
				nsubset(M1,cp(C,D)),
				Result
			),
			Time
		).

	test(tptp_set_e520, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(C,B)) &
				subset(C,D) &
				ndres(D,E,E),
				Result
			),
			Time
		).

	test(tptp_set_e521, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(D,B)) &
				rres(E,C,M1) &
				nsubset(M1,cp(D,C)),
				Result
			),
			Time
		).

	test(tptp_set_e522, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,C)) &
				subset(C,D) &
				nrres(E,D,E),
				Result
			),
			Time
		).

	test(tptp_set_e523, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(B,C)) &
				rimg(D,B,M1) &
				rres(D,C,M2) &
				dom(M2,M3) &
				(nran(D,M1) or ndom(D,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e524, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(D,cp(C,B)) &
				inv(D,M1) &
				(comp(D,M1,M4) &
				rimg2(M4,C,M5) &
				ndom(D,M5)
				or
				comp(M1,D,M2) &
				rimg2(M2,B,M3) &
				nran(D,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e525, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(C,cp(B,B)) &
				id(B,M1) &
				subset(M1,C) &
				(ndom(C,B) or nran(C,B)),
				Result
			),
			Time
		).

	test(tptp_set_e526, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(C,cp(B,B)) &
				id(B,M1) &
				(ncomp(C,M1,C) or ncomp(M1,C,C)),
				Result
			),
			Time
		).

	test(tptp_set_e527, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				B neq {} &
				cp(B,B) = {},
				Result
			),
			Time
		).

	test(tptp_set_e528, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(A,A),
				Result
			),
			Time
		).

	test(tptp_set_e529, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,B) &
				A neq B &
				subset(B,C) &
				B neq C &
				A = C,
				Result
			),
			Time
		).

	test(tptp_set_e530, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,B) &
				subset(B,C) &
				subset(C,A) &
				A neq C,
				Result
			),
			Time
		).

	test(tptp_set_e531, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,M1) &
				un(M1,C,M2) &
				un(B,C,M3) &
				inters(A,M3,M2) &
				nsubset(C,A),
				Result
			),
			Time
		).

	test(tptp_set_e532, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,M1) &
				un(M1,C,M2) &
				un(B,C,M3) &
				ninters(A,M3,M2) &
				subset(C,A),
				Result
			),
			Time
		).

	test(tptp_set_e533, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,{}) &
				A neq {},
				Result
			),
			Time
		).

	test(tptp_set_e534, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(A,{}) &
				A = {},
				Result
			),
			Time
		).

	test(tptp_set_e535, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,A) &
				nsubset(A,B),
				Result
			),
			Time
		).

	test(tptp_set_e536, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters(A,B,A) &
				subset(A,B),
				Result
			),
			Time
		).

	test(tptp_set_e537, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,A) &
				nsubset(B,A),
				Result
			),
			Time
		).

	test(tptp_set_e538, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(A,B,A) &
				subset(B,A),
				Result
			),
			Time
		).

	test(tptp_set_e539, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,B,M1) &
				diff(E,A,M2) &
				nsubset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e540, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,B,M1) &
				diff(E,A,M2) &
				subset(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e541, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				diff(E,A,M1) &
				ninters(M1,A,{}),
				Result
			),
			Time
		).

	test(tptp_set_e542, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,B,M1) &
				ninters(A,M1,{}),
				Result
			),
			Time
		).

	test(tptp_set_e543, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,B,M1) &
				inters(A,M1,{}),
				Result
			),
			Time
		).

	test(tptp_set_e544, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,A,M1) &
				nun(M1,B,E),
				Result
			),
			Time
		).

	test(tptp_set_e545, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,A,M1) &
				un(M1,B,E),
				Result
			),
			Time
		).

	test(tptp_set_e546, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,B,M1) &
				diff(E,A,M2) &
				inters(A,M1,M3) &
				nsubset(M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e547, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,B,M1) &
				diff(E,A,M2) &
				inters(A,M1,M3) &
				subset(M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e548, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,B,M1) &
				inters(A,M1,M2) &
				nsubset(M2,B),
				Result
			),
			Time
		).

	test(tptp_set_e549, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,B,M1) &
				inters(A,M1,M2) &
				subset(M2,B),
				Result
			),
			Time
		).

	test(tptp_set_e550, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				subset(A,B) &
				diff(E,B,M1) &
				inters(A,M1,M2) &
				diff(E,C,M3) &
				inters(C,M3,M4) &
				nsubset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e551, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,E) &
				subset(B,E) &
				nsubset(A,B) &
				diff(E,B,M1) &
				inters(A,M1,M2) &
				diff(E,C,M3) &
				inters(C,M3,M4) &
				subset(M2,M4),
				Result
			),
			Time
		).

	test(tptp_set_e552, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun({A},{B},{A,B}),
				Result
			),
			Time
		).

	test(tptp_set_e553, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(C,B) &
				subset(B,A) &
				diff(A,C,M1) &
				diff(B,C,M2) &
				diff(A,B,M3) &
				nun(M2,M3,M1),
				Result
			),
			Time
		).

	test(tptp_set_e554, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{{A},{A,B}} = {{U},{U,V}} &
				(A neq U or B neq V),
				Result
			),
			Time
		).

	test(tptp_set_e555, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				comp(F,G,H1) &
				comp(F,G,H2) &
				H1 neq H2,
				Result
			),
			Time
		).

	test(tptp_set_e556, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				comp(F,G,M3) &
				(npfun(M3) or ndom(M3,A) or ran(M3,M4) &
				nsubset(M4,C)),
				Result
			),
			Time
		).

	test(tptp_set_e557, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				comp(F,M6,M5) &
				pfun(F) &
				delay(dom(F,A) &
				ran(F,M1) &
				subset(M1,B),false) &
				pfun(G) &
				delay(dom(G,B) &
				ran(G,M2) &
				subset(M2,C),false) &
				pfun(H) &
				delay(dom(H,C) &
				ran(H,M3) &
				subset(M3,D),false) &
				comp(F,G,M4) &
				ncomp(M4,H,M5) &
				comp(G,H,M6),
				Result
			),
			Time
		).

	test(tptp_set_e558, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				inv(F,G) &
				inv(F,H) &
				G neq H,
				Result
			),
			Time
		).

	test(tptp_set_e559, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				inv(F,M1) &
				npfun(M1),
				Result
			),
			Time
		).

	test(tptp_set_e560, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				inv(F,M1) &
				(npfun(M1) or ndom(M1,B)),
				Result
			),
			Time
		).

	test(tptp_set_e561, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				id(A,M1) &
				inv(F,M2) &
				ncomp(F,M2,M1),
				Result
			),
			Time
		).

	test(tptp_set_e562, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				inv(F,M1) &
				id(B,M2) &
				ncomp(M1,F,M2),
				Result
			),
			Time
		).

	test(tptp_set_e563, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				delay(dom(F,A) &
				ran(F,M1) &
				subset(M1,B),false) &
				pfun(G) &
				delay(dom(G,B) &
				ran(G,M2) &
				subset(M2,C),false) &
				bij(F) &
				bij(G) &
				comp(F,G,M3) &
				nbij(M3),
				Result
			),
			Time
		).

	test(tptp_set_e564, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				delay(dom(F,A) &
				ran(F,B),false) &
				pfun(G) &
				delay(dom(G,B) &
				ran(G,C),false) &
				comp(F,G,M1) &
				nran(M1,C),
				Result
			),
			Time
		).

	test(tptp_set_e565, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				inv(F,M1) &
				pfun(M1) &
				pfun(G) &
				inv(G,M2) &
				pfun(M2) &
				comp(F,G,M3) &
				(npfun(M3) or inv(M3,M4) & npfun(M4))
				or
				pfun(F) &
				dom(F,A) &
				ran(F,B) &
				delay(inv(F,M1) &
				pfun(M1) &
				pfun(G) &
				dom(G,B) &
				ran(G,C) &
				inv(G,M2) &
				pfun(M2) &
				comp(F,G,M3),false) &
				(ndom(M3,A) or nran(M3,C)),
				Result
			),
			Time
		).

	test(tptp_set_e566, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				t1to1(G,B,C) &
				comp(F,G,M1) &
				inv(M1,M2) &
				inv(F,M3) &
				inv(G,M4) &
				ncomp(M4,M3,M2),
				Result
			),
			Time
		).

	test(tptp_set_e567, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,B) &
				inv(F,M1) &
				ninv(M1,F),
				Result
			),
			Time
		).

	test(tptp_set_e568, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				comp(F,G,M3) &
				bij(M3) &
				nbij(F),
				Result
			),
			Time
		).

	test(tptp_set_e569, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				comp(F,G,M3) &
				ran(M3,C) &
				nran(G,C),
				Result
			),
			Time
		).

	test(tptp_set_e570, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				G neq H &
				subset(F,cp(B,C)) &
				dom(F,B) &
				delay(pfun(G),false) &
				subset(G,cp(A,B)) &
				dom(G,A) &
				delay(pfun(H),false) &
				subset(H,cp(A,B)) &
				dom(H,A) &
				comp(G,F,M1) &
				comp(H,F,M1) &
				pfun(F) &
				inv(F,M2) &
				pfun(M2),
				Result
			),
			Time
		).

	test(tptp_set_e571, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				subset(F,cp(A,B)) &
				dom(F,A) &
				pfun(G) &
				subset(G,cp(B,C)) &
				dom(G,B) &
				pfun(H) &
				subset(H,cp(B,C)) &
				dom(H,B) &
				comp(F,G,M1) &
				comp(F,H,M1) &
				ran(F,B) &
				G neq H,
				Result
			),
			Time
		).

	test(tptp_set_e572, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				id(A,M1) &
				id(B,M2) &
				delay(comp(F,M2,F) &
				comp(G,M1,G) &
				comp(H,M1,H),false) &
				dom(F,A) &
				pfun(G) &
				dom(G,B) &
				pfun(H) &
				dom(H,B) &
				comp(F,G,M1) &
				comp(H,F,M2) &
				(nran(F,B) or inv(F,M3) &
				npfun(M3)),
				Result
			),
			Time
		).

	test(tptp_set_e573, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(ran(F,M1) &
				subset(M1,B) &
				ran(G,M2) &
				subset(M2,A) &
				ran(H,M3) &
				subset(M3,A),false) &
				pfun(F) &
				dom(F,A) &
				pfun(G) &
				dom(G,B) &
				pfun(H) &
				dom(H,B) &
				comp(F,H,M5) &
				id(B,M4) &
				comp(G,F,M4) &
				id(A,M5) &
				ninv(F,G),
				Result
			),
			Time
		).

	test(tptp_set_e574, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(ran(F,M1) &
				subset(M1,B) &
				ran(G,M2) &
				subset(M2,A) &
				ran(H,M3) &
				subset(M3,A),false) &
				pfun(F) &
				dom(F,A) &
				pfun(G) &
				dom(G,B) &
				pfun(H) &
				dom(H,B) &
				id(B,M4) &
				comp(G,F,M4) &
				id(A,M5) &
				comp(F,H,M5) &
				ninv(F,H),
				Result
			),
			Time
		).

	test(tptp_set_e575, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(ran(F,M1) &
				subset(M1,B) &
				ran(G,M2) &
				subset(M2,A) &
				ran(H,M3) &
				subset(M3,A),false) &
				pfun(F) &
				dom(F,A) &
				pfun(G) &
				dom(G,B) &
				pfun(H) &
				dom(H,B) &
				id(B,M4) &
				comp(G,F,M4) &
				id(A,M5) &
				comp(F,H,M5) &
				G neq H,
				Result
			),
			Time
		).

	test(tptp_set_e576, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				t1to1(F,A,A) &
				inv(F,F) &
				comp(F,F,M1) &
				nid(A,M1),
				Result
			),
			Time
		).

	test(tptp_set_e577, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B) &
				rimg(F,A,C) &
				dres(A,F,G) &
				npfun(G)
				or
				delay(pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B) &
				rimg(F,A,C),false) &
				dres(A,F,G) &
				ndom(G,A)
				or
				delay(pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B),false) &
				subset(C,B) &
				rimg(F,A,C) &
				dres(A,F,G) &
				ran(G,M2) &
				nsubset(M2,C),
				Result
			),
			Time
		).

	test(tptp_set_e578, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B),false) &
				rimg(F,A,C) &
				dres(A,F,G) &
				nran(G,C),
				Result
			),
			Time
		).

	test(tptp_set_e579, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dres(A,F,G) &
				bij(F) &
				inv(G,M2) &
				npfun(M2) &
				delay(rimg(F,A,C) &
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B),false)
				or
				dom(F,A) &
				dres(A,F,G) &
				ndom(G,A) &
				delay(bij(F) &
				rimg(F,A,C) &
				pfun(F) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B),false)
				or
				rimg(F,A,C) &
				dres(A,F,G) &
				nran(G,C) &
				delay(bij(F) &
				inv(G,M2) &
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B),false)
				or
				pfun(F) &
				dres(A,F,G) &
				npfun(G) &
				delay(bij(F) &
				rimg(F,A,C) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,B),false),
				Result
			),
			Time
		).

	test(tptp_set_e580, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(dom(F,A) &
				dom(G,B),false) &
				subset(F,cp(A,B)) &
				pfun(F) &
				subset(G,cp(B,A)) &
				pfun(G) &
				comp(F,G,M3) &
				id(A,M3) &
				nbij(F),
				Result
			),
			Time
		).

	test(tptp_set_e581, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B),false) &
				ran(G,M2) &
				subset(M2,A) &
				comp(F,G,M3) &
				id(A,M3) &
				nran(G,A),
				Result
			),
			Time
		).

	test(tptp_set_e582, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F1) &
				dom(F1,A) &
				ran(F1,M1) &
				subset(M1,B) &
				pfun(F2) &
				dom(F2,A) &
				ran(F2,M2) &
				subset(M2,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M3) &
				subset(M3,A) &
				comp(F1,G,M4) &
				id(A,M4) &
				comp(F2,G,M4) &
				rimg(F1,A,M5) &
				rimg(F2,A,M5) &
				F1 neq F2,
				Result
			),
			Time
		).

	test(tptp_set_e583, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				bij(M7) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(F,B) or inv(F,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e584, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				bij(M7) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(G,C) or inv(G,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e585, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				bij(M7) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(H,A) or inv(H,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e586, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				ran(M7,B) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(F,B) or inv(F,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e587, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				ran(M7,B) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(G,C) or inv(G,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e588, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				comp(M4,H,M5) &
				bij(M5) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				ran(M7,B) &
				comp(H,F,M8) &
				comp(M8,G,M9) &
				ran(M9,C) &
				(nran(H,A) or inv(H,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e589, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				t1to1(M4,A,C) &
				comp(G,H,M6) &
				t1to1(M6,B,A) &
				(nran(F,B) or inv(F,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e590, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				t1to1(M4,A,C) &
				comp(G,H,M6) &
				t1to1(M6,B,A) &
				(nran(G,C) or inv(G,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e591, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(F,G,M4) &
				t1to1(M4,A,C) &
				comp(G,H,M6) &
				t1to1(M6,B,A) &
				(nran(H,A) or inv(H,M10) &
				npfun(M10)),
				Result
			),
			Time
		).

	test(tptp_set_e592, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				delay(pfun(F1) &
				dom(F1,A1) &
				ran(F1,M1) &
				subset(M1,B) &
				pfun(F2) &
				dom(F2,A2) &
				ran(F2,M2) &
				subset(M2,B) &
				pfun(F) &
				dom(F,M3) &
				ran(F,M4) &
				subset(M4,B),false) &
				dfes(A1,F1,F) &
				dfes(A2,F2,F) &
				un(A1,A2,M3) &
				inters(A1,A2,M5) &
				dfes(M5,F1,M6) &
				ndfes(M5,F2,M6),
				Result
			),
			Time
		).

	test(tptp_set_e593, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A1) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,A) &
				subset(Y,A) &
				subset(X,Y) &
				rimg(F,X,M2) &
				rimg(F,Y,M3) &
				nsubset(M2,M3) ,
				Result
			),
			Time
		).

	test(tptp_set_e594, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A1) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,A) &
				subset(Y,A) &
				un(X,Y,M2) &
				rimg(F,X,M3) &
				rimg(F,Y,M4) &
				nun(M3,M4,M5) &
				rimg(F,M2,M5) ,
				Result
			),
			Time
		).

	test(tptp_set_e595, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,A) &
				subset(Y,A) &
				inters(X,Y,M2) &
				rimg(F,X,M3) &
				rimg(F,Y,M4) &
				inters(M3,M4,M5) &
				rimg(F,M2,M6) &
				nsubset(M6,M5),
				Result
			),
			Time
		).

	test(tptp_set_e596, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(C,A) &
				rimg(F,C,M2) &
				invimg(F,M2,M3) &
				nsubset(C,M3),
				Result
			),
			Time
		).

	test(tptp_set_e597, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,B) &
				subset(Y,B) &
				subset(X,Y) &
				invimg(F,X,M2) &
				invimg(F,Y,M3) &
				nsubset(M2,M3) ,
				Result
			),
			Time
		).

	test(tptp_set_e598, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,B) &
				subset(Y,B) &
				invimg(F,X,M2) &
				invimg(F,Y,M3) &
				un(X,Y,M4) &
				invimg(F,M4,M5) &
				nun(M2,M3,M5) ,
				Result
			),
			Time
		).

	test(tptp_set_e599, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,B) &
				subset(Y,B) &
				invimg(F,X,M2) &
				invimg(F,Y,M3) &
				inters(X,Y,M4) &
				invimg(F,M4,M5) &
				ninters(M2,M3,M5) ,
				Result
			),
			Time
		).

	test(tptp_set_e600, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(Y,B) &
				invimg(F,Y,M2) &
				rimg(F,M2,M3) &
				nsubset(M3,Y) ,
				Result
			),
			Time
		).

	test(tptp_set_e601, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				bij(F) &
				subset(X,A) &
				rimg(F,X,M2) &
				invimg(F,M2,M3) &
				M3 neq X ,
				Result
			),
			Time
		).

	test(tptp_set_e602, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,B) &
				subset(Y,B) &
				invimg(F,Y,M1) &
				nrimg(F,M1,Y) ,
				Result
			),
			Time
		).

	test(tptp_set_e603, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,A) &
				subset(Y,A) &
				bij(F) &
				pfun(F) &
				fimg(F,X,M3) &
				fimg(F,Y,M4) &
				fimg(F,M2,M5) &
				ninters(M3,M4,M5) &
				inters(X,Y,M2),
				Result
			),
			Time
		).

	test(tptp_set_e604, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				nrimg(F,{},{}),
				Result
			),
			Time
		).

	test(tptp_set_e605, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(F) &
				dom(F,A) &
				ran(F,M1) &
				subset(M1,B) &
				subset(X,A) &
				rimg(F,X,{}) &
				X neq {},
				Result
			),
			Time
		).

	test(tptp_set_e606, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				invimg(F,{},M1) &
				M1 neq {},
				Result
			),
			Time
		).

	test(tptp_set_e607, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(E,E)) &
				comp(R,R,M1) &
				subset(M1,R) &
				id(E,M2) &
				subset(M2,R) &
				inv(R,R) &
				subset(X,E) &
				inters(R,cp(X,X),M3) &
				(comp(M3,M3,M4) &
				nsubset(M4,M3) or id(X,M5) &
				nsubset(M5,M3) or ninv(M3,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e608, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				equivalence(R,E) &
				E = {A/E1} &
				A nin E1 &
				eclass(R,E,A,M1) &
				A nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e609, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				equivalence(R,E) &
				delay(eclass(R,E,A,M1),false) &
				nsubset(M1,E),
				Result
			),
			Time
		).

	test(tptp_set_e610, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				equivalence(R,E) &
				E = {A,B/E1} &
				A nin E1 &
				B nin E1 &
				eclass(R,E,A,M1) &
				eclass(R,E,B,M1) &
				[A,B] nin R,
				Result
			),
			Time
		).

	test(tptp_set_e611, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				equivalence(R,E) &
				E = {A,B/E1} &
				A nin E1 &
				B nin E1 &
				eclass(R,E,A,M1) &
				eclass(R,E,B,M2) &
				[A,B] in R &
				M1 neq M2,
				Result
			),
			Time
		).

	test(tptp_set_e612, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(E,E)) &
				comp(R,R,M1) &
				subset(M1,R) &
				id(E,M2) &
				subset(M2,R) &
				inv(R,R) &
				E = {A,B/E1} &
				A nin E1 &
				B nin E1 &
				eclass(R,E,A,M5) &
				eclass(R,E,B,M6) &
				M5 = M6 &
				disj(M5,M6),
				Result
			),
			Time
		).

	test(tptp_set_e613, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(E,E)) &
				comp(R,R,M1) &
				subset(M1,R) &
				id(E,M2) &
				subset(M2,R) &
				inv(R,R) &
				E = {A,B/E1} &
				A nin E1 &
				B nin E1 &
				eclass(R,E,A,M5) &
				eclass(R,E,B,M6) &
				ndisj(M5,M6) &
				M5 neq M6,
				Result
			),
			Time
		).

	test(tptp_set_e614, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				equivalence(R,E) &
				E = {A,B/E1} &
				A nin E1 &
				B nin E1 &
				A neq B &
				eclass(R,E,A,M1) &
				eclass(R,E,B,M2) &
				M1 neq M2 &
				ndisj(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e615, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(E,E)) &
				comp(R,R,M1) &
				subset(M1,R) &
				id(E,M2) &
				subset(M2,R) &
				subset(X,E) &
				inters(R,cp(X,X),M3) &
				(comp(M3,M3,M4) &
				nsubset(M4,M3) or id(X,M5) &
				nsubset(M5,M3)),
				Result
			),
			Time
		).

	test(tptp_set_e616, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset({A},{A,B}),
				Result
			),
			Time
		).

	test(tptp_set_e617, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({A},{B},{A}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e618, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun({A},{A,B},{A,B}),
				Result
			),
			Time
		).

	test(tptp_set_e619, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj({A},{B}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e620, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(R,cp(E,E)) &
				comp(R,R,M1) &
				subset(M1,R) &
				id(E,M2) &
				subset(M2,R) &
				inv(R,M3) &
				inters(R,M3,M4) &
				subset(M4,M2) &
				subset(X,E) &
				dres(X,R,M41) &
				rres(M41,X,M5) &
				(comp(M5,M5,M6) &
				nsubset(M6,M5)
				or id(X,M7) &
				nsubset(M7,M5)
				or id(X,M8) &
				inv(M5,M9) &
				inters(M5,M9,M10) &
				nsubset(M10,M8)),
				Result
			),
			Time
		).

	test(tptp_set_e621, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq B &
				ndisj({A},{B}),
				Result
			),
			Time
		).

	test(tptp_set_e622, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters({A},{B},{A}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e623, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ninters({A},{A,B},{A}),
				Result
			),
			Time
		).

	test(tptp_set_e624, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A},{B},{A}) &
				A = B,
				Result
			),
			Time
		).

	test(tptp_set_e625, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A},{B},{A}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e626, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A},{B},{}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e627, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A},{A,B},{}),
				Result
			),
			Time
		).

	test(tptp_set_e628, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq B &
				ndiff({A,B},{B},{A}),
				Result
			),
			Time
		).

	test(tptp_set_e629, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset({A},{B}) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e630, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset({A},{B,C}) &
				A neq B &
				A neq C,
				Result
			),
			Time
		).

	test(tptp_set_e631, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset({A,B},{C}) &
				A neq C,
				Result
			),
			Time
		).

	test(tptp_set_e632, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				{A,A} neq {A},
				Result
			),
			Time
		).

	test(tptp_set_e633, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset({A,B},{C,D}) &
				A neq C &
				A neq D,
				Result
			),
			Time
		).

	test(tptp_set_e634, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq B &
				symdiff({A},{B},M1) &
				M1 neq {A,B},
				Result
			),
			Time
		).

	test(tptp_set_e635, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] in cp({C},{D}) &
				(A neq C or B neq D),
				Result
			),
			Time
		).

	test(tptp_set_e636, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] nin cp({C},{D}) &
				A = C &
				B = D,
				Result
			),
			Time
		).

	test(tptp_set_e637, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp({A},{B}) neq {[A,B]},
				Result
			),
			Time
		).

	test(tptp_set_e638, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp({A},{B,C}) neq {[A,B],[A,C]} or cp({A,B},{C}) neq {[A,C],[B,C]},
				Result
			),
			Time
		).

	test(tptp_set_e639, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,B) &
				C nin A &
				diff(B,{C},M1) &
				nsubset(A,M1),
				Result
			),
			Time
		).

	test(tptp_set_e640, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,{B,C}) &
				A neq {} &
				A neq {B} &
				A neq {C} &
				A neq {B,C},
				Result
			),
			Time
		).

	test(tptp_set_e641, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nsubset(A,{B,C}) &
				(A = {} or A = {B} or A = {C} or A = {B,C}),
				Result
			),
			Time
		).

	test(tptp_set_e642, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,{A}) &
				(B neq {A} or C neq {A}) &
				(B neq {} or C neq {A}) &
				(B neq {A} or C neq {}),
				Result
			),
			Time
		).

	test(tptp_set_e643, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(B,C,{A}) &
				B neq C &
				B neq {} &
				C neq {},
				Result
			),
			Time
		).

	test(tptp_set_e644, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				M3 in M1 &
				{M1,{M3,M2}} = X &
				sop([M4,M5],X) &
				M4 in U1 &
				M5 in U2 &
				[M4,M5] nin cp(U1,U2) ,
				Result
			),
			Time
		).

	test(tptp_set_e645, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({A},B,M1) &
				subset(M1,B) &
				A nin B,
				Result
			),
			Time
		).

	test(tptp_set_e646, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({A,B},C,M1) &
				subset(M1,C) &
				A nin C,
				Result
			),
			Time
		).

	test(tptp_set_e647, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in B &
				C in B &
				nun({A,C},B,B),
				Result
			),
			Time
		).

	test(tptp_set_e648, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({A},B,{}),
				Result
			),
			Time
		).

	test(tptp_set_e649, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un({A,B},C,{}),
				Result
			),
			Time
		).

	test(tptp_set_e650, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,{B},{B}) &
				B nin A,
				Result
			),
			Time
		).

	test(tptp_set_e651, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in B &
				ninters(B,{A},{A}),
				Result
			),
			Time
		).

	test(tptp_set_e652, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in B &
				C in B &
				ninters({A,C},B,{A,C}),
				Result
			),
			Time
		).

	test(tptp_set_e653, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				disj({A},B) &
				A in B,
				Result
			),
			Time
		).

	test(tptp_set_e654, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				disj({A,B},C) &
				A in C,
				Result
			),
			Time
		).

	test(tptp_set_e655, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A nin B &
				ndisj({A},B),
				Result
			),
			Time
		).

	test(tptp_set_e656, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A nin B &
				C nin B &
				ndisj({A,C},B),
				Result
			),
			Time
		).

	test(tptp_set_e657, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndisj({A},B) &
				ninters({A},B,{A}),
				Result
			),
			Time
		).

	test(tptp_set_e658, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters({A,B},C,{A}) &
				B in C &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e659, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in B &
				(C nin B or A = C) &
				ninters({A,C},B,{A}),
				Result
			),
			Time
		).

	test(tptp_set_e660, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters({A,B},C,{A,B}) &
				A nin C,
				Result
			),
			Time
		).

	test(tptp_set_e661, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,{C},M1) &
				A in M1 &
				(A nin B or A = C),
				Result
			),
			Time
		).

	test(tptp_set_e662, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(B,{C},M1) &
				A nin M1 &
				A in B &
				A neq C,
				Result
			),
			Time
		).

	test(tptp_set_e663, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(A,{B},{}) &
				A neq {} &
				A neq {B},
				Result
			),
			Time
		).

	test(tptp_set_e664, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A},B,{A}) &
				A in B,
				Result
			),
			Time
		).

	test(tptp_set_e665, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A},B,{A}) &
				A nin B,
				Result
			),
			Time
		).

	test(tptp_set_e666, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A},B,{}) &
				A nin B,
				Result
			),
			Time
		).

	test(tptp_set_e667, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A},B,{}) &
				A in B,
				Result
			),
			Time
		).

	test(tptp_set_e668, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A},B,{}) &
				ndiff({A},B,{A}),
				Result
			),
			Time
		).

	test(tptp_set_e669, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A,B},C,{A}) &
				(A in C or B nin C &
				A neq B),
				Result
			),
			Time
		).

	test(tptp_set_e670, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A,B},C,{A}) &
				A nin C &
				(B in C or A = B),
				Result
			),
			Time
		).

	test(tptp_set_e671, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A,B},C,{A,B}) &
				(A in C or B in C),
				Result
			),
			Time
		).

	test(tptp_set_e672, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A,B},C,{A,B}) &
				A nin C &
				B nin C,
				Result
			),
			Time
		).

	test(tptp_set_e673, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff({A,B},C,{}) &
				(A nin C or B nin C),
				Result
			),
			Time
		).

	test(tptp_set_e674, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A,B},C,{}) &
				A in C &
				B in C,
				Result
			),
			Time
		).

	test(tptp_set_e675, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff({A,B},C,{}) &
				ndiff({A,B},C,{A}) &
				diff({A,B},C,{B}) &
				diff({A,B},C,{A,B}),
				Result
			),
			Time
		).

	test(tptp_set_e676, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(A,{B,C},{}) &
				A neq {} &
				A neq {B} &
				A neq {C} &
				A neq {B,C},
				Result
			),
			Time
		).

	test(tptp_set_e677, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				ndiff(A,{B,C},{}) &
				(A = {} or A = {B} or A = {C} or A = {B,C}),
				Result
			),
			Time
		).

	test(tptp_set_e678, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in cp(B,C) &
				npair(A),
				Result
			),
			Time
		).

	test(tptp_set_e679, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,cp(B,C)) &
				D in A &
				(npair(D) or D = [E,F] &
				(E nin B or F nin C)),
				Result
			),
			Time
		).

	test(tptp_set_e680, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(cp(B,C),cp(D,E),M1) &
				A in M1 &
				(npair(A) or A = [F,G] &
				(inters(B,D,M2) &
				F nin M2 or inters(C,E,M3) &
				G nin M3)),
				Result
			),
			Time
		).

	test(tptp_set_e681, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] in cp(C,D) &
				[B,A] nin cp(D,C),
				Result
			),
			Time
		).

	test(tptp_set_e682, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(A,B) = {} &
				A neq {} &
				B neq {},
				Result
			),
			Time
		).

	test(tptp_set_e683, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(A,B) neq {} &
				(A = {} or B = {}),
				Result
			),
			Time
		).

	test(tptp_set_e684, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(A,B) = cp(B,A) &
				A neq {} &
				B neq {} &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e685, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(A,A) = cp(B,B) &
				A neq B,
				Result
			),
			Time
		).

	test(tptp_set_e686, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,cp(A,A)) &
				A neq {},
				Result
			),
			Time
		).

	test(tptp_set_e687, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq {} &
				(subset(cp(B,A),cp(C,A)) or subset(cp(A,B),cp(A,C))) &
				nsubset(B,C),
				Result
			),
			Time
		).

	test(tptp_set_e688, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,M1) &
				(un(cp(A,C),cp(B,C),M2) &
				cp(M1,C) neq M2 or un(cp(C,A),cp(C,B),M3) &
				cp(C,M1) neq M3),
				Result
			),
			Time
		).

	test(tptp_set_e689, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				un(A,B,M1) &
				un(C,D,M2) &
				un(cp(A,C),cp(A,D),M3) &
				un(M3,cp(B,C),M4) &
				nun(M4,cp(B,D),cp(M1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e690, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,M1) &
				(ninters(cp(A,C),cp(B,C),cp(M1,C)) or ninters(cp(C,A),cp(C,B),cp(C,M1))),
				Result
			),
			Time
		).

	test(tptp_set_e691, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				inters(A,B,M1) &
				inters(C,D,M2) &
				ninters(cp(A,C),cp(B,D),cp(M1,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e692, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(A,B) &
				subset(C,D) &
				ninters(cp(A,D),cp(B,C),cp(A,C)),
				Result
			),
			Time
		).

	test(tptp_set_e693, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(A,B,M1) &
				(ndiff(cp(A,C),cp(B,C),cp(M1,C)) or ndiff(cp(C,A),cp(C,B),cp(C,M1))),
				Result
			),
			Time
		).

	test(tptp_set_e694, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				diff(A,C,M1) &
				diff(B,D,M2) &
				diff(cp(A,B),cp(C,D),M3) &
				nun(cp(M1,B),cp(A,M2),M3),
				Result
			),
			Time
		).

	test(tptp_set_e695, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				disj(A,B) &
				disj(C,D) &
				ndisj(cp(A,C),cp(B,D)),
				Result
			),
			Time
		).

	test(tptp_set_e696, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] in cp({C},D) &
				(A neq C or B nin D),
				Result
			),
			Time
		).

	test(tptp_set_e697, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] nin cp({C},D) &
				A = C &
				B in D,
				Result
			),
			Time
		).

	test(tptp_set_e698, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] in cp(C,{D}) &
				(A nin C or B neq D),
				Result
			),
			Time
		).

	test(tptp_set_e699, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[A,B] nin cp(C,{D}) &
				A in C &
				B = D,
				Result
			),
			Time
		).

	test(tptp_set_e700, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq {} &
				(cp({B},A) = {} or cp(A,{B}) = {}),
				Result
			),
			Time
		).

	test(tptp_set_e701, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq B &
				(ndisj(cp({A},C),cp({B},D)) or ndisj(cp(C,{A}),cp(D,{B}))),
				Result
			),
			Time
		).

	test(tptp_set_e702, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nun(cp({A},C),cp({B},C),cp({A,B},C)) or nun(cp(C,{A}),cp(C,{B}),cp(C,{A,B})),
				Result
			),
			Time
		).

	test(tptp_set_e703, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				cp(A,B) = cp(C,D) &
				A neq {} &
				B neq {} &
				(A neq C or B neq D),
				Result
			),
			Time
		).

	test(tptp_set_e704, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				(subset(A,cp(A,B)) or subset(A,cp(B,A))) &
				A neq {},
				Result
			),
			Time
		).

	test(tptp_set_e705, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in cp(B,C) &
				A in cp(D,E) &
				inters(B,D,M1) &
				inters(C,E,M2) &
				A nin cp(M1,M2),
				Result
			),
			Time
		).

	test(tptp_set_e706, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(cp(A,B),cp(C,D)) &
				cp(A,B) neq {} &
				(nsubset(A,C) or nsubset(B,D)),
				Result
			),
			Time
		).

	test(tptp_set_e707, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq {} &
				(subset(cp(A,B),cp(C,D)) or subset(cp(B,A),cp(D,C))) &
				nsubset(B,D),
				Result
			),
			Time
		).

	test(tptp_set_e708, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A in B &
				diff(B,{A},M1) &
				nun(M1,{A},B),
				Result
			),
			Time
		).

	test(tptp_set_e709, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A nin B &
				un(B,{A},M1) &
				ndiff(M1,{A},B),
				Result
			),
			Time
		).

	test(tptp_set_e710, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(B) &
				dom(B,M1) &
				A in M1 &
				ran(B,M2) &
				apply(B,A,M3) &
				M3 nin M2,
				Result
			),
			Time
		).

	test(tptp_set_e711, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(B) &
				dom(B,{A}) &
				apply(B,A,M1) &
				nran(B,{M1}),
				Result
			),
			Time
		).

	test(tptp_set_e712, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				A neq {} &
				dom(C,A) &
				ran(C,{B}) &
				npfun(C),
				Result
			),
			Time
		).

	test(tptp_set_e713, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(B) &
				pfun(C) &
				dom(B,M1) &
				dom(C,M1) &
				ran(B,{A}) &
				ran(C,{A}) &
				B neq C,
				Result
			),
			Time
		).

	test(tptp_set_e714, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				sop([X,Y],M1) &
				first(M1,M2) &
				M3 in M2 &
				second(M1,M4) &
				sop([X,Y],{M2,{M3,M4}}) &
				nset(M2) ,
				Result
			),
			Time
		).

	test(tptp_set_e715, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				sop([X,Y],M1) &
				first(M1,M2) &
				M3 in M2 &
				second(M1,M4) &
				sop([X,Y],{M2,{M3,M4}}) &
				nset(M4),
				Result
			),
			Time
		).

	test(tptp_set_e716, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				rimg(Xf,{X},M1) &
				[X,Y] in Xf &
				Y nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e717, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				operation(Xf1) &
				compatible(Xh,Xf1,Xf2) &
				dom(Xh,M1) &
				dom(Xf1,M2) &
				cp(M1,M1) neq M2,
				Result
			),
			Time
		).

	test(tptp_set_e718, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				[X,M1] in Z &
				dom(Z,M2) &
				X nin M2,
				Result
			),
			Time
		).

	test(tptp_set_e719, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				X in U1 &
				nrimg(cp(U1,U2),{X},U2),
				Result
			),
			Time
		).

	test(tptp_set_e720, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				operation(Xf2) &
				compatible(Xh,Xf1,Xf2) &
				ran(Xh,M1) &
				dom(Xf2,M2) &
				nsubset(cp(M1,M1),M2),
				Result
			),
			Time
		).

	test(tptp_set_e721, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				pfun(Xh) &
				dom(Xh,M1) &
				dom(Xf1,M2) &
				cp(M1,M1) = M2 &
				ran(Xh,M3) &
				dom(Xf2,M4) &
				subset(cp(M3,M3),M4) &
				(npfun(Xh) or ndom(M2,M1) or dom(M4,M5) &
				nsubset(M3,M5)),
				Result
			),
			Time
		).

	test(tptp_set_e722, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				operation(Xf1) &
				compatible(Xh,Xf1,Xf2) &
				dom(Xh,M1) &
				[X,Y] in cp(M1,M1) &
				apply(Xf1,[X,Y],M2) &
				M2 nin M1,
				Result
			),
			Time
		).

	test(tptp_set_e723, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				operation(Xf2) &
				compatible(Xh,Xf1,Xf2) &
				dom(Xh,M1) &
				[X,Y] in cp(M1,M1) &
				apply(Xh,X,M2) &
				apply(Xh,Y,M3) &
				dom(Xf2,M4) &
				[M2,M3] nin M4,
				Result
			),
			Time
		).

	test(tptp_set_e724, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				dom({},M1) &
				dom(M1,M2) &
				(npfun({}) or cp(M2,M2) neq M1 or ran({},M3) &
				nsubset(M3,M2)),
				Result
			),
			Time
		).

	test(tptp_set_e725, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(C,D)) &
				subset(B,E) &
				nsubset(B,cp(C,D)),
				Result
			),
			Time
		).

	test(tptp_set_e726, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				subset(E,cp(B,C)) &
				D in E &
				(npair(D) or D = [F,G] &
				(F nin B or G nin C)),
				Result
			),
			Time
		).

	test(tptp_set_e727, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				id(B,M1) &
				nsubset(M1,cp(B,B)),
				Result
			),
			Time
		).

	test(tptp_set_e728, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				M3 in M1 &
				sop(M4,{M1,{M3,M2}}) &
				npair(M4) &
				M1 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e729, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				M3 in M1 &
				sop(M4,{M1,{M3,M2}}) &
				npair(M4) &
				M2 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e730, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				M3 in M1 &
				M4 in M2 &
				sop([M3,M4],M5) &
				M5 neq X &
				M1 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e731, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				first(X,M1) &
				second(X,M2) &
				M3 in M1 &
				M4 in M2 &
				sop([M3,M4],M5) &
				M5 neq X &
				M2 neq X,
				Result
			),
			Time
		).

	test(tptp_set_e732, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset(X) &
				first({X,{X,{Y}}},M1) &
				M1 neq {X,{X,{Y}}},
				Result
			),
			Time
		).

	test(tptp_set_e733, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset(X) &
				second({X,{X,{Y}}},M1) &
				M1 neq {X,{X,{Y}}},
				Result
			),
			Time
		).

	test(tptp_set_e734, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset(Y) &
				first({{X},{X,Y}},M1) &
				M1 neq {{X},{X,Y}},
				Result
			),
			Time
		).

	test(tptp_set_e735, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(
				nset(Y) &
				second({{X},{X,Y}},M1) &
				M1 neq {{X},{X,Y}},
				Result
			),
			Time
		).

:- end_object.
