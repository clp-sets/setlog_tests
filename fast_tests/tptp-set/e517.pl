use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET668+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Id on X subset of R  => X is domain R & X subset of range R
subset(D,cp(C,B)) & id(C,M1) & subset(M1,D) & ran(D,M3) & (ndom(D,C) or nsubset(C,M3)) 

,2000,_CONSTR,_RES).

get_time(Tend).

