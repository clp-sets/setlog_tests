use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET675+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : R o R^-1(Y) is the range of R & R^-1(R o X) is the domain of R
subset(D,cp(C,B)) & inv(D,M1) & 
(comp(D,M1,M4) & rimg2(M4,C,M5) & ndom(D,M5) 
or 
comp(M1,D,M2) & rimg2(M2,B,M3) & nran(D,M3))

,2000,_CONSTR,_RES).

get_time(Tend).

