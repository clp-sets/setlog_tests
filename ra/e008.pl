use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B2 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
un(A,B,A1) &
un(A1,C,A2) &
un(B,C,A3) &
nun(A,A3,A2)



/*
 Old enconding not using nun

un(A,B,A1) &
un(A1,C,A2) &
un(B,C,A3) &
un(A,A3,A4) &
A2 neq A4

*/


,2000,_CONSTR,_RES).

get_time(Tend).

