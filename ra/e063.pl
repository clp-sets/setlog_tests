use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% Tarski p. 76 (Vb)
subset(R,cp(A,B)) & ninters(R,cp(A,B),R)

,2000,_CONSTR,_RES).

get_time(Tend).

