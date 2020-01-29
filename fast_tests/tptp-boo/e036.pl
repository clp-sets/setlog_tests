use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO021-1.p
% commutativity_of_multiply
inters(B,A,M1) & ninters(A,B,M1)


,2000,_CONSTR,_RES).

get_time(Tend).

