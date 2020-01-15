use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL043+1.p
% Shunting rule
inv(X1,M1) & comp(X0,M1,M2) & subset(M2,X2) & un(X2,M3,cp(U3,U2)) & disj(X2,M3) & comp(M3,X1,M4) & un(X0,M5,cp(U3,U5)) & disj(X0,M5) & nsubset(M4,M5) & subset(X1,cp(U2,U5))

,2000,_CONSTR,_RES).

get_time(Tend).

