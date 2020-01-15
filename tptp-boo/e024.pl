use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO018-4.p
% Inverse of multiplicative identity = Additive identity
un(U,M1,U) & disj(U,M1) & M1 neq {}


,2000,_CONSTR,_RES).

get_time(Tend).

