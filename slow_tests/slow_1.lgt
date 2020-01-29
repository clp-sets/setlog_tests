
:- object(tests,
	extends(lgtunit)).

	:- info([
		version is 0.1,
		author is 'Maximiliano Cristiá, Gianfranco Rossi, and Paulo Moura',
		date is 2020/01/15,
		comment is 'Slow unit tests for sequential setlog.'
	]).

	:- uses(lgtunit, [
		benchmark/2
	]).

	:- uses(user, [
		rsetlog(Goal, 7000, _, Result, []) as rsetlog(Goal, Result)
	]).

	 test(sl_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(un(N1,N2,N3) & 
				un(N3,N4,{[X,X],[X,Y],[Y,X],[Y,Y]/M}) & 
				X neq Y & 
				[X,X] nin N1 & 
				[X,X] nin N2 & 
				[X,X] nin N4,
				Result
			),
			Time
		).

	 test(sl_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(un(A,B,M1) & 
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

	 test(sl_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(set(X) & 
				id(X,N1) & 
				inv(R,N2) & 
				un(N1,R,N3) & 
				un(N3,N2,cp(X,X)) & 
				A in X & 
				B in X & 
				A neq B & 
				[A,B] nin R & 
				[B,A] nin R,
				Result
			),
			Time
		).

	 test(sl_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(pfun(F) & 
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

	 test(sl_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(un(A,M1,U) & 
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
				subset(B,U) & 
				subset(A,U),
				Result
			),
			Time
		).

	 test(sl_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(un(A,M1,U) & 
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

	 test(sl_e007, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog({X1,X2,X3,X4,X5/B} = {Y1,Y2,Y3,Y4,Y5/A} & 
				X1 nin {Y1,Y2,Y3,Y4,Y5},
				Result
			),
			Time
		).

	 test(sl_e008, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog({X1,X2,X3,X4,X5/B} = {Y1,Y2,Y3,Y4,Y5/A} & 
				X1 nin {Y1,Y2,Y3,Y4,Y5},
				Result
			),
			Time
		).

	 test(sl_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(nsubset(M3,M4) & 
				vec(X0,U) & 
				id(U,M1) & 
				inters(X0,M1,M2) & 
				comp(M2,X1,M3) & 
				inters(X0,X1,M4) & 
				ran(X1,M5) & 
				subset(M5,U),
				Result
			),
			Time
		).

	 test(sl_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(comp(X0,cp(U,U),M1) & 
				un(M1,M2,cp(U,U)) & 
				disj(M1,M2) & 
				ncomp(M2,cp(U,U),M2),
				Result
			),
			Time
		).

	 test(sl_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog(not(V18,W18) & or(V4,W18,X1) & or(X1,V19,{{}}) &
				or(V3,V18,X2) & not(V5,W5) & or(X2,W5,{{}}) & 
				not(V8,W8) & or(W5,W8,X3) & not(V15,W15) &
					or(X3,W15,{{}}) &
				not(V20,W20) & or(W20,V7,X4) & not(V16,W16) &
					or(X4,W16,{{}}) &
				not(V13,W13) & or(V10,W13,X5) & not(V7,W7) & 
					or(X5,W7,{{}}) &
				not(V12,W12) & not(V9,W9) & or(W12,W9,X6) & 
					or(X6,V17,{{}}) &
				or(V17,V19,X7) & or(X7,V5,{{}}) &
				not(V16,W16) & or(W16,V9,X8) & or(X8,V15,{{}}) &
				or(V11,W5,X9) & not(V14,W14) & or(X9,W14,{{}}) &
				not(V10,W10) & or(V18,W10,X10) & 
					or(X10,V13,{{}}) &
				not(V3,W3) & or(W3,V11,X11) & or(X11,V12,{{}}) & 
				not(V6,W6) & not(V17,W17) & or(W6,W17,X13) & 
					or(X13,W8,{{}}) &
				or(W18,V14,X14) & or(X14,V1,{{}}) &
				not(V19,W19) & or(W19,W15,X15) & 
					or(X15,V10,{{}}) &
				or(V12,V18,X16) & or(X16,W19,{{}}) &
				or(W8,V4,X17) & or(X17,V7,{{}}) &
				or(W8,W9,X18) & or(X18,V4,{{}}) & 
				or(V7,V17,X19) & or(X19,W15,{{}}) &
				or(V12,W7,X20) & or(X20,W14,{{}}) &
				not(V11,W11) & or(W10,W11,X21) & or(X21,V8,{{}}) &
				or(V2,W15,X22) & or(X22,W11,{{}}) &
				or(V9,V6,X23) & or(X23,V1,{{}}) &
				or(W11,V20,X24) & or(X24,W17,{{}}) & 
				or(V9,W15,X25) & or(X25,V13,{{}}) & 
				or(V12,W7,X26) & or(X26,W17,{{}}) &
				not(V2,W2) & or(W18,W2,X27) & or(X27,V20,{{}}) &
				or(V20,V12,X28) & or(X28,V4,{{}}) &
				or(V19,V11,X29) & or(X29,V14,{{}}) &
				or(W16,V18,X30) & not(V4,W4) & or(X30,W4,{{}}) &
				not(V1,W1) & or(W1,W17,X31) & or(X31,W19,{{}}) &
				or(W13,V15,X32) & or(X32,V10,{{}}) &
				or(W12,W14,X33) & or(X33,W13,{{}}) &
				or(V12,W14,X34) & or(X34,W7,{{}}) &
				or(W7,V16,X35) & or(X35,V10,{{}}) &
				or(V6,V10,X36) & or(X36,V7,{{}}) &
				or(V20,V14,X37) & or(X37,W16,{{}}) & 
				or(W19,V17,X38) & or(X38,V11,{{}}) &
				or(W7,V1,X39) & or(X39,W20,{{}}) &
				or(W5,V12,X40) & or(X40,V15,{{}}) & 
				or(W4,W9,X41) & or(X41,W13,{{}}) &
				or(V12,W11,X42) & or(X42,W7,{{}}) &
				or(W5,V19,X43) & or(X43,W8,{{}}) &
				or(V1,V16,X44) & or(X44,V17,{{}}) &
				or(V20,W14,X45) & or(X45,W15,{{}}) &
				or(V13,W4,X46) & or(X46,V10,{{}}) &
				or(V14,V7,X47) & or(X47,V10,{{}}) &
				or(W5,V9,X48) & or(X48,V20,{{}}) &
				or(V10,V1,X49) & or(X49,W19,{{}}) &
				or(W16,W15,X50) & or(X50,W1,{{}}) &
				or(V16,V3,X51) & or(X51,W11,{{}}) &
				or(W15,W10,X52) & or(X52,V4,{{}}) &
				or(V4,W15,X53) & or(X53,W3,{{}}) &
				or(W10,W16,X54) & or(X54,V11,{{}}) &
				or(W8,V12,X55) & or(X55,W5,{{}}) &
				or(V14,W6,X56) & or(X56,V12,{{}}) &
				or(V1,V6,X57) & or(X57,V11,{{}}) &
				or(W13,W5,X58) & or(X58,W1,{{}}) &
				or(W7,W2,X59) & or(X59,V12,{{}}) &
				or(V1,W20,X60) & or(X60,V19,{{}}) &
				or(W2,W13,X61) & or(X61,W8,{{}}) &
				or(V15,V18,X62) & or(X62,V4,{{}}) &
				or(W11,V14,X63) & or(X63,V9,{{}}) &
				or(W6,W15,X64) & or(X64,W2,{{}}) &
				or(V5,W12,X65) & or(X65,W15,{{}}) &
				or(W6,V17,X66) & or(X66,V5,{{}}) &
				or(W13,V5,X67) & or(X67,W19,{{}}) &
				or(V20,W1,X68) & or(X68,V14,{{}}) &
				or(V9,W17,X69) & or(X69,V15,{{}}) &
				or(W5,V19,X70) & or(X70,W18,{{}}) &
				or(W12,V8,X71) & or(X71,W10,{{}}) &
				or(W18,V14,X72) & or(X72,W4,{{}}) &
				or(V15,W9,X73) & or(X73,V13,{{}}) &
				or(V9,W5,X74) & or(X74,W1,{{}}) &
				or(V10,W19,X75) & or(X75,W14,{{}}) &
				or(V20,V9,X76) & or(X76,V4,{{}}) &
				or(W9,W2,X77) & or(X77,V19,{{}}) &
				or(W5,V13,X78) & or(X78,W17,{{}}) &
				or(V2,W10,X79) & or(X79,W18,{{}}) &
				or(W18,V3,X80) & or(X80,V11,{{}}) &
				or(V7,W9,X81) & or(X81,V17,{{}}) &
				or(W15,W6,X82) & or(X82,W3,{{}}) & 
				or(W2,V3,X83) & or(X83,W13,{{}}) &
				or(V12,V3,X84) & or(X84,W2,{{}}) &
				or(W2,W3,X85) & or(X85,V17,{{}}) &
				or(V20,W15,X86) & or(X86,W16,{{}}) &
				or(W5,W17,X87) & or(X87,W19,{{}}) &
				or(W20,W18,X88) & or(X88,V11,{{}}) &
				or(W9,V1,X89) & or(X89,W5,{{}}) &
				or(W19,V9,X90) & or(X90,V17,{{}}) &
				or(V12,W2,X91) & or(X91,V17,{{}}) &
				or(V4,W16,X92) & or(X92,W5,{{}}),
				Result
			),
			Time
		).

	 test(sl_e012, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog({X1,X2,X3,X4,X5,X6/B} = {Y1,Y2,Y3,Y4,Y5,Y6/A} & 
				X1 nin {Y1,Y2,Y3,Y4,Y5,Y6},
				Result
			),
			Time
		).

	 test(sl_e013, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(un(N1,N2,N3) & 
				un(N3,N4,{[X,X],[X,Y],[Y,X],[Y,Y]/M}) & 
				X neq Y & 
				[X,X] nin N1 & 
				[X,X] nin N2,
				Result
			),
			Time
		).

	 test(sl_e014, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog(comp(X0,cp({W,X,Y,Z},{W,X,Y,Z}),M1) &
				un(M1,M2,cp({W,X,Y,Z},{W,X,Y,Z})) & 
				disj(M1,M2) & 
				comp(M2,cp({W,X,Y,Z},{W,X,Y,Z}),M2),
				Result
			),
			Time
		).

:- end_object.
