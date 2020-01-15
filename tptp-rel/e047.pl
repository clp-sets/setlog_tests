use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% REL041+1.p
% Equivalence of different definitions of partial functions
pfun(X0) & comp(X0,X1,M5) & un(X1,M6,cp(U1,U2)) & disj(X1,M6) & comp(X0,M6,M7) & ninters(M5,M7,{})

,2000,_CONSTR,_RES).

get_time(Tend).

