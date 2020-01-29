use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL044+1.p
% Shunting rule
un(X0,M1,cp(U1,U2)) & disj(X0,M1) & comp(M1,X1,M2) & un(X2,M3,cp(U1,U3)) & disj(X2,M3) & subset(M2,M3) & inv(X1,M4) & comp(X2,M4,M5) & nsubset(M5,X0) & subset(X1,cp(U2,U3))

,2000,_CONSTR,_RES).

get_time(Tend).

