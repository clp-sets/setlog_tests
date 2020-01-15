use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p. 76 (VIb)
subset(R,cp(A,B)) & un(R,CR,cp(A,B)) & disj(R,CR) & ninters(R,CR,{})

,2000,_CONSTR,_RES).

get_time(Tend).

