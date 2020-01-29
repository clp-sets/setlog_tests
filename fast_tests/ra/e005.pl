use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B5 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
un(A,cp(X,Y),cp(X,Y)) &
id(Y,I) &
ncomp(A,I,A)


/*
  With neq

un(A,cp(X,Y),cp(X,Y)) &
id(Y,I) &
comp(A,I,A2) &
A2 neq A

*/


/*

Using ran

ran(A,D) &
id(D,I) &
comp(A,I,A2) &
A2 neq A

*/


/*

   A slightly less general result

un(cp(D,D),A,cp(D,D)) &
id(D,I) &
comp(A,I,A2) &
A2 neq A


*/


/*
   A formula not using cp():

dom(A,DA) &
ran(A,RA) &
un(DA,RA,A1) &
subset(A1,U) &
id(U,I) &
comp(A,I,A2) &
A2 neq A


*/


,2000,_CONSTR,_RES).

get_time(Tend).

