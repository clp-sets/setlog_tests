use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET150-6.p
% Complement is an involution
un(X,M1,U) & disj(X,M1) & un(M1,M2,U) & disj(M1,M2) & M2 neq X

,2000,_CONSTR,_RES).

get_time(Tend).

