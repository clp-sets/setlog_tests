use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% BOO002-1.p
% In B3 algebra, X * X^-1 * Y = Y
un(A,M1,U) & disj(A,M1) & tba(A,M1,B,M2) & subset(B,U) & M2 neq B


,2000,_CONSTR,_RES).

get_time(Tend).

