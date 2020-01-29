use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B1 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
un(A,B,A1) &
nun(B,A,A1)



/*
 Old encoding without nun

un(A,B,A1) &
un(B,A,A2) &
A1 neq A2


*/


,2000,_CONSTR,_RES).

get_time(Tend).

