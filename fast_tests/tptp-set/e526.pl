use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET678+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : R o Id on X is R & Id on X o R is R
subset(C,cp(B,B)) & id(B,M1) & (ncomp(C,M1,C) or ncomp(M1,C,C))

,2000,_CONSTR,_RES).

get_time(Tend).

