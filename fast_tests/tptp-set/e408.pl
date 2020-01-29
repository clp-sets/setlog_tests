use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET532-6 : TPTP v7.0.0. Bugfixed v2.1.0.
% Problem  : Application property 2
pfun(Z) & dom(Z,M1) & X in M1 & rimg(Z,{X},M2) & apply(Z,X,M3) & M2 neq {M3}

,2000,_CONSTR,_RES).

get_time(Tend).

