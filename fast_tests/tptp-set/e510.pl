use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET658+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Every R (X to Y) is (domain of R to range of R)
dom(B,M1) & ran(B,M2) & nsubset(B,cp(M1,M2))

,2000,_CONSTR,_RES).

get_time(Tend).
