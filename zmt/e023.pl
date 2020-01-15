use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').

set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% compAssociates
comp(B,C,A1) & comp(A,A1,A2) & comp(A,B,A3) & comp(A3,C,A4) & A2 neq A4

,2000,_CONSTR,_RES).

get_time(Tend).


