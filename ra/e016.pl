use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% id composed with any A is A itself
% This is the commuted version of axiom B5
%
un(A,cp(X,Y),cp(X,Y)) &
id(X,I) &
ncomp(I,A,A)

/*
  With neq

un(A,cp(X,Y),cp(X,Y)) &
id(X,I) &
comp(I,A,A2) &
A2 neq A

*/

/*

 With the same domain

subset(A,cp(D,D)) &
id(D,I) &
comp(I,A,IA) &
IA neq A

*/

,2000,_CONSTR,_RES).

get_time(Tend).


