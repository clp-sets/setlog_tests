use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET012-1.p
% Complement is an involution
un(A,M1,U) & disj(A,M1) & un(M1,M2,U) & disj(M1,M2) & M2 neq A

,2000,_CONSTR,_RES).

get_time(Tend).

