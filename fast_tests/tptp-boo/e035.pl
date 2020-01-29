use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO021-1.p
% multiplicative_inverse axiom
un(X,M1,U) & disj(X,M1) & ninters(X,M1,{})


,2000,_CONSTR,_RES).

get_time(Tend).

