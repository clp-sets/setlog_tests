use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% SET187-6.p
% Subclass property 5
subset(X,Y) & un(Y,M1,U) & disj(Y,M1) & ninters(M1,X,{})

,2000,_CONSTR,_RES).

get_time(Tend).

