use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL053+1.p
% Relation Algebra
% converse_cancellativity axiom
inv(X0,M1) & comp(X0,X1,M2) & un(M2,M3,cp(U0,U2)) & disj(M2,M3) & comp(M1,M3,M4) & un(X1,M5,cp(U1,U2)) & disj(X1,M5) & nsubset(M4,M5) & subset(X0,cp(U0,U1))

,2000,_CONSTR,_RES).

get_time(Tend).

