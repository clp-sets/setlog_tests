use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET674+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : R (X to Y) o X is the range R & R^-1(Y) is the domain of R
subset(D,cp(B,C)) & rimg(D,B,M1) & rres(D,C,M2) & dom(M2,M3) & (nran(D,M1) or ndom(D,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

