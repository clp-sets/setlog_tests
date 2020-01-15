use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO011-1.p (2)
% Inverse of additive identity = Multiplicative identity
un({},M1,U) & disj({},M1) & M1 neq U

,2000,_CONSTR,_RES).

get_time(Tend).

