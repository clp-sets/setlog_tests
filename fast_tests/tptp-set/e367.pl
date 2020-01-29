use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET471-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Sets with more than one member 1
U in X & un({U},M1,Un) & disj({U},M1) & inters(X,M1,M2) & M3 in M2 & M3 nin X & id(Un,M4) & nsubset(cp(X,X),M4)

,2000,_CONSTR,_RES).

get_time(Tend).

