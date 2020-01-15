use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO001-1.p
% In B3 algebra, inverse is an involution
un(A,M1,U) & disj(A,M1) & un(M1,M2,U) & disj(M1,M2) & A neq M2

,2000,_CONSTR,_RES).

get_time(Tend).

