use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET192-6.p
% Subclass property 9
subset(X,Y) & un(Y,M1,U) & disj(Y,M1) & un(X,M2,U) & disj(X,M2) & nsubset(M1,M2)

,2000,_CONSTR,_RES).

get_time(Tend).

