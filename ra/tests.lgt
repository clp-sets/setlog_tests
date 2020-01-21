
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
		rsetlog(Goal, 2000, _, Result, []) as rsetlog(Goal, Result)
	]).

	 test(ra_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,B,A1) &
				comp(A1,C,A2) &
				comp(A,C,A3) &
				comp(B,C,A4) &
				nun(A3,A4,A2)
				),
				Result
			),
			Time
		).

	 test(ra_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(B,C,A1) &
				comp(A,A1,A2) &
				comp(A,B,A3) &
				ncomp(A3,C,A2)
				),
				Result
			),
			Time
		).

	 test(ra_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(A,A1) &
				ninv(A1,A)
				),
				Result
			),
			Time
		).

	 test(ra_e004, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(A,B,A1) &
				inv(A1,A2) &
				inv(B,A3) &
				inv(A,A4) &
				ncomp(A3,A4,A2)
				),
				Result
			),
			Time
		).

	 test(ra_e005, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,cp(X,Y),cp(X,Y)) &
				id(Y,I) &
				ncomp(A,I,A)
				),
				Result
			),
			Time
		).

	 test(ra_e006, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,B,A1) &
				inv(A1,A2) &
				inv(A,A3) &
				inv(B,A4) &
				nun(A3,A4,A2)
				),
				Result
			),
			Time
		).

	 test(ra_e007, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,B,A1) &
				nun(B,A,A1)
				),
				Result
			),
			Time
		).

	 test(ra_e008, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,B,A1) &
				un(A1,C,A2) &
				un(B,C,A3) &
				nun(A,A3,A2)
				),
				Result
			),
			Time
		).

	 test(ra_e009, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(A,cp(D,D)) &
				subset(B,cp(D,D)) &
				inv(A,IA) &
				comp(A,B,AB) &
				un(AB,CAB,cp(D,D)) &
				disj(AB,CAB) &
				comp(IA,CAB,IC) &
				[X,Y] in IC &
				[X,Y] in B
				),
				Result
			),
			Time
		).

	 test(ra_e010, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,CA,cp(D,R)) &
				disj(A,CA) &
				un(CA,B,CAB) &
				un(CAB,CCAB,cp(D,R)) &
				disj(CAB,CCAB) &
				un(B,CB,cp(D,R)) &
				disj(B,CB) &
				un(CA,CB,CACB) &
				un(CACB,CCACB,cp(D,R)) &
				disj(CACB,CCACB) &
				nun(CCAB,CCACB,A)
				),
				Result
			),
			Time
		).

	 test(ra_e011, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(R,S,cp(A,B)) &
				disj(R,S) &
				un(S,T,cp(A,B)) &
				disj(S,T) &
				T neq R
				),
				Result
			),
			Time
		).

	 test(ra_e012, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				id(D,I) &
				un(I,Dvsty,cp(D,R)) &
				disj(I,Dvsty) &
				[X,X] in Dvsty
				),
				Result
			),
			Time
		).

	 test(ra_e013, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				id(D,I) &
				un(I,Dvsty,cp(D,R)) &
				disj(I,Dvsty) &
				nun(I,Dvsty,cp(D,R))
				),
				Result
			),
			Time
		).

	 test(ra_e014, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(cp(D,R),CU,cp(D,R)) &
				disj(cp(D,R),CU) &
				CU neq {}
				),
				Result
			),
			Time
		).

	 test(ra_e015, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				id(A,I) &
				inv(I,II) &
				I neq II
				),
				Result
			),
			Time
		).

	 test(ra_e016, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(A,cp(X,Y),cp(X,Y)) &
				id(X,I) &
				ncomp(I,A,A)
				),
				Result
			),
			Time
		).

	 test(ra_e017, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				dom(A,X) &
				ran(A,Y) &
				nsubset(A,cp(X,Y))
				),
				Result
			),
			Time
		).

	 test(ra_e018, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(A,C) &
				subset(B,D) &
				nsubset(cp(A,B),cp(C,D))
				),
				Result
			),
			Time
		).

	 test(ra_e019, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(cp(A,B),cp(C,D),N1) &
				inters(A,C,N4) &
				inters(B,D,N5) &
				N1 neq cp(N4,N5)
				),
				Result
			),
			Time
		).

	 test(ra_e020, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				(disj(cp(A,B),cp(C,D)) &
				ndisj(A,C) &
				ndisj(B,D))
				or
				((disj(A,C) or disj(B,D)) &
				N in cp(A,B) &
				N in cp(C,D))
				),
				Result
			),
			Time
		).

	 test(ra_e021, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,B) = {P/R}
				),
				Result
			),
			Time
		).

	 test(ra_e022, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(A,cp(X,Y)) &
				subset(B,cp(Y,Z)) &
				inv(A,IA) &
				comp(A,B,AB) &
				un(AB,CAB,cp(X,Z)) &
				disj(AB,CAB) &
				comp(IA,CAB,IC) &
				un(B,CB,cp(Y,Z)) &
				disj(B,CB) &
				nun(IC,CB,CB)
				),
				Result
			),
			Time
		).

	 test(ra_e023, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(cp({1,3},{a}),cp({2},{b}),{[U,a],[3,a],[V,W]})
				),
				Result
			),
			Time
		).

	 test(ra_e024, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(cp({1,2,3,4,5,6,7,8,9,0,11,12,13,
				       14,15,16,17,18,19,20,21,22,23,24,25,26},
					{a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,
						p,q,r,s,t,u,v,w,x,y,z}
				     ),
				   {bottom},Z)
				),
				Result
			),
			Time
		).

	 test(ra_e025, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp({C,D},{N,a}) = {[1,m],[J,B],[D,a]} &
				C neq D
				),
				Result
			),
			Time
		).

	 test(ra_e026, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp({C,D},{N,a}) = {[1,m],[J,B],[D,a],[3,m]} &
				C neq D
				),
				Result
			),
			Time
		).

	 test(ra_e027, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(cp(A,B),cp(C,D),I1) &
				un(A,C,I21) &
				un(B,D,I22) &
				I1 neq cp(I21,I22)
				),
				Result
			),
			Time
		).

	 test(ra_e028, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				[X1,Y1] in A &
				[Y1,X1] in CA &
				un(A,CA,cp(X,Y)) &
				disj(A,CA)
				),
				Result
			),
			Time
		).

	 test(ra_e029, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				A = {[1,a],[1,b]} &
				un(A,CA,cp({0,1},{a,b})) &
				disj(A,CA) 
				),
				Result
			),
			Time
		).

	 test(ra_e030, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				A = {[1,a],[1,e],[3,i],[5,a],[5,i],[7,e],
					[7,a],[7,i],[9,e]} &
				un(A,CA,cp({0,1,2,3,4,5,6,7,8,9},
						{a,b,c,d,e,f,g,h,i,j})) &
				disj(A,CA)
				),
				Result
			),
			Time
		).

	 test(ra_e031, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,B) = {[X1,Y1]/H} &
				X1 nin A
				),
				Result
			),
			Time
		).

	 test(ra_e032, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,B) = {[X1,Y1],[X2,Y2]/H} &
				X1 nin A
				),
				Result
			),
			Time
		).

	 test(ra_e033, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,A) = {[X1,Y1]/H} &
				X1 nin A
				),
				Result
			),
			Time
		).

	 test(ra_e034, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,A) = {[X1,Y1],[X2,Y2]/H} &
				X1 nin A
				),
				Result
			),
			Time
		).

	 test(ra_e035, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,A) = {[1,a],[2,b]/H} &
				1 nin A
				),
				Result
			),
			Time
		).

	 test(ra_e036, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,N1) &
				comp(N1,R,N2) &
				subset(R,cp(X,Y)) &
				id(Y,N4) &
				subset(N2,N4) &
				npfun(R)
				),
				Result
			),
			Time
		).

	 test(ra_e037, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,N1) &
				comp(R,N1,N2) &
				subset(R,cp(A,B)) &
				id(A,N4) &
				subset(N2,N4) &
				[X1,Y] in R &
				[X2,Y] in R &
				X1 neq X2
				),
				Result
			),
			Time
		).

	 test(ra_e038, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,N) &
				subset(N,R) &
				[X,Y] in R &
				[Y,Z] in R &
				[X,Z] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e039, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				id(A,N2) &
				subset(N2,R) &
				X in A &
				[X,X] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e040, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				id(A,N2) &
				subset(R,N2) &
				[X,Y] in R &
				X neq Y
				),
				Result
			),
			Time
		).

	 test(ra_e041, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				id(A,N2) &
				inters(R,N2,{}) &
				X in A &
				[X,X] in R
				),
				Result
			),
			Time
		).

	 test(ra_e042, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,A)) &
				id(A,N2) &
				inv(R,N3) &
				inters(R,N3,N4) &
				subset(N4,N2) &
				[X,Y] in R &
				[Y,X] in R &
				X neq Y
				),
				Result
			),
			Time
		).

	 test(ra_e043, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,N1) &
				inters(R,N1,{}) &
				[X,Y] in R &
				[Y,X] in R
				),
				Result
			),
			Time
		).

	 test(ra_e044, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,R) &
				[X,Y] in R &
				[Y,X] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e045, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,N1) &
				subset(N1,R) &
				subset(R,cp(A,A)) &
				id(A,N3) &
				subset(N3,R) &
				X in A &
				[X,X] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e046, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,N1) &
				subset(N1,R) &
				subset(R,cp(A,A)) &
				id(A,N3) &
				subset(N3,R) &
				[X,Y] in R &
				[Y,Z] in R &
				[X,Z] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e047, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(X) &
				set(Y) &
				subset(R,cp(X,Y)) &
				inv(R,N1) &
				un(R,N1,cp(X,Y)) &
				A in X &
				B in Y &
				[A,B] nin R &
				[B,A] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e048, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,N1) &
				un(R,N1,cp(X,X)) &
				A in X &
				B in X &
				[A,B] nin R &
				[B,A] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e049, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,R) &
				[X,Y] in R &
				[Y,Z] in R &
				[X,Z] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e050, true(Result == time_out), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(X) &
				id(X,N1) &
				inv(R,N2) &
				un(N1,R,N3) &
				un(N3,N2,cp(X,X)) &
				A in X &
				B in X &
				A neq B &
				[A,B] nin R &
				[B,A] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e051, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(X,Y)) &
				un(X,Y,U) &
				id(U,N1) &
				inv(R,N2) &
				un(N1,R,N3) &
				un(N3,N2,cp(X,Y)) &
				A in X &
				B in Y &
				A neq B &
				[A,B] nin R &
				[B,A] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e052, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				[X,Y] in R &
				[Y,Z] in R &
				[X,Z] nin R &
				comp(R,R,N5) &
				subset(N5,R) &
				delay(set(A) &
				subset(R,cp(A,A)) &
				id(A,N2) &
				inv(R,N3) &
				 subset(N2,R) &
				inters(R,N3,N4) &
				subset(N4,N2))
				),
				Result
			),
			Time
		).

	 test(ra_e053, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				subset(S,cp(A,B)) &
				un(S,CS,cp(A,B)) &
				disj(S,CS) &
				inters(R,CS,{}) &
				inv(R,IR) &
				inv(S,IS) &
				un(IS,CIS,cp(B,A)) &
				disj(IS,CIS) &
				ninters(IR,CIS,{})
				),
				Result
			),
			Time
		).

	 test(ra_e054, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				[X,Y] in R &
				[Y,X] in R &
				X neq Y &
				subset(M4,M2) &
				subset(R,cp(A,A)) &
				id(A,M2) &
				inv(R,M3) &
				subset(M2,R) &
				inters(R,M3,M4) &
				comp(R,R,M5) &
				subset(M5,R)
				),
				Result
			),
			Time
		).

	 test(ra_e055, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,N5) &
				subset(N5,R) &
				set(A) &
				subset(R,cp(A,A)) &
				id(A,N2) &
				inv(R,N3) &
				subset(N2,R) &
				inters(R,N3,N4) &
				subset(N4,N2) &
				X in A &
				[X,X] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e056, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,R,N5) &
				subset(N5,R) &
				id(A,N2) &
				inv(R,N3) &
				set(A) &
				inters(R,N3,N4) &
				subset(N4,N2) &
				un(R,N3,cp(A,A)) &
				X in A &
				[X,X] nin R
				),
				Result
			),
			Time
		).

	 test(ra_e057, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				[X,Y] in R &
				[Y,X] in R &
				X neq Y &
				subset(N4,N2) &
				comp(R,R,N5) &
				subset(N5,R) &
				id(A,N2) &
				inv(R,N3) &
				set(A) &
				inters(R,N3,N4) &
				un(R,N3,cp(A,A))
				),
				Result
			),
			Time
		).

	 test(ra_e058, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				[X,Y] in R &
				[Y,Z] in R &
				[X,Z] nin R &
				comp(R,R,N5) &
				subset(N5,R) &
				delay(id(A,N2) &
				inv(R,N3) &
				set(A) &
				inters(R,N3,N4) &
				subset(N4,N2) &
				un(R,N3,cp(A,A))) 
				),
				Result
			),
			Time
		).

	 test(ra_e059, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				solve(inv(R,N3) &
				un(R,N3,cp(A,A)) &
				X in A &
				Y in A &
				X neq Y &
				[X,Y] nin R &
				[Y,X] nin R) &
				comp(R,R,N5) &
				subset(N5,R) &
				id(A,N2) &
				inters(R,N3,N4) &
				subset(N4,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e060, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				id(A,N1) &
				inv(R,N2) &
				comp(N2,R,N3) &
				subset(N1,N3) &
				Y in A &
				comp(R,{[Y,Y]},{})
				),
				Result
			),
			Time
		).

	 test(ra_e061, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(N2,R,R) &
				id(A,N2) &
				subset(N2,R) &
				comp(R,R,N) &
				subset(N,R) &
				N neq R
				),
				Result
			),
			Time
		).

	 test(ra_e062, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(Q,R,M1) &
				subset(M1,S) &
				inv(Q,M2) &
				un(S,M3,cp(A,C)) &
				disj(S,M3) &
				comp(M2,M3,M4) &
				un(R,M5,cp(B,C)) &
				disj(R,M5) &
				nsubset(M4,M5) &
				subset(Q,cp(A,B))
				),
				Result
			),
			Time
		).

	 test(ra_e063, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				ninters(R,cp(A,B),R)
				),
				Result
			),
			Time
		).

	 test(ra_e064, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				un(R,CR,cp(A,B)) &
				disj(R,CR) &
				nun(R,CR,cp(A,B))
				),
				Result
			),
			Time
		).

	 test(ra_e065, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				un(R,CR,cp(A,B)) &
				disj(R,CR) &
				ninters(R,CR,{})
				),
				Result
			),
			Time
		).

	 test(ra_e066, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				A neq {} &
				B neq {} &
				cp(A,B) = {}
				),
				Result
			),
			Time
		).

	 test(ra_e067, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,A)) &
				subset(S,cp(A,A)) &
				subset(T,cp(A,A)) &
				inv(T,IT) &
				inv(R,IR) &
				comp(R,S,N1) &
				inters(N1,IT,{}) &
				comp(S,T,N2) &
				ninters(N2,IR,{})
				),
				Result
			),
			Time
		).

	 test(ra_e068, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				id(A,IA) &
				un(IA,DVST,cp(A,B)) &
				disj(IA,DVST) &
				un(IA,CIA,cp(A,B)) &
				disj(IA,CIA) &
				DVST neq CIA
				),
				Result
			),
			Time
		).

	 test(ra_e069, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				R = S &
				inv(R,IR) &
				inv(S,IS) &
				IR neq IS
				),
				Result
			),
			Time
		).

	 test(ra_e070, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ninv({},{})
				),
				Result
			),
			Time
		).

	 test(ra_e071, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ninv(cp(A,A),cp(A,A))
				),
				Result
			),
			Time
		).

	 test(ra_e072, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(S,cp(A,B)) &
				subset(T,cp(A,B)) &
				un(T,CT,cp(A,B)) &
				disj(T,CT) &
				inters(S,CT,{}) &
				subset(R,cp(D,A)) &
				comp(R,S,N1) &
				comp(R,T,N2) &
				un(N2,CN2,cp(D,B)) &
				disj(N2,CN2) &
				ninters(N1,CN2,{})
				),
				Result
			),
			Time
		).

	 test(ra_e073, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(S,T,N1) &
				comp(R,N1,N2) &
				comp(R,S,N3) &
				comp(R,T,N4) &
				nun(N3,N4,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e074, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				subset(S,cp(B,C)) &
				comp(R,S,N1) &
				inters(N1,T,{}) &
				inv(T,IT) &
				subset(T,cp(D,C)) &
				comp(S,IT,N2) &
				inv(R,IR) &
				ninters(N2,IR,{})
				),
				Result
			),
			Time
		).

	 test(ra_e075, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				subset(S,cp(B,C)) &
				comp(R,S,N1) &
				ninters(N1,T,{}) &
				inv(T,IT) &
				subset(T,cp(D,C)) &
				comp(S,IT,N2) &
				inv(R,IR) &
				inters(N2,IR,{})
				),
				Result
			),
			Time
		).

	 test(ra_e076, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				subset(S,cp(B,C)) &
				comp(R,S,N1) &
				inters(N1,T,{}) &
				inv(T,IT) &
				subset(T,cp(A,D)) &
				comp(IT,R,N2) &
				inv(S,IS) &
				ninters(N2,IS,{})
				),
				Result
			),
			Time
		).

	 test(ra_e077, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				subset(S,cp(B,C)) &
				comp(R,S,N1) &
				ninters(N1,T,{}) &
				inv(T,IT) &
				subset(T,cp(A,D)) &
				comp(IT,R,N2) &
				inv(S,IS) &
				inters(N2,IS,{})
				),
				Result
			),
			Time
		).

	 test(ra_e078, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				subset(R,cp(A,A)) &
				id(A,IA) &
				inv(R,IR) &
				un(R,IR,cp(A,A)) &
				nsubset(IA,R)
				),
				Result
			),
			Time
		).

	 test(ra_e079, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(IA,R,R) &
				comp(R,IA,R) &
				inv(R,IR) &
				id(A,IA) &
				comp(R,IR,N1) &
				subset(N1,IA) &
				comp(IR,R,N2) &
				subset(IA,N2) &
				(N1 neq N2 or N1 = N2 &
				nid(A,N1))
				),
				Result
			),
			Time
		).

	 test(ra_e080, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				pfun(F) &
				comp(S,F,N1) &
				inters(R,N1,N2) &
				inv(F,IF) &
				comp(R,IF,N3) &
				inters(N3,S,N4) &
				ncomp(N4,F,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e081, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(X,IX) &
				inv(Y,IY) &
				((subset(X,Y) &
				nsubset(IX,IY)) or (nsubset(X,Y) &
				subset(IX,IY)))
				),
				Result
			),
			Time
		).

	 test(ra_e082, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(X,Y) &
				comp(X,Z,N1) &
				comp(Y,Z,N2) &
				nsubset(N1,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e083, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(X,Y) &
				comp(Z,X,N1) &
				comp(Z,Y,N2) &
				nsubset(N1,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e084, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(X,Y,N1) &
				inters(N1,Z,{}) &
				inv(X,IX) &
				comp(IX,Z,N2) &
				ninters(Y,N2,{})
				),
				Result
			),
			Time
		).

	 test(ra_e085, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(X,IX) &
				comp(IX,Z,N2) &
				inters(Y,N2,{}) &
				comp(X,Y,N1) &
				ninters(N1,Z,{})
				),
				Result
			),
			Time
		).

	 test(ra_e086, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(Y,Z,N1) &
				comp(X,N1,N2) &
				comp(X,Y,N3) &
				comp(X,Z,N4) &
				inters(N3,N4,N5) &
				nsubset(N2,N5)
				),
				Result
			),
			Time
		).

	 test(ra_e087, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(Z,X,N1) &
				inters(N1,Y,N2) &
				inv(Z,IZ) &
				comp(IZ,Y,N3) &
				inters(X,N3,N4) &
				comp(Z,N4,N5) &
				inters(N5,Y,N6) &
				nsubset(N2,N6)
				),
				Result
			),
			Time
		).

	 test(ra_e088, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(Z,X,N1) &
				inters(N1,Y,N2) &
				inv(X,IX) &
				comp(Y,IX,N3) &
				inters(Z,N3,N4) &
				inv(Z,IZ) &
				comp(IZ,Y,N5) &
				inters(X,N5,N6) &
				comp(N4,N6,N7) &
				nsubset(N2,N7)
				),
				Result
			),
			Time
		).

	 test(ra_e089, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				un(X,CX,cp(A,B)) &
				disj(X,CX) &
				ninv(CX,CIX) &
				inv(X,IX) &
				un(IX,CIX,cp(B,A)) &
				disj(IX,CIX)
				),
				Result
			),
			Time
		).

	 test(ra_e090, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(X,IX) &
				inv(Y,IY) &
				((inters(IX,Y,{}) &
				ninters(X,IY,{}))
				 or
				 (inters(X,IY,{}) &
				ninters(IX,Y,{}))
				)
				),
				Result
			),
			Time
		).

	 test(ra_e091, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				set(B) &
				set(C) &
				subset(X,cp(A,B)) &
				subset(Y,cp(B,C)) &
				comp(X,Y,N1) &
				comp(X,Z,N2) &
				un(N2,CN2,cp(A,A)) &
				disj(N2,CN2) &
				inters(N1,CN2,N3) &
				un(Z,CZ,cp(B,C)) &
				disj(Z,CZ) &
				inters(Y,CZ,N4) &
				comp(X,N4,N5) &
				ninters(N5,CN2,N3)
				),
				Result
			),
			Time
		).

	 test(ra_e092, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				set(B) &
				set(C) &
				subset(X,cp(B,C)) &
				comp(Y,X,N1) &
				un(N1,CN1,cp(A,C)) &
				disj(N1,CN1) &
				inv(X,IX) &
				comp(CN1,IX,N2) &
				un(Y,CY,cp(A,B)) &
				disj(Y,CY) &
				nsubset(N2,CY)
				),
				Result
			),
			Time
		).

	 test(ra_e093, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(X,cp(A,A)) &
				id(A,IA) &
				subset(X,IA) &
				ninv(X,X)
				),
				Result
			),
			Time
		).

	 test(ra_e094, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(X,cp(A,A)) &
				subset(Y,cp(A,A)) &
				id(A,IA) &
				subset(X,IA) &
				subset(Y,IA) &
				comp(X,Y,N1) &
				ninters(X,Y,N1)
				),
				Result
			),
			Time
		).

	 test(ra_e095, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				subset(X,cp(A,A)) &
				subset(Y,cp(A,A)) &
				id(A,IA) &
				subset(X,IA) &
				subset(Y,IA) &
				comp(X,Z,N1) &
				comp(Y,Z,N2) &
				ninters(N1,N2,N3) &
				inters(X,Y,N4) &
				comp(N4,Z,N3)
				),
				Result
			),
			Time
		).

	 test(ra_e096, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				set(B) &
				subset(X,cp(A,A)) &
				subset(Y,cp(A,B)) &
				id(A,IA) &
				subset(X,IA) &
				comp(X,Y,N1) &
				un(Z,CZ,cp(A,B)) &
				disj(Z,CZ) &
				inters(N1,CZ,N2) &
				comp(X,Z,N3) &
				un(N3,CN3,cp(A,B)) &
				disj(N3,CN3) &
				ninters(N1,CN3,N2)
				),
				Result
			),
			Time
		).

	 test(ra_e097, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				pfun(X) &
				pfun(Y) &
				comp(X,Y,N1) &
				npfun(N1)
				),
				Result
			),
			Time
		).

	 test(ra_e098, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				pfun(X) &
				inters(Y,Z,M1) &
				ncomp(X,M1,M2) &
				comp(X,Y,M3) &
				comp(X,Z,M4) &
				inters(M3,M4,M2)
				),
				Result
			),
			Time
		).

	 test(ra_e099, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				pfun(X) &
				comp(X,Y,N2) &
				un(Y,CY,cp(B,C)) &
				disj(Y,CY) &
				comp(X,CY,N3) &
				ninters(N2,N3,{})
				),
				Result
			),
			Time
		).

	 test(ra_e100, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(X,cp(A,A)) &
				id(A,IA) &
				subset(X,IA) &
				npfun(X)
				),
				Result
			),
			Time
		).

	 test(ra_e101, true(Result == success), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				pfun(R) &
				subset(R,cp(A,B)) &
				inv(R,IR) &
				id(A,IA) &
				id(B,IB) &
				comp(R,IR,N1) &
				subset(N1,IA) &
				comp(IR,R,N2) &
				subset(IB,N2) &
				N1 neq N2 
				),
				Result
			),
			Time
		).

	 test(ra_e102, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				set(A) &
				pfun(R) &
				subset(R,cp(A,A)) &
				inv(R,IR) &
				id(A,IA) &
				comp(R,IR,N1) &
				subset(N1,IA) &
				comp(IR,R,N1) &
				subset(IA,N1) &
				nid(A,N1) 
				),
				Result
			),
			Time
		).

	 test(ra_e103, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				R = S &
				inters(R,S,N1) &
				un(R,CR,cp(A,B)) &
				disj(R,CR) &
				un(S,CS,cp(A,B)) &
				disj(S,CS) &
				inters(CR,CS,N2) &
				nun(N1,N2,cp(A,B))
				),
				Result
			),
			Time
		).

	 test(ra_e104, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				R neq S &
				inters(R,S,N1) &
				un(R,CR,cp(A,B)) &
				disj(R,CR) &
				un(S,CS,cp(A,B)) &
				disj(S,CS) &
				inters(CR,CS,N2) &
				un(N1,N2,cp(A,B))
				),
				Result
			),
			Time
		).

	 test(ra_e105, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(R,N1) &
				inters(R,N1,{}) &
				id(A,N2) &
				ninters(R,N2,{})
				),
				Result
			),
			Time
		).

	 test(ra_e106, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(Q,R,M1) &
				nsubset(M1,S) &
				inv(Q,M2) &
				un(S,M3,cp(A,C)) &
				disj(S,M3) &
				comp(M2,M3,M4) &
				un(R,M5,cp(B,C)) &
				disj(R,M5) &
				subset(M4,M5) &
				subset(Q,cp(A,B))
				),
				Result
			),
			Time
		).

	 test(ra_e107, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(Q,M2) &
				un(S,M3,cp(A,C)) &
				disj(S,M3) &
				comp(M2,M3,M4) &
				un(R,M5,cp(B,C)) &
				disj(R,M5) &
				subset(M4,M5) &
				un(Q,M8,cp(A,B)) &
				disj(Q,M8) &
				inv(R,M6) &
				comp(M3,M6,M7) &
				nsubset(M7,M8)
				),
				Result
			),
			Time
		).

	 test(ra_e108, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inv(Q,M2) &
				un(S,M3,cp(A,C)) &
				disj(S,M3) &
				comp(M2,M3,M4) &
				un(R,M5,cp(B,C)) &
				disj(R,M5) &
				nsubset(M4,M5) &
				un(Q,M8,cp(A,B)) &
				disj(Q,M8) &
				inv(R,M6) &
				comp(M3,M6,M7) &
				subset(M7,M8)
				),
				Result
			),
			Time
		).

	 test(ra_e109, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(Q,R,M1) &
				nsubset(M1,S) &
				un(S,M3,cp(A,C)) &
				disj(S,M3) &
				inv(R,M6) &
				comp(M3,M6,M7) &
				un(Q,M8,cp(A,B)) &
				disj(Q,M8) &
				subset(M7,M8) &
				subset(R,cp(B,C))
				),
				Result
			),
			Time
		).

	 test(ra_e110, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				C neq {} &
				D neq {} &
				subset(R,cp(A,B)) &
				R neq {} &
				comp(cp(C,A),R,M1) &
				ncomp(M1,cp(B,D),cp(C,D))
				),
				Result
			),
			Time
		).

	 test(ra_e111, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				C neq {} &
				D neq {} &
				subset(R,cp(A,B)) &
				R = {} &
				comp(cp(C,A),R,M1) &
				comp(M1,cp(B,D),cp(C,D))
				),
				Result
			),
			Time
		).

	 test(ra_e112, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				dom(R,M1) &
				comp(R,cp(B,B),M2) &
				ndom(M2,M1)
				),
				Result
			),
			Time
		).

	 test(ra_e113, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				ran(R,M1) &
				comp(cp(A,A),R,M2) &
				nran(M2,M1)
				),
				Result
			),
			Time
		).

	 test(ra_e114, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(S,cp(A,D)) &
				comp(R,cp(B,A),M1) &
				inters(Q,M1,M2) &
				comp(M2,S,M3) &
				comp(Q,S,M4) &
				comp(R,cp(B,D),M5) &
				ninters(M4,M5,M3)
				),
				Result
			),
			Time
		).

	 test(ra_e115, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(Q,cp(C,A)) &
				subset(S,cp(A,D)) &
				comp(P,cp(B,C),M1) &
				inv(M1,M2) &
				inters(Q,M2,M3) &
				comp(M3,S,M4) &
				comp(P,cp(B,D),M5) &
				inters(S,M5,M6) &
				ncomp(Q,M6,M4)
				),
				Result
			),
			Time
		).

	 test(ra_e116, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				comp(R,cp(B,B),R) &
				dom(R,M1) &
				R neq cp(M1,B)
				),
				Result
			),
			Time
		).

	 test(ra_e117, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ncomp(cp(M,B),cp(B,B),cp(M,B))
				),
				Result
			),
			Time
		).

	 test(ra_e118, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				inv(R,M1) &
				pfun(M1) &
				comp(R,M1,M2) &
				id(A,M3) &
				nsubset(M2,M3)
				),
				Result
			),
			Time
		).

	 test(ra_e119, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				subset(R,cp(A,B)) &
				inv(R,M1) &
				npfun(M1) &
				comp(R,M1,M2) &
				id(A,M3) &
				subset(M2,M3)
				),
				Result
			),
			Time
		).

	 test(ra_e120, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,B) neq {} &
				pfun(cp(A,B)) &
				(B = {} or B = {M1,M2/M3} &
				M1 neq M2)
				),
				Result
			),
			Time
		).

	 test(ra_e121, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				cp(A,B) neq {} &
				npfun(cp(A,B)) &
				B = {M1}
				),
				Result
			),
			Time
		).

	 test(ra_e122, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				X = cp({M1},B) &
				B neq {} &
				Y = M2*B &
				M2 neq {} &
				subset(Y,X) &
				nsubset(X,Y) 
				),
				Result
			),
			Time
		).

	 test(ra_e123, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E),M1) &
				ran(M1,C) &
				ninters(R,cp({A},E),cp({A},C))
				),
				Result
			),
			Time
		).

	 test(ra_e124, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E),M1) &
				nran(M1,C) &
				inters(R,cp({A},E),cp({A},C))
				),
				Result
			),
			Time
		).

	 test(ra_e125, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),M1) &
				ran(M1,C) &
				nrimg(R,{A},C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e126, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),M1) &
				nran(M1,C) &
				rimg(R,{A},C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e127, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),M1) &
				ran(M1,C) &
				id({A},M2) &
				comp(M2,R,M3) &
				nran(M3,C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e128, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),M1) &
				nran(M1,C) &
				id({A},M2) &
				comp(M2,R,M3) &
				ran(M3,C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e129, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),cp({A},C)) &
				nrimg(R,{A},C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e130, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ninters(R,cp({A},E2),cp({A},C)) &
				rimg(R,{A},C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e131, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				inters(R,cp({A},E2),cp({A},C)) &
				id({A},M2) &
				comp(M2,R,M3) &
				nran(M3,C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e132, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ninters(R,cp({A},E2),cp({A},C)) &
				id({A},M2) &
				comp(M2,R,M3) &
				ran(M3,C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e133, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				ninters(R,cp({A},E2),cp({A},C)) &
				id({A},M2) &
				comp(M2,R,M3) &
				ran(M3,C) &
				subset(R,cp(E1,E2)) &
				A in E1
				),
				Result
			),
			Time
		).

	 test(ra_e134, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				nrimg(R,{A},C) &
				subset(R,cp(E1,E2)) &
				A in E1 &
				id({A},M2) &
				comp(M2,R,M3) &
				ran(M3,C)
				),
				Result
			),
			Time
		).

	 test(ra_e135, true(Result == failure), [note(time-Time)]) :-
		benchmark(
			rsetlog((
				pfun(F) &
				dom(F,A) &
				pfun(G) &
				dom(G,B) &
				ran(G,M2) &
				subset(M2,C) &
				pfun(H) &
				dom(H,C) &
				ran(H,M3) &
				subset(M3,A) &
				comp(G,H,M6) &
				comp(M6,F,M7) &
				bij(M7) &
				inv(G,_n1) &
				npfun(_n1)
				),
				Result
			),
			Time
		).

:- end_object.
