use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET596+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : If X (= Y and Y ^ Z = the empty set, then X ^ Z = the empty set
subset(B,C) & inters(C,D,{}) & ninters(B,D,{})

,2000,_CONSTR,_RES).

get_time(Tend).

