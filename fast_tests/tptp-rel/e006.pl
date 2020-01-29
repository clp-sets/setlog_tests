use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL003+1.p (2)
% Isotonicity of converse
% x is less or equal than y iff the converse of x is less or equal
% than converse of y.
inv(X0,M1) & inv(X1,M2) & subset(M1,M2) & nsubset(X0,X1)

,2000,_CONSTR,_RES).

get_time(Tend).

