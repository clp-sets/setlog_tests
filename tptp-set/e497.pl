use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET645+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : <x,y> in R (X to Y) => x in X & y in Y
subset(F,cp(B,C)) & [D,E] in F & (D nin B or E nin C)

,2000,_CONSTR,_RES).

get_time(Tend).

