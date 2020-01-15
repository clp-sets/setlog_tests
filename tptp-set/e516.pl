use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET667+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Id on A subset of R => A subset domain R & A subset range R
subset(E,cp(B,C)) & id(D,M1) & subset(M1,E) & dom(E,M2) & ran(E,M3) & (nsubset(D,M2) or nsubset(D,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

