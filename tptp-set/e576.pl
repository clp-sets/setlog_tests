use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET729+4 : TPTP v7.0.0. Bugfixed v2.2.1.
% Problem  : F is one-to-one and inverse(F)=F iff FoF is the identity
t1to1(F,A,A) & inv(F,F) & comp(F,F,M1) & nid(A,M1)

,2000,_CONSTR,_RES).

get_time(Tend).

