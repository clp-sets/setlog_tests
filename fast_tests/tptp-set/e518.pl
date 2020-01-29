use_module(library(dialect/sicstus/timeout)).
consult('setlog.pl').
consult_lib.
set_prolog_flag(toplevel_print_options, [quoted(true), portray(true)]).
get_time(Tini).
setlog(
% File     : SET669+3 : TPTP v7.0.0. Released v2.2.0.
% Problem  : Id on Y subset of R  => Y subset of domain R & Y is range R
subset(D,cp(B,C)) & id(C,M1) & subset(M1,D) & dom(D,M1) & (nsubset(C,M1) or nran(D,C))

,2000,_CONSTR,_RES).

get_time(Tend).

