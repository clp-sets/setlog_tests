use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
%
% Tarski's axiom B9 taken from
% https://en.wikipedia.org/wiki/Relation_algebra
%
un(A,B,A1) &
comp(A1,C,A2) &
comp(A,C,A3) &
comp(B,C,A4) &
nun(A3,A4,A2)



/*
 Old encoding not using nun
 Takes much longer than new encoding based on nun

un(A,B,A1) &
comp(A1,C,A2) &
comp(A,C,A3) &
comp(B,C,A4) &
un(A3,A4,A5) &
A2 neq A5


*/


,2000,_CONSTR,_RES).

get_time(Tend).

