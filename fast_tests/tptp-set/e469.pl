use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET617+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : X sym\ the empty set = X and the empty set sym\ X = X
symdiff(B,{},M1) & M1 neq B & symdiff({},B,M2) & M2 neq B

,2000,_CONSTR,_RES).

get_time(Tend).

