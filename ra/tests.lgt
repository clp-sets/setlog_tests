
:- object(tests(_Timeout_),
	extends(lgtunit)).

	:- info([
		version is 0.1,
		author is 'Maximiliano Cristiá, Gianfranco Rossi, and Paulo Moura',
		date is 2020/01/15,
		comment is 'Unit tests for setlog.'
	]).

	:- uses(lgtunit, [
		benchmark_reified/3
	]).

	:- uses(user, [
		setlog(Goal, _Timeout_, _, _) as setlog(Goal)
	]).

	%
	% Tarski's axiom B9 taken from
	% https://en.wikipedia.org/wiki/Relation_algebra
	%
	test(ra_e001, true(Result == failure), [note(time-Time)]) :-
		benchmark_reified(
			setlog(
				un(A,B,A1) &
				comp(A1,C,A2) &
				comp(A,C,A3) &
				comp(B,C,A4) &
				nun(A3,A4,A2)
			),
			Time,
			Result
		).

	%
	% Tarski's axiom B4 taken from
	% https://en.wikipedia.org/wiki/Relation_algebra
	%
	test(ra_e002, true(Result == failure), [note(time-Time)]) :-
		benchmark_reified(
			setlog(
				comp(B,C,A1) &
				comp(A,A1,A2) &
				comp(A,B,A3) &
				ncomp(A3,C,A2)
			),
			Time,
			Result
		).

	%
	% Tarski's axiom B6 taken from
	% https://en.wikipedia.org/wiki/Relation_algebra
	%
	test(ra_e003, true(Result == failure), [note(time-Time)]) :-
		benchmark_reified(
			setlog(
				inv(A,A1) &
				ninv(A1,A)
			),
			Time,
			Result
		).

:- end_object.
