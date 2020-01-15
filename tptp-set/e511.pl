use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET661+3 : TPTP v7.0.0. Released v2.2.0.
% Domain   : Set Theory (Relations)
% Problem  : Domain of R^-1 is range of R, & range of R^-1 is domain of R
subset(D,cp(B,C)) & inv(D,M1) & (dom(M1,M2) & nran(D,M2) or ran(M1,M3) & ndom(D,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

