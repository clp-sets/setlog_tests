use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET677+3 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : Id on X a subset of R => X is domain of R & X is range of R
subset(C,cp(B,B)) & id(B,M1) & subset(M1,C) & (ndom(C,B) or nran(C,B))

,2000,_CONSTR,_RES).

get_time(Tend).

